Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFBF10D4C
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2019 21:37:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E51FD892B7;
	Wed,  1 May 2019 19:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC36E892B9
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2019 19:37:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 May 2019 12:37:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,418,1549958400"; 
 d="p7s'?scan'208";a="166673565"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2019 12:37:56 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.95]) by
 FMSMSX108.amr.corp.intel.com ([169.254.9.202]) with mapi id 14.03.0415.000;
 Wed, 1 May 2019 12:37:55 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/6] drm/i915: Add macro for SSEU stride calculation
Thread-Index: AQHVAElRJqoMkk1CO0unrfcTiyGtGKZXH32A
Date: Wed, 1 May 2019 19:37:54 +0000
Message-ID: <5ddb987f8a4148674959b3fc3814dc1956bbffcb.camel@intel.com>
References: <20190501153450.30494-1-stuart.summers@intel.com>
 <20190501153450.30494-3-stuart.summers@intel.com>
 <fdfbce56-944e-60d9-8978-bfedc0853481@intel.com>
In-Reply-To: <fdfbce56-944e-60d9-8978-bfedc0853481@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Add macro for SSEU stride
 calculation
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
Content-Type: multipart/mixed; boundary="===============0704414887=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0704414887==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-64ESBTWI4zzRIsffSuSA"

--=-64ESBTWI4zzRIsffSuSA
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-05-01 at 11:11 -0700, Daniele Ceraolo Spurio wrote:
>=20
> On 5/1/19 8:34 AM, Stuart Summers wrote:
> > Subslice stride and EU stride are calculated multiple times in
> > i915_query. Move this calculation to a macro to reduce code
> > duplication.
> >=20
> > v2: update headers in intel_sseu.h
> >=20
> > Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> > Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_sseu.h |  2 ++
> >   drivers/gpu/drm/i915/i915_query.c    | 17 ++++++++---------
> >   2 files changed, 10 insertions(+), 9 deletions(-)
> >=20
> > diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > index 73bc824094e8..c0b16b248d4c 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_sseu.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_sseu.h
> > @@ -8,11 +8,13 @@
> >   #define __INTEL_SSEU_H__
> >  =20
> >   #include <linux/types.h>
> > +#include <linux/kernel.h>
> >  =20
> >   struct drm_i915_private;
> >  =20
> >   #define GEN_MAX_SLICES		(6) /* CNL upper bound */
> >   #define GEN_MAX_SUBSLICES	(8) /* ICL upper bound */
> > +#define GEN_SSEU_STRIDE(bits) DIV_ROUND_UP(bits, BITS_PER_BYTE)
>=20
> What we pass to this macro isn't really a bits count but the maximum=20
> amount of s/ss/eus. s/bits/max_entry/, or something like that? with
> that:

Makes sense, I'll make the change in the next series post. Thanks for
the review!

-Stuart

>=20
> Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>=20
> Daniele
>=20
> >  =20
> >   struct sseu_dev_info {
> >   	u8 slice_mask;
> > diff --git a/drivers/gpu/drm/i915/i915_query.c
> > b/drivers/gpu/drm/i915/i915_query.c
> > index 782183b78f49..7c1708c22811 100644
> > --- a/drivers/gpu/drm/i915/i915_query.c
> > +++ b/drivers/gpu/drm/i915/i915_query.c
> > @@ -37,6 +37,8 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> > >sseu;
> >   	struct drm_i915_query_topology_info topo;
> >   	u32 slice_length, subslice_length, eu_length, total_length;
> > +	u8 subslice_stride =3D GEN_SSEU_STRIDE(sseu->max_subslices);
> > +	u8 eu_stride =3D GEN_SSEU_STRIDE(sseu->max_eus_per_subslice);
> >   	int ret;
> >  =20
> >   	if (query_item->flags !=3D 0)
> > @@ -48,12 +50,10 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	BUILD_BUG_ON(sizeof(u8) !=3D sizeof(sseu->slice_mask));
> >  =20
> >   	slice_length =3D sizeof(sseu->slice_mask);
> > -	subslice_length =3D sseu->max_slices *
> > -		DIV_ROUND_UP(sseu->max_subslices, BITS_PER_BYTE);
> > -	eu_length =3D sseu->max_slices * sseu->max_subslices *
> > -		DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE);
> > -
> > -	total_length =3D sizeof(topo) + slice_length + subslice_length +
> > eu_length;
> > +	subslice_length =3D sseu->max_slices * subslice_stride;
> > +	eu_length =3D sseu->max_slices * sseu->max_subslices * eu_stride;
> > +	total_length =3D sizeof(topo) + slice_length + subslice_length +
> > +		       eu_length;
> >  =20
> >   	ret =3D copy_query_item(&topo, sizeof(topo), total_length,
> >   			      query_item);
> > @@ -69,10 +69,9 @@ static int query_topology_info(struct
> > drm_i915_private *dev_priv,
> >   	topo.max_eus_per_subslice =3D sseu->max_eus_per_subslice;
> >  =20
> >   	topo.subslice_offset =3D slice_length;
> > -	topo.subslice_stride =3D DIV_ROUND_UP(sseu->max_subslices,
> > BITS_PER_BYTE);
> > +	topo.subslice_stride =3D subslice_stride;
> >   	topo.eu_offset =3D slice_length + subslice_length;
> > -	topo.eu_stride =3D
> > -		DIV_ROUND_UP(sseu->max_eus_per_subslice,
> > BITS_PER_BYTE);
> > +	topo.eu_stride =3D eu_stride;
> >  =20
> >   	if (__copy_to_user(u64_to_user_ptr(query_item->data_ptr),
> >   			   &topo, sizeof(topo)))
> >=20

--=-64ESBTWI4zzRIsffSuSA
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA1MDExOTM3NTBaMCMGCSqGSIb3DQEJ
BDEWBBTHqD+PkYcqglsZXPsLn0tP0nPkEzANBgkqhkiG9w0BAQEFAASCAQBFuFIxE38UdCLyxqPQ
mmvQM+N3KCbN/plQfNm2Ei/yy40KL78yuqAUj87+0mgtZNbDHXZmbDqhlnWZWGThmg66iuOTlCAg
JFMeUpLa36FhetvekAAJ5RT2FFTQIY/fTcHhbiK/H8Odx+yhwhl5v/MnsGIsRBqKi+uCmW7FpIUU
o52OUnqRVPJ5C/jcmav5mfekk9/S4t/E1Onz33er3/rd3ARwFnzotHnrcqbOKVnzdE2XLOdJF42z
b/APOYpcigMUqdXbzPfxXwctS84uIEIw7gpnYJ/veVjtN/cbj3+oMAcIPjEbetSJoHWhZD69jzqI
XoxCLJbspEtau/+rp3TfAAAAAAAA


--=-64ESBTWI4zzRIsffSuSA--

--===============0704414887==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0704414887==--
