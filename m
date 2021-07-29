Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E38263DA967
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 18:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D6D26EDF0;
	Thu, 29 Jul 2021 16:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84A0A6EDF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 16:50:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="200142093"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="200142093"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 09:50:19 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="476474197"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 09:50:12 -0700
Date: Thu, 29 Jul 2021 19:50:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Message-ID: <20210729165008.GA638184@ideak-desk.fi.intel.com>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
 <20210226081554.984307-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210226081554.984307-1-khaled.almahallawy@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 26, 2021 at 12:15:54AM -0800, Khaled Almahallawy wrote:
> Source needs to write DPCD 103-106 after receiving a PHY request to change
> swing/pre-emphasis after reading DPCD 206-207. This is especially needed if
> there is a retimer between source and sink and the retimer implements AUX_CH
> interception scheme to manage DP PHY settings (e.g. adjusting Swing/Pre-emphasis
> equalization level) for DP output channel. If the source doesn't write to
> DPCD 103-106, the retimer may not output the requested swing/pre-emphasis and
> eventually we fail compliance.
> 
> v2: Rebase and use crtc->lane_count (Imre)
> 
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Reviewed-by: Imre Deak <imre.deak>

Sorry for the delay, pushed now, thanks for the patch.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2ec82a5c9f24..1ccf8602b3ef 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4471,6 +4471,9 @@ static void intel_dp_process_phy_request(struct intel_dp *intel_dp,
>  
>  	intel_dp_autotest_phy_ddi_enable(intel_dp, crtc_state);
>  
> +	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
> +			intel_dp->train_set, crtc_state->lane_count);
> +
>  	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
>  				    link_status[DP_DPCD_REV]);
>  }
> -- 
> 2.25.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
