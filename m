Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 011D96E5D47
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 11:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 160BC10E69C;
	Tue, 18 Apr 2023 09:25:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6827710E69C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 09:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681809935; x=1713345935;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vilCc7bFPF/iSF1gl008Xuf3JHvhKZ0IVXFhRLuP3po=;
 b=Kix5CV4Mct3aLjznM7NZ6SJWlKnnOH6sZd+Gp/YwW60y1/wMqzKXasWo
 PJFgud7Ow50XeDFc4prXYcxWXVqF5w4Wa7S321MqcdLzi0itwZ7TNypoQ
 TBynf5tPcjSr+jWGbsXV76kDnkbF8cGvP/BqRNArB/jAG/XYWUWRUKFdg
 5essNGEbbDQ6a7E2sr+ag8KdS1dAUpbHFDXv53+0Qd0o+0fzfzx6Doi2t
 P3zPQExUwVe/N9VvM2PVdwm1knRnwnYL3CtDGbsupk5bBtlB3jCS+J1QA
 f6P6DikCI40y/E/nRu3Jq/ZfePi7YHPnbyPvTG1ZAMQq9675F11QBJ/8W w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="408020757"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="408020757"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="760292910"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="760292910"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 02:25:07 -0700
Date: Tue, 18 Apr 2023 12:25:00 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <ZD5h7NSuDBQICMAx@intel.com>
References: <20230416155417.174418-1-vinod.govindapillai@intel.com>
 <20230416155417.174418-3-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230416155417.174418-3-vinod.govindapillai@intel.com>
Subject: Re: [Intel-gfx] [PATCH v1 2/4] drm/i915: update the QGV point
 frequency calculations
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Apr 16, 2023 at 06:54:15PM +0300, Vinod Govindapillai wrote:
> From MTL onwwards, pcode locks the QGV point based on peak BW of
> the intended QGV point passed by the driver. So the peak BW
> calculation must match the value expected by the pcode. Update
> the calculations as per the Bspec.
> 
> Bspec: 64636
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 5fa599b04ca5..57f8204162dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -179,7 +179,7 @@ static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
>  	val2 = intel_uncore_read(&dev_priv->uncore,
>  				 MTL_MEM_SS_INFO_QGV_POINT_HIGH(point));
>  	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> -	sp->dclk = DIV_ROUND_UP((16667 * dclk), 1000);
> +	sp->dclk = (16667 * dclk + 500) / 1000;

Hmm, wonder does it at least partly now intersects with what I'm doing in 
https://patchwork.freedesktop.org/series/114982/

I remember we were discussing if this "+500" is actually also rounding up
itself.

The thing is that the way how rounding up is done for instance in DIV_ROUND_UP
also, if you check, if you lets say want to divide n by d, however you want to round
up the result, you add n = n + (d - 1) and then divide by d. This is how DIV_ROUND_UP works.
That effectively means that if n would be anything more than m*d, result would be not m,
but m + 1(note flooring would give m)

Adding 500, when dividing by 1000 is also rouding up, however it is a bit weaker.
In example above that would mean, if we want to divide n by d, we first add n = n + d / 2
and then divide by d.
That effectively means that if n would be anything more than m*d + 500, result would not m,
but again m + 1(again note, that true flooeing would have given m, not m + 1)

So it is still rounding up, but just being weaker/less precise though.

If we would want to truly floor that division, we would want to get m, but not m + 1 from
above examples, which means that we should just divide n / d, without adding anything.
So in my opinion, if we want to floor (16667 * dclk / 1000) result - it should not have
both "DIV_ROUND_UP" and " + 500" things - thats what I've done in series which also was touching
this code as well.

I think it would be nice to raise issue and clarify from HW team, if it was initial intention,
because adding + 500 is clearly doing rounding up as well, but it is just now on +-500(d/2) granularity now,
while DIV_ROUND_UP worked with +-1 granularity. However both things are essentially "rounding up".
So in that case I would really want to challenge or clarify, what is written in BSpec.

Stan

>  	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
>  	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
>  
> -- 
> 2.34.1
> 
