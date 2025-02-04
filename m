Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60211A2767C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 16:52:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C26C10E6C5;
	Tue,  4 Feb 2025 15:51:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iPDF7vjz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF9DC10E6B2;
 Tue,  4 Feb 2025 15:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738684297; x=1770220297;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=AnWL/P9Tmwu/sUqluqIBDVE7cDTyEJGZjofXpy5edJc=;
 b=iPDF7vjzl1RFxo7vLnfW4tfw74cBo+/93xtfNeWGO8Gr1D+O7179aUor
 bRRhXRYxOXVMbUngMEuAalCgk/Wh/QLp1cIJ9swkFdT/zTT2Z68mIp1bL
 LPibW7MZRyNikCOuV1nT9Min9w2T+UCSlrhv60QauP8bZgKnWLbiaMA2h
 TpBYeNdj9WHt4XWa3tjPn0ZDIFD3XHwXF2jc/w1hXdcEUaPPcyvE9dV4B
 a4vNMLKPgrpx5z5Klucbw/hB6F6yiWP4Ba3UyIwBRC9TK+hRPmOKs4dLP
 WGeop38XR8Svk9MGxj28cF28q/upW7cFDj79jNPbb7lCP/Ahj0V4sbGCR w==;
X-CSE-ConnectionGUID: sFmZx4dqRx6CFakS+CWfzg==
X-CSE-MsgGUID: Bk1+cYshQeCd1cLzBAltKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42055800"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="42055800"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:51:36 -0800
X-CSE-ConnectionGUID: 2HDsapLnS2eGdWsIyF4rXw==
X-CSE-MsgGUID: QgUFyM5aRCC4gcd2R6NyYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110618509"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 07:51:35 -0800
Date: Tue, 4 Feb 2025 17:52:32 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: Fix potential infinite loop in 128b/132b SST
Message-ID: <Z6I3wAio4_7UbiWG@ideak-desk.fi.intel.com>
References: <20250204154925.3001781-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204154925.3001781-1-jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 04, 2025 at 05:49:25PM +0200, Jani Nikula wrote:
> Passing 0 as the step only works when there are other reasons to break
> out of the BPP loop in intel_dp_mtp_tu_compute_config(). Otherwise, an
> infinite loop might occur. Fix it by explicitly checking for 0 step.
> 
> Fixes: ef0a0757bbea ("drm/i915/dp: compute config for 128b/132b SST w/o DSC")
> Reported-by: Imre Deak <imre.deak@intel.com>
> Closes: https://lore.kernel.org/r/Z6I0knh2Kt5T0JrT@ideak-desk.fi.intel.com
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
> 
> Note: This needs a backport with (!step) for -rc1.
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 95abc6ea85eb..1587be5cd0a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -353,6 +353,10 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  
>  			break;
>  		}
> +
> +		/* Allow using zero step to indicate one try */
> +		if (!bpp_step_x16)
> +			break;
>  	}
>  
>  	if (slots < 0) {
> -- 
> 2.39.5
> 
