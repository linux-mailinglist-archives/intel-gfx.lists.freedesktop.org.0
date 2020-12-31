Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7492E7D49
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 01:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7BBE8982E;
	Thu, 31 Dec 2020 00:02:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D2828982E
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 00:02:15 +0000 (UTC)
IronPort-SDR: Ah6dHFiL9QhR8ThyiCuUufX9jXRpXdavZlYQ0cX0Zp179Iras+8kzQIUfbAt+5tr+M7u+Y+rg2
 BC3e6Bga8qBw==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="176806837"
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="176806837"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 16:02:12 -0800
IronPort-SDR: qgN2jHzcf8FjhAYd0nh1Gg37t8AxDqDrMVb4HlLGF9Z0tlkrLjw0wapB6XZzRmD/SUXTRNn0bw
 QE4KzpjdbHEw==
X-IronPort-AV: E=Sophos;i="5.78,462,1599548400"; d="scan'208";a="419695598"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2020 16:02:11 -0800
Date: Wed, 30 Dec 2020 16:02:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201231000210.GE3894148@mdroper-desk1.amr.corp.intel.com>
References: <20201230103742.18577-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201230103742.18577-1-chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Remove aux xfer timeout debug
 message
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

On Wed, Dec 30, 2020 at 10:37:42AM +0000, Chris Wilson wrote:
> The timeouts are frequent and expected. We will complain if we retry so
> often as to lose patience and give up, so the cacophony from individual
> complaints is redundant.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 8ae769b18879..704e4cebf7f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1613,8 +1613,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
>  	/* Timeouts occur when the device isn't connected, so they're
>  	 * "normal" -- don't fill the kernel log with these */
>  	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
> -		drm_dbg_kms(&i915->drm, "%s: timeout (status 0x%08x)\n",
> -			    intel_dp->aux.name, status);
>  		ret = -ETIMEDOUT;
>  		goto out;
>  	}
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
