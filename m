Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8119B4457
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:36:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3812A10E21C;
	Tue, 29 Oct 2024 08:36:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="evYlAxqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54D0810E21C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 08:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730190998; x=1761726998;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=etfIiqH9NuLxc8tO0vhg3JPtvNU/d9r+OvYLKKezY48=;
 b=evYlAxqBDNNRZ6p6A0z9TQX8/BnrSTFVdqGP6ghOzFoH1rkg5bq3BZKf
 SkuaF/2UYDJkQGNU5CpyGAyXRh8T3HgSy1mQhRJiLdwXgkHSBHQVDTp5O
 ZqUlJzrTQ1u12+a4FNmZdfAOObjpwP3ldniVepMHauyH7m+EL/kKb8bOt
 0C9lymf0s89yF1uVVtSp3sIwusFGBJ19rvSQsiwnxtAG/HrkwQFEaWXHX
 Q+ShVb2gnqtaBGbQxRmilULc0zOkc9ZyN0t92CN1y40HseR1Qq7IXWJF2
 wm/sx1zgxU9roxWgRK/NDjVkGdTKbBa5d2WTQtEYqaoUCn7Dm10FhpYh/ g==;
X-CSE-ConnectionGUID: Poh2ZVW0RDSn0QYvuICvjA==
X-CSE-MsgGUID: rLAW9n+QTcm4y2eUbu5R+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29673842"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29673842"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:36:38 -0700
X-CSE-ConnectionGUID: OiuM0hdRRyaGvqLN8PscNQ==
X-CSE-MsgGUID: nEck04fGT5SkemPTGIYq7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="82701240"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.69])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 01:36:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: Re: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
In-Reply-To: <20241029050030.1413662-1-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241029050030.1413662-1-animesh.manna@intel.com>
Date: Tue, 29 Oct 2024 10:36:34 +0200
Message-ID: <87y127nw4t.fsf@intel.com>
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

On Tue, 29 Oct 2024, Animesh Manna <animesh.manna@intel.com> wrote:
> Issue is seen when PSR enabled with setup frames and when try to disable
> PSR at SRDONACK State (0x1). PSR FSM is stuck at SRDONACK(0x1) for more
> than 5 seconds. Issue not seen with Setup frames disabled. Currently
> disable psr1 if setuptime > vblank to workaround the above issue.
>
> HSD: 16024594674
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 4176163ec19a..887fa8a8f878 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1640,6 +1640,15 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> +static bool intel_psr_needs_wa_18037818876(struct intel_dp *intel_dp,
> +					   struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +
> +	return ((DISPLAY_VER(display) == 20) && intel_dp->psr.entry_setup_frames > 0 &&
> +		!crtc_state->has_sel_update);

Excessive parentheses both around the display ver check as well as the
whole thing.

BR,
Jani.


> +}
> +
>  void intel_psr_compute_config(struct intel_dp *intel_dp,
>  			      struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state)
> @@ -1686,6 +1695,10 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
>  		return;
>  
>  	crtc_state->has_sel_update = intel_sel_update_config_valid(intel_dp, crtc_state);
> +
> +	/* Wa_18037818876 */
> +	if (intel_psr_needs_wa_18037818876(intel_dp, crtc_state))
> +		crtc_state->has_psr = false;
>  }
>  
>  void intel_psr_get_config(struct intel_encoder *encoder,

-- 
Jani Nikula, Intel
