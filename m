Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50CC1784244
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Aug 2023 15:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86E8110E36A;
	Tue, 22 Aug 2023 13:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFD7710E36C
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Aug 2023 13:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692711688; x=1724247688;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=9hOGytp8dAa3GeO0dTRrgif96TBs1rqvAHgS2I1ut84=;
 b=IKcVV5fl8Ia+9Os6cA5ScU4iAcOqGUX4nzeN6BlzRjFIAh2+DSo4j7jd
 JE4lIfLp9xozvrjDhiMolQAXz6UjEwQ+59S6BPGk2lpHqDlvv+0EWqfXX
 k9zQBi4/X/GaDGFVpXTooS5+L2N1jghDv33j0R6ceD7VlMLlSO8balZi5
 3d1xfu1+84qn2rmjfKratG2+uHNFGo1u8yFT4GXUHvDBx29xSYfRwXOXv
 0jkaIaknwi7Frwf8XfoRwBTz9+6U3LrD5gitmlQS7Qz3tMqGgCuM7d/k2
 CzjeofhHWgMI36bBnPlYci0fGhNF8FZNveWbiIpQW8UT7xgCClW0DT8Kw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="358866788"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="358866788"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 06:41:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="686049864"
X-IronPort-AV: E=Sophos;i="6.01,193,1684825200"; d="scan'208";a="686049864"
Received: from kainaats-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.42.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Aug 2023 06:41:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230818111950.128992-3-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230818111950.128992-1-vinod.govindapillai@intel.com>
 <20230818111950.128992-3-vinod.govindapillai@intel.com>
Date: Tue, 22 Aug 2023 16:41:24 +0300
Message-ID: <87ttsr5h4r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v4 2/4] drm/i915/display: combine DP audio
 compute config steps
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

On Fri, 18 Aug 2023, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Combine all DP audio configs into a single function
>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 964bf0551bdc..67c06bbc1760 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2240,9 +2240,12 @@ intel_dp_audio_compute_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct drm_connector *connector = conn_state->connector;
>  
> -	pipe_config->sdp_split_enable =
> +	pipe_config->has_audio =
>  		intel_dp_has_audio(encoder, conn_state) &&
> -		intel_dp_is_uhbr(pipe_config);
> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
> +
> +	pipe_config->sdp_split_enable = pipe_config->has_audio &&
> +					intel_dp_is_uhbr(pipe_config);
>  
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] SDP split enable: %s\n",
>  		    connector->base.id, connector->name,
> @@ -2264,10 +2267,6 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port != PORT_A)
>  		pipe_config->has_pch_encoder = true;
>  
> -	pipe_config->has_audio =
> -		intel_dp_has_audio(encoder, conn_state) &&
> -		intel_audio_compute_config(encoder, pipe_config, conn_state);
> -
>  	fixed_mode = intel_panel_fixed_mode(connector, adjusted_mode);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>  		ret = intel_panel_compute_config(connector, adjusted_mode);

-- 
Jani Nikula, Intel Open Source Graphics Center
