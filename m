Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6551E4F44
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2020 22:26:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 599676E3C1;
	Wed, 27 May 2020 20:26:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7BD06E3C1
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2020 20:26:55 +0000 (UTC)
IronPort-SDR: M4BZG/ShE0ex+tYJKwZLAuViOrPc8fEBvmL6XUGuLkWfh565Uyyq+XJVybkdC/apGcn32oX1ez
 WX0EQROwS+aQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 13:26:55 -0700
IronPort-SDR: YVBegKNsENa+ZkJlMZlEZCtGnZI+G9iUhy+ODA0WrLDR9K7FImJUhYTuoL3oyDEfl8XhmV0tH+
 ttyzWKYWIeRg==
X-IronPort-AV: E=Sophos;i="5.73,442,1583222400"; d="scan'208";a="414338564"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 13:26:53 -0700
Date: Wed, 27 May 2020 23:26:49 +0300
From: Imre Deak <imre.deak@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200527202649.GA20870@ideak-desk.fi.intel.com>
References: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527200022.28003-1-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
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
Reply-To: imre.deak@intel.com
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

intel_dp->link_trained is set when we trained the link during a modeset,
it doesn't mean that the link status is good, as you seem to interpret
it. With this change I don't see how we would retrain the link when this
is called from intel_dp_short_pulse(). Could you describe more the
failing scenario?

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
