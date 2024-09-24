Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6EF983F9F
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 09:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA0E710E5D9;
	Tue, 24 Sep 2024 07:48:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F+W3z9mm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDA1810E52D;
 Tue, 24 Sep 2024 07:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727164098; x=1758700098;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Pizc7GZYuS//JYHRXP2qoWh5Thf+FrG45vt9phS/Ajw=;
 b=F+W3z9mmF5PWVQa97D+fIYxa8afPEpuJq9lu8FFgBqFIHYu1yxUdcT90
 QH9PtsJQIuDF3KPsC4pRvYELmQEk3scvaRmMdrHLF68fHB1TQlsCVjuvf
 IFEQFlCx5tFwFxRXF8RwTbJ/m6g3ebgIS5vAuENesGpKpku8K8nFCAFf6
 PJ3b7mj0m9UCITyVOcBEJgq7KO1V+kqcR6Q01/98aYdGftPQtVXPxoloD
 3JXRIZ7pxfPF8dD0FDHi4xMKCo89cURzuyC0y8k6Lu6cHcnE6BCEG5gbH
 SrsvJxrWFcnv0JF4gNyMZVF0tG9FEhD/3My9yoOU7R+tyCqpt/zr80bKH g==;
X-CSE-ConnectionGUID: bcwGHvHYRR6VUGbcHzDlyw==
X-CSE-MsgGUID: 8vUMFW2nQOi6p5NPVzumfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43660843"
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="43660843"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 00:48:17 -0700
X-CSE-ConnectionGUID: 0PYedfNLQuKQPawNWxfa/Q==
X-CSE-MsgGUID: 2SGkKpM4QOST3RGuerhwXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,253,1719903600"; d="scan'208";a="75855430"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.183])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 00:48:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>
Subject: Re: [PATCHv2 2/3] drm/i915/dp: read Aux RD interval just before
 reading the FFE preset
In-Reply-To: <20240924061358.1725306-3-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240924061358.1725306-1-arun.r.murthy@intel.com>
 <20240924061358.1725306-3-arun.r.murthy@intel.com>
Date: Tue, 24 Sep 2024 10:48:12 +0300
Message-ID: <871q195w77.fsf@intel.com>
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

On Tue, 24 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Figure 3-52: 128b132b DP DPTC LANEx_CHANNEL_EQ_DONE Sequence of
> DP2.1a spec.
> During LT, the transmitter shall read DPCD 02216h before DPCD
> 00202h through 00207h, and 0200Ch through 0200Fh
>
> Co-developed-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f41b69840ad9..460426a3b506 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -1419,12 +1419,6 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  	for (try = 0; try < max_tries; try++) {
>  		fsleep(delay_us);
>  
> -		/*
> -		 * The delay may get updated. The transmitter shall read the
> -		 * delay before link status during link training.
> -		 */
> -		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> -
>  		if (drm_dp_dpcd_read_link_status(&intel_dp->aux, link_status) < 0) {
>  			lt_err(intel_dp, DP_PHY_DPRX, "Failed to read link status\n");
>  			return false;
> @@ -1451,6 +1445,12 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
>  		if (time_after(jiffies, deadline))
>  			timeout = true; /* try one last time after deadline */
>  
> +		/*
> +		 * During LT, Tx shall read DPCD 02216h before DPCD 00202h to 00207h and
> +		 * 0200Ch through 0200Fh.
> +		 */

I really like comments that are actual helpful sentences. Why do I I
need to look up what 02216h and 00202h-00207h are? What's wrong with the
original comment?

BR,
Jani.


> +		delay_us = drm_dp_128b132b_read_aux_rd_interval(&intel_dp->aux);
> +
>  		/* Update signal levels and training set as requested. */
>  		intel_dp_get_adjust_train(intel_dp, crtc_state, DP_PHY_DPRX, link_status);
>  		if (!intel_dp_update_link_train(intel_dp, crtc_state, DP_PHY_DPRX)) {

-- 
Jani Nikula, Intel
