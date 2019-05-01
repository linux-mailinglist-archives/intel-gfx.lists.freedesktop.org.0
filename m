Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFE010387
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 02:38:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3389789265;
	Wed,  1 May 2019 00:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7151D89265
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 00:38:20 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 17:38:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,415,1549958400"; 
 d="p7s'?scan'208";a="147145663"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga003.jf.intel.com with ESMTP; 30 Apr 2019 17:38:19 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX103.amr.corp.intel.com ([169.254.2.162]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 17:38:19 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915: Use local variable for SSEU
 info in GETPARAM ioctl
Thread-Index: AQHU/qN97MPvTVnW4UC+q2E4V0HEXqZU3boAgAEGq4A=
Date: Wed, 1 May 2019 00:38:18 +0000
Message-ID: <99a135bf914581682c51044898821e8e73883b4f.camel@intel.com>
References: <20190429155135.6468-1-stuart.summers@intel.com>
 <20190429155135.6468-2-stuart.summers@intel.com> <87h8afrhsv.fsf@intel.com>
In-Reply-To: <87h8afrhsv.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Use local variable for SSEU
 info in GETPARAM ioctl
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
Content-Type: multipart/mixed; boundary="===============0282151032=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0282151032==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-fa9HS1XPP5o3+tU6rMYR"

--=-fa9HS1XPP5o3+tU6rMYR
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-04-30 at 11:58 +0300, Jani Nikula wrote:
> On Mon, 29 Apr 2019, Stuart Summers <stuart.summers@intel.com> wrote:
> > In the GETPARAM ioctl handler, use a local variable to consolidate
> > usage of SSEU runtime info.
> >=20
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_drv.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/i915_drv.c
> > b/drivers/gpu/drm/i915/i915_drv.c
> > index aacc8dd6ecfd..b6ce7580d414 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.c
> > +++ b/drivers/gpu/drm/i915/i915_drv.c
> > @@ -321,6 +321,7 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  {
> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> >  	struct pci_dev *pdev =3D dev_priv->drm.pdev;
> > +	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
>=20
> const?

Somehow I had missed this email, sorry for the late response. I'll make
this change and post a quick update.

Thanks,
Stuart

>=20
> >  	drm_i915_getparam_t *param =3D data;
> >  	int value;
> > =20
> > @@ -374,12 +375,12 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  		value =3D i915_cmd_parser_get_version(dev_priv);
> >  		break;
> >  	case I915_PARAM_SUBSLICE_TOTAL:
> > -		value =3D sseu_subslice_total(&RUNTIME_INFO(dev_priv)-
> > >sseu);
> > +		value =3D sseu_subslice_total(sseu);
> >  		if (!value)
> >  			return -ENODEV;
> >  		break;
> >  	case I915_PARAM_EU_TOTAL:
> > -		value =3D RUNTIME_INFO(dev_priv)->sseu.eu_total;
> > +		value =3D sseu->eu_total;
> >  		if (!value)
> >  			return -ENODEV;
> >  		break;
> > @@ -396,7 +397,7 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  		value =3D HAS_POOLED_EU(dev_priv);
> >  		break;
> >  	case I915_PARAM_MIN_EU_IN_POOL:
> > -		value =3D RUNTIME_INFO(dev_priv)->sseu.min_eu_in_pool;
> > +		value =3D sseu->min_eu_in_pool;
> >  		break;
> >  	case I915_PARAM_HUC_STATUS:
> >  		value =3D intel_huc_check_status(&dev_priv->huc);
> > @@ -446,12 +447,12 @@ static int i915_getparam_ioctl(struct
> > drm_device *dev, void *data,
> >  		value =3D intel_engines_has_context_isolation(dev_priv);
> >  		break;
> >  	case I915_PARAM_SLICE_MASK:
> > -		value =3D RUNTIME_INFO(dev_priv)->sseu.slice_mask;
> > +		value =3D sseu->slice_mask;
> >  		if (!value)
> >  			return -ENODEV;
> >  		break;
> >  	case I915_PARAM_SUBSLICE_MASK:
> > -		value =3D RUNTIME_INFO(dev_priv)->sseu.subslice_mask[0];
> > +		value =3D sseu->subslice_mask[0];
> >  		if (!value)
> >  			return -ENODEV;
> >  		break;
>=20
>=20

--=-fa9HS1XPP5o3+tU6rMYR
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

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
PwuHX1mRETAlwqXCZa6ba8eraUCltlCb/ZiEk9UFRVLjbLNPh9IYOi+sWkS6n5CovLKAqhMCAwEA
AaOCAjMwggIvMB0GA1UdDgQWBBSgeYqvLV4nBaCUzAXLr0TeMJYR5zAfBgNVHSMEGDAWgBTaQSOc
Wo9xr1eDPiDT42XbDMsL2zBlBgNVHR8EXjBcMFqgWKBWhlRodHRwOi8vd3d3LmludGVsLmNvbS9y
ZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0
Qi5jcmwwgZ8GCCsGAQUFBwEBBIGSMIGPMCIGCCsGAQUFBzABhhZodHRwOi8vb2NzcC5pbnRlbC5j
b20vMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmlj
YXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjA0Qi5jcnQwCwYD
VR0PBAQDAgeAMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OCkcAJ
Z4HevTmV8EMCAWQCAQkwHwYDVR0lBBgwFgYIKwYBBQUHAwQGCisGAQQBgjcKAwwwKQYJKwYBBAGC
NxUKBBwwGjAKBggrBgEFBQcDBDAMBgorBgEEAYI3CgMMME0GA1UdEQRGMESgKAYKKwYBBAGCNxQC
A6AaDBhzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb22BGHN0dWFydC5zdW1tZXJzQGludGVsLmNvbTAN
BgkqhkiG9w0BAQUFAAOCAQEAfyIC7rzSi6S8O+sdH384K8zyeMRJnl6vR7whl9PuEat+BkKpoxHn
jQ0SFyF/cyI4lH/n938Pm3/Ctq0Z5GTldX6hhxxcLAR0qbk6AQU0Cq2nYMlZfX4FUz3FRsazbjTW
1qObcvPRUAVScaa7SRGdensvbNV++pN1XqEdc++szxo58UzPaEgDlHIe2sEIVXnFkHnJv0ikRHG3
urcA1bdj7Rac7dJBeQOQMdZEGmrWWmmbJzvk3OmoK9tKN7wcErQSdlqyYOMLesPfa7YNyLFYEJQd
CC/N7V8U9yFZx8akWREb8lJYDl9KypirEsufleiew26CWrwcbmdlldDCFS6/HDGCAhcwggITAgEB
MIGQMHkxCzAJBgNVBAYTAlVTMQswCQYDVQQIEwJDQTEUMBIGA1UEBxMLU2FudGEgQ2xhcmExGjAY
BgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJ
c3N1aW5nIENBIDRCAhMzAAB04Th3owY0UbEUAAAAAHThMAkGBSsOAwIaBQCgXTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDEwMDM4MTVaMCMGCSqGSIb3DQEJ
BDEWBBRzM67Mf5jFyfXmzDPT/4VuIq0jvDANBgkqhkiG9w0BAQEFAASCAQBTicXVV+PW0ABvcI6J
054q/PcdylFEvK7qbXKRwqTW5/69FHNtzMHaublB6M/9y1F/ikBl83uSFR6tFik65BjdCu81TmNX
ot14RndK1YiFJx40hQpXkps4GZP2efEdXMMLcf2/lmanIS7dVmexuP+OOF/Sdw/76ZP/uHKmLZ9d
aYHbkd7PwTigk3wg/zi49vgy8s6CUbr1gjkIuv3z1R1JTPfEZdygNRseutlRNaG3CwTt7+0NM/QO
rOZvt2TL5djBZt8FriEQXBQd9YO09tOct+cZRBCmlz+KpJU6kPenDeDJHYVJpOyuy3QR4vMGgas1
9VvCqtZZD88DS447ndpyAAAAAAAA


--=-fa9HS1XPP5o3+tU6rMYR--

--===============0282151032==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0282151032==--
