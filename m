Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CA8975D54
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 00:38:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89DB910E7D5;
	Wed, 11 Sep 2024 22:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d8gDjDtn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A86210E1C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 22:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726094304; x=1757630304;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dt+ggidAwrPT55kea8vK5y8xJQ1ubxR5kMgOEkdSMog=;
 b=d8gDjDtnPd2pQ5uonrv7FfzzkuhCfR8FKOcVyI1R+WF5lf69qfjfVDZB
 p/i9UxdIjB2hU+bBk4vMa3UEYFlP3jPbOdjNZbMk/LmPX33DIuzqa0fBi
 R5bX1/VJIoLLvCrjMS3ZYBawhJ6aL5n+J54u3ok+9U//PcPtz+ehtKg7R
 PeQV8yd36thAqCToq8ieuOd5M7JW2jiiEvI22gBPZ/wC8pgByQJAh4Ccp
 WbcneGTEhBk4ecz+SZoPkMGwJX53ZuePsWgOzJdTe3JfGSF6bUotIsJVk
 Fu3cenU0Jykwb/JQEp1uMRdC1Rw03iujyBY+PPywaRJT+yUFL/lAwmAOg g==;
X-CSE-ConnectionGUID: 7Cucu0w+RcadZYswyo4fwA==
X-CSE-MsgGUID: 3H5eEZz5SbabcL3X/bwLnA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25057154"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="25057154"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 15:38:24 -0700
X-CSE-ConnectionGUID: 4R25ZhZEQdS7t1XHFuROlg==
X-CSE-MsgGUID: lvp6HgamSRmXxkNd2kJEdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67571953"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 15:38:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 01:38:20 +0300
Date: Thu, 12 Sep 2024 01:38:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Message-ID: <ZuIb3D1GrjwFBIuU@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:46PM +0530, Ankit Nautiyal wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> Ultrajoiner case requires special treatment where both reverse and
> staight order iteration doesn't work(for instance disabling case requires
> order to be: primary master, slaves, secondary master).
> 
> Lets unify our approach by using not only pipe masks for iterating required
> pipes based on joiner type used, but also using different "priority" arrays
> for each of those.
> 
> v2: Fix checkpatch warnings. (Ankit)
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
>  drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h |  7 ++
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
>  4 files changed, 96 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 00fbe9f8c03a..2c064b6c6d01 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  					       const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  			     const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>  
>  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>  
> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
>  
>  	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(crtc_state),
> +					     intel_get_pipe_order_enable(crtc_state)) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index db27850b2c36..27622d51a473 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>  	hsw_set_transconf(crtc_state);
>  }
>  
> +static
> +bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> +{
> +	return hweight8(pipe_config->joiner_pipes) == 2;
> +}
> +
> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
> +	};
> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
> +	};
> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +
> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> +		return ultrajoiner_pipe_order_enable;
> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> +		return bigjoiner_pipe_order_enable;
> +	return nojoiner_pipe_order_enable;
> +}
> +
> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
> +{
> +	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
> +	};
> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> +	};
> +
> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> +		return ultrajoiner_pipe_order_disable;
> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> +		return bigjoiner_pipe_order_disable;
> +	return nojoiner_pipe_order_disable;

I don't think we should need all those diffrent order array. Technically
one should do. Though having two might make sense.

Another problem is the hardcoded pipes. If we eg. get hardware that
would support ultrajoiner on pipes B-E in the future this would no
longer  work.

> +}
<snip>
> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
> +	for_each_pipe(__dev_priv, __p) \
> +		for_each_if((__mask) & BIT(__priolist[__p])) \
> +			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))


I think something like:

const u8 intel_pipe_order_enable[4] = {
        3, 1, 2, 0,
};

const u8 intel_pipe_order_disable[4] = {
        0, 2, 1, 3,
};

