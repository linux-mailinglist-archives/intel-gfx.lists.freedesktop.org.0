Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 307F3697E52
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Feb 2023 15:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EBDD10E135;
	Wed, 15 Feb 2023 14:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35DC210E06E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 14:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676471314; x=1708007314;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=209X8zDc3RcpZgQ08AwQVNKifiaU/AfINimdA6lgYLI=;
 b=la6LHWbzp4so9WS1EtKzHTms5regpbWdOlzZ/aYSvSMHPi8yJbGfAMuh
 G4KeT8ATGehHuzms424Je0vE0noKTJRMnHRRXzY9afuDJB3FL71nIbDns
 ncHcFNYKEVXlVuOAMEhKCL0O+nIr/GXX03r+jyXN8HDLHa+t+5CsoULFz
 j7731HWMWkHdGSW0k5zu4jg5xlkwRbJpkP7Co6G1WQ4gf7Y17c8SxPSyb
 0sJTQ47CDuvr8aoxDeWftuK8ZGzoBrY5y3Sl7nba/LhwTcvTtRfB6z28a
 RYo8weiHxMNpT47ThVXL7VUqnI35B5VkJYd/yYuHRzeZeKNUA47rG6ieX w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="311804201"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="311804201"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 06:28:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="733298784"
X-IronPort-AV: E=Sophos;i="5.97,299,1669104000"; d="scan'208";a="733298784"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by fmsmga008.fm.intel.com with SMTP; 15 Feb 2023 06:28:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Feb 2023 16:28:30 +0200
Date: Wed, 15 Feb 2023 16:28:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+zsDqPXDf7J/vTk@intel.com>
References: <20230215141910.433043-1-jani.nikula@intel.com>
 <20230215141910.433043-2-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230215141910.433043-2-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 2/5] drm/i915/wm: warn about
 ilk_wm_sanitize() on display ver 9+
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

On Wed, Feb 15, 2023 at 04:19:07PM +0200, Jani Nikula wrote:
> The sanitization should be limited to PCH split platforms up to display
> version 8. Warn and bail out otherwise.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index f76ac64ebd71..50cdfe11192e 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -3437,6 +3437,9 @@ void ilk_wm_sanitize(struct drm_i915_private *dev_priv)
>  	if (!dev_priv->display.funcs.wm->optimize_watermarks)
>  		return;
>  
> +	if (drm_WARN_ON(&dev_priv->drm, DISPLAY_VER(dev_priv) >= 9))
> +		return;
> +

Oh you put it here. I guess that works too, though still
a bit confusing that we call an ilk_ thing on skl+.

Whatever you decide
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	state = drm_atomic_state_alloc(&dev_priv->drm);
>  	if (drm_WARN_ON(&dev_priv->drm, !state))
>  		return;
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
