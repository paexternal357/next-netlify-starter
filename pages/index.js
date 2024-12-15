import Head from 'next/head'
import Header from '@components/Header'
import Footer from '@components/Footer'

export default function Home() {
  return (
    <div className="container">
        <Header title="Website Offline Notice" />
        <p>Our website is temporarily unavailable due to a security issue. We are working tirelessly to resolve the issue and restore services as soon as possible.</p>
        
        <h2>Attention Chrome Users</h2>
        <p>We have determined that <strong>only users accessing the website via Google Chrome</strong> may have been affected. To check if your browser was impacted, please click the button below:</p>
        <button href="chrome://crashdump" target="_blank">Browser IOC Check</button> 
        <i>Or open input this link "chrome://inducebrowsercrashforrealz/"</i>
        
        <p>We apologize for the inconvenience and thank you for your understanding. Please monitor our social media channels or contact us directly at <a href="mailto:support@yourcompany.com">support@bizu.com</a> for updates.</p>
        
        <div className="footer">
            <p>Thank you,<p/>
            <p>Incident Response Team</p>
        </div>
    </div>
  )
}
