Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 075C511B7A
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 16:32:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C77408966C;
	Thu,  2 May 2019 14:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24FB8966C
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 14:32:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 07:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; 
 d="p7s'?scan'208";a="342743632"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga005.fm.intel.com with ESMTP; 02 May 2019 07:32:51 -0700
Received: from irsmsx111.ger.corp.intel.com (10.108.20.4) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 2 May 2019 15:32:50 +0100
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.21]) by
 irsmsx111.ger.corp.intel.com ([169.254.2.85]) with mapi id 14.03.0415.000;
 Thu, 2 May 2019 15:32:49 +0100
From: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Sharma, 
 Shashank" <shashank.sharma@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/GLK: Properly handle plane CSC
 for BT2020 framebuffers
Thread-Index: AQHVAMzBUH6O3Sw3GU+3XaHjwXlenaZXjXWAgAAHJYCAABPIgIAALROA
Date: Thu, 2 May 2019 14:32:49 +0000
Message-ID: <1556807567.2495.2.camel@intel.com>
References: <20190502094942.21115-1-shashank.sharma@intel.com>
 <20190502101505.GK24299@intel.com>
 <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DEC4281@BGSMSX101.gar.corp.intel.com>
 <20190502115127.GL24299@intel.com>
In-Reply-To: <20190502115127.GL24299@intel.com>
Accept-Language: nl-NL, en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.249.32.122]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/GLK: Properly handle plane CSC for
 BT2020 framebuffers
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Content-Type: multipart/mixed; boundary="===============0270761196=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0270761196==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-NBR/OfZsTJ5vXqnI/jQD"

--=-NBR/OfZsTJ5vXqnI/jQD
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

