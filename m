Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACEE02E1BB
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 17:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73116E0A0;
	Wed, 29 May 2019 15:55:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01266E0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 15:55:02 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 08:55:02 -0700
X-ExtLoop1: 1
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga006.jf.intel.com with ESMTP; 29 May 2019 08:55:00 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.141]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.181]) with mapi id 14.03.0415.000;
 Wed, 29 May 2019 08:55:00 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "natechancellor@gmail.com" <natechancellor@gmail.com>
Thread-Topic: [Intel-gfx] [CI,5/5] drm/i915: Expand subslice mask
Thread-Index: AQHVFfRcQUfLM6XFRUe/ghdm5X3r76aCoHsAgAAWr4A=
Date: Wed, 29 May 2019 15:55:00 +0000
Message-ID: <503d174955344d8f6c12cb164240b188dd5c3716.camel@intel.com>
References: <20190524154022.13575-6-stuart.summers@intel.com>
 <20190529075836.GA62087@archlinux-epyc> <87tvdd49f9.fsf@intel.com>
In-Reply-To: <87tvdd49f9.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [CI,5/5] drm/i915: Expand subslice mask
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: multipart/mixed; boundary="===============2125556086=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2125556086==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-8DXweISiFzzUwhotHo6f"

--=-8DXweISiFzzUwhotHo6f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-29 at 17:33 +0300, Jani Nikula wrote:
> On Wed, 29 May 2019, Nathan Chancellor <natechancellor@gmail.com>
> wrote:
> > Hi Stuart,
> >=20
> > On Fri, May 24, 2019 at 08:40:22AM -0700, Stuart Summers wrote:
> > > Currently, the subslice_mask runtime parameter is stored as an
> > > array of subslices per slice. Expand the subslice mask array to
> > > better match what is presented to userspace through the
> > > I915_QUERY_TOPOLOGY_INFO ioctl. The index into this array is
> > > then calculated:
> > >   slice * subslice stride + subslice index / 8
> > >=20
> > > v2: fix spacing in set_sseu_info args
> > >     use set_sseu_info to initialize sseu data when building
> > >     device status in debugfs
> > >     rename variables in intel_engine_types.h to avoid checkpatch
> > >     warnings
> > > v3: update headers in intel_sseu.h
> > > v4: add const to some sseu_dev_info variables
> > >     use sseu->eu_stride for EU stride calculations
> > > v5: address review comments from Tvrtko and Daniele
> > > v6: remove extra space in intel_sseu_get_subslices
> > >     return the correct subslice enable in for_each_instdone
> > >     add GEM_BUG_ON to ensure user doesn't pass invalid ss_mask
> > > size
> > >     use printk formatted string for subslice mask
> > > v7: remove string.h header and rebase
> > >=20
> > > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > > Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> > > Reviewed-by: Daniele Ceraolo Spurio <
> > > daniele.ceraolospurio@intel.com>
> > > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > > ---
> >=20
> > <snip>
> >=20
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.c
> > > b/drivers/gpu/drm/i915/intel_device_info.c
> > > index 97f742530fa1..3625f777f3a3 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.c
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.c
> > > @@ -92,9 +92,9 @@ static void sseu_dump(const struct
> > > sseu_dev_info *sseu, struct drm_printer *p)
> > >  		   hweight8(sseu->slice_mask), sseu->slice_mask);
> > >  	drm_printf(p, "subslice total: %u\n",
> > > intel_sseu_subslice_total(sseu));
> > >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > > -		drm_printf(p, "slice%d: %u subslices, mask=3D%04x\n",
> > > +		drm_printf(p, "slice%d: %u subslices, mask=3D%08x\n",
> > >  			   s, intel_sseu_subslices_per_slice(sseu, s),
> > > -			   sseu->subslice_mask[s]);
> > > +			   intel_sseu_get_subslices(sseu, s));
> > >  	}
> > >  	drm_printf(p, "EU total: %u\n", sseu->eu_total);
> > >  	drm_printf(p, "EU per subslice: %u\n", sseu->eu_per_subslice);
> > > @@ -117,10 +117,9 @@ void intel_device_info_dump_runtime(const
> > > struct intel_runtime_info *info,
> > >  static int sseu_eu_idx(const struct sseu_dev_info *sseu, int
> > > slice,
> > >  		       int subslice)
> > >  {
> > > -	int subslice_stride =3D GEN_SSEU_STRIDE(sseu-
> > > >max_eus_per_subslice);
> > > -	int slice_stride =3D sseu->max_subslices * subslice_stride;
> > > +	int slice_stride =3D sseu->max_subslices * sseu->eu_stride;
> > > =20
> > > -	return slice * slice_stride + subslice * subslice_stride;
> > > +	return slice * slice_stride + subslice * sseu->eu_stride;
> > >  }
> > > =20
> > >  static u16 sseu_get_eus(const struct sseu_dev_info *sseu, int
> > > slice,
> > > @@ -129,7 +128,7 @@ static u16 sseu_get_eus(const struct
> > > sseu_dev_info *sseu, int slice,
> > >  	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > >  	u16 eu_mask =3D 0;
> > > =20
> > > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > > i++) {
> > > +	for (i =3D 0; i < sseu->eu_stride; i++) {
> > >  		eu_mask |=3D ((u16)sseu->eu_mask[offset + i]) <<
> > >  			(i * BITS_PER_BYTE);
> > >  	}
> > > @@ -142,7 +141,7 @@ static void sseu_set_eus(struct sseu_dev_info
> > > *sseu, int slice, int subslice,
> > >  {
> > >  	int i, offset =3D sseu_eu_idx(sseu, slice, subslice);
> > > =20
> > > -	for (i =3D 0; i < GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> > > i++) {
> > > +	for (i =3D 0; i < sseu->eu_stride; i++) {
> > >  		sseu->eu_mask[offset + i] =3D
> > >  			(eu_mask >> (BITS_PER_BYTE * i)) & 0xff;
> > >  	}
> > > @@ -159,9 +158,9 @@ void intel_device_info_dump_topology(const
> > > struct sseu_dev_info *sseu,
> > >  	}
> > > =20
> > >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > > -		drm_printf(p, "slice%d: %u subslice(s) (0x%hhx):\n",
> > > +		drm_printf(p, "slice%d: %u subslice(s) (0x%08x):\n",
> > >  			   s, intel_sseu_subslices_per_slice(sseu, s),
> > > -			   sseu->subslice_mask[s]);
> > > +			   intel_sseu_get_subslices(sseu, s));
> > > =20
> > >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >  			u16 enabled_eus =3D sseu_get_eus(sseu, s, ss);
> > > @@ -190,15 +189,10 @@ static void gen11_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > >  	u8 eu_en;
> > >  	int s;
> > > =20
> > > -	if (IS_ELKHARTLAKE(dev_priv)) {
> > > -		sseu->max_slices =3D 1;
> > > -		sseu->max_subslices =3D 4;
> > > -		sseu->max_eus_per_subslice =3D 8;
> > > -	} else {
> > > -		sseu->max_slices =3D 1;
> > > -		sseu->max_subslices =3D 8;
> > > -		sseu->max_eus_per_subslice =3D 8;
> > > -	}
> > > +	if (IS_ELKHARTLAKE(dev_priv))
> > > +		intel_sseu_set_info(sseu, 1, 4, 8);
> > > +	else
> > > +		intel_sseu_set_info(sseu, 1, 8, 8);
> > > =20
> > >  	s_en =3D I915_READ(GEN11_GT_SLICE_ENABLE) & GEN11_GT_S_ENA_MASK;
> > >  	ss_en =3D ~I915_READ(GEN11_GT_SUBSLICE_DISABLE);
> > > @@ -207,15 +201,15 @@ static void gen11_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > > =20
> > >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > >  		if (s_en & BIT(s)) {
> > > -			int ss_idx =3D sseu->max_subslices * s;
> > >  			int ss;
> > > =20
> > >  			sseu->slice_mask |=3D BIT(s);
> > > -			sseu->subslice_mask[s] =3D (ss_en >> ss_idx) &
> > > ss_en_mask;
> > > -			for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > > -				if (sseu->subslice_mask[s] & BIT(ss))
> > > +
> > > +			intel_sseu_set_subslices(sseu, s, ss_en_mask);
> > > +
> > > +			for (ss =3D 0; ss < sseu->max_subslices; ss++)
> > > +				if (intel_sseu_has_subslice(sseu, s,
> > > ss))
> > >  					sseu_set_eus(sseu, s, ss,
> > > eu_en);
> > > -			}
> > >  		}
> > >  	}
> > >  	sseu->eu_per_subslice =3D hweight8(eu_en);
> > > @@ -235,23 +229,10 @@ static void gen10_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > >  	const int eu_mask =3D 0xff;
> > >  	u32 subslice_mask, eu_en;
> > > =20
> > > +	intel_sseu_set_info(sseu, 6, 4, 8);
> > > +
> > >  	sseu->slice_mask =3D (fuse2 & GEN10_F2_S_ENA_MASK) >>
> > >  			    GEN10_F2_S_ENA_SHIFT;
> > > -	sseu->max_slices =3D 6;
> > > -	sseu->max_subslices =3D 4;
> > > -	sseu->max_eus_per_subslice =3D 8;
> > > -
> > > -	subslice_mask =3D (1 << 4) - 1;
> > > -	subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > > -			   GEN10_F2_SS_DIS_SHIFT);
> > > -
> > > -	/*
> > > -	 * Slice0 can have up to 3 subslices, but there are only 2 in
> > > -	 * slice1/2.
> > > -	 */
> > > -	sseu->subslice_mask[0] =3D subslice_mask;
> > > -	for (s =3D 1; s < sseu->max_slices; s++)
> > > -		sseu->subslice_mask[s] =3D subslice_mask & 0x3;
> > > =20
> > >  	/* Slice0 */
> > >  	eu_en =3D ~I915_READ(GEN8_EU_DISABLE0);
> > > @@ -276,14 +257,22 @@ static void gen10_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > >  	eu_en =3D ~I915_READ(GEN10_EU_DISABLE3);
> > >  	sseu_set_eus(sseu, 5, 1, eu_en & eu_mask);
> > > =20
> > > -	/* Do a second pass where we mark the subslices disabled if all
> > > their
> > > -	 * eus are off.
> > > -	 */
> > > +	subslice_mask =3D (1 << 4) - 1;
> > > +	subslice_mask &=3D ~((fuse2 & GEN10_F2_SS_DIS_MASK) >>
> > > +			   GEN10_F2_SS_DIS_SHIFT);
> > > +
> > >  	for (s =3D 0; s < sseu->max_slices; s++) {
> > >  		for (ss =3D 0; ss < sseu->max_subslices; ss++) {
> > >  			if (sseu_get_eus(sseu, s, ss) =3D=3D 0)
> > > -				sseu->subslice_mask[s] &=3D ~BIT(ss);
> > > +				subslice_mask &=3D ~BIT(ss);
> > >  		}
> > > +
> > > +		/*
> > > +		 * Slice0 can have up to 3 subslices, but there are
> > > only 2 in
> > > +		 * slice1/2.
> > > +		 */
> > > +		intel_sseu_set_subslices(sseu, s, s =3D=3D 0 ?
> > > subslice_mask :
> > > +							   subslice_mas
> > > k & 0x3);
> > >  	}
> > > =20
> > >  	sseu->eu_total =3D compute_eu_total(sseu);
> > > @@ -309,13 +298,12 @@ static void
> > > cherryview_sseu_info_init(struct drm_i915_private *dev_priv)
> > >  {
> > >  	struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)->sseu;
> > >  	u32 fuse;
> > > +	u8 subslice_mask;
> > > =20
> > >  	fuse =3D I915_READ(CHV_FUSE_GT);
> > > =20
> > >  	sseu->slice_mask =3D BIT(0);
> > > -	sseu->max_slices =3D 1;
> > > -	sseu->max_subslices =3D 2;
> > > -	sseu->max_eus_per_subslice =3D 8;
> > > +	intel_sseu_set_info(sseu, 1, 2, 8);
> > > =20
> > >  	if (!(fuse & CHV_FGT_DISABLE_SS0)) {
> > >  		u8 disabled_mask =3D
> > > @@ -324,7 +312,7 @@ static void cherryview_sseu_info_init(struct
> > > drm_i915_private *dev_priv)
> > >  			(((fuse & CHV_FGT_EU_DIS_SS0_R1_MASK) >>
> > >  			  CHV_FGT_EU_DIS_SS0_R1_SHIFT) << 4);
> > > =20
> > > -		sseu->subslice_mask[0] |=3D BIT(0);
> > > +		subslice_mask |=3D BIT(0);
> >=20
> > When building with -Wuninitialized, clang warns:
> >=20
> > drivers/gpu/drm/i915/intel_device_info.c:315:3: warning: variable
> > 'subslice_mask' is uninitialized when used here [-Wuninitialized]
> >                 subslice_mask |=3D BIT(0);
> >                 ^~~~~~~~~~~~~
> > drivers/gpu/drm/i915/intel_device_info.c:301:18: note: initialize
> > the variable 'subslice_mask' to silence this warning
> >         u8 subslice_mask;
> >                         ^
> >                          =3D '\0'
> >=20
> > I assume that it should be initialized to zero but maybe you
> > intended
> > something different?
>=20
> As it happens, the commit has been reverted for other reasons, and we
> (the royal we, I really mean Stuart) can fix this while at it. ;)

I'll accept the royal 'we' descriptor in this instance and address the
issue. Thanks for the comment!

-Stuart

>=20
> BR,
> Jani.
>=20
>=20

--=-8DXweISiFzzUwhotHo6f
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MjkxNTU0NTdaMCMGCSqGSIb3DQEJ
BDEWBBSz4efXAVI/MUNOiCIXpztEuap7ijANBgkqhkiG9w0BAQEFAASCAQCQMWxW3vGOzA8mN03Y
pQ4UGooogN8VfCjvp4EXUrts9Dvbwh592hmbTLdXmS5mupmEU/JrjwZEUP5tUC3L4VgxVAoEziDs
D5avv6lsDlOlgXr+HL2lK3hq8PJbrw/JTyVuU+nlNA2QbkZOWEnwmKmv9FSJiVjcgVTBme5wcJdi
v4QId04tAjB0WlqAL8NiBp83Zvj3pC1HE5HJT3X7/cxRghpBAf1KAoGPp21XiXjNLsUzcPuqKJ/r
kfjkgMySFXMUi/bx8WLq3qBehNmJNYmgu9Pe0hPdFqLqZSIaIumwzXFydjizPMFXj4tcnS/xmqOc
tSfVubec72/wvh8kPXBOAAAAAAAA


--=-8DXweISiFzzUwhotHo6f--

--===============2125556086==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============2125556086==--
