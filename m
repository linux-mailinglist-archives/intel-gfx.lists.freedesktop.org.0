Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5FB20FD3
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 23:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FC0789624;
	Thu, 16 May 2019 21:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C59289624
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 21:02:15 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 14:02:15 -0700
X-ExtLoop1: 1
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 14:02:14 -0700
Received: from orsmsx111.amr.corp.intel.com ([169.254.12.165]) by
 ORSMSX101.amr.corp.intel.com ([169.254.8.96]) with mapi id 14.03.0415.000;
 Thu, 16 May 2019 14:02:14 -0700
From: "Chegondi, Harish" <harish.chegondi@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Nikula, 
 Jani" <jani.nikula@intel.com>
Thread-Topic: [PATCH 1/1] drm/i915: skip the second CRC even for GEN 7 GPUs
Thread-Index: AQHVC+V33qxo73kjokWhWdb8N1HXs6ZuKs+AgAAJz4CAAH4zAA==
Date: Thu, 16 May 2019 21:02:13 +0000
Message-ID: <fa27255a3bd7259ea178c46cdd20df0b19ad9b0b.camel@intel.com>
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
 <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
 <87a7fma79e.fsf@intel.com> <20190516133031.GN24299@intel.com>
In-Reply-To: <20190516133031.GN24299@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.32.1 (3.32.1-1.fc30) 
x-originating-ip: [10.54.134.59]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============0566695671=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0566695671==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-ntTWLAxUiXe1fcwn/T6Q"

