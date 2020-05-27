Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 656031E4FA1
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 22:53:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB4A26E0F2;
	Wed, 27 May 2020 20:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D1276E0F2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 20:52:57 +0000 (UTC)
IronPort-SDR: VhjG00tlmzJ6nLQRLFejA1WGFRndxPqOjoI2egyv7qamGr0NuCTsmx7M7JRpbL9xlT2H47dcrD
 0IgMUDUPd79w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 13:52:57 -0700
IronPort-SDR: KkhKdDxuOTPLYyzduOuBn0nUtVxiZIwI3FOMm8c2OuLnGPNYMJezeyYk2FFOy5ElRbqgKB0cmE
 9Sf9i/Se4Wyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="266970429"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga003.jf.intel.com with ESMTP; 27 May 2020 13:52:57 -0700
Date: Wed, 27 May 2020 13:54:27 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200527205426.GA10731@intel.com>
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v1] drm/i915: Minor link training logic
 fixes for dp_mst
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

On Wed, May 27, 2020 at 11:00:22PM +0300, Stanislav Lisovskiy wrote:
> First of all *_needs_link_retraining function should return
> false is link_train is set to true but not false.
> 
> Also if we detect channel eq problem when checking mst status
> we simply bail out, without setting link_train to false again,
> which might end up in a situation that we don't do link retraining
> when needed.
> 
> There were some issues, when we had several problems with dp mst
> and at the same time the log was floode by messages about
> "channel eq not ok, need retraining" however the actual training
> seems to be never done.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1768731678a1..9288dc1f8914 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5627,6 +5627,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
>  			drm_dbg_kms(&i915->drm,
>  				    "channel EQ not ok, retraining\n");
>  			need_retrain = true;
> +			intel_dp->link_trained = false;
>  		}
>  
>  		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
> @@ -5654,7 +5655,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
>  {
>  	u8 link_status[DP_LINK_STATUS_SIZE];
>  
> -	if (!intel_dp->link_trained)
> +	if (intel_dp->link_trained)

This is not correct. Since link_trained is set when link training is completed as part of a
complete modeset. If link training is not done, like at hotplug, then in that case we should
not retrain since the pipe has not been configured for this new hotplug and link training
has not been done.

Retraining is expected to happen only in cases where there is a short pulse or a spurious long pulse
when link training through modeset is already complete and hence the old logic of returnin a false
when !intel_dp->link_trained is correct.

Regards
Manasi

>  		return false;
>  
>  	/*
> -- 
> 2.24.1.485.gad05a3d8e5
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
