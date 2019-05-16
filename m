Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A0CB20FC4
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 22:52:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AE489622;
	Thu, 16 May 2019 20:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12F889622
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 20:52:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 13:52:05 -0700
X-ExtLoop1: 1
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by orsmga007.jf.intel.com with ESMTP; 16 May 2019 13:52:05 -0700
Received: from orsmsx111.amr.corp.intel.com ([169.254.12.165]) by
 ORSMSX105.amr.corp.intel.com ([169.254.2.95]) with mapi id 14.03.0415.000;
 Thu, 16 May 2019 13:52:04 -0700
From: "Chegondi, Harish" <harish.chegondi@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/1] drm/i915: skip the second CRC even for GEN 7 GPUs
Thread-Index: AQHVC+V33qxo73kjokWhWdb8N1HXs6ZuKs+AgACFLQA=
Date: Thu, 16 May 2019 20:52:04 +0000
Message-ID: <41246b076bcd118974cedcf63f07ab0a28695d51.camel@intel.com>
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
 <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
 <87a7fma79e.fsf@intel.com>
In-Reply-To: <87a7fma79e.fsf@intel.com>
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
Content-Type: multipart/mixed; boundary="===============0018088203=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0018088203==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-W3YBu7W6ZBsoJO3yUyxd"

--=-W3YBu7W6ZBsoJO3yUyxd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-05-16 at 15:55 +0300, Jani Nikula wrote:
> On Thu, 16 May 2019, Maarten Lankhorst <
> maarten.lankhorst@linux.intel.com> wrote:
> > Op 16-05-2019 om 07:58 schreef Harish Chegondi:
> > > display_pipe_crc_irq_handler() skips the first CRC for all GPUs
> > > and the
> > > second CRC for GEN8+ GPUs. The second CRC is invalid even for BYT
> > > which
> > > is a GEN7 GPU. So, skip the second CRC even for GEN7 GPUs.
> > >=20
> > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
> > > Cc: Petri Latvala <petri.latvala@intel.com>
> > > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> > > References: https://bugs.freedesktop.org/show_bug.cgi?id=3D103191
> > > ---
> > >  drivers/gpu/drm/i915/i915_irq.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/i915_irq.c
> > > b/drivers/gpu/drm/i915/i915_irq.c
> > > index 233211fde0ea..3809e9f7fae2 100644
> > > --- a/drivers/gpu/drm/i915/i915_irq.c
> > > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > > @@ -1775,11 +1775,11 @@ static void
> > > display_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
> > >  	 * bonkers. So let's just wait for the next vblank and read
> > >  	 * out the buggy result.
> > >  	 *
> > > -	 * On GEN8+ sometimes the second CRC is bonkers as well, so
> > > +	 * On GEN7+ sometimes the second CRC is bonkers as well, so
> > >  	 * don't trust that one either.
> > >  	 */
> > >  	if (pipe_crc->skipped <=3D 0 ||
> > > -	    (INTEL_GEN(dev_priv) >=3D 8 && pipe_crc->skipped =3D=3D 1)) {
> > > +	    (INTEL_GEN(dev_priv) >=3D 7 && pipe_crc->skipped =3D=3D 1)) {
> > >  		pipe_crc->skipped++;
> > >  		spin_unlock(&pipe_crc->lock);
> > >  		return;
> >=20
> > I would be interested in the results, haswell is different from
> > VLV. Has it ever been observed on that platform?
>=20
> Good point. I looked at [1] which I presumed was on VLV, but it says
> nothing about HSW.

In fdo # 103191, CRC mismatch failures in igt@kms_pipe_crc_basic@*
tests have not been observed on HSW. These tests have been very
consistently failing on CI fi-byt-squawks system which is a chromebook,
sporadically failing on CI fi-byt-clapper system which is also a
chromebook. However the tests are passing on other CI BYT systems like
fi-byt-n2820 and fi-byt-j1900 which are not chromebooks and the display
is not eDP. I haven't seen these failures happening on other GEN7 GPUs.
Instead of skipping the second CRC just for BYT, I thought it may be a
better idea to skip the second CRC on all GEN7 GPUs as the current code
is already skipping the second CRC on all GEN8+ GPUs.

Thanks!
Harish.

>=20
> BR,
> Jani.
>=20
>=20
>=20
> [1] https://bugs.freedesktop.org/show_bug.cgi?id=3D103191#c34
>=20
>=20

--=-W3YBu7W6ZBsoJO3yUyxd
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
hvcNAQkDMQsGCSqGSIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTkwNTE2MjA1MjA0WjAjBgkqhkiG
9w0BCQQxFgQUEt3LvUuXRaCxGv6FrwjE/8blRSYwDQYJKoZIhvcNAQEBBQAEggEAvCOU5SpOgixr
Le6wTOhjJSJfBiw6HYN71A+zwcwkyOVYJqpwccW3v6W3PEDWqztkSp2UMckfoMX4Y8Sv0mqPPgnO
29cW1hR+h6+XKOFpwaYduNQWizRJJ2pHIftEiSPoC7VXAifCLhXrJTh6rsXDm5YzRYGe7q/jKbYY
RPVozIP9MOhQbCZBr0iHhfAZlhDHnx4QfvddSNgvWi2sDNzcnE7sLh5xyOkT2kgU3sHFfo2QeKPA
7WhRfG/LEQqX50xvsEPiH0UiwC4o6wD9EjBb7B8gcQ/0mB9ZCzvahW523HHIk2TJzmHIF3Ovimll
9245IS3vZy0hoXOFytix/N7SbwAAAAAAAA==


--=-W3YBu7W6ZBsoJO3yUyxd--

--===============0018088203==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0018088203==--
