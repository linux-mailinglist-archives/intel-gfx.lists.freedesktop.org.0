Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CKmxKSMFxGnOvQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:54:11 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E09EC3287DF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 16:54:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 644C510E7C4;
	Wed, 25 Mar 2026 15:54:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CNPSGu2/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173B110E7C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 15:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774454047; x=1805990047;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=cM1RsmPgzvl0nn4Q1KO8ZRAg1gfaexkntMW9YZNzCfg=;
 b=CNPSGu2/096lk70kecBquu1l/oanRRcbORFL8iRqS2wwvDhH0cJECxFc
 +/0AqSPEFG44K/ho+/Sq83wriudQN0YSJ2xKr4DqN3/yzc8+1H1wTJStB
 i4IfRPU7S7lb7B5HEt976fEXmHNGNa2qiUSeZO6EHBfeOtuQeiDj1hl/u
 oKK2tWf7MNduLhzhuYgOtsc8qxM2w8S5Sj7HbSdcfnveieib3+26iCNdG
 34XKERCpmFVrk3ga8aWSzWTyH14+oKnLW2nB9M+/gGtXF2j9pIxAl0ljq
 urbf+tML7nLOR+prSlBdoxxBlQYPXQcPvtZxzaKkQjoW3WwvKCQr1ycqa g==;
X-CSE-ConnectionGUID: 3eZrZIzVQ3SyHhEjHOl2zw==
X-CSE-MsgGUID: fsLXTHDyR4OByh/+n+2D3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86974457"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="86974457"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:54:06 -0700
X-CSE-ConnectionGUID: hRy0j1KPSh6jdwmxVQtlKA==
X-CSE-MsgGUID: o7QhC9TaTmO//5Vl4Ho1Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224976199"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.119])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 08:54:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/uncore: Do GT FIFO checks in early
 sanitize and forcewake get
In-Reply-To: <20260323101609.8391-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
 <20260323101609.8391-3-ville.syrjala@linux.intel.com>
