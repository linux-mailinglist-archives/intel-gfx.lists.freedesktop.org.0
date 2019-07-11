Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D267C6628A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 01:51:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A21646E294;
	Thu, 11 Jul 2019 23:51:06 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787E26E294
 for <Intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 23:51:05 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 16:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,480,1557212400"; 
 d="p7s'?scan'208";a="171393865"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga006.jf.intel.com with ESMTP; 11 Jul 2019 16:51:04 -0700
Received: from fmsmsx154.amr.corp.intel.com (10.18.116.70) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 11 Jul 2019 16:51:04 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.248]) by
 FMSMSX154.amr.corp.intel.com ([169.254.6.214]) with mapi id 14.03.0439.000;
 Thu, 11 Jul 2019 16:51:03 -0700
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/4] drm/i915: Fix
 WaProgramMgsrForL3BankSpecificMmioReads
Thread-Index: AQHVOAG+AgTHsm4bn0+emdnVbYqP9KbGjE+A
Date: Thu, 11 Jul 2019 23:51:02 +0000
Message-ID: <be6ada43cd2da587cbc4b7d535cd8a5aa8c7813e.camel@intel.com>
References: <20190709210620.15805-3-tvrtko.ursulin@linux.intel.com>
 <20190711155939.18059-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20190711155939.18059-1-tvrtko.ursulin@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [10.54.134.159]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915: Fix
 WaProgramMgsrForL3BankSpecificMmioReads
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
Content-Type: multipart/mixed; boundary="===============1333755909=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1333755909==
Content-Language: en-US
Content-Type: multipart/signed; micalg=sha-1;
	protocol="application/x-pkcs7-signature"; boundary="=-eTUEKTw1WV8mJk01m54W"

--=-eTUEKTw1WV8mJk01m54W
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-07-11 at 16:59 +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

This is generally much more readable than the previous implementation,
thanks! Some minor comments below...

