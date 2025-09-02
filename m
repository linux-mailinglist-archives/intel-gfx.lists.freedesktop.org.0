Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2E5B404B1
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 15:45:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F211C10E719;
	Tue,  2 Sep 2025 13:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SADw5UHX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29C9810E71D;
 Tue,  2 Sep 2025 13:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756820739; x=1788356739;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=x/XNvF6IqR/MecWWH0KLHYDw4Hfw3etXaanKwzHa18k=;
 b=SADw5UHX0dh7f+5TmC8x6CHi2bHt6HginstRk8GfrBPU7pLbNYAc1PP+
 xLAJ6PQjAcoBS0FE1jDnwoLzysXL9f+8onmzV/ja4Lw0kMyDYUayS6kDe
 td2IDI6VO8D0fijbxJBHqZPYGqTe141BKJ0hztp2ImViWNex/odBUsyPe
 lTQRB8KIIqZwx0PZJyGXWKYNqz0oRFQgyfCcZPzlwDsYBmjdhErYebH4x
 zgcl+56jMq7GHIrvmXPxxNFRHsRHi4ZjKW2Gf8xyyMl50/QrPcwOB+Q5B
 9LOg49AyeiVAeHVniwUiLM5Mgj/gkHPJsg3QHpBsd0pVqkKk/xOVw5QbN Q==;
X-CSE-ConnectionGUID: LIeowA3ETYOyV1+tDU8Oow==
X-CSE-MsgGUID: AJ/xKqTtQi6xmQziaSUS8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11541"; a="58951549"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="58951549"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:45:38 -0700
X-CSE-ConnectionGUID: pPPsK/9dRBekcXaD/Tf1pA==
X-CSE-MsgGUID: 6Nf0ZoUTSuew6d016Lojxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="171176319"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.193])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2025 06:45:36 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/8] drm/i915/dram: Populate PNV memory type accurately
In-Reply-To: <20250902133113.18778-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250902133113.18778-1-ville.syrjala@linux.intel.com>
 <20250902133113.18778-2-ville.syrjala@linux.intel.com>
Date: Tue, 02 Sep 2025 16:45:33 +0300
Message-ID: <abb27199cf65dc463113b71b3d0d23b10f5b4d5a@intel.com>
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

On Tue, 02 Sep 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> If PNV doesn't have DDR3 then it has DDR2. Add the appropriate memory
> type for it.
>
> No functional change since we currently only care about the
> DDR3 vs. not difference.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yeah, I dropped the ball at around here with my previous refactorings.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 10 ++++++----
>  drivers/gpu/drm/i915/soc/intel_dram.h |  1 +
>  2 files changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915=
/soc/intel_dram.c
> index 3eb748ab44d9..7d8b8f81e215 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -35,6 +35,7 @@ static const char *intel_dram_type_str(enum intel_dram_=
type type)
>  {
>  	static const char * const str[] =3D {
>  		DRAM_TYPE_STR(UNKNOWN),
> +		DRAM_TYPE_STR(DDR2),
>  		DRAM_TYPE_STR(DDR3),
>  		DRAM_TYPE_STR(DDR4),
>  		DRAM_TYPE_STR(LPDDR3),
> @@ -55,9 +56,10 @@ static const char *intel_dram_type_str(enum intel_dram=
_type type)
>=20=20
>  #undef DRAM_TYPE_STR
>=20=20
> -static bool pnv_is_ddr3(struct drm_i915_private *i915)
> +static enum intel_dram_type pnv_dram_type(struct drm_i915_private *i915)
>  {
> -	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3;
> +	return intel_uncore_read(&i915->uncore, CSHRDDR3CTL) & CSHRDDR3CTL_DDR3=
 ?
> +		INTEL_DRAM_DDR3 : INTEL_DRAM_DDR2;
>  }
>=20=20
>  static unsigned int pnv_mem_freq(struct drm_i915_private *dev_priv)
> @@ -252,8 +254,8 @@ static int i915_get_dram_info(struct drm_i915_private=
 *i915, struct dram_info *d
>  	if (dram_info->mem_freq)
>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", dram_info->mem_freq);
>=20=20
> -	if (IS_PINEVIEW(i915) && pnv_is_ddr3(i915))
> -		dram_info->type =3D INTEL_DRAM_DDR3;
> +	if (IS_PINEVIEW(i915))
> +		dram_info->type =3D pnv_dram_type(i915);
>=20=20
>  	return 0;
>  }
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915=
/soc/intel_dram.h
> index 97d21894abdc..7e3b3d961fcb 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -17,6 +17,7 @@ struct dram_info {
>  	bool symmetric_memory;
>  	enum intel_dram_type {
>  		INTEL_DRAM_UNKNOWN,
> +		INTEL_DRAM_DDR2,
>  		INTEL_DRAM_DDR3,
>  		INTEL_DRAM_DDR4,
>  		INTEL_DRAM_LPDDR3,

--=20
Jani Nikula, Intel
