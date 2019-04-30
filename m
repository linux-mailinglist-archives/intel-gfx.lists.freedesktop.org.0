Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79567FB44
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 16:20:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF88689182;
	Tue, 30 Apr 2019 14:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CC989182
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 14:19:57 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 07:19:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; 
 d="p7s'?scan'208";a="295797710"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by orsmga004.jf.intel.com with ESMTP; 30 Apr 2019 07:19:56 -0700
Received: from fmsmsx101.amr.corp.intel.com (10.18.124.199) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 30 Apr 2019 07:19:56 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 fmsmsx101.amr.corp.intel.com ([169.254.1.245]) with mapi id 14.03.0415.000;
 Tue, 30 Apr 2019 07:19:55 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915: Move sseu helper functions
 to intel_sseu.h
Thread-Index: AQHU/qOCc44Qu+KgYEeva2Aowd4wsKZU3uIAgABYvAA=
Date: Tue, 30 Apr 2019 14:19:55 +0000
Message-ID: <a5d090d029a7d5c5e0bbfcef7b3a6b9028bf94ea.camel@intel.com>
References: <20190429155135.6468-1-stuart.summers@intel.com>
 <20190429155135.6468-5-stuart.summers@intel.com> <87ef5jrhlz.fsf@intel.com>
In-Reply-To: <87ef5jrhlz.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Move sseu helper functions to
 intel_sseu.h
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
Content-Type: multipart/mixed; boundary="===============2007553272=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2007553272==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-FOwsG/qyS9Szl3bpanAl"

