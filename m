Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D25D45ACF03
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 11:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E33110E25D;
	Mon,  5 Sep 2022 09:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65EC10E25D
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 09:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662370825; x=1693906825;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=0fYfxNABy3AssymvvHkCNRijLPe0J7wFnBiu/ujfwNA=;
 b=VZVYm4/euKcbMR3C+RVfAyayMzJmuJ3Lz8Kc0RIukFY6TDE2XpRZSZ/C
 V3uAubZd2tCQHEg9g8EgfS3phvheM+R7V9lXa18AacJveSlNQhRTtqBg6
 QA/JtPV57RTxL1eKVNi954uHwTz8Rh3ucrdYsZ+7P3etFKJ1nGTfC1aPI
 htVBzZMInSR8Vl5mg33HEiUzBKxL5tRgdBaXWLSV9OlBPUrLNF6evqnfJ
 WwEPnxMhMOR3jlYPYOtjXM90YOGtxEmhMX/eV2MmPOA2yGg0QqSrfPPFw
 91B0Is3hnSvK+LsFZgiXj31i86HQVfLdYSTCJLIyX2bGV/Mxfd9Fm2O07 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10460"; a="297138482"
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="297138482"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:40:25 -0700
X-IronPort-AV: E=Sophos;i="5.93,290,1654585200"; d="scan'208";a="590853219"
Received: from smaciag-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.57.57])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 02:40:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220902235302.1112388-7-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
 <20220902235302.1112388-7-ashutosh.dixit@intel.com>
Date: Mon, 05 Sep 2022 12:40:08 +0300
Message-ID: <87edwqb1mv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/rps: Freq caps for MTL
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

On Fri, 02 Sep 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> For MTL, when reading from HW, RP0, RP1 (actuall RPe) and RPn freq use an
> entirely different set of registers with different fields, bitwidths and
> units.
>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 20 ++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h     |  9 +++++++++
>  2 files changed, 29 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 579ae9ac089c..e7ab172698e3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1085,6 +1085,23 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
>  		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
>  }
>  
> +static void
> +mtl_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
> +{
> +	struct intel_uncore *uncore = rps_to_uncore(rps);
> +	u32 rp_state_cap = rps_to_gt(rps)->type == GT_MEDIA ?
> +				intel_uncore_read(uncore, MTL_MEDIAP_STATE_CAP) :
> +				intel_uncore_read(uncore, MTL_RP_STATE_CAP);
> +	u32 rpe = rps_to_gt(rps)->type == GT_MEDIA ?
> +			intel_uncore_read(uncore, MTL_MPE_FREQUENCY) :
> +			intel_uncore_read(uncore, MTL_GT_RPE_FREQUENCY);
> +
> +	/* MTL values are in units of 16.67 MHz */
> +	caps->rp0_freq = REG_FIELD_GET(MTL_RP0_CAP_MASK, rp_state_cap);
> +	caps->min_freq = REG_FIELD_GET(MTL_RPN_CAP_MASK, rp_state_cap);
> +	caps->rp1_freq = REG_FIELD_GET(MTL_RPE_MASK, rpe);
> +}
> +
>  /**
>   * gen6_rps_get_freq_caps - Get freq caps exposed by HW
>   * @rps: the intel_rps structure
> @@ -1098,6 +1115,9 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 rp_state_cap;
>  
> +	if (IS_METEORLAKE(i915))
> +		return mtl_get_freq_caps(rps, caps);
> +

Please make gen6_rps_get_freq_caps() static, and add

intel_rps_get_freq_caps()
{
	if (IS_METEORLAKE(i915))
        	return mtl_get_freq_caps(rps, caps);
	else
		return gen6_rps_get_freq_caps(rps, caps);
}

Or something.

BR,
Jani.


>  	rp_state_cap = intel_rps_read_state_cap(rps);
>  
>  	/* static values from HW: RP0 > RP1 > RPn (min_freq) */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 06d555321651..d78f9675aa57 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1792,6 +1792,15 @@
>  #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
>  #define PVC_RP_STATE_CAP	_MMIO(0x281014)
>  
> +#define MTL_RP_STATE_CAP	_MMIO(0x138000)
> +#define MTL_MEDIAP_STATE_CAP	_MMIO(0x138020)
> +#define   MTL_RP0_CAP_MASK	REG_GENMASK(8, 0)
> +#define   MTL_RPN_CAP_MASK	REG_GENMASK(24, 16)
> +
> +#define MTL_GT_RPE_FREQUENCY	_MMIO(0x13800c)
> +#define MTL_MPE_FREQUENCY	_MMIO(0x13802c)
> +#define   MTL_RPE_MASK		REG_GENMASK(8, 0)
> +
>  #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
>  #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
>  #define   PROCHOT_MASK			REG_BIT(1)

-- 
Jani Nikula, Intel Open Source Graphics Center
