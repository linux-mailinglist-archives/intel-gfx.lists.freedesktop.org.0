Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 512C1500B89
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 12:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8968310FC8F;
	Thu, 14 Apr 2022 10:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86BD010FC8F
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 10:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649933397; x=1681469397;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=6ASVHk4QPr998cticHUx1SPBueKEq7jciTPV2kPlMe8=;
 b=IpcxdsSoWpBVpw2Cca/di19wCkNl80KbEDahMUUgisrOd5oIIVRRYLfY
 4l2RJs+DwuQNqKt2zQW3PhqswXe1I0vX5SP393KBwUuNLCM05AWkRre3U
 8RDp2k6mIAADwwDcOi0Y1ygw1vOv4z3j6Pd2dcRMRS8aWnGMbPsZHsAgJ
 7NAeB/vD6PxoBKFHmnSWDAUvjOiPbtJriJvLSte5afbpnjb9+tXeKeO6d
 UggiL6J3QYkxHGyfb/YwS7nLCWnq+7mtjAys0NMHPU0u+Po+Qx0Nt8esh
 fnGQWZ5mBkRWxFp+vBMcEqROxevAgYsFqckb+gQIxnm9ggU4OP33iogbd w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="260499352"
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="260499352"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 03:49:56 -0700
X-IronPort-AV: E=Sophos;i="5.90,259,1643702400"; d="scan'208";a="552629794"
Received: from nplaweck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.236])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 03:49:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220408224629.845887-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220408172154.807900-2-imre.deak@intel.com>
 <20220408224629.845887-1-imre.deak@intel.com>
Date: Thu, 14 Apr 2022 13:49:54 +0300
Message-ID: <87y208djn1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/dp: Add workaround for
 spurious AUX timeouts/hotplugs on LTTPR links
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

On Sat, 09 Apr 2022, Imre Deak <imre.deak@intel.com> wrote:
> Some ADLP DP link configuration at least with multiple LTTPRs expects
> the first DPCD access during the LTTPR/DPCD detection after hotplug to
> be a read from the LTTPR range starting with
> DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV. The side effect of
> this read is to put each LTTPR into the LTTPR transparent or LTTPR
> non-transparent mode.
>
> The lack of the above read may leave some of the LTTPRs in non-LTTPR
> mode, while other LTTPRs in LTTPR transparent or LTTPR non-transparent
> mode (for instance LTTPRs after system suspend/resume that kept their
> mode from before suspend). Due to the different AUX timeouts the
> different modes imply, the DPCD access from a non-LTTPR range will
> timeout and lead to an LTTPR generated hotplug towards the source (which
> the LTTPR firmware uses to account for buggy TypeC adapters with a long
> wake-up delay).
>
> To avoid the above AUX timeout and subsequent hotplug interrupt, make
> sure that the first DPCD access during detection is a read from an
> LTTPR register.
>
> VLK: SYSCROS-72939
>
> v2: Keep DPCD read-out working on non-LTTPR platforms.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

I kinda dislike how complicated this looks for a diff so small. *shrug*.
Seems to do what it says on the box,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../drm/i915/display/intel_dp_link_training.c | 33 ++++++++++---------
>  1 file changed, 17 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 26f9e2b748e40..9feaf1a589f38 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -82,19 +82,8 @@ static bool intel_dp_read_lttpr_common_caps(struct intel_dp *intel_dp,
>  					    const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>  {
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	int ret;
>  
> -	if (intel_dp_is_edp(intel_dp))
> -		return false;
> -
> -	/*
> -	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> -	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
> -	 */
> -	if (DISPLAY_VER(i915) < 10 || IS_GEMINILAKE(i915))
> -		return false;
> -
>  	ret = drm_dp_read_lttpr_common_caps(&intel_dp->aux, dpcd,
>  					    intel_dp->lttpr_common_caps);
>  	if (ret < 0)
> @@ -197,13 +186,25 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>   */
>  int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>  {
> -	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> -	int lttpr_count;
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	int lttpr_count = 0;
>  
> -	if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
> -		return -EIO;
> +	/*
> +	 * Detecting LTTPRs must be avoided on platforms with an AUX timeout
> +	 * period < 3.2ms. (see DP Standard v2.0, 2.11.2, 3.6.6.1).
> +	 */
> +	if (!intel_dp_is_edp(intel_dp) &&
> +	    (DISPLAY_VER(i915) >= 10 && !IS_GEMINILAKE(i915))) {
> +		u8 dpcd[DP_RECEIVER_CAP_SIZE];
>  
> -	lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> +		if (drm_dp_dpcd_probe(&intel_dp->aux, DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV))
> +			return -EIO;
> +
> +		if (drm_dp_read_dpcd_caps(&intel_dp->aux, dpcd))
> +			return -EIO;
> +
> +		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> +	}
>  
>  	/*
>  	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read

-- 
Jani Nikula, Intel Open Source Graphics Center
