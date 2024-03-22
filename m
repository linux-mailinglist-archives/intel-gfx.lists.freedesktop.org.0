Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9AE88722A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 18:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FF9811268D;
	Fri, 22 Mar 2024 17:51:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cf8EtqFO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B93B011268E
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 17:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711129917; x=1742665917;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nPuQNa2GQnXJ2ZF1f8B7PUL5bopoHqEArH6cgvum6HQ=;
 b=Cf8EtqFOEVk5qSVG2T3Q/Eky7/cs93Cp24yLx2io/hXSPvr0rwtfpaqo
 ooh1vHH0Vllkc4xZBD/HAGds+CZhVAXj2uDj7pn+Y5fCH9vUx1UlYaYZD
 7Ar2DGVprpIH9crVhRmsjcPdFZMUYApUtQlWTmeeB+RZk/TKxDnDz9lRn
 XjY8M2iIMTWpYKUgqs6t+Yej10rP8AFrrcY8/G5BTI4Y/lGYDc6P3PsNi
 QuuFWnLnVxXgX17ML65p2zA0gyR+z3lmlSiXublLk/GcrS2nGyQIIunnh
 iLcA2P/80nf9krn8FXZBH4xNZw18xiB01DqT1pUraoii4dhRcS9om+uml A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6047793"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; 
   d="scan'208";a="6047793"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 10:51:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="827783574"
X-IronPort-AV: E=Sophos;i="6.07,146,1708416000"; d="scan'208";a="827783574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 22 Mar 2024 10:51:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 22 Mar 2024 19:51:53 +0200
Date: Fri, 22 Mar 2024 19:51:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 4/5] drm/i915: Loop over all active pipes in
 intel_mbus_dbox_update
Message-ID: <Zf3FOf_hoIl4Of7V@intel.com>
References: <20240322114046.24930-1-stanislav.lisovskiy@intel.com>
 <20240322114046.24930-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240322114046.24930-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Mar 22, 2024 at 01:40:45PM +0200, Stanislav Lisovskiy wrote:
> We need to loop through all active pipes, not just the ones, that
> are in current state, because disabling and enabling even a particular
> pipe affects credits in another one.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 2b947870527fc..7eb78e0c8c8e3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3696,10 +3696,8 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> -	const struct intel_crtc_state *new_crtc_state;
>  	const struct intel_crtc *crtc;
>  	u32 val = 0;
> -	int i;
>  
>  	if (DISPLAY_VER(i915) < 11)
>  		return;
> @@ -3743,12 +3741,9 @@ void intel_mbus_dbox_update(struct intel_atomic_state *state)
>  		val |= MBUS_DBOX_B_CREDIT(8);
>  	}
>  
> -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes) {
>  		u32 pipe_val = val;
>  
> -		if (!new_crtc_state->hw.active)
> -			continue;
> -
>  		if (DISPLAY_VER(i915) >= 14) {
>  			if (xelpdp_is_only_pipe_per_dbuf_bank(crtc->pipe,
>  							      new_dbuf_state->active_pipes))
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
