Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5576EC22
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Jul 2019 23:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EBE6E86B;
	Fri, 19 Jul 2019 21:39:26 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205126E86B
 for <Intel-gfx@lists.freedesktop.org>; Fri, 19 Jul 2019 21:39:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jul 2019 14:39:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,283,1559545200"; 
 d="p7s'?scan'208";a="176403745"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jul 2019 14:39:23 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 19 Jul 2019 14:39:23 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.248]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.247]) with mapi id 14.03.0439.000;
 Fri, 19 Jul 2019 14:39:23 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Fix GEN8_MCR_SELECTOR
 programming
Thread-Index: AQHVPMpt/LHo9Q1pDUmMgX46TkSjWqbPx/eAgACPhQCAApkfgA==
Date: Fri, 19 Jul 2019 21:39:22 +0000
Message-ID: <6d61ff566563dadc578a7d113282e2d1060d896f.camel@intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-2-tvrtko.ursulin@linux.intel.com>
 <73a927cb41628e942dec6457d8573884a7cab527.camel@intel.com>
 <ce9aa300-0872-2cbb-28c1-ea9004c5832d@linux.intel.com>
In-Reply-To: <ce9aa300-0872-2cbb-28c1-ea9004c5832d@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix GEN8_MCR_SELECTOR
 programming
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
Content-Type: multipart/mixed; boundary="===============1010642487=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1010642487==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-hgEtWLInco9jqsA9P6Xk"

--=-hgEtWLInco9jqsA9P6Xk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-18 at 06:58 +0100, Tvrtko Ursulin wrote:
> On 17/07/2019 22:25, Summers, Stuart wrote:
> > On Wed, 2019-07-17 at 19:06 +0100, Tvrtko Ursulin wrote:
> > > From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >=20
> > Not opposed to this exactly, but do we really need this patch if
> > we're
> > just getting rid of this routine later in the series?
>=20
> It just happens this fix alone is enough to fix MCR on all ICL parts
> I=20
> have seen (what CI has in BAT and in shards) and being a small one it
> is=20
> realistic to backport it to stable kernels. Sounds reasonable or I
> have=20
> missed something?

Sorry for the delayed response here. Yes that sounds reasonable to me
too, thanks for the explanation.

Reviewed-by: Stuart Summers <stuart.summers@intel.com>

Thanks,
Stuart

>=20
> Regards,
>=20
> Tvrtko
>=20
> > Thanks,
> > Stuart
> >=20
> > >=20
> > > fls returns bit positions starting from one for the lsb and the
> > > MCR
> > > register expects zero based (sub)slice addressing.
> > >=20
> > > Incorrent MCR programming can have the effect of directing MMIO
> > > reads
> > > of
> > > registers in the 0xb100-0xb3ff range to invalid subslice
> > > returning
> > > zeroes
> > > instead of actual content.
> > >=20
> > > Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Fixes: 1e40d4aea57b ("drm/i915/cnl: Implement
> > > WaProgramMgsrForCorrectSliceSpecificMmioReads")
> > > Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > ---
> > >   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 9 +++++++--
> > >   1 file changed, 7 insertions(+), 2 deletions(-)
> > >=20
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > index c0bc9cb7f228..6f93caf7a5a1 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> > > @@ -962,9 +962,14 @@ const char *i915_cache_level_str(struct
> > > drm_i915_private *i915, int type)
> > >   u32 intel_calculate_mcr_s_ss_select(struct drm_i915_private
> > > *dev_priv)
> > >   {
> > >   	const struct sseu_dev_info *sseu =3D
> > > &RUNTIME_INFO(dev_priv)-
> > > > sseu;
> > >=20
> > > +	unsigned int slice =3D fls(sseu->slice_mask) - 1;
> > > +	unsigned int subslice;
> > >   	u32 mcr_s_ss_select;
> > > -	u32 slice =3D fls(sseu->slice_mask);
> > > -	u32 subslice =3D fls(sseu->subslice_mask[slice]);
> > > +
> > > +	GEM_BUG_ON(slice >=3D ARRAY_SIZE(sseu->subslice_mask));
> > > +	subslice =3D fls(sseu->subslice_mask[slice]);
> > > +	GEM_BUG_ON(!subslice);
> > > +	subslice--;
> > >  =20
> > >   	if (IS_GEN(dev_priv, 10))
> > >   		mcr_s_ss_select =3D GEN8_MCR_SLICE(slice) |

--=-hgEtWLInco9jqsA9P6Xk
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MTkyMTM5MTlaMCMGCSqGSIb3DQEJ
BDEWBBRlsaFZAyAtt6ZRQzDTBztMKtvbxzANBgkqhkiG9w0BAQEFAASCAQCehlAXuB3rrM+IxInu
AVfHOx09eN2vwZkLMss+LjlTHO/EDIapFQVuzjO7vwe3llLP9OIEmbA/EWyPSk0QKx3VFG9wdfhf
xNtBb56D4jUez2KRh+MhY0WLcWT2FKLMct/XKKltkgryU47p0fqT1P9Qs1+rdXsrOz4/cC1YNcdK
wW71RSnCmhqUh5hQFhbZqWAvZh+SAwJDZlKNsfTSkmk+jFhyfvqS6BAPqdwYGOGB37yow2y/AJFu
iD1kBVBf7QBviwLLk2xefaY6OLWLiD2TbpCAZm2DOXul9hYO0Wz2zNQ28c4jT2S3HfaLmdhtDj2Z
YOG52YAUCOtG0ca9OyC1AAAAAAAA


--=-hgEtWLInco9jqsA9P6Xk--

--===============1010642487==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1010642487==--