Date: Wed, 25 Mar 2026 17:54:01 +0200
Message-ID: <81728e3a3e05a8b63716ce4c30a0548409965c59@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_SENDER(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: E09EC3287DF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 23 Mar 2026, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We're mixing up the GT FIFO debug checks (overflows and such)
> with RMbus unclaimed register checks. The two are quite different
> things as RMbus is only relevant for display registers, and the
> GT FIFO only relevant for GT registers.
>
> Split the GT FIFO debugs out from the unclaimed register logic
> and just do the checks during forcewake_get() and early init.
> That is still sufficient to detect if any errors have happened.
>
> Any errors would anyway be caused by overflowing the FIFO
> rather than accessing specific registers, so trying to figure
> out exactly when the error happened isn't particularly useful.
> To fix such issues we'd rather have to do something to slow down
> the rate at which registers are accessed (eg. increase
> GT_FIFO_NUM_RESERVED_ENTRIES or something).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 72 ++++++++++++++++++++---------
>  1 file changed, 50 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/i=
ntel_uncore.c
> index 5b698d4d7a7f..170e83a8c9fc 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -399,6 +399,35 @@ static void fw_domains_get_with_thread_status(struct=
 intel_uncore *uncore,
>  	__gen6_gt_wait_for_thread_c0(uncore);
>  }
>=20=20
> +static void
> +gen6_check_for_fifo_debug(struct intel_uncore *uncore)
> +{
> +	u32 fifodbg;
> +
> +	fifodbg =3D __raw_uncore_read32(uncore, GTFIFODBG);
> +
> +	if (unlikely(fifodbg)) {
> +		drm_dbg(&uncore->i915->drm, "GTFIFODBG =3D 0x08%x\n", fifodbg);
> +		__raw_uncore_write32(uncore, GTFIFODBG, fifodbg);
> +	}
> +}
> +
> +static void
> +fw_domains_get_normal_fifo(struct intel_uncore *uncore,
> +			   enum forcewake_domains fw_domains)
> +{
> +	gen6_check_for_fifo_debug(uncore);
> +	fw_domains_get_normal(uncore, fw_domains);
> +}
> +
> +static void
> +fw_domains_get_with_thread_status_fifo(struct intel_uncore *uncore,
> +				       enum forcewake_domains fw_domains)
> +{
> +	gen6_check_for_fifo_debug(uncore);
> +	fw_domains_get_with_thread_status(uncore, fw_domains);
> +}
> +
>  static inline u32 fifo_free_entries(struct intel_uncore *uncore)
>  {
>  	u32 count =3D __raw_uncore_read32(uncore, GTFIFOCTL);
> @@ -561,21 +590,6 @@ vlv_check_for_unclaimed_mmio(struct intel_uncore *un=
core)
>  	return true;
>  }
>=20=20
> -static bool
> -gen6_check_for_fifo_debug(struct intel_uncore *uncore)
> -{
> -	u32 fifodbg;
> -
> -	fifodbg =3D __raw_uncore_read32(uncore, GTFIFODBG);
> -
> -	if (unlikely(fifodbg)) {
> -		drm_dbg(&uncore->i915->drm, "GTFIFODBG =3D 0x08%x\n", fifodbg);
> -		__raw_uncore_write32(uncore, GTFIFODBG, fifodbg);
> -	}
> -
> -	return fifodbg;
> -}
> -
>  static bool
>  check_for_unclaimed_mmio(struct intel_uncore *uncore)
>  {
> @@ -592,9 +606,6 @@ check_for_unclaimed_mmio(struct intel_uncore *uncore)
>  	if (intel_uncore_has_dbg_unclaimed(uncore))
>  		ret |=3D vlv_check_for_unclaimed_mmio(uncore);
>=20=20
> -	if (intel_uncore_has_fifo(uncore))
> -		ret |=3D gen6_check_for_fifo_debug(uncore);
> -
>  	return ret;
>  }
>=20=20
> @@ -611,6 +622,9 @@ static void forcewake_early_sanitize(struct intel_unc=
ore *uncore,
>  				     GT_FIFO_CTL_RC6_POLICY_STALL);
>  	}
>=20=20
> +	if (intel_uncore_has_fifo(uncore))
> +		gen6_check_for_fifo_debug(uncore);
> +
>  	iosf_mbi_punit_acquire();
>  	intel_uncore_forcewake_reset(uncore);
>  	if (restore_forcewake) {
> @@ -2155,6 +2169,14 @@ static const struct intel_uncore_fw_get uncore_get=
_thread_status =3D {
>  	.force_wake_get =3D fw_domains_get_with_thread_status
>  };
>=20=20
> +static const struct intel_uncore_fw_get uncore_get_normal_fifo =3D {
> +	.force_wake_get =3D fw_domains_get_normal_fifo,
> +};
> +
> +static const struct intel_uncore_fw_get uncore_get_thread_status_fifo =
=3D {
> +	.force_wake_get =3D fw_domains_get_with_thread_status_fifo
> +};
> +
>  static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
>  {
>  	struct drm_i915_private *i915 =3D uncore->i915;
> @@ -2218,13 +2240,19 @@ static int intel_uncore_fw_domains_init(struct in=
tel_uncore *uncore)
>  		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
>  			       FORCEWAKE_MEDIA_GEN9, FORCEWAKE_ACK_MEDIA_GEN9);
>  	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> -		uncore->fw_get_funcs =3D &uncore_get_normal;
> +		if (intel_uncore_has_fifo(uncore))
> +			uncore->fw_get_funcs =3D &uncore_get_normal_fifo;
> +		else
> +			uncore->fw_get_funcs =3D &uncore_get_normal;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_VLV, FORCEWAKE_ACK_VLV);
>  		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
>  			       FORCEWAKE_MEDIA_VLV, FORCEWAKE_ACK_MEDIA_VLV);
>  	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
> -		uncore->fw_get_funcs =3D &uncore_get_thread_status;
> +		if (intel_uncore_has_fifo(uncore))
> +			uncore->fw_get_funcs =3D &uncore_get_thread_status_fifo;
> +		else
> +			uncore->fw_get_funcs =3D &uncore_get_thread_status;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE_MT, FORCEWAKE_ACK_HSW);
>  	} else if (IS_IVYBRIDGE(i915)) {
> @@ -2239,7 +2267,7 @@ static int intel_uncore_fw_domains_init(struct inte=
l_uncore *uncore)
>  		 * (correctly) interpreted by the test below as MT
>  		 * forcewake being disabled.
>  		 */
> -		uncore->fw_get_funcs =3D &uncore_get_thread_status;
> +		uncore->fw_get_funcs =3D &uncore_get_thread_status_fifo;
>=20=20
>  		/* We need to init first for ECOBUS access and then
>  		 * determine later if we want to reinit, in case of MT access is
> @@ -2270,7 +2298,7 @@ static int intel_uncore_fw_domains_init(struct inte=
l_uncore *uncore)
>  				       FORCEWAKE, FORCEWAKE_ACK);
>  		}
>  	} else if (GRAPHICS_VER(i915) =3D=3D 6) {
> -		uncore->fw_get_funcs =3D &uncore_get_thread_status;
> +		uncore->fw_get_funcs =3D &uncore_get_thread_status_fifo;
>  		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
>  			       FORCEWAKE, FORCEWAKE_ACK);
>  	}

--=20
Jani Nikula, Intel
