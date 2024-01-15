Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1479982D823
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jan 2024 12:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AACC10E23B;
	Mon, 15 Jan 2024 11:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DC7710E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Jan 2024 11:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705317028; x=1736853028;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ik6FFjVmo17Jyn78bNIAknFOoJEEFEf17J0FSXFGKD4=;
 b=ZZybsRKj2TgrFEjjOlIC8hOs2rEKpedOKq6t8BuvMCFVncOLQNJMAVMM
 sUZt63Ns6d5gYQLcgeLmC1kOu2bJEnEwWBmE+yn79HoxM41U+i+hFBtsg
 IR/xxXMxZk88hfoVk0OLy+q3yiIFTtBln7m4Zi1aG6VJI7KTYQa8OSqc9
 PxF1seIFp2geAxqUwtKbA5Fv7r/yE8Ho4Wg2ydux6LUadD7mtiYjLh7Vy
 XwQt6Dt7fGirrNYxT7ZZaTwIxb4nQD6jZU+7JjLzEnhEO77FF1n9uXcRY
 5MPrMMZOBLQu0f8pV0ym07R/p8vUxVx9qdBMSrecrmfWqwInSkM/meTDq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="13072506"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="13072506"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 03:10:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10953"; a="1030617186"
X-IronPort-AV: E=Sophos;i="6.04,196,1695711600"; d="scan'208";a="1030617186"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 03:10:26 -0800
Date: Mon, 15 Jan 2024 13:10:18 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 3/3] drm/i915: Extract intel_atomic_swap_state()
Message-ID: <ZaUSmtMpqJWFlrC3@intel.com>
References: <20231219130756.25986-1-ville.syrjala@linux.intel.com>
 <20231219130756.25986-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231219130756.25986-4-ville.syrjala@linux.intel.com>
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

On Tue, Dec 19, 2023 at 03:07:56PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Pull all the state swap stuff into its own function to declutter
> intel_atomic_commit() a bit.
> 
> Note that currently the state swap is spread across both
> sides of the unprepare branch in intel_atomic_commit(), but
> we can pull all of it ahead a bit since we bail on the first
> error, and thus there is no change in behaviour from the
> reordering.

For that one, guess can give r-b rightaway, will check
global state serialize then, seems to be major change..

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 23 +++++++++++++++-----
>  1 file changed, 18 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 46eff0ee5519..bf37bfcf350e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7311,6 +7311,23 @@ static int intel_atomic_setup_commit(struct intel_atomic_state *state, bool nonb
>  	return 0;
>  }
>  
> +static int intel_atomic_swap_state(struct intel_atomic_state *state)
> +{
> +	int ret;
> +
> +	ret = drm_atomic_helper_swap_state(&state->base, true);
> +	if (ret)
> +		return ret;
> +
> +	intel_atomic_swap_global_state(state);
> +
> +	intel_shared_dpll_swap_state(state);
> +
> +	intel_atomic_track_fbs(state);
> +
> +	return 0;
> +}
> +
>  int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  			bool nonblock)
>  {
> @@ -7358,9 +7375,7 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  
>  	ret = intel_atomic_setup_commit(state, nonblock);
>  	if (!ret)
> -		ret = drm_atomic_helper_swap_state(&state->base, true);
> -	if (!ret)
> -		intel_atomic_swap_global_state(state);
> +		ret = intel_atomic_swap_state(state);
>  
>  	if (ret) {
>  		struct intel_crtc_state *new_crtc_state;
> @@ -7374,8 +7389,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
>  		intel_runtime_pm_put(&dev_priv->runtime_pm, state->wakeref);
>  		return ret;
>  	}
> -	intel_shared_dpll_swap_state(state);
> -	intel_atomic_track_fbs(state);
>  
>  	drm_atomic_state_get(&state->base);
>  	INIT_WORK(&state->base.commit_work, intel_atomic_commit_work);
> -- 
> 2.41.0
> 
