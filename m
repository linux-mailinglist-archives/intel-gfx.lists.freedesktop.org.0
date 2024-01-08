Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCD72826FDB
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 14:30:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547F810E259;
	Mon,  8 Jan 2024 13:30:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D37910E259
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 13:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704720650; x=1736256650;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Uheak0cRvKMKUDSkfZI3GNRP6G+tPjzH2sYUzzlPBYM=;
 b=SoWnmEjeRH807+lFP8ab1jdKZ6NacnlwaYuQEJ2oDl+MeFIpMT59RRct
 ikFPkee99DaRCxo8dXTl9uS9UHbn95QcU2u21XR+8P52GFAVELEV9OVTS
 5TsQkMvYA4MSo+kG33A2bUbOrPVOwyJZbwjmup8GOEcKpv3+4DtdZ0B4/
 TxF08WYitcOSUvKM9vzlwfvNJvLwyj0CdfozoVAASC0+DEiH6+4QSwB2k
 Cu2aYH1iHrdZk0A7Ss7WL0qHe0ikzOXogRuKBJt8TKg7q+BCXdvYMiqVM
 T8u1CgaxK5OIKIKmT/Js3rAk9l30kKiDC8SYBu94T802mhiK0+jv8MwU6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="16478497"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="16478497"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 05:30:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904798564"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="904798564"
Received: from iboscu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.120])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 05:30:45 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, imre.deak@intel.com
Subject: Re: [PATCH] drm/i915/display/dp: 128/132b DP-capable with SST
In-Reply-To: <20240103090715.307309-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240103090715.307309-1-arun.r.murthy@intel.com>
Date: Mon, 08 Jan 2024 15:30:42 +0200
Message-ID: <875y04x88t.fsf@intel.com>
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

On Wed, 03 Jan 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> With a value of '0' read from MSTM_CAP register MST to be enabled.
> DP2.1 SCR updates the spec for 128/132b DP capable supporting only one
> stream and not supporting single stream sideband MSG.
> The underlying protocol will be MST to enable use of MTP.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 9ff0cbd9c0df..40d3280f8d98 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4038,8 +4038,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  	if (!intel_dp_mst_source_support(intel_dp))
>  		return;
>  
> -	intel_dp->is_mst = sink_can_mst &&
> -		i915->display.params.enable_dp_mst;
> +	/*
> +	 * Even if dpcd reg MSTM_CAP is 0, if the sink supports UHBR rates then
> +	 * DP2.1 can be enabled with underlying protocol using MST for MTP
> +	 */
> +	intel_dp->is_mst = (sink_can_mst ||
> +			    drm_dp_is_uhbr_rate(intel_dp_max_common_rate(intel_dp)))
> +			    && i915->display.params.enable_dp_mst;

We use drm_dp_is_uhbr_rate() in intel_dp_is_uhbr() to determine whether
the link rate in the *crtc state* is uhbr, and by proxy whether the link
in the *crtc state* is 128b/132b.

There, we've already decided to use uhbr and 128b/132b.

This one here is different, and I think it's taking us to the wrong
direction. For example, it should be possible to downgrade the link from
uhbr to non-uhbr on link failures. We don't have that yet. But this
makes untangling that even harder.


BR,
Jani.


>  
>  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>  					intel_dp->is_mst);

-- 
Jani Nikula, Intel