--=-FOwsG/qyS9Szl3bpanAl
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-04-30 at 12:02 +0300, Jani Nikula wrote:
> On Mon, 29 Apr 2019, Stuart Summers <stuart.summers@intel.com> wrote:
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_sseu.h     | 47
> > ++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/intel_device_info.h | 47 --------------------
> > ----
> >  2 files changed, 47 insertions(+), 47 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > index f5ff6b7a756a..5127b4ff92bf 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -63,12 +63,59 @@ intel_sseu_from_device_info(const struct
> > sseu_dev_info *sseu)
> >  	return value;
> >  }
> > =20
> > +static inline unsigned int sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> > +{
> > +	unsigned int i, total =3D 0;
> > +
> > +	for (i =3D 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
> > +		total +=3D hweight8(sseu->subslice_mask[i]);
> > +
> > +	return total;
> > +}
> > +
> >  static inline unsigned int
> >  sseu_subslices_per_slice(const struct sseu_dev_info *sseu, u8
> > slice)
> >  {
> >  	return hweight8(sseu->subslice_mask[slice]);
> >  }
> > =20
> > +static inline int sseu_eu_idx(const struct sseu_dev_info *sseu,
> > +			      int slice, int subslice)
> > +{
> > +	int subslice_stride =3D DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > +					   BITS_PER_BYTE);
> > +	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > +
> > +	return slice * slice_stride + subslice * subslice_stride;
> > +}
> > +
> > +static inline u16 sseu_get_eus(const struct sseu_dev_info *sseu,
> > +			       int slice, int subslice)
> > +{
> > +	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > +	u16 eu_mask =3D 0;
> > +
> > +	for (i =3D 0;
> > +	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > +		eu_mask |=3D ((u16) sseu->eu_mask[offset + i]) <<
> > +			(i * BITS_PER_BYTE);
> > +	}
> > +
> > +	return eu_mask;
> > +}
> > +
> > +static inline void sseu_set_eus(struct sseu_dev_info *sseu,
> > +				int slice, int subslice, u16 eu_mask)
> > +{
> > +	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > +
> > +	for (i =3D 0;
> > +	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {an't be=20
> > +		sseu->eu_mask[offset + i] =3D
> > +			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > +	}
> > +}
> > +
>=20
> I'd appreciate follow-up to rename these functions
> intel_sseu_*. Functions in intel_foo.[ch] should be named
> intel_foo_*().

Makes sense.

>=20
> Also, I'm starting to wonder the benefits of the plethora of inline
> functions we use. Should we move them to the .c file? It can't be a
> perf
> thing can it?

These are mostly called at driver load time, so no, shouldn't be a
performance issue. I don't have a preference either way, so no problem
moving these as suggested.

Thanks,
Stuart

>=20
> BR,
> Jani.
>=20
> >  u32 intel_sseu_make_rpcs(struct drm_i915_private *i915,
> >  			 const struct intel_sseu *req_sseu);
> > =20
> > diff --git a/drivers/gpu/drm/i915/intel_device_info.h
> > b/drivers/gpu/drm/i915/intel_device_info.h
> > index 5a2e17d6146b..6412a9c72898 100644
> > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > @@ -218,53 +218,6 @@ struct intel_driver_caps {
> >  	bool has_logical_contexts:1;
> >  };
> > =20
> > -static inline unsigned int sseu_subslice_total(const struct
> > sseu_dev_info *sseu)
> > -{
> > -	unsigned int i, total =3D 0;
> > -
> > -	for (i =3D 0; i < ARRAY_SIZE(sseu->subslice_mask); i++)
> > -		total +=3D hweight8(sseu->subslice_mask[i]);
> > -
> > -	return total;
> > -}
> > -
> > -static inline int sseu_eu_idx(const struct sseu_dev_info *sseu,
> > -			      int slice, int subslice)
> > -{
> > -	int subslice_stride =3D DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > -					   BITS_PER_BYTE);
> > -	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > -
> > -	return slice * slice_stride + subslice * subslice_stride;
> > -}
> > -
> > -static inline u16 sseu_get_eus(const struct sseu_dev_info *sseu,
> > -			       int slice, int subslice)
> > -{
> > -	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > -	u16 eu_mask =3D 0;
> > -
> > -	for (i =3D 0;
> > -	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > -		eu_mask |=3D ((u16) sseu->eu_mask[offset + i]) <<
> > -			(i * BITS_PER_BYTE);
> > -	}
> > -
> > -	return eu_mask;
> > -}
> > -
> > -static inline void sseu_set_eus(struct sseu_dev_info *sseu,
> > -				int slice, int subslice, u16 eu_mask)
> > -{
> > -	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > -
> > -	for (i =3D 0;
> > -	     i < DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE); i++) {
> > -		sseu->eu_mask[offset + i] =3D
> > -			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > -	}
> > -}
> > -
> >  const char *intel_platform_name(enum intel_platform platform);
> > =20
> >  void intel_device_info_subplatform_init(struct drm_i915_private
> > *dev_priv);
>=20
>=20

--=-FOwsG/qyS9Szl3bpanAl
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA0MzAxNDE5NTJaMCMGCSqGSIb3DQEJ
BDEWBBSjLreOGdV9ND8OnIYJLXjOJQNA4jANBgkqhkiG9w0BAQEFAASCAQBevUKAUvPzTHfyn5ov
wuJ0HZH8iUPeBB09MYGAdznS83CqP1uuwDDRrzabLJK8CWNhbFRVzDeTpTK6bGYbewCmgaha6ikc
Qu18ebvkFgN8UaqxFeW2WnuLtEUVAErmpQ+Q7sPDOzdu4pncJXyKh7MhkAxu2itodfIs2Qh0tBfc
jKpoIdm92ylPAXHy6wRdKaGd3s69bTTF+mR1yS/BMGb+ZX/TInzYW45f9GJc71RdvDmnY2dOjCK6
RZgrKdW3WWqmC0SCuriKbp0SHN+PABJoCJHHv7KF0G5XowIE0Ou5DuOqpCLFZselq6j9xsgynkdI
ubGz+0vdiagSYqiZQZ8zAAAAAAAA


--=-FOwsG/qyS9Szl3bpanAl--

--===============2007553272==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2007553272==--
