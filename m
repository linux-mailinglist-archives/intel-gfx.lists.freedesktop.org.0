Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8EF5AE14D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 09:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E97610E59F;
	Tue,  6 Sep 2022 07:40:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7270910E59F
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 07:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662449997; x=1693985997;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ED0HVl2ULtGL+7xMhVJew2jdFubyS3A9ruhwPyx+bb4=;
 b=csZyIogInY9QgLTMUzKMMqYtdaLToqLSQi0azLjY6HwCDt+o8pKC9gBR
 ruX3jn4AicoEbsg/Cbj3d6H5NLaDpb1aF2MCgC2OMk0TbWfM9dgEl2X6H
 EaN7f2P+lDgyBnKsBruNcEO0nW+4ARPMJNntfn3lpt5jxB9ABwW1bBQ1y
 2qU7b+xbeZH30C/yBSymB6cUjC4Wmc5kjR9ASLGp8f6wuQB1hEb056oFN
 LRMmQJXr8UMJMoKd6JhU+n1PA0bfy1YiytK/H3h7cQcj/FTTcwSPMBRoA
 6qPEflAkoo8oBBED2vU9+R4n5Bh3vMKB5qkcjxoUJV6z2hgS8QNM1C/pn Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="296530028"
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="296530028"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 00:39:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,293,1654585200"; d="scan'208";a="675574862"
Received: from reichelh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.45.69])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 00:39:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220906071457.28881-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220906071457.28881-1-animesh.manna@intel.com>
Date: Tue, 06 Sep 2022 10:39:38 +0300
Message-ID: <87pmg99cjp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pps: added get_pps_idx() hook
 as part of pps_get_register() cleanup
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

On Tue, 06 Sep 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> Simplified pps_get_register() which use get_pps_idx() hook to derive the
> pps instance and get_pps_idx() will be initialized at pps_init().

Please use the imperative mood, i.e. "add" in subject, "simplify" here.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
>  drivers/gpu/drm/i915/display/intel_pps.c           | 12 ++++++------
>  2 files changed, 7 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0da9b208d56e..b78b29951241 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1693,6 +1693,7 @@ struct intel_dp {
>  	u8 (*preemph_max)(struct intel_dp *intel_dp);
>  	u8 (*voltage_max)(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state);
> +	int (*get_pps_idx)(struct intel_dp *intel_dp);
>  
>  	/* Displayport compliance testing */
>  	struct intel_dp_compliance compliance;
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 21944f5bf3a8..4e770218e29f 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -362,15 +362,10 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  				    struct pps_registers *regs)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	int pps_idx = 0;
> +	int pps_idx = intel_dp->get_pps_idx(intel_dp);
>  
>  	memset(regs, 0, sizeof(*regs));
>  
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> -		pps_idx = bxt_power_sequencer_idx(intel_dp);
> -	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> -		pps_idx = vlv_power_sequencer_pipe(intel_dp);
> -
>  	regs->pp_ctrl = PP_CONTROL(pps_idx);
>  	regs->pp_stat = PP_STATUS(pps_idx);
>  	regs->pp_on = PP_ON_DELAYS(pps_idx);
> @@ -1432,6 +1427,11 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing = true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
> +	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> +		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
> +
>  	pps_init_timestamps(intel_dp);
>  
>  	with_intel_pps_lock(intel_dp, wakeref) {

-- 
Jani Nikula, Intel Open Source Graphics Center
