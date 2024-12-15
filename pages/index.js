import Head from 'next/head'
import Header from '@components/Header'
import Footer from '@components/Footer'

export default function Home() {
  return (
    <div className="container">
        <Header title="Website Offline Notice" />
        <p>Our website is temporarily unavailable due to a security issue. We are working tirelessly to resolve the issue and restore services as soon as possible.</p>
        
        <h2>Attention Chrome Users</h2>
        <p>We have determined that <strong>only users accessing the website via Google Chrome</strong> may have been affected. To check if your browser was impacted, please visit the following link in your Chrome browser:</p>
        <p><a href="chrome://crashdump" target="_blank">chrome://crashdump</a></p>
        
        <p>We apologize for the inconvenience and thank you for your understanding. Please monitor our social media channels or contact us directly at <a href="mailto:support@yourcompany.com">support@yourcompany.com</a> for updates.</p>
        
        <div className="footer">
            <p>Thank you,<br/>Incident Response Team</p>
        </div>
    </div>
  )
}
