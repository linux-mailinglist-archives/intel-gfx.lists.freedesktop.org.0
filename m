Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 935DB97A48E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 16:54:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BBA110E39E;
	Mon, 16 Sep 2024 14:54:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfhxxVjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D110A10E39E
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 14:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726498456; x=1758034456;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Zj2onnhBD5Cf0lehmd+4OGomw+fbpdtQGhlm6ApYbho=;
 b=mfhxxVjTp8l2vvyEAZ37b9g5ZoUoQsUMpzKZpkusnIRMBabETJYDsahv
 AFB36yqUQVQlDMjHkj8NYSFBaFZonaetKS+NC3whjO6TVQRTVoScz6u9k
 H1tltnQ0ZmTqzE6Bcw4PhmPsg9Gwpg6crte5703W3p0yCfrEqUUbWFwxz
 /r/J5HFnaMEU6ykW+LI2OY/gv2eFQyLWJuk0fygPzjSnPXCtdJDlBHfva
 ganp8HAKqPazzPFILR06UThT1ilNWlJ1gDWWjX58coabei3ZAmo5iAkfm
 IMDKQ9yowY9cDR/ob4oZD0wAFu1s8sMo3JxjFMDFidK+feU6/t1wg18bx A==;
X-CSE-ConnectionGUID: sd+VB9P7QSeNxzs63TYPVA==
X-CSE-MsgGUID: TTRpt7fjS/u8vMlL1a0bIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="28238099"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="28238099"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 07:54:16 -0700
X-CSE-ConnectionGUID: rPJh6I2rR16SUFoLy3I2rQ==
X-CSE-MsgGUID: oeQM5ACPQZm3WA4tccsrLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="69001841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Sep 2024 07:54:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 16 Sep 2024 17:54:12 +0300
Date: Mon, 16 Sep 2024 17:54:12 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Message-ID: <ZuhGlIPAk_Pxk47z@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
 <ZuIb3D1GrjwFBIuU@intel.com>
 <fab2d890-e3a3-4157-adda-92b9a195e7be@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fab2d890-e3a3-4157-adda-92b9a195e7be@intel.com>
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

