Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9601C250A94
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Aug 2020 23:11:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB64C89C61;
	Mon, 24 Aug 2020 21:11:28 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8A089C61
 for <Intel-gfx@lists.freedesktop.org>; Mon, 24 Aug 2020 21:11:26 +0000 (UTC)
IronPort-SDR: RGE8IG6+SwWhW5RjK0P6239Rxe/otPR/eY0HXkst7Zm1QC3b7FxM9MTBMnUwR7R17+M58egY23
 hVcFmVXlr4cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="220257657"
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="220257657"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 14:11:26 -0700
IronPort-SDR: lT7eq0PGwDkODQJnlKtKsnIJuLdfrpP3dISlQS0kh0d9wl9WHhCnfACnPPYO3F52QIG03CkGUr
 GHvh0V8BhCfQ==
X-IronPort-AV: E=Sophos;i="5.76,349,1592895600"; d="scan'208";a="474077031"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2020 14:11:26 -0700
Date: Mon, 24 Aug 2020 14:12:53 -0700
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Khaled Almahallawy <khaled.almahallawy@intel.com>
Message-ID: <20200824211253.GA18456@labuser-Z97X-UD5H>
References: <20200822064837.3276-1-khaled.almahallawy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200822064837.3276-1-khaled.almahallawy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: DPTX writes
 Swing/Pre-emphs(DPCD 0x103-0x106) requested during PHY Layer testing.
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Aug 21, 2020 at 11:48:37PM -0700, Khaled Almahallawy wrote:
> Source needs to write DPCD 103-106 after receiving a PHY request to change
> swing/pre-emphasis after reading DPCD 206-207. This is especially needed if
> there is a retimer between source and sink and the retimer implements AUX_CH
> interception scheme to manage DP PHY settings (e.g. adjusting Swing/Pre-emphasis
> equalization level) for DP output channel . If the source doesn't write to
> DPCD 103-106, the retimer may not output the requested swing/pre-emphasis and
> eventually we fail compliance.
> 
> Signed-off-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 79c27f91f42c..5044201ca742 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5503,6 +5503,9 @@ void intel_dp_process_phy_request(struct intel_dp *intel_dp)
>  
>  	intel_dp_autotest_phy_ddi_enable(intel_dp, data->num_lanes);
>  
> +	drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_LANE0_SET,
> +				intel_dp->train_set, intel_dp->lane_count);

Does this also help with spitting out the correct voltage levels during the actual training
Does this fix LT failure seen on Type C ports with retimers?

Manasi

> +
>  	drm_dp_set_phy_test_pattern(&intel_dp->aux, data,
>  				    link_status[DP_DPCD_REV]);
>  }
> -- 
> 2.17.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