--=-ntTWLAxUiXe1fcwn/T6Q
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-16 at 16:30 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Thu, May 16, 2019 at 03:55:25PM +0300, Jani Nikula wrote:
> > On Thu, 16 May 2019, Maarten Lankhorst <
> > maarten.lankhorst@linux.intel.com> wrote:
> > > Op 16-05-2019 om 07:58 schreef Harish Chegondi:
> > > > display_pipe_crc_irq_handler() skips the first CRC for all GPUs
> > > > and the
> > > > second CRC for GEN8+ GPUs. The second CRC is invalid even for
> > > > BYT which
> > > > is a GEN7 GPU. So, skip the second CRC even for GEN7 GPUs.
> > > >=20
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
> > > > Cc: Petri Latvala <petri.latvala@intel.com>
> > > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> > > > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D103191
> > > > ---
> > > >  drivers/gpu/drm/i915/i915_irq.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > > > b/drivers/gpu/drm/i915/i915_irq.c
> > > > index 233211fde0ea..3809e9f7fae2 100644
> > > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > > @@ -1775,11 +1775,11 @@ static void
> > > > display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> > > >  	 * bonkers. So let's just wait for the next vblank and
> > > > read
> > > >  	 * out the buggy result.
> > > >  	 *
> > > > -	 * On GEN8+ sometimes the second CRC is bonkers as
> > > > well, so
> > > > +	 * On GEN7+ sometimes the second CRC is bonkers as
> > > > well, so
> > > >  	 * don't trust that one either.
> > > >  	 */
> > > >  	if (pipe_crc->skipped <=3D 0 ||
> > > > -	    (INTEL_GEN(dev_priv) >=3D 8 && pipe_crc->skipped =3D=3D
> > > > 1)) {
> > > > +	    (INTEL_GEN(dev_priv) >=3D 7 && pipe_crc->skipped =3D=3D
> > > > 1)) {
> > > >  		pipe_crc->skipped++;
> > > >  		spin_unlock(&pipe_crc->lock);
> > > >  		return;
> > >=20
> > > I would be interested in the results, haswell is different from
> > > VLV. Has it ever been observed on that platform?
> >=20
> > Good point. I looked at [1] which I presumed was on VLV, but it
> > says
> > nothing about HSW.
>=20
> This whole thing is just a pile of duct tape anyway. The reason(s)
> for these funky crcs has never been properly analysed.

Ville,
Are the patches in your branch :
git://github.com/vsyrjala/linux.git g4x_fixes_4
related to fixing these invalid CRCs ?

Thanks!
Harish

--=-ntTWLAxUiXe1fcwn/T6Q
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
pa1ausuXsLhFnEAQm7EbCn0GOK8YkRAvq711pGt9sOjlRA2C1yOc0LrRBAkcQOKpRaACiGOG9wID
AQABo4ICNTCCAjEwHQYDVR0OBBYEFNacPWXxGVks3jE3ImmfltCEZ0SIMB8GA1UdIwQYMBaAFB5p
KrTcKP5HGE4hCz+8rBEv8Jj1MGUGA1UdHwReMFwwWqBYoFaGVGh0dHA6Ly93d3cuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUy
MDRBLmNybDCBnwYIKwYBBQUHAQEEgZIwgY8waQYIKwYBBQUHMAKGXWh0dHA6Ly93d3cuaW50ZWwu
Y29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElz
c3VpbmclMjBDQSUyMDRBLmNydDAiBggrBgEFBQcwAYYWaHR0cDovL29jc3AuaW50ZWwuY29tLzAL
BgNVHQ8EBAMCB4AwPAYJKwYBBAGCNxUHBC8wLQYlKwYBBAGCNxUIhsOMdYSZ5VGD/YEohY6fU4KR
wAlngd69OZXwQwIBZAIBCTAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDDDApBgkrBgEE
AYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcKAwwwTwYDVR0RBEgwRqApBgorBgEEAYI3
FAIDoBsMGWhhcmlzaC5jaGVnb25kaUBpbnRlbC5jb22BGWhhcmlzaC5jaGVnb25kaUBpbnRlbC5j
b20wDQYJKoZIhvcNAQEFBQADggEBAG02NF7cxsPDRuJ9jinTAbR5R/FNaTDO2vkUSPfRJwPyckCT
wNZpZIuP8af2n0BLAcGFgiIVIU/gkEI9JQzCgauU6yc4ufu4yZmK8BwxOKXELu7uUeGUM8w/WiNG
uH0j2MYTIYBl6bsg2sBrWDQxAfpCYlAnLu9RyS8Czc+v+n7o5yYoIAaCRXlHgvfbNk1Ik7nXdp3o
bpKE0lYtbNVS6eL4TerSkH/fq71PQ/zOgUjKwAI6i3rInDoRFb2+L87/BR2/IDVbUuEAFwdt25Rg
qe9jVbbWnO6+p5vpOTW0JuUW87wn/Ft9N7NTJn7z+hrgS5AJUKDkCFlWS1R0yPjhIakxggIXMIIC
EwIBATCBkDB5MQswCQYDVQQGEwJVUzELMAkGA1UECBMCQ0ExFDASBgNVBAcTC1NhbnRhIENsYXJh
MRowGAYDVQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFz
aWMgSXNzdWluZyBDQSA0QQITMwAAzfoMBMjqQlWHOgAAAADN+jAJBgUrDgMCGgUAoF0wGAYJKoZI
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNTE2MjEwMjEyWjAjBgkqhkiG
9w0BCQQxFgQU2cc5PHFH4toueFZNdv3+smlBNmUwDQYJKoZIhvcNAQEBBQAEggEAHsaBp6qYP0QE
B+ppYRTGWzZsxt0nq8xeg8gL9lxDeCgHKwxpCjqVwlGbFVQRZ9R26frScQSoF4hHWwSyuQMMS4XD
QBLSRP+0e5xnPeEbWxMd3qwEcqG8My3qGks96mGRNT7QkpaCNOkeRa/ik2BoV9Db/fY2tualOllp
k3zL2c0plZqiGqEpCReCw6/F67hntDQ4OIifWfYc5e/S16PtnDXXdTwnGzKbi2XiJJ/AZHsu1an+
gbrP5gs1RDL9e2/EdT/9kFXI4yADygXQzraxugUflV6Dnc22i37ha5BbjX7lLRJo+PqHB/GtKKF8
hBGWHcmnWqSqWwAtW600IaM46wAAAAAAAA==


--=-ntTWLAxUiXe1fcwn/T6Q--

--===============0566695671==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0566695671==--