On Mon, Sep 16, 2024 at 01:09:42PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/12/2024 4:08 AM, Ville Syrjälä wrote:
> > On Wed, Sep 11, 2024 at 06:43:46PM +0530, Ankit Nautiyal wrote:
> >> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >>
> >> Ultrajoiner case requires special treatment where both reverse and
> >> staight order iteration doesn't work(for instance disabling case requires
> >> order to be: primary master, slaves, secondary master).
> >>
> >> Lets unify our approach by using not only pipe masks for iterating required
> >> pipes based on joiner type used, but also using different "priority" arrays
> >> for each of those.
> >>
> >> v2: Fix checkpatch warnings. (Ankit)
> >>
> >> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
> >>   drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
> >>   drivers/gpu/drm/i915/display/intel_display.h |  7 ++
> >>   drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
> >>   4 files changed, 96 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> index 00fbe9f8c03a..2c064b6c6d01 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >> @@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> >>   					       const struct drm_connector_state *old_conn_state)
> >>   {
> >>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >> -	struct intel_crtc *pipe_crtc;
> >> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
> >>   
> >> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> >> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> >> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> >> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> >> +					     intel_get_pipe_order_disable(old_crtc_state)) {
> >>   		const struct intel_crtc_state *old_pipe_crtc_state =
> >>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> >>   
> >> @@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> >>   
> >>   	intel_ddi_disable_transcoder_func(old_crtc_state);
> >>   
> >> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> >> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> >> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> >> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> >> +					     intel_get_pipe_order_disable(old_crtc_state)) {
> >>   		const struct intel_crtc_state *old_pipe_crtc_state =
> >>   			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> >>   
> >> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >>   			     const struct drm_connector_state *conn_state)
> >>   {
> >>   	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >> -	struct intel_crtc *pipe_crtc;
> >> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
> >>   
> >>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >>   
> >> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >>   
> >>   	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> >>   
> >> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
> >> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
> >> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> >> +					     intel_crtc_joined_pipe_mask(crtc_state),
> >> +					     intel_get_pipe_order_enable(crtc_state)) {
> >>   		const struct intel_crtc_state *pipe_crtc_state =
> >>   			intel_atomic_get_new_crtc_state(state, pipe_crtc);
> >>   
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> index db27850b2c36..27622d51a473 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >>   	hsw_set_transconf(crtc_state);
> >>   }
> >>   
> >> +static
> >> +bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> >> +{
> >> +	return hweight8(pipe_config->joiner_pipes) == 2;
> >> +}
> >> +
> >> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
> >> +	};
> >> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
> >> +	};
> >> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >> +	};
> >> +
> >> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> >> +		return ultrajoiner_pipe_order_enable;
> >> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> >> +		return bigjoiner_pipe_order_enable;
> >> +	return nojoiner_pipe_order_enable;
> >> +}
> >> +
> >> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
> >> +{
> >> +	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
> >> +	};
> >> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >> +	};
> >> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >> +	};
> >> +
> >> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> >> +		return ultrajoiner_pipe_order_disable;
> >> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> >> +		return bigjoiner_pipe_order_disable;
> >> +	return nojoiner_pipe_order_disable;
> > I don't think we should need all those diffrent order array. Technically
> > one should do. Though having two might make sense.
> >
> > Another problem is the hardcoded pipes. If we eg. get hardware that
> > would support ultrajoiner on pipes B-E in the future this would no
> > longer  work.
> >
> >> +}
> > <snip>
> >> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
> >> +	for_each_pipe(__dev_priv, __p) \
> >> +		for_each_if((__mask) & BIT(__priolist[__p])) \
> >> +			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))
> >
> > I think something like:
> >
> > const u8 intel_pipe_order_enable[4] = {
> >          3, 1, 2, 0,
> > };
> >
> > const u8 intel_pipe_order_disable[4] = {
> >          0, 2, 1, 3,
> > };
> >
> > #define for_each_intel_crtc_in_pipe_mask_ordered(crtc, pipe_masks, order, i) \
> >          for ((i) = 0; \
> >               (i) < ARRAY_SIZE(order) && \
> >               ((crtc) = intel_crtc_for_pipe(joiner_primary_pipe(pipe_mask) + (order)[(i)]), 1); \
> >               (i)++) \
> >                  for_each_if((crtc) && (pipe_mask) & BIT((crtc)->pipe))
> >
> > would let us avoid that hardcoded pipe stuff, and everything is
> > just based on the relative order between the pipes. The same orders
> > also work for bigjoiner and non-joined cases (it just skips the pipes
> > that are't in the mask).
> >
> >
> > The alternative would be to just use the bigjoiner primary+secondary masks
> > and come up with a a way to iterate two bitmask in either forward or reverse
> > order. Hmm, I suppose one might just combine the bigjoiner primary and
> > secondary masks into one, with one of them shifted up to some high bits,
> > and then iterate the combined bitmask either forward or backward.
> >
> > Something like this should work:
> > #define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
> >          for ((i) = 0, (pipes) = (second_pipes) << 16 | (first_pipes); \
> >               (i) < 32 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
> >               (i)++) \
> >                  for_each_if((crtc) && (pipes) & BIT(i))
> >
> > #define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, pipes, i) \
> >          for ((i) = 31, (pipes) = (first_pipes) << 16 | (second_pipes); \
> >               (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i) & 15), 1); \
> >               (i)--) \
> >                  for_each_if((crtc) && (pipes) & BIT(i))
> >
> > (could reduce the constants a bit given we don't have 16 pipes).
> 
> This looks good to me. changed for 4 pipes, as below:
> 
> 
> #define for_each_crtc_in_masks(crtc, first_pipes, second_pipes, pipes, i) \
>          for ((i) = 0, (pipes) = (first_pipes) | ((second_pipes) << 4); \
>               (i) < 8 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \

We could probably use a single internal define for the magic
number to avoid things going out of sync by accident.

Hmm, maybe even define it as something like
#define _INTEL_MAX_PIPES_POT roundup_power_of_two(I915_MAX_PIPES)
?

O, I suppose we don't really need it to be POT, so we could
just replace the '&' with '%', and then we can just use
I915_MAX_PIPES directly.

>               (i)++) \
>                  for_each_if((crtc) && (pipes) & BIT(i))
> 
> #define for_each_crtc_in_masks_reverse(crtc, first_pipes, second_pipes, 
> pipes, i) \
>          for ((i) = 7, (pipes) = (first_pipes) | ((second_pipes) << 4); \
>               (i) >= 0 && ((crtc) = intel_crtc_for_pipe((i & 3)), 1); \
>               (i)--) \
>                  for_each_if((crtc) && (pipes) & BIT(i))
> 
> But, for non joiner case, when the bigjoiner_primary/secondary_pipes are 
> 0 so pipes will be 0.

Hmm. I think we just need to make bigjoiner_primary_pipes()
return BIT(crtc->pipe) for the non-joiner cases.

Maybe we should rename these to something like
_modeset_{primary,secondary}_pipes() so that people
don't get tempted to use them for anything else?

And then we could hide all this into something like
#define for_each_pipe_crtc_modeset_disable(...) \ 
	for_each_crtc_in_masks(..., _modeset_primary_pipes(), \
			       _modeset_secondary_pipes(), ...)
#define for_each_pipe_crtc_modeset_enable(...) \ 
	for_each_crtc_in_masks_reverse(..., _modeset_secondary_pipes(), \
				      _modeset_primary_pipes(), ...)

-- 
Ville Syrjälä
Intel
