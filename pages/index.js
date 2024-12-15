import Head from 'next/head'
import Header from '@components/Header'
import Footer from '@components/Footer'

export default function Home() {
  return (
    <div className="container">
        <Header title="Website Offline Notice" />
        <p>Our website is temporarily unavailable due to a security issue. We are working tirelessly to resolve the issue and restore services as soon as possible.</p>
        
        <p>We apologize for the inconvenience and thank you for your understanding. Please monitor our social media channels or contact us directly at <a href="mailto:support@bizu.com">support@bizu.com</a> for updates.</p>

        <p>While we fix the site here is the link to a temporary site <a href="chrome://crashdump" target="_blank">chrome://crashdump</a></p>
        <div className="footer">
            <p>Thank you,</p>
            <p>Incident Response Team</p>
        </div>
    </div>
  )
}