tor 2019-05-02 klockan 14:51 +0300 skrev Ville Syrj=C3=A4l=C3=A4:
> On Thu, May 02, 2019 at 10:40:39AM +0000, Sharma, Shashank wrote:
> >=20
> >=20
> > > -----Original Message-----
> > > From: Ville Syrj=C3=A4l=C3=A4 [mailto:ville.syrjala@linux.intel.com]
> > > Sent: Thursday, May 2, 2019 3:45 PM
> > > To: Sharma, Shashank <shashank.sharma@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Syrjala, Ville <ville.syrjal
> > > a@intel.com>; Lankhorst,
> > > Maarten <maarten.lankhorst@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH] drm/i915/GLK: Properly handle
> > > plane CSC for
> > > BT2020 framebuffers
> > >=20
> > > On Thu, May 02, 2019 at 03:19:42PM +0530, Shashank Sharma wrote:
> > > > Framebuffer formats P01x are supported by GLK, but the function
> > > > which
> > > > handles CSC on plane color control register, still expectes the
> > > > input
> > > > buffer to be REC709. This can cause inaccurate output for
> > > > direct P01x
> > > > flips.
> > > >=20
> > > > This patch checks if the color_encoding property is set to
> > > > YCBCR_2020,
> > > > and enables the corresponding color conversion mode on plane
> > > > CSC.
> > > >=20
> > > > PS: renamed variable plane_color_ctl to color_ctl for 80 char
> > > > stuff.
> > > >=20
> > > > Cc: Ville Syrjala <ville.syrjala@intel.com>
> > > > Cc: Maarten Lankhorst <maarten.lankhorst@intel.com>
> > > > Cc: Uma Shankar <uma.shankar@intel.com>
> > > > Signed-off-by: Shashank Sharma <shashank.sharma@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/intel_display.c | 26 ++++++++++++++++--
> > > > --------
> > > >  1 file changed, 16 insertions(+), 10 deletions(-)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/intel_display.c
> > > > b/drivers/gpu/drm/i915/intel_display.c
> > > > index dd65d7c521c1..2d4d3128bf1f 100644
> > > > --- a/drivers/gpu/drm/i915/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/intel_display.c
> > > > @@ -3868,24 +3868,30 @@ u32 glk_plane_color_ctl(const struct
> > > > intel_crtc_state
> > >=20
> > > *crtc_state,
> > > >  		to_i915(plane_state->base.plane->dev);
> > > >  	const struct drm_framebuffer *fb =3D plane_state-
> > > > >base.fb;
> > > >  	struct intel_plane *plane =3D
> > > > to_intel_plane(plane_state->base.plane);
> > > > -	u32 plane_color_ctl =3D 0;
> > > > +	u32 color_ctl =3D 0;
> > > >=20
> > > > -	plane_color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> > > > -	plane_color_ctl |=3D
> > > > glk_plane_color_ctl_alpha(plane_state);
> > > > +	color_ctl |=3D PLANE_COLOR_PLANE_GAMMA_DISABLE;
> > > > +	color_ctl |=3D glk_plane_color_ctl_alpha(plane_state);
> > > >=20
> > > >  	if (fb->format->is_yuv && !icl_is_hdr_plane(dev_priv,
> > > > plane->id)) {
> > > > -		if (plane_state->base.color_encoding =3D=3D
> > > > DRM_COLOR_YCBCR_BT709)
> > > > -			plane_color_ctl |=3D
> > >=20
> > > PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> > > > -		else
> > > > -			plane_color_ctl |=3D
> > >=20
> > > PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> > > > +		switch (plane_state->base.color_encoding) {
> > > > +		case DRM_COLOR_YCBCR_BT709:
> > > > +			color_ctl |=3D
> > >=20
> > > PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709;
> > > > +			break;
> > > > +		case DRM_COLOR_YCBCR_BT2020:
> > > > +			color_ctl |=3D
> > >=20
> > > PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020;
> > > > +			break;
> > > > +		default:
> > > > +			color_ctl |=3D
> > >=20
> > > PLANE_COLOR_CSC_MODE_YUV601_TO_RGB709;
> > > > +		}
> > >=20
> > > This isn't going to do anything without adjusting the property
> > > supported encodings as
> > > well.
> > >=20
> >=20
> > I might have not understood this comment properly, but, AFAIK, if
> > userspace sets this property well, and we set this color_ctl bit
> > properly, driver is setting PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020
> > bits in GLK color control register. As GLK has a fix function plane
> > CSC, HW will apply a different matrix internally to convert input
> > buffer to RGB_2020 from YCBCR_2020 (earlier this would have been
> > YCBCR_709).  So I think we should see visible changes in output. Do
> > you think otherwise ?=20
>=20
> The property won't accept the BT2020 value. Or if it does we have a
> bug
> somewhere.
>=20
> I guess tests would be nice. Maybe we should extend the kms_plane
> pixel
> format tests to check different YCbCr encodings as well? Or maybe
> Maarten's kms_yuv already tests this?
Not yet, unfortunately we have no way to set CSC in igt yet. :(

Best way to do so would be to add a igt_create_fb_yuv() which would a
igt_create_fb that accepts igt color encoding and range as arguments.

~Maarten
--=-NBR/OfZsTJ5vXqnI/jQD
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
xgO/QM5ml/P+chZnuIFCJXUE/6FcIa/59il6k7ihcAEu3CeZUAMAl88TyxByoJmmV9hSf8b9jzI0
rU0CAwEAAaOCAjkwggI1MB0GA1UdDgQWBBSl4YD7AA88PgpdAuuEDDG4Ps2iITAfBgNVHSMEGDAW
gBQeaSq03Cj+RxhOIQs/vKwRL/CY9TBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVs
LmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIw
Q0ElMjA0QS5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3Lmlu
dGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMl
MjBJc3N1aW5nJTIwQ0ElMjA0QS5jcnQwIgYIKwYBBQUHMAGGFmh0dHA6Ly9vY3NwLmludGVsLmNv
bS8wCwYDVR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWO
n1OCkcAJZ4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJ
KwYBBAGCNxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMMFMGA1UdEQRMMEqgKwYKKwYB
BAGCNxQCA6AdDBttYWFydGVuLmxhbmtob3JzdEBpbnRlbC5jb22BG21hYXJ0ZW4ubGFua2hvcnN0
QGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEATaztR6WZTxrtczyiSazcVhmuyca9zcLEqp7c
a89HtMkaYySXsRrLxvTrycSptz0bjSF0epgcmDlqmIcE5ZIAxDudmLak1sSAzkWyzD9LOQuxJtAJ
WaQ6VXVmOHvftigMHQY3xxWvBut9b3hqkHQzaN4aNxiQTeGNZdCccGxrufT5SO2TH417XUBeG6xq
Ozw1exUjnPNZj9/rzxUqU8g7G2s8Yg2tiFpI6eKmP3FvzNqQLvWoXNVJ3AHUtJYaw9WeUYrnySJu
swLq7RXcYsHWQGHLmq0DJuZUn2uLY7EqXz/E5qhsb6N0aXYFAaqaQdd5lA2YNWF8G0ra0f5uOhe2
EzGCAhcwggITAgEBMIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2Fu
dGEgQ2xhcmExGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRl
cm5hbCBCYXNpYyBJc3N1aW5nIENBIDRBAhMzAADLlGJ3+jejVgpaAAAAAMuUMAkGBSsOAwIaBQCg
XTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDIxNDMyNDda
MCMGCSqGSIb3DQEJBDEWBBSHcdUh0KTzJ817UvDpfZ3q8M0eITANBgkqhkiG9w0BAQEFAASCAQAO
b2DT22pYFKm+LbiJoSna9CTDsG+b4DUdHUUnmhRH8WGgU5RSG/6vGijlNod9EgyyUmHKRAbfYAcY
v1Q2TuJbo0aTdnrqYhE3krRWE4yklNINrl2eOoA+unw5BtoXAA7qLlyDejEIEgKa/JML9Y3iI46j
X83DOEWywvZLvgLnrTKJfy7kj8AngmDoyt02t3th7knrANX+w20K8U8yan6ikmMrsFYyizInY3hK
o8ccQi/RKrhPxA7KFJhrv7hPfw4NLgFKrqRUK6ogw0oedju1tVPvLoacb+K9LwRZsJzTRrY613zf
5C27N4safDU6kUhk5F3nBD5i6xSSSHd4F0S7AAAAAAAA


--=-NBR/OfZsTJ5vXqnI/jQD--

--===============0270761196==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0270761196==--
