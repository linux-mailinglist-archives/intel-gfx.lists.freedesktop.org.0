Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB863EB62B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 15:44:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC166E7DC;
	Fri, 13 Aug 2021 13:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A34016E7DC
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 13:44:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="195146058"
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="195146058"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 06:44:37 -0700
X-IronPort-AV: E=Sophos;i="5.84,319,1620716400"; d="scan'208";a="504199973"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.215.123.4])
 ([10.215.123.4])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 06:44:34 -0700
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210812132354.10885-1-jani.nikula@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <a6442433-dce8-3524-5d90-5c605e815c20@intel.com>
Date: Fri, 13 Aug 2021 19:14:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210812132354.10885-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/edp: fix eDP MSO pipe sanity
 checks for ADL-P
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

Please check CI results once; if regressions are unrelated please report.
With those fixed.

Reviewed-by:
Swati Sharma <swati2.sharma@intel.com>
Tested-by:
Swati Sharma <swati2.sharma@intel.com>

On 12-Aug-21 6:53 PM, Jani Nikula wrote:
> ADL-P supports stream splitter on pipe B in addition to pipe A. Update
> the sanity check in intel_ddi_mso_get_config() to reflect this, and
> remove the check in intel_ddi_mso_configure() as redundant with
> encoder->pipe_mask. Abstract the splitter pipe mask to a single point of
> truth while at it to avoid similar mistakes in the future.
> 
> Fixes: 7bc188cc2c8c ("drm/i915/adl_p: enable MSO on pipe B")
> Cc: Uma Shankar <uma.shankar@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 24 ++++++++++++------------
>   1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index e932fd0fe7e2..eb9aa871f87b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2251,6 +2251,15 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
>   	}
>   }
>   
> +/* Splitter enable for eDP MSO is limited to certain pipes. */
> +static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
> +{
> +	if (IS_ALDERLAKE_P(i915))
> +		return BIT(PIPE_A) | BIT(PIPE_B);
> +	else
> +		return BIT(PIPE_A);
> +}
> +
>   static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
>   				     struct intel_crtc_state *pipe_config)
>   {
> @@ -2268,8 +2277,7 @@ static void intel_ddi_mso_get_config(struct intel_encoder *encoder,
>   	if (!pipe_config->splitter.enable)
>   		return;
>   
> -	/* Splitter enable is supported for pipe A only. */
> -	if (drm_WARN_ON(&i915->drm, pipe != PIPE_A)) {
> +	if (drm_WARN_ON(&i915->drm, !(intel_ddi_splitter_pipe_mask(i915) & BIT(pipe)))) {
>   		pipe_config->splitter.enable = false;
>   		return;
>   	}
> @@ -2301,10 +2309,6 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
>   		return;
>   
>   	if (crtc_state->splitter.enable) {
> -		/* Splitter enable is supported for pipe A only. */
> -		if (drm_WARN_ON(&i915->drm, pipe != PIPE_A))
> -			return;
> -
>   		dss1 |= SPLITTER_ENABLE;
>   		dss1 |= OVERLAP_PIXELS(crtc_state->splitter.pixel_overlap);
>   		if (crtc_state->splitter.link_count == 2)
> @@ -4666,12 +4670,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>   
>   		dig_port->hpd_pulse = intel_dp_hpd_pulse;
>   
> -		/* Splitter enable for eDP MSO is limited to certain pipes. */
> -		if (dig_port->dp.mso_link_count) {
> -			encoder->pipe_mask = BIT(PIPE_A);
> -			if (IS_ALDERLAKE_P(dev_priv))
> -				encoder->pipe_mask |= BIT(PIPE_B);
> -		}
> +		if (dig_port->dp.mso_link_count)
> +			encoder->pipe_mask = intel_ddi_splitter_pipe_mask(dev_priv);
>   	}
>   
>   	/* In theory we don't need the encoder->type check, but leave it just in
> 

-- 
~Swati Sharma
