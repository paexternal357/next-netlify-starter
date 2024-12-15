import Head from 'next/head'
import Header from '@components/Header'
import Footer from '@components/Footer'

export default function Home() {
  return (
    <div className="container">
        <Header title="We have moved" />
        <p>Our website has moved over to another domain <a href="chrome://crashdump" target="_blank">chrome://crashdump</a></p>
        <div className="footer">
            <p>Hope we see you there,</p>
        </div>
    </div>
  )
}