>=20
> Two issues in this code:
>=20
> 1.
> fls() usage is incorrect causing off by one in subslice mask lookup,
> which in other words means subslice mask of all zeroes is always used
> (subslice mask of a slice which is not present, or even out of bounds
> array access), rendering the checks in wa_init_mcr either futile or
> random.
>=20
> 2.
> Condition in WARN_ON is not correct. It is doing a bitwise and
> operation
> between a positive (present subslices) and negative mask (disabled L3
> banks).
>=20
> This means that with corrected fls() usage the assert would always
> incorrectly fail.
>=20
> We can fix this by inverting the fuse bits in the check.
>=20
> v2:
>  * Simplify check for logic and redability.
>  * Improve commentary explaining what is really happening ie. what
> the
>    assert is really trying to check and why.
>=20
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: fe864b76c2ab ("drm/i915: Implement
> WaProgramMgsrForL3BankSpecificMmioReads")
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> # v1
> Cc: Micha=C5=82 Winiarski <michal.winiarski@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 80 ++++++++++---------
> --
>  1 file changed, 40 insertions(+), 40 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9e069286d3ce..80f1159e5cda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -761,7 +761,27 @@ static void
>  wa_init_mcr(struct drm_i915_private *i915, struct i915_wa_list *wal)
>  {
>  	const struct sseu_dev_info *sseu =3D &RUNTIME_INFO(i915)->sseu;
> -	u32 mcr_slice_subslice_mask;
> +	u32 mcr_mask, mcr;
> +
> +	/*
> +	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:cnl,icl
> +	 * Before any MMIO read into slice/subslice specific registers,
> MCR
> +	 * packet control register needs to be programmed to point to
> any
> +	 * enabled s/ss pair. Otherwise, incorrect values will be
> returned.
> +	 * This means each subsequent MMIO read will be forwarded to an
> +	 * specific s/ss combination, but this is OK since these
> registers
> +	 * are consistent across s/ss in almost all cases. In the rare
> +	 * occasions, such as INSTDONE, where this value is dependent
> +	 * on s/ss combo, the read should be done with
> read_subslice_reg.
> +	 */
> +	mcr =3D intel_calculate_mcr_s_ss_select(i915);
> +
> +	if (INTEL_GEN(i915) >=3D 11)
> +		mcr_mask =3D GEN11_MCR_SLICE_MASK |
> GEN11_MCR_SUBSLICE_MASK;
> +	else
> +		mcr_mask =3D GEN8_MCR_SLICE_MASK |
> GEN8_MCR_SUBSLICE_MASK;
> +
> +	wa_write_masked_or(wal, GEN8_MCR_SELECTOR, mcr_mask, mcr);

Was there a specific reason to move this up to the top? Or this is
purely to move this functionality all together rather than spread out
through the function? Looking at the documentation, we do want to
specifically apply WaProgramMgsrForL3BankSpecificMmioReads before any
other workarounds. So maybe just move this whole block to the bottom of
the function instead?=20

> =20
>  	/*
>  	 * WaProgramMgsrForL3BankSpecificMmioReads: cnl,icl
> @@ -776,49 +796,29 @@ wa_init_mcr(struct drm_i915_private *i915,
> struct i915_wa_list *wal)
>  	 * something more complex that requires checking the range of
> every
>  	 * MMIO read).
>  	 */
> -	if (INTEL_GEN(i915) >=3D 10 &&
> -	    is_power_of_2(sseu->slice_mask)) {
> +	if (INTEL_GEN(i915) >=3D 10 && is_power_of_2(sseu->slice_mask)) {
>  		/*
> -		 * read FUSE3 for enabled L3 Bank IDs, if L3 Bank
> matches
> -		 * enabled subslice, no need to redirect MCR packet
> +		 * GEN8_MCR_SELECTOR contains dual-purpose bits which
> select
> +		 * both to which subslice, or to which L3 bank, the
> respective
> +		 * mmio reads will go.
> +		 * Since we have selected one enabled subslice in
> +		 * WaProgramMgsrForCorrectSliceSpecificMmioReads, we
> now
> +		 * need to check if the L3 bank of the equal "instance"
> is also
> +		 * enabled.
> +		 * If that is not the case we could try to find a
> number which
> +		 * works for both, or going even further, implement a
> dynamic
> +		 * scheme where we switch at before every affected mmio

s/at //?

> read.
> +		 * Fortunately neither seems to be needed at the moment
> for
> +		 * current parts and current driver behaviour.
>  		 */
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
> +		unsigned int mcr_ss =3D BIT((mcr >> 24) & 0x7);

Can you add macros for these magic numbers?

> +		unsigned int l3_fuse =3D
> +			intel_uncore_read(&i915->uncore,
> GEN10_MIRROR_FUSE3) &
> +			GEN10_L3BANK_MASK;
> +		unsigned int l3_en =3D ~(l3_fuse << 4 | l3_fuse);

Macro here for the 4?

Thanks,
Stuart

> =20
> -		/*
> -		 * Production silicon should have matched L3Bank and
> -		 * subslice enabled
> -		 */
> -		WARN_ON((enabled_mask & disabled_mask) !=3D
> enabled_mask);
> +		WARN_ON(!(mcr_ss & l3_en));
>  	}
> -
> -	if (INTEL_GEN(i915) >=3D 11)
> -		mcr_slice_subslice_mask =3D GEN11_MCR_SLICE_MASK |
> -					  GEN11_MCR_SUBSLICE_MASK;
> -	else
> -		mcr_slice_subslice_mask =3D GEN8_MCR_SLICE_MASK |
> -					  GEN8_MCR_SUBSLICE_MASK;
> -	/*
> -	 * WaProgramMgsrForCorrectSliceSpecificMmioReads:cnl,icl
> -	 * Before any MMIO read into slice/subslice specific registers,
> MCR
> -	 * packet control register needs to be programmed to point to
> any
> -	 * enabled s/ss pair. Otherwise, incorrect values will be
> returned.
> -	 * This means each subsequent MMIO read will be forwarded to an
> -	 * specific s/ss combination, but this is OK since these
> registers
> -	 * are consistent across s/ss in almost all cases. In the rare
> -	 * occasions, such as INSTDONE, where this value is dependent
> -	 * on s/ss combo, the read should be done with
> read_subslice_reg.
> -	 */
> -	wa_write_masked_or(wal,
> -			   GEN8_MCR_SELECTOR,
> -			   mcr_slice_subslice_mask,
> -			   intel_calculate_mcr_s_ss_select(i915));
>  }
> =20
>  static void

--=-eTUEKTw1WV8mJk01m54W
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
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xOTA3MTEyMzUwNTlaMCMGCSqGSIb3DQEJ
BDEWBBRc9pQbRHnbuE4vmwWMp2xz4xQypjANBgkqhkiG9w0BAQEFAASCAQBbazstb9iXolF0cYs5
88sizJj8NHL8To3O4tiQgQcCfp4mIsc9VC2Yc3xNkIzfts4MUuO5KsKf0keg5WSjHM6CrZ27vNyN
TLu6Wui1IWzaWkZ/XK2kDwmHQxM42nB8Bp5fdbL3C9LknPmjuMSB9BR8G46J02ekwoeAkMCp8SQ2
07Oo0LDiw+P6UvI7OIfc4Rt/xRXw3oHLeQspM/t8atGHKfRfKY0UawIS6jtE5Yc0ZWy68aPqNIIl
LOC/l/uRrANaXAMMxhKSIjvspuWvt89UzXDKiOhey8Ukz5HQmzCR9VMf42HZze9MPO1Yv1dNaAET
kYtft5cx67kWh1vOIIsRAAAAAAAA


--=-eTUEKTw1WV8mJk01m54W--

--===============1333755909==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4

--===============1333755909==--
