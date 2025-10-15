Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2166BBDF26C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 16:47:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DE810E80F;
	Wed, 15 Oct 2025 14:47:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PGb4sM6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1697D10E2B2;
 Wed, 15 Oct 2025 14:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760539622; x=1792075622;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pIN4AHB+yr0JVUmkdUt1wpJ0LH1goJwIzTDbVafZ0Fg=;
 b=PGb4sM6PT/nd1+5vr2q1i7LnWUhJ691oT5w8otHKradQzEhTtSjJq7AZ
 Ow/kay2mRfUIL102QkGb4SFH/imRtjw5ibefM2k1sIMx4EMHuzLQOO8Wn
 Rqp60MoM7Cvel+rLPnXPPRmJACGddq5etzSFDy06UCpeIft0xlTDTKWkB
 qUPm/qXB0AxOIKdOYaa3cofuqzFNpwhVhzgUPR4JSrn6S/QONSr4qVcOE
 AbO3vL+0KTEiuOZpk1hugUImT32Mofzdz0uuUnMp3B63K6garr09uwzE2
 bky606HJ/NrMaq1tssa7cJn0sq/LQSj8IgYaH8pJZWe13FPuVaHqPk2KA Q==;
X-CSE-ConnectionGUID: XfLtKO6jRS6OUEqSq71ZFA==
X-CSE-MsgGUID: FS//L30eTiap7x6anhYE8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62759897"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62759897"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 07:47:01 -0700
X-CSE-ConnectionGUID: f7G8tXOlQomDmzzhaUSS8Q==
X-CSE-MsgGUID: x4H0mRTxTQ+0bZ6FdO9sVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181866277"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.100])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 07:46:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>,
 Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>, Juha-pekka
 Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 05/32] drm/i915/dram: Add field ecc_impacting_de
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-5-d2d1e26520aa@intel.com>
Date: Wed, 15 Oct 2025 17:46:52 +0300
Message-ID: <3a8d9b266399ddf75dcd173e86b57d5b1b7635fa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Starting with Xe3p_LPD, we now have a new field in MEM_SS_INFO_GLOBAL
> that indicates whether the memory has enabled ECC that limits display
> bandwidth.  Add the field ecc_impacting_de to struct dram_info to
> contain that information and set it appropriately when probing for
> memory info.  We will use that field when updating bandwidth parameters
> for Xe3p_LPD.

Could the field name be more accurate than "ecc impacting de"? It sounds
quite handwavy to me.

BR,
Jani.

>
> Bspec: 69131
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h       | 1 +
>  drivers/gpu/drm/i915/soc/intel_dram.c | 4 ++++
>  drivers/gpu/drm/i915/soc/intel_dram.h | 1 +
>  3 files changed, 6 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 354ef75ef6a5..5bf3b4ab2baa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1233,6 +1233,7 @@
>  #define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
>  
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> +#define   XE3P_ECC_IMPACTING_DE			REG_BIT(12)
>  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
>  #define   MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 8841cfe1cac8..bf9f8e38d6ba 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -685,6 +685,7 @@ static int gen12_get_dram_info(struct drm_i915_private *i915, struct dram_info *
>  
>  static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info *dram_info)
>  {
> +	struct intel_display *display = i915->display;
>  	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
>  
>  	switch (REG_FIELD_GET(MTL_DDR_TYPE_MASK, val)) {
> @@ -723,6 +724,9 @@ static int xelpdp_get_dram_info(struct drm_i915_private *i915, struct dram_info
>  	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
>  	/* PSF GV points not supported in D14+ */
>  
> +	if (DISPLAY_VER(display) >= 35)
> +		dram_info->ecc_impacting_de = REG_FIELD_GET(XE3P_ECC_IMPACTING_DE, val);
> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
> index 03a973f1c941..ac77f1ab409f 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.h
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.h
> @@ -30,6 +30,7 @@ struct dram_info {
>  	u8 num_channels;
>  	u8 num_qgv_points;
>  	u8 num_psf_gv_points;
> +	bool ecc_impacting_de; /* Only valid from Xe3p_LPD onward. */
>  	bool symmetric_memory;
>  	bool has_16gb_dimms;
>  };

-- 
Jani Nikula, Intel
