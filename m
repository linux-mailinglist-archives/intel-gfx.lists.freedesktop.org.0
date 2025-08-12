Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0190B231F9
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 20:12:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0260710E62D;
	Tue, 12 Aug 2025 18:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cwtx71P6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94FA310E62C;
 Tue, 12 Aug 2025 18:12:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755022333; x=1786558333;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=WrwDZoF1RypUpbR3LZzH9S11Y3/1w03roZgfyEBlGMQ=;
 b=cwtx71P6/Y2pFjc/Uzaf4OJDMJj1BL9//ZXVMQwryOBifn6S5bp9PwFr
 LwNF6hLSGt2uQhixr5TOW+ndEp2jRch/yKFFh5CTOr+uyQ19nMX0NOyM/
 K5Vg2YO96/OnmGfM11PU+Rqf3pUHHe9ZKdMe9BOjSlkJNQmTVaHF+j3pW
 tVnIfGSQ6brbDgjTWuPlktrNxVZX+xKgD3zmIzcmGatf6U+LCXgbl9jzd
 rW6ImUaj9UT0+z9AB75ku7YRIM5EIhyBH8MCbhkrcuzp1OmJZAUydv03C
 bouQdmhQcCQ+FeBUdeOaqu7cH3xP+5+n0HD4i85ObQ4OzCEQI8eaNxv2Q Q==;
X-CSE-ConnectionGUID: 3zeAMAnLQ5++9Xf2Rf7uoQ==
X-CSE-MsgGUID: sDeE+AmcSE2UhII1UgafCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="82741095"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="82741095"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 11:12:12 -0700
X-CSE-ConnectionGUID: uVtSB4jzT6qlDGIF2Xx21w==
X-CSE-MsgGUID: zKA2rr6wTkSrA2A1MeIz9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="166263698"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.12])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 11:12:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com, arun.r.murthy@intel.com
Subject: Re: [PATCH v6] drm/i915/display: Optimize panel power-on wait time
In-Reply-To: <20250807082402.79018-1-dibin.moolakadan.subrahmanian@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250807082402.79018-1-dibin.moolakadan.subrahmanian@intel.com>
Date: Tue, 12 Aug 2025 21:12:06 +0300
Message-ID: <d83e4d1b8fc0fdf62805a7465511a8b63b4429d1@intel.com>
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

On Thu, 07 Aug 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
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
> Changes in v6:
>  - Removed goto in error path
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b64d0b30f5b1..b84eb43bd2d0 100644
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
> @@ -624,13 +627,20 @@ static void wait_panel_status(struct intel_dp *intel_dp,
>  		    intel_de_read(display, pp_stat_reg),
>  		    intel_de_read(display, pp_ctrl_reg));
>  
> -	if (intel_de_wait(display, pp_stat_reg, mask, value, 5000))
> +	ret = read_poll_timeout(intel_de_read, val,
> +				(val & mask) == value,
> +				10 * 1000, 5000 * 1000, true,

Otherwise looks good, but did you have some rationale for the
sleep_before_read == true?

BR,
Jani.


> +				display, pp_stat_reg);
> +
> +	if (ret) {
>  		drm_err(display->drm,
>  			"[ENCODER:%d:%s] %s panel status timeout: PP_STATUS: 0x%08x PP_CONTROL: 0x%08x\n",
>  			dig_port->base.base.base.id, dig_port->base.base.name,
>  			pps_name(intel_dp),
>  			intel_de_read(display, pp_stat_reg),
>  			intel_de_read(display, pp_ctrl_reg));
> +		return;
> +	}
>  
>  	drm_dbg_kms(display->drm, "Wait complete\n");
>  }

-- 
Jani Nikula, Intel
