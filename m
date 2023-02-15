Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AAD697E54
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7B510E1D1;
	Wed, 15 Feb 2023 14:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EB1C10E1D1
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676471362; x=1708007362;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XCJGG0yJ2RDHkfDXueSROSWWf3pZEzvwLRIkKP2ccK8=;
 b=AG+cL/G/Oi+NidA9VOFw+KLkOipiQV7mr9JeEg6ffseWuxEYkNHQhHZs
 vxy83S5SuiJR3du0HHhHn3Tvn+yeaOL5g5du5KVNT58Lxu1nbsm3f07mO
 E/ZxlN5sQ6YS9zVHI1PHU/gXzobB+lR2SOVHiYV/qnrqy1VJOwoTKtkc9
 Usev2li4CpBOxrpI3EesJEh8Zwj2xyfsK1pnbJQt3cGJ4pai0bgx8qqhP
 mH1zXaumweFnHZLrnXfi8mFXvFC8M82Zg7jNckT/Q6p3Wz57ech5qZDz2
 r0asv5dfrHWJFqFIb9Vgw/KHhRjcBZF7Ye6kgnbIU/FeFyykZIE07NJJ+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311804264"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311804264"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:29:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="733298969"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="733298969"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga008.fm.intel.com with SMTP; 15 Feb 2023 06:29:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 16:29:05 +0200
Date: Wed, 15 Feb 2023 16:29:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+zsMfPQYxh3Ypbw@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
 <20230215141910.433043-5-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230215141910.433043-5-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 5/5] drm/i915/wm: remove ILK+ nop funcs
 fallback
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

On Wed, Feb 15, 2023 at 04:19:10PM +0200, Jani Nikula wrote:
> Disabling ILK+ watermarks on failure to read the watermark levels dates
> back to 2010 and commit 7f8a85698f5c ("drm/i915: Add the support of
> memory self-refresh on Ironlake"), with no explanations, and it's been
> copied and modified from that ever since. Finally drop it.
> 
> If the value are actually zero, the ilk_compute_*_wm() functions should
> handle it gracefully.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 14 +-------------
>  1 file changed, 1 insertion(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index 50cdfe11192e..3d4687efe4dd 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -4007,19 +4007,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
>  	/* For FIFO watermark updates */
>  	if (HAS_PCH_SPLIT(dev_priv)) {
>  		ilk_setup_wm_latency(dev_priv);
> -
> -		if ((DISPLAY_VER(dev_priv) == 5 && dev_priv->display.wm.pri_latency[1] &&
> -		     dev_priv->display.wm.spr_latency[1] && dev_priv->display.wm.cur_latency[1]) ||
> -		    (DISPLAY_VER(dev_priv) != 5 && dev_priv->display.wm.pri_latency[0] &&
> -		     dev_priv->display.wm.spr_latency[0] && dev_priv->display.wm.cur_latency[0])) {
> -			dev_priv->display.funcs.wm = &ilk_wm_funcs;
> -		} else {
> -			ilk_init_lp_watermarks(dev_priv);
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Failed to read display plane latency. "
> -				    "Disable CxSR\n");
> -			dev_priv->display.funcs.wm = &nop_funcs;
> -		}
> +		dev_priv->display.funcs.wm = &ilk_wm_funcs;
>  	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
>  		vlv_setup_wm_latency(dev_priv);
>  		dev_priv->display.funcs.wm = &vlv_wm_funcs;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
