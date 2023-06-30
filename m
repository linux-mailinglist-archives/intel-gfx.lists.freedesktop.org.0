Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29699744128
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 19:25:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91F5910E08D;
	Fri, 30 Jun 2023 17:25:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B01C10E08D
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 17:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688145911; x=1719681911;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zubzb/PAj9qXtn31Y8/OzjHU71sjVQOrGcjzSfPIU1U=;
 b=OC+eMmH6iMpEgr82+nVAFRFO/+TzS8OsbrBUkWpajlRNao/o3jL/jrIm
 Lmk5D+qh6sUV/85StElQdTBEovXeq/Fk/mZ40grmxc7WtxTzuMHFfIKpk
 EgkOKHzNrrTeZHdpu2fs1M9SSPUxi9ll/ps+BTeJE7mvf794ABjSOOpTy
 gZNgXFn0NVlr5f/d6KakpUDD2Z3Xpds/7mtxQGWwLWucGGaoTy6yjHZD+
 ZAhhs2JSEv4q6Vv4Y73nXIJy7OiU7DqCLuq4yfd4B0KJO4Is8XpHBRhky
 DVEeD/GBELsOtFzNs3j3Tgpbaa5CEksmgQ7/9d8ahR807YicTzyrtGSaj A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="342033135"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="342033135"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 10:25:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="783157308"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="783157308"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga008.fm.intel.com with SMTP; 30 Jun 2023 10:25:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 20:25:03 +0300
Date: Fri, 30 Jun 2023 20:25:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZJ8P7-I7unOWX4q8@intel.com>
References: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't preserve dpll_hw_state for
 slave crtc in Bigjoiner
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

On Wed, Jun 28, 2023 at 05:10:17PM +0300, Stanislav Lisovskiy wrote:
> If we are using Bigjoiner dpll_hw_state is supposed to be exactly
> same as for master crtc, so no need to save it's state for slave crtc.

Yeah, and the master has recalculated this already. I guess this
used to make some sense in the times when we did the dpll
calculations much later.

So probably deserves a
Fixes: 0ff0e219d9b8 ("drm/i915: Compute clocks earlier")

Anyways,
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 43d6ba980780..c3e93bdde29d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4568,7 +4568,6 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>  	saved_state->uapi = slave_crtc_state->uapi;
>  	saved_state->scaler_state = slave_crtc_state->scaler_state;
>  	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> -	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;

Seems like we should also remove it from the
intel_crtc_prepare_cleared_state() but that one clearly needs
much more thought due to the port_dpll[] stuff...

>  	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
>  
>  	intel_crtc_free_hw_state(slave_crtc_state);
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
