Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6AB6DE2DC
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 19:42:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D6210E5EF;
	Tue, 11 Apr 2023 17:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3744210E5EF
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 17:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681234969; x=1712770969;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RcS2LWEtLGxoyx93hji0qHAMdxBifuzsVBrGIOFlZwg=;
 b=E9oUl7GcWIUJQML3/2x/v0TcWX0Tz9/fAjO0xLvjwDbzawO8XA8fzU2t
 72U9spqUKWbzaj4d4cFW3aX7FDdAhYbudGrQnnFletnHXZUlTeiGx9bIP
 19WQB8g8YS72+SQBkVeHrRsl0tnADyACQ7Q+Yfh2wCai2INitWtoRIM2X
 hCFFKVwuj0YTZ7w/ZiNkmzKprWp1YXA2DqjxhBBxCECcsQuRtg8mk1dZv
 79LWHFdnRMmbTrnLAUhrJgeonSeF0apryM9ycmLVz4hrxjsnFZCx2y127
 aJ+CCYkdylNOwF559HFU66v1YzD/BJtA4cRYy+uuSlr09TzMHqqXk3E4l Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="346360744"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="346360744"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 10:42:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="721272116"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="721272116"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 11 Apr 2023 10:42:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 20:42:38 +0300
Date: Tue, 11 Apr 2023 20:42:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>
Message-ID: <ZDWcDhmJyMhQpQBa@intel.com>
References: <20230411173408.1945921-1-navaremanasi@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230411173408.1945921-1-navaremanasi@chromium.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Return correct err code
 for bpc < 0
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 11, 2023 at 05:34:08PM +0000, Manasi Navare wrote:
> In the function intel_dp_max_bpp(), currently if bpc < 0 in case of error,
> we return 0 instead of returning an err code of -EINVAL.
> This throws off the logic in the calling function.

What logic? The caller doesn't expect to get an error.

> Fix this by returning
> -EINVAL in case bpc < 0 which would be an error.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Sean Paul <sean@poorly.run>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f0bace9d98a1..f6546292e7c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1280,7 +1280,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>  		max_hdmi_bpc = intel_dp_hdmi_compute_bpc(intel_dp, crtc_state, bpc,
>  							 respect_downstream_limits);
>  		if (max_hdmi_bpc < 0)
> -			return 0;
> +			return -EINVAL;
>  
>  		bpc = min(bpc, max_hdmi_bpc);
>  	}
> -- 
> 2.40.0.577.gac1e443424-goog

-- 
Ville Syrjälä
Intel
