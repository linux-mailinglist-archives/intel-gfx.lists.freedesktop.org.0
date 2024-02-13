Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 950928539B6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:15:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6AFB10E5AA;
	Tue, 13 Feb 2024 18:15:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcokuQLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F12BA10E5AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707848111; x=1739384111;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=EPr+atZLHrSGR8qhgaZxpXU6B17yfxeRKWK3fnAua4o=;
 b=KcokuQLoy59QYv/5rxR22Mlh/4WEjCISDTx+B0jgOiNU70BotUsKxGkv
 EO0AQ0snFADjf+x/yZ7Zj2PZ0FBG+7YsySp6u2kE/JAvdQQ5N15XzazaG
 6fOo5n3zjqJyGYLPncHqhZFuHCM9RbzfpgT/3XpWohGgwraOAoHp6dfM+
 wIvsnY9S1SO99vqs8tROydW3yWAgp4H2C6sUUUuEanNixJV0CCTxYfMws
 he0a+sxNgorIt1sZEWkhWDnvdj+ZrVc2s+Kr2w283BTi+12NtKi2GQp33
 6/OiHCyZ2M0qKaCCzkAt0CNA9EbgvtC9P2Hw7rAB5xp7F2FG7qcJmnaIW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="27315268"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; d="scan'208";a="27315268"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:15:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="7708504"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.50])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:15:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, ville.syrjala@intel.com, uma.shankar@intel.com,
 Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
In-Reply-To: <20240206104759.2079133-5-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-5-arun.r.murthy@intel.com>
Date: Tue, 13 Feb 2024 20:15:04 +0200
Message-ID: <87v86s6xjr.fsf@intel.com>
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

On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> On link training failure retry link training with a lesser link
> rate/lane count as specified in the DP spec.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ed7620e7f763..29d785a4b904 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2502,6 +2502,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  				 crtc_state->port_clock,
>  				 crtc_state->lane_count);
>  
> +retry:
>  	/*
>  	 * We only configure what the register value will be here.  Actual
>  	 * enabling happens during link training farther down.
> @@ -2586,7 +2587,14 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent)
>  	 *     (timeout after 800 us)
>  	 */
> -	intel_dp_start_link_train(intel_dp, crtc_state);
> +	if (!intel_dp_start_link_train(intel_dp, crtc_state)) {
> +		/* Link Training failed, retain */
> +		intel_dp->link_trained = false;
> +		intel_dp_stop_link_train(intel_dp, crtc_state);
> +		encoder->post_disable(state, encoder,
> +				   crtc_state, conn_state);
> +		goto retry;
> +	}

As said, the retry needs to go via userspace.

BR,
Jani.


>  
>  	/* 6.n Set DP_TP_CTL link training to Normal */
>  	if (!is_trans_port_sync_mode(crtc_state))

-- 
Jani Nikula, Intel
