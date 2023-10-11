Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A50E7C5FA3
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 23:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CB7D10E1F3;
	Wed, 11 Oct 2023 21:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F13710E1F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 21:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697061290; x=1728597290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XC1hIMu0S1KLbUlqIDS9awLB1PZOs2zpQ6ccYeFs3U0=;
 b=i7tKx5CsiIgVFrddUTx+wm0B7Q57961WF18kFrzHrm15nfmi5dWI5QN5
 /DUUsHxXEBhI/1ZqPnoqNdchRJ6C5UqF1n7fC9rJZ18wlasAjCzJIBrCP
 tVoSprCoUbOSIrHPHntx/1RRLpEMji1QkDNtk3Rqz1uR4l/Z54UtFEeJY
 hiu25X4HeK/MUyjStbHvPipxyrKDtrBFEUiupm+C4Nlo7QFjzZWaiGw5/
 0C7JAr7D7ReXCpo18ub9PcSU1azmYBW90VVZsB04Vkt3pWu2TnE7u9jp/
 pE69rysqrNNNjYQHlg83iL4bAsprfUneEPivSKn+rurRrUOUMsL8oSLpo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="451266975"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="451266975"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 14:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="897819278"
X-IronPort-AV: E=Sophos;i="6.03,217,1694761200"; d="scan'208";a="897819278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga001.fm.intel.com with SMTP; 11 Oct 2023 14:53:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 00:54:46 +0300
Date: Thu, 12 Oct 2023 00:54:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Message-ID: <ZScZpse50iMYsAOa@intel.com>
References: <20231010183101.704439-1-suraj.kandpal@intel.com>
 <20231010183101.704439-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231010183101.704439-3-suraj.kandpal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Use correct method to
 free crtc_state
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

On Wed, Oct 11, 2023 at 12:01:01AM +0530, Suraj Kandpal wrote:
> Even though there is no leaking of resource here lets
> just use the correct method to free crtc_state
> 
> Fixes: 8a3b3df39757 ("drm/i915: Clean up variable names in old dpll functions")

That is clearly not the right commit to blame here. I've
just dropped the whole fixes tag since there is nothing
real to fix here anyway.

I also dropped the fixes tag from the other patch since I
don't think that original commit would leak anything. The
potential for leaks appeared later as we got eg. gamma
readout that might allocate additional things and hang them
off the crtc state. And as the potential leak can happen
only during driver loading it's mostly harmless.

Anyways, both patches pushed now. Thanks.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index 2255ad651486..d41c1dc9f66c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -7,6 +7,7 @@
>  #include <linux/string_helpers.h>
>  
>  #include "i915_reg.h"
> +#include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_de.h"
> @@ -2006,7 +2007,7 @@ int vlv_force_pll_on(struct drm_i915_private *dev_priv, enum pipe pipe,
>  		vlv_enable_pll(crtc_state);
>  	}
>  
> -	kfree(crtc_state);
> +	intel_crtc_destroy_state(&crtc->base, &crtc_state->uapi);
>  
>  	return 0;
>  }
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
