Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3676C282
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 23:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05CD38908C;
	Wed, 17 Jul 2019 21:24:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCC006E2A9
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 21:24:17 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 14:24:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,275,1559545200"; 
 d="p7s'?scan'208";a="343162054"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga005.jf.intel.com with ESMTP; 17 Jul 2019 14:24:17 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 17 Jul 2019 14:24:15 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.248]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.252]) with mapi id 14.03.0439.000;
 Wed, 17 Jul 2019 14:24:15 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH 3/6] drm/i915: Fix and improve MCR selection logic
Thread-Index: AQHVPMpivNeVeiBg20Kh2wLA3mA9fabPx6wA
Date: Wed, 17 Jul 2019 21:24:14 +0000
Message-ID: <81e46c0253c1bba756a0c48232c180205aa8b37a.camel@intel.com>
References: <20190717180624.20354-1-tvrtko.ursulin@linux.intel.com>
 <20190717180624.20354-4-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190717180624.20354-4-tvrtko.ursulin@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Fix and improve MCR selection
 logic
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
Content-Type: multipart/mixed; boundary="===============0415146621=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0415146621==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-r86w+MDyJXMkC4QpNYKO"

--=-r86w+MDyJXMkC4QpNYKO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2019-07-17 at 19:06 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>=20
> A couple issues were present in this code:
>=20
> 1.
> fls() usage was incorrect causing off by one in subslice mask lookup,
> which in other words means subslice mask of all zeroes is always used
> (subslice mask of a slice which is not present, or even out of bounds
> array access), rendering the checks in wa_init_mcr either futile or
> random.
>=20
> 2.
> Condition in WARN_ON was not correct. It is doing a bitwise and
> operation
> between a positive (present subslices) and negative mask (disabled L3
> banks).
>=20
> This means that with corrected fls() usage the assert would always
> incorrectly fail.
>=20
> We could fix this by inverting the fuse bits in the check, but
> instead do
> one better and improve the code so it not only asserts, but finds the
> first common index between the two masks and only warns if no such
> index
> can be found.
>=20
> v2:
>  * Simplify check for logic and redability.
>  * Improve commentary explaining what is really happening ie. what
> the
>    assert is really trying to check and why.
>=20
> v3:
>  * Find first common index instead of just asserting.
>=20
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: fe864b76c2ab ("drm/i915: Implement
> WaProgramMgsrForL3BankSpecificMmioReads")
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> # v1
> Cc: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>

Reviewed-by: Stuart Summers <stuart.summers@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 24 ------
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 90 +++++++++++------
> ----
>  drivers/gpu/drm/i915/i915_drv.h             |  2 -
>  3 files changed, 49 insertions(+), 67 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index cc4d1826173d..65cbf1d9118d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -959,30 +959,6 @@ const char *i915_cache_level_str(struct
> drm_i915_private *i915, int type)
>  	}
>  }
> =20
> -u32 intel_calculate_mcr_s_ss_select(struct drm_i915_private
> *dev_priv)
> -{
> -	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(dev_priv)-
> >sseu;
> -	unsigned int slice =3D fls(sseu->slice_mask) - 1;
> -	unsigned int subslice;
> -	u32 mcr_s_ss_select;
> -
> -	GEM_BUG_ON(slice >=3D ARRAY_SIZE(sseu->subslice_mask));
> -	subslice =3D fls(sseu->subslice_mask[slice]);
> -	GEM_BUG_ON(!subslice);
> -	subslice--;
> -
> -	if (IS_GEN(dev_priv, 10))
> -		mcr_s_ss_select =3D GEN8_MCR_SLICE(slice) |
> -				  GEN8_MCR_SUBSLICE(subslice);
> -	else if (INTEL_GEN(dev_priv) >=3D 11)
> -		mcr_s_ss_select =3D GEN11_MCR_SLICE(slice) |
> -				  GEN11_MCR_SUBSLICE(subslice);
> -	else
> -		mcr_s_ss_select =3D 0;
> -
> -	return mcr_s_ss_select;
> -}
> -
>  static u32
>  read_subslice_reg(struct intel_engine_cs *engine, int slice, int
> subslice,
>  		  i915_reg_t reg)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 3b1fc7c8faa8..c2325b7ecf8d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -762,7 +762,10 @@ static void
>  wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
>  	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(i915)->sseu;
> -	u32 mcr_slice_subslice_mask;
> +	unsigned int slice, subslice;
> +	u32 l3_en, mcr, mcr_mask;
> +
> +	GEM_BUG_ON(INTEL_GEN(i915) < 10);
> =20
>  	/*
>  	 * WaProgramMgsrForL3BankSpecificMmioReads: cnl,icl
> @@ -770,42 +773,7 @@ wa_init_mcr(struct drm_i915_private *i915,
> struct i915_wa_list *wal)
>  	 * the case, we might need to program MCR select to a valid
> L3Bank
>  	 * by default, to make sure we correctly read certain registers
>  	 * later on (in the range 0xB100 - 0xB3FF).
> -	 * This might be incompatible with
> -	 * WaProgramMgsrForCorrectSliceSpecificMmioReads.
> -	 * Fortunately, this should not happen in production hardware,
> so
> -	 * we only assert that this is the case (instead of
> implementing
> -	 * something more complex that requires checking the range of
> every
> -	 * MMIO read).
> -	 */
> -	if (INTEL_GEN(i915) >=3D 10 &&
> -	    is_power_of_2(sseu->slice_mask)) {
> -		/*
> -		 * read FUSE3 for enabled L3 Bank IDs, if L3 Bank
> matches
> -		 * enabled subslice, no need to redirect MCR packet
> -		 */
> -		u32 slice =3D fls(sseu->slice_mask);
> -		u32 fuse3 =3D
> -			intel_uncore_read(&i915->uncore,
> GEN10_MIRROR_FUSE3);
> -		u8 ss_mask =3D sseu->subslice_mask[slice];
> -
> -		u8 enabled_mask =3D (ss_mask | ss_mask >>
> -				   GEN10_L3BANK_PAIR_COUNT) &
> GEN10_L3BANK_MASK;
> -		u8 disabled_mask =3D fuse3 & GEN10_L3BANK_MASK;
> -
> -		/*
> -		 * Production silicon should have matched L3Bank and
> -		 * subslice enabled
> -		 */
> -		WARN_ON((enabled_mask & disabled_mask) !=3D
> enabled_mask);
> -	}
> -
> -	if (INTEL_GEN(i915) >=3D 11)
> -		mcr_slice_subslice_mask =3D GEN11_MCR_SLICE_MASK |
> -					  GEN11_MCR_SUBSLICE_MASK;
> -	else
> -		mcr_slice_subslice_mask =3D GEN8_MCR_SLICE_MASK |
> -					  GEN8_MCR_SUBSLICE_MASK;
> -	/*
> +	 *
>  	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:cnl,icl
>  	 * Before any MMIO read into slice/subslice specific registers,
> MCR
>  	 * packet control register needs to be programmed to point to
> any
> @@ -815,11 +783,51 @@ wa_init_mcr(struct drm_i915_private *i915,
> struct i915_wa_list *wal)
>  	 * are consistent across s/ss in almost all cases. In the rare
>  	 * occasions, such as INSTDONE, where this value is dependent
>  	 * on s/ss combo, the read should be done with
> read_subslice_reg.
> +	 *
> +	 * Since GEN8_MCR_SELECTOR contains dual-purpose bits which
> select both
> +	 * to which subslice, or to which L3 bank, the respective mmio
> reads
> +	 * will go, we have to find a common index which works for both
> +	 * accesses.
> +	 *
> +	 * Case where we cannot find a common index fortunately should
> not
> +	 * happen in production hardware, so we only emit a warning
> instead of
> +	 * implementing something more complex that requires checking
> the range
> +	 * of every MMIO read.
>  	 */
> -	wa_write_masked_or(wal,
> -			   GEN8_MCR_SELECTOR,
> -			   mcr_slice_subslice_mask,
> -			   intel_calculate_mcr_s_ss_select(i915));
> +
> +	if (INTEL_GEN(i915) >=3D 10 && is_power_of_2(sseu->slice_mask)) {
> +		u32 l3_fuse =3D
> +			intel_uncore_read(&i915->uncore,
> GEN10_MIRROR_FUSE3) &
> +			GEN10_L3BANK_MASK;
> +
> +		DRM_DEBUG_DRIVER("L3 fuse =3D %x\n", l3_fuse);
> +		l3_en =3D ~(l3_fuse << GEN10_L3BANK_PAIR_COUNT |
> l3_fuse);
> +	} else {
> +		l3_en =3D ~0;
> +	}
> +
> +	slice =3D fls(sseu->slice_mask) - 1;
> +	GEM_BUG_ON(slice >=3D ARRAY_SIZE(sseu->subslice_mask));
> +	subslice =3D fls(l3_en & sseu->subslice_mask[slice]);
> +	if (!subslice) {
> +		DRM_WARN("No common index found between subslice mask
> %x and L3 bank mask %x!\n",
> +			 sseu->subslice_mask[slice], l3_en);
> +		subslice =3D fls(l3_en);
> +		WARN_ON(!subslice);
> +	}
> +	subslice--;
> +
> +	if (INTEL_GEN(i915) >=3D 11) {
> +		mcr =3D GEN11_MCR_SLICE(slice) |
> GEN11_MCR_SUBSLICE(subslice);
> +		mcr_mask =3D GEN11_MCR_SLICE_MASK |
> GEN11_MCR_SUBSLICE_MASK;
> +	} else {
> +		mcr =3D GEN8_MCR_SLICE(slice) |
> GEN8_MCR_SUBSLICE(subslice);
> +		mcr_mask =3D GEN8_MCR_SLICE_MASK |
> GEN8_MCR_SUBSLICE_MASK;
> +	}
> +
> +	DRM_DEBUG_DRIVER("MCR slice/subslice =3D %x\n", mcr);
> +
> +	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);
>  }
> =20
>  static void
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h
> index 78c1ed6e17b2..0e44cc4b2ca1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -2389,8 +2389,6 @@ void i915_driver_remove(struct drm_device
> *dev);
>  void intel_engine_init_hangcheck(struct intel_engine_cs *engine);
>  int vlv_force_gfx_clock(struct drm_i915_private *dev_priv, bool on);
> =20
> -u32 intel_calculate_mcr_s_ss_select(struct drm_i915_private
> *dev_priv);
> -
>  static inline bool intel_gvt_active(struct drm_i915_private
> *dev_priv)
>  {
>  	return dev_priv->gvt;

--=-r86w+MDyJXMkC4QpNYKO
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MTcyMTI0MDJaMCMGCSqGSIb3DQEJ
BDEWBBRWSS0Z7M8c859VJWX0hXnD/QkH5TANBgkqhkiG9w0BAQEFAASCAQCAEybx5SlftXcampq0
wFt5k7JRJ/I1Nk6W/nU/uCDply5JNlXq8Gd34m+sx3n4HVd2gwlsmnB2ADVG/8mOosPC/qE5hQnD
Udzgc4BEvIEMwbk3GZ2/o/lbk+vOrjZSSELGX5kne5pO3GnlvqIvJWgx4/wod7FnkqeAHBD9LJ8i
iTaI7zk4QsNuVrdRqAc4UsQlTZFI17+FHkMGJCzxFctwEgrs/+H4K6kH7sBsUuZT/8fE3/ZH4mim
J/wrM7WVAETuzaD1ILQnYxMWJ0Z0wGLvFN/Ej0gEOIL0oFJG5j8yZ90xTgyDSwxAOkvz1CheYOYi
LRSWK27f4qvfzMCZNXx3AAAAAAAA


--=-r86w+MDyJXMkC4QpNYKO--

--===============0415146621==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============0415146621==--