#define for_each_intel_crtc_in_pipe_mask_ordered(crtc, pipe_masks, order, i) \
        for ((i) = 0; \
             (i) < ARRAY_SIZE(order) && \
             ((crtc) = intel_crtc_for_pipe(joiner_primary_pipe(pipe_mask) + (order)[(i)]), 1); \
             (i)++) \
                for_each_if((crtc) && (pipe_mask) & BIT((crtc)->pipe))

would let us avoid that hardcoded pipe stuff, and everything is
just based on the relative order between the pipes. The same orders
also work for bigjoiner and non-joined cases (it just skips the pipes
that are't in the mask).


The alternative would be to just use the bigjoiner primary+secondary masks
and come up with a a way to iterate two bitmask in either forward or reverse
order. Hmm, I suppose one might just combine the bigjoiner primary and
secondary masks into one, with one of them shifted up to some high bits,
and then iterate the combined bitmask either forward or backward.

Something like this should work:
#define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
        for ((i) = 0, (pipes) = (second_pipes) << 16 | (first_pipes); \
             (i) < 32 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
             (i)++) \
                for_each_if((crtc) && (pipes) & BIT(i))

#define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, pipes, i) \
        for ((i) = 31, (pipes) = (first_pipes) << 16 | (second_pipes); \
             (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
             (i)--) \
                for_each_if((crtc) && (pipes) & BIT(i))

(could reduce the constants a bit given we don't have 16 pipes).

And then we'd just use them like so:
for_each_crtc_in_masks_reverse(crtc, bigjoiner_secondary_pipes(),
				bigjoiner_primary_pipes(), pipes, i)
	enable();

for_each_crtc_in_masks(crtc, bigjoiner_primary_pipes(),
			bigjoiner_secondary_pipes(), pipes, i)
	disable();

Would at least be very close to what we already have, just splitting
the pipe masks into two essentially.

> +
>  #define for_each_intel_crtc_in_pipe_mask(dev, intel_crtc, pipe_mask)	\
>  	list_for_each_entry(intel_crtc,					\
>  			    &(dev)->mode_config.crtc_list,		\
> @@ -431,6 +436,8 @@ bool intel_crtc_is_ultrajoiner(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_is_ultrajoiner_primary(const struct intel_crtc_state *crtc_state);
>  u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>  struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state);
> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state);
>  bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  			       const struct intel_crtc_state *pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index be79783ce09b..1c87f81568c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1003,7 +1003,7 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  	struct drm_dp_mst_atomic_payload *new_payload =
>  		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> -	struct intel_crtc *pipe_crtc;
> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
>  	bool last_mst_stream;
>  
>  	intel_dp->active_mst_links--;
> @@ -1012,8 +1012,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  		    DISPLAY_VER(dev_priv) >= 12 && last_mst_stream &&
>  		    !intel_dp_mst_is_master_trans(old_crtc_state));
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1037,8 +1038,9 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  
> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> +					     intel_get_pipe_order_disable(old_crtc_state)) {
>  		const struct intel_crtc_state *old_pipe_crtc_state =
>  			intel_atomic_get_old_crtc_state(state, pipe_crtc);
>  
> @@ -1257,6 +1259,7 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  	enum transcoder trans = pipe_config->cpu_transcoder;
>  	bool first_mst_stream = intel_dp->active_mst_links == 1;
>  	struct intel_crtc *pipe_crtc;
> +	enum pipe pipe;
>  	int ret;
>  
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_pch_encoder);
> @@ -1304,8 +1307,9 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_enable_transcoder(pipe_config);
>  
> -	for_each_intel_crtc_in_pipe_mask_reverse(&dev_priv->drm, pipe_crtc,
> -						 intel_crtc_joined_pipe_mask(pipe_config)) {
> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> +					     intel_crtc_joined_pipe_mask(pipe_config),
> +					     intel_get_pipe_order_enable(pipe_config)) {
>  		const struct intel_crtc_state *pipe_crtc_state =
>  			intel_atomic_get_new_crtc_state(state, pipe_crtc);
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
