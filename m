Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF3A4D4204
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 08:46:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F5410F652;
	Thu, 10 Mar 2022 07:46:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF02D10F652
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 07:46:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646898405; x=1678434405;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TDHtG3+gcqSyFUY/5KlOOeT6chPR7ajGNti/ofYH3hc=;
 b=NxkXq/ZjUzFccbwDT3T7DjpWw6hUQ/FsFGVVfWk+sgtNOJ8FyDSwfWRa
 QHiDlkVoDbS0lu34dU25LtYyI7Aj/hL1+/+9PduOt/HTfQ+JB/lqmrwc6
 znWyBFFoPZpBKu+2Ql6Qcan3g1Uii9QzIgdle1iTBSaCZNHere4xk0epw
 swNnWAY+jqvaBk58ih3D4HubsB6YkWyKqX4YtaXa9tewyw8lwULuj7LPS
 eoVB5LmWRrcDrPfcjDEALVYJboDvsFxy6aKYG3tditjkYpWCzjj22QFEo
 yRkJSMWyq79QrM8KDqXl6DvYxLIiPCL8edWl++RH8sRpTTJr/mYpPqShP Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="237354355"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="237354355"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 23:46:44 -0800
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="578705757"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 23:46:43 -0800
Date: Thu, 10 Mar 2022 09:47:14 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220310074714.GB20808@intel.com>
References: <20220303191207.27931-1-ville.syrjala@linux.intel.com>
 <20220303191207.27931-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220303191207.27931-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915: Properly write lock
 bw_state when it changes
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

On Thu, Mar 03, 2022 at 09:12:05PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The current code also forgets to call intel_atomic_lock_global_state()
> when other stuff besides the final min_cdlck changes in the state.
> That means we may throw away data which actually has changed, and
> thus we can't be at all sure what the code ends up doing during
> subsequent commits. Do the write lock properly.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 24 +++++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 0759bb95ea4b..56eebccd16e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -678,6 +678,28 @@ intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  	return to_intel_bw_state(bw_state);
>  }
>  
> +static bool intel_bw_state_changed(struct drm_i915_private *i915,
> +				   const struct intel_bw_state *old_bw_state,
> +				   const struct intel_bw_state *new_bw_state)
> +{
> +	enum pipe pipe;
> +
> +	for_each_pipe(i915, pipe) {
> +		const struct intel_dbuf_bw *old_crtc_bw =
> +			&old_bw_state->dbuf_bw[pipe];
> +		const struct intel_dbuf_bw *new_crtc_bw =
> +			&new_bw_state->dbuf_bw[pipe];
> +		enum dbuf_slice slice;
> +
> +		for_each_dbuf_slice(i915, slice) {
> +			if (old_crtc_bw->used_bw[slice] != new_crtc_bw->used_bw[slice])
> +				return true;
> +		}
> +	}
> +
> +	return old_bw_state->min_cdclk != new_bw_state->min_cdclk;
> +}
> +
>  static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>  				  const struct intel_crtc_state *crtc_state)
>  {
> @@ -765,7 +787,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  
>  	new_bw_state->min_cdclk = DIV_ROUND_UP(max_bw, 64);
>  
> -	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
> +	if (intel_bw_state_changed(dev_priv, old_bw_state, new_bw_state)) {
>  		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
>  
>  		if (ret)
> -- 
> 2.34.1
> 
