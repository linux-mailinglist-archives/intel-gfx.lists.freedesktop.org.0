Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59DFBB1C6A7
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 15:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8B010E771;
	Wed,  6 Aug 2025 13:11:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G1dvr1If";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AB2D10E771;
 Wed,  6 Aug 2025 13:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754485910; x=1786021910;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=h604qIFlgluYJVhgMj9zBrfkSTK53NapAMKEmDcmqRg=;
 b=G1dvr1If2eHtZJSIHiAaEvO1csmqE04STCH6mngNtx5f5X6iT84DBFcB
 r0QubSA4efASMPamwk77g0C0xHp1LS6ePuLn5+Fgb8+RHRMEnZsL46/9F
 saWifty6WVPEsDfvxk7daVQblFaV3pGdL6kvKHOQB6DuJmf4CGFgQj5NO
 xnaAcWyGe6EVE72Yb0HG9vfUdIBLK/CRtE5dU2txfcF/58Cqs0xHQ5oK5
 rq8iTIns5OznQDjCtXnmqGF9nRqXPsl2l+HY+M607nsXDKVAZMC66IqWs
 7JLG8uXne7sN4ddkixdR8gLhchc/V4us2cupnt0EwdtVr97NPew2Xo6lj w==;
X-CSE-ConnectionGUID: mbj8AvpiRwmC5UEg/8s3tg==
X-CSE-MsgGUID: RXoWzqqIT/GdBxJcbxV+3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="79349505"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="79349505"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:11:49 -0700
X-CSE-ConnectionGUID: PKr09y3jTf2qjqUfeOhAmA==
X-CSE-MsgGUID: pMNqb8gsTjmfyRBHX6PjKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164685406"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 06:11:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v5] drm/i915/display: Optimize panel power-on wait time
In-Reply-To: <20250804053120.3794531-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250804053120.3794531-1-dibin.moolakadan.subrahmanian@intel.com>
Date: Wed, 06 Aug 2025 16:11:44 +0300
Message-ID: <9001e3e398f04c5918fcbb382f1661d01c07cf50@intel.com>
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

On Mon, 04 Aug 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
> The current wait_panel_status() uses intel_de_wait(),
> which internally on Xe platforms calls  xe_mmio_wait32().
> xe_mmio_wait32() increases poll interval exponentially.
>
> This exponential poll interval increase causes unnessory delays
> during resume or power-on when the panel becomes ready earlier,
> but polling is delayed due to backoff.
>
> Replace intel_de_wait() with read_poll_timeout() +
> intel_de_read() to actively poll the register at a fixed 10ms interval
> up to a 5 second timeout. This allows poll to exit
> early  when panel is ready.
>
> Changes in v2:
> Replaced  two-phase intel_de_wait() with  read_poll_timeout()
>  + intel_de_read()
> Changes in v3:
>  - Add poll_interval_ms argument  'wait_panel_status' function.
>  - Modify 'wait_panel_status' callers with proper poll interval
> Changes in v4:
>  - Change 'wait_panel_off' poll interval to 10ms
> Changes in v5:
>  - Dropped  poll_interval_ms parameter,use fixed polling
>    interval of 10ms (Jani Nikula)
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b64d0b30f5b1..47e274a6fd72 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/debugfs.h>
> +#include <linux/iopoll.h>
>  
>  #include <drm/drm_print.h>
>  
> @@ -608,6 +609,8 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>  	i915_reg_t pp_stat_reg, pp_ctrl_reg;
> +	int ret;
> +	u32 val;
>  
>  	lockdep_assert_held(&display->pps.mutex);
>  
> @@ -624,7 +627,18 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>  		    intel_de_read(display, pp_stat_reg),
>  		    intel_de_read(display, pp_ctrl_reg));
>  
> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
> +	ret = read_poll_timeout(intel_de_read, val,
> +				(val & mask) == value,
> +				10 * 1000, 5000 * 1000, true,
> +				display, pp_stat_reg);
> +
> +	if (ret)
> +		goto panel_wait_err;
> +
> +	drm_dbg_kms(display->drm, "Wait complete\n");
> +	return;
> +
> +panel_wait_err:

What I meant was, you'd have

	if (ret)
>  		drm_err(display->drm,
>  			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>  			dig_port->base.base.base.id, dig_port->base.base.name,
> @@ -632,7 +646,6 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>  			intel_de_read(display, pp_stat_reg),
>  			intel_de_read(display, pp_ctrl_reg));

But with the goto, the drm_err() is now incorrectly indented.

BR,
Jani.

>  
> -	drm_dbg_kms(display->drm, "Wait complete\n");
>  }
>  
>  static void wait_panel_on(struct intel_dp *intel_dp)

-- 
Jani Nikula, Intel
