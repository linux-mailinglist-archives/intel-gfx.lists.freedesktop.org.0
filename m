Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB683687E35
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 14:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA95F10E15E;
	Thu,  2 Feb 2023 13:02:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967B410E15E
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 13:02:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675342977; x=1706878977;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=859V2ohSLvxMzsREYSprDffhYR63sHAFEd6HuYsJm2s=;
 b=Cmdr2gqlg2dorynlhwiadsLpLJoOM3bAGC28SDi6OHm4A12oY5spRqMv
 SFalwHFfJQgMUQCbZyEcwGfWOHOlD6W8T6LUZ34z84RkckhxR6FFJ7NjT
 hr7xdSNBdLdiNukk3zKIBBbvHv/9gQ8HSIMEmo90S11FoCJeJA2zVKrb3
 wKUxOTAaI99rrm+nSd4jaLkQp/3OP7yO0wmKnrTRpnaYKknq1TqgCvfUC
 5fFvFKekjT8CxBDO6DlDfe4qNnfBJkRlyCObSGU9IS5e3wH6msRBaPpHE
 Z9yAq6jyjpa9GPs9jbVBBOX0bQGGsEJojQLoblbfIK9gJ17eXdN/R0ZCf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="329727020"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="329727020"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 05:02:56 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="994096830"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="994096830"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 05:02:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230202114613.3177235-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230202114613.3177235-1-suraj.kandpal@intel.com>
 <20230202114613.3177235-2-suraj.kandpal@intel.com>
Date: Thu, 02 Feb 2023 15:02:53 +0200
Message-ID: <87fsbo1apu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/dp: Fix logic to fetch
 slice_height
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

On Thu, 02 Feb 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> According to Bpec: 49259 VDSC spec implies that 108 lines is an optimal
> slice height, but any size can be used as long as vertical active
> integer multiple and maximum vertical slice count requirements are met.

The commit message and subject should really indicate that this
increases the slice height considerably. It's a 13.5x increase at a
minimum, could be much more. Seems misleading to call it "fix logic", as
if there's a small issue somewhere.

Bspec references should be here:

Bspec: 49259
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 62cbab7402e9..7bd2e56ef0fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1415,6 +1415,22 @@ static int intel_dp_sink_dsc_version_minor(struct intel_dp *intel_dp)
>  		DP_DSC_MINOR_SHIFT;
>  }
>  
> +static int intel_dp_get_slice_height(int vactive)

intel_dp_dsc_get_slice_height

> +{
> +	int slice_height;
> +
> +	/*
> +	 * VDSC spec implies that 108 lines is an optimal slice height,

Please be more specific with spec references than vague "VSDC
spec". Spec version is required at a minimum. Section and section title
are a nice bonus.

> +	 * but any size can be used as long as vertical active integer
> +	 * multiple and maximum vertical slice count requirements are met.
> +	 */
> +	for (slice_height = 108; slice_height <= vactive; slice_height += 2)

Where does it say 108 is a minimum, and you should go up only...?

> +		if (!(vactive % slice_height))

Matter of taste, but please use (vactive % slice_height == 0) for
clarity on computations like this.

> +			return slice_height;
> +
> +	return 0;

I guess it's unlikely we ever hit here, but you could have the old code
as fallback and never return 0. Because you don't check for 0 in the
caller anyway.

Also makes me wonder why we have intel_hdmi_dsc_get_slice_height()
separately, with almost identical implementation. Maybe we should
consolidate.

> +}
> +
>  static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  				       struct intel_crtc_state *crtc_state)
>  {
> @@ -1433,17 +1449,7 @@ static int intel_dp_dsc_compute_params(struct intel_encoder *encoder,
>  	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>  	vdsc_cfg->pic_height = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>  
> -	/*
> -	 * Slice Height of 8 works for all currently available panels. So start
> -	 * with that if pic_height is an integral multiple of 8. Eventually add
> -	 * logic to try multiple slice heights.
> -	 */
> -	if (vdsc_cfg->pic_height % 8 == 0)
> -		vdsc_cfg->slice_height = 8;
> -	else if (vdsc_cfg->pic_height % 4 == 0)
> -		vdsc_cfg->slice_height = 4;
> -	else
> -		vdsc_cfg->slice_height = 2;
> +	vdsc_cfg->slice_height = intel_dp_get_slice_height(vdsc_cfg->pic_height);
>  
>  	ret = intel_dsc_compute_params(crtc_state);
>  	if (ret)

-- 
Jani Nikula, Intel Open Source Graphics Center
