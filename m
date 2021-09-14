Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 605AF40B983
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Sep 2021 22:53:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 300DD6E81B;
	Tue, 14 Sep 2021 20:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 020D96E81B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Sep 2021 20:53:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="209220924"
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="209220924"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 13:53:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,292,1624345200"; d="scan'208";a="699679121"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2021 13:53:17 -0700
Date: Tue, 14 Sep 2021 13:53:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210914205316.GV3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210913174254.21735-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210913174254.21735-1-radhakrishna.sripada@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Update memory bandwidth parameters
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

On Mon, Sep 13, 2021 at 10:42:54AM -0700, Radhakrishna Sripada wrote:
> Earlier while calculating derated bw we would use 90% of the calculated
> bw. Starting ADL-P we use a non standard derating. Updating the formulae
> to reflect the same.
> 
> Bspec: 64631
> 
> Fixes: 4d32fe2f14a7 ("drm/i915/adl_p: Update memory bandwidth parameters")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index e91e0e0191fb..23121ddd2580 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -222,31 +222,35 @@ static int icl_sagv_max_dclk(const struct intel_qgv_info *qi)
>  
>  struct intel_sa_info {
>  	u16 displayrtids;
> -	u8 deburst, deprogbwlimit;
> +	u8 deburst, deprogbwlimit, derating;
>  };
>  
>  static const struct intel_sa_info icl_sa_info = {
>  	.deburst = 8,
>  	.deprogbwlimit = 25, /* GB/s */
>  	.displayrtids = 128,
> +	.derating = 10,
>  };
>  
>  static const struct intel_sa_info tgl_sa_info = {
>  	.deburst = 16,
>  	.deprogbwlimit = 34, /* GB/s */
>  	.displayrtids = 256,
> +	.derating = 10,
>  };
>  
>  static const struct intel_sa_info rkl_sa_info = {
>  	.deburst = 16,
>  	.deprogbwlimit = 20, /* GB/s */
>  	.displayrtids = 128,
> +	.derating = 10,
>  };
>  
>  static const struct intel_sa_info adls_sa_info = {
>  	.deburst = 16,
>  	.deprogbwlimit = 38, /* GB/s */
>  	.displayrtids = 256,
> +	.derating = 20,

This is changing the derating for both ADL-S and ADL-P, but the bspec
says that ADL-S still uses a derating of 10.


Matt

>  };
>  
>  static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
> @@ -302,7 +306,7 @@ static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel
>  			bw = icl_calc_bw(sp->dclk, clpchgroup * 32 * num_channels, ct);
>  
>  			bi->deratedbw[j] = min(maxdebw,
> -					       bw * 9 / 10); /* 90% */
> +					       bw * (100 - sa->derating) / 100);
>  
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "BW%d / QGV %d: num_planes=%d deratedbw=%u\n",
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
