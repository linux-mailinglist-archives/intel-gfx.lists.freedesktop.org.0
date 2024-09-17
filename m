Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C6597B000
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 14:15:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C71910E176;
	Tue, 17 Sep 2024 12:15:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LQQEO92Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3B610E176
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2024 12:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726575303; x=1758111303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7mwSyLkvy6htC4v5uRMp9/s7Sh4wRojS4LB5gPXHXJY=;
 b=LQQEO92YF8b9+8vuFGOog8sOjbCjg5Cu2qEkmaTaL4K1n8bU8w7y61nv
 6oD1gaq1rDJhzmIfn5/3/VHhAl0/kdmxBjUt53MkJNyVnqhJ8hSxOi9t0
 59KUiTtfAr1i7v9kWc/6TScHWFafIkhWbp0aD8gMZwyH/L8ZKHDhkuEve
 hzdzsXtVarFyH0uHOL3wE8qicieUAUmKfTO6tsYCJo9SjSl+LJcysUHPY
 USEPtay/C/IGFAvvcCOJKLsxfYCRBOjd15weVPYTJJxXuqM3x4m1WrcWz
 ZDcxz2FUsSLORv+Kr1VlfL/SbQIEh6OfMtQbtRFpkrbeXD0NzufSrba91 Q==;
X-CSE-ConnectionGUID: WIcepXk4RTqIwrzP6Ly0qw==
X-CSE-MsgGUID: NqwSXwLlTtut50ceydgomQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36776383"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="36776383"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 05:15:03 -0700
X-CSE-ConnectionGUID: BUzCTMaMQti8UnsCkCMwDA==
X-CSE-MsgGUID: yK5pYBFsRxmrMt/eLVx7gQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="69262442"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Sep 2024 05:15:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 17 Sep 2024 15:14:59 +0300
Date: Tue, 17 Sep 2024 15:14:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 16/19] drm/i915: Add new abstraction layer to handle pipe
 order for different joiners
Message-ID: <Zulyw8RDYGgcKjx5@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-17-ankit.k.nautiyal@intel.com>
 <ZuIb3D1GrjwFBIuU@intel.com>
 <fab2d890-e3a3-4157-adda-92b9a195e7be@intel.com>
 <ZuhGlIPAk_Pxk47z@intel.com> <ZuhJkgLlYc7Dj9oB@intel.com>
 <0f91d82d-91bb-484f-a14c-04b3d29dcc58@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0f91d82d-91bb-484f-a14c-04b3d29dcc58@intel.com>
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

On Tue, Sep 17, 2024 at 02:52:10PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/16/2024 8:36 PM, Ville Syrjälä wrote:
> > On Mon, Sep 16, 2024 at 05:54:12PM +0300, Ville Syrjälä wrote:
> >> On Mon, Sep 16, 2024 at 01:09:42PM +0530, Nautiyal, Ankit K wrote:
> >>> On 9/12/2024 4:08 AM, Ville Syrjälä wrote:
> >>>> On Wed, Sep 11, 2024 at 06:43:46PM +0530, Ankit Nautiyal wrote:
> >>>>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >>>>>
> >>>>> Ultrajoiner case requires special treatment where both reverse and
> >>>>> staight order iteration doesn't work(for instance disabling case requires
> >>>>> order to be: primary master, slaves, secondary master).
> >>>>>
> >>>>> Lets unify our approach by using not only pipe masks for iterating required
> >>>>> pipes based on joiner type used, but also using different "priority" arrays
> >>>>> for each of those.
> >>>>>
> >>>>> v2: Fix checkpatch warnings. (Ankit)
> >>>>>
> >>>>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>> ---
> >>>>>    drivers/gpu/drm/i915/display/intel_ddi.c     | 19 +++--
> >>>>>    drivers/gpu/drm/i915/display/intel_display.c | 83 ++++++++++++++++----
> >>>>>    drivers/gpu/drm/i915/display/intel_display.h |  7 ++
> >>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c  | 18 +++--
> >>>>>    4 files changed, 96 insertions(+), 31 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>> index 00fbe9f8c03a..2c064b6c6d01 100644
> >>>>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> >>>>> @@ -3116,10 +3116,11 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> >>>>>    					       const struct drm_connector_state *old_conn_state)
> >>>>>    {
> >>>>>    	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >>>>> -	struct intel_crtc *pipe_crtc;
> >>>>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
> >>>>>    
> >>>>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> >>>>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> >>>>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> >>>>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> >>>>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
> >>>>>    		const struct intel_crtc_state *old_pipe_crtc_state =
> >>>>>    			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> >>>>>    
> >>>>> @@ -3130,8 +3131,9 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
> >>>>>    
> >>>>>    	intel_ddi_disable_transcoder_func(old_crtc_state);
> >>>>>    
> >>>>> -	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, pipe_crtc,
> >>>>> -					 intel_crtc_joined_pipe_mask(old_crtc_state)) {
> >>>>> +	for_each_intel_crtc_in_mask_priority(dev_priv, pipe_crtc, pipe,
> >>>>> +					     intel_crtc_joined_pipe_mask(old_crtc_state),
> >>>>> +					     intel_get_pipe_order_disable(old_crtc_state)) {
> >>>>>    		const struct intel_crtc_state *old_pipe_crtc_state =
> >>>>>    			intel_atomic_get_old_crtc_state(state, pipe_crtc);
> >>>>>    
> >>>>> @@ -3383,7 +3385,7 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >>>>>    			     const struct drm_connector_state *conn_state)
> >>>>>    {
> >>>>>    	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> >>>>> -	struct intel_crtc *pipe_crtc;
> >>>>> +	struct intel_crtc *pipe_crtc; enum pipe pipe;
> >>>>>    
> >>>>>    	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >>>>>    
> >>>>> @@ -3394,8 +3396,9 @@ static void intel_enable_ddi(struct intel_atomic_state *state,
> >>>>>    
> >>>>>    	intel_ddi_wait_for_fec_status(encoder, crtc_state, true);
> >>>>>    
> >>>>> -	for_each_intel_crtc_in_pipe_mask_reverse(&i915->drm, pipe_crtc,
> >>>>> -						 intel_crtc_joined_pipe_mask(crtc_state)) {
> >>>>> +	for_each_intel_crtc_in_mask_priority(i915, pipe_crtc, pipe,
> >>>>> +					     intel_crtc_joined_pipe_mask(crtc_state),
> >>>>> +					     intel_get_pipe_order_enable(crtc_state)) {
> >>>>>    		const struct intel_crtc_state *pipe_crtc_state =
> >>>>>    			intel_atomic_get_new_crtc_state(state, pipe_crtc);
> >>>>>    
> >>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>> index db27850b2c36..27622d51a473 100644
> >>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>> @@ -1737,6 +1737,50 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
> >>>>>    	hsw_set_transconf(crtc_state);
> >>>>>    }
> >>>>>    
> >>>>> +static
> >>>>> +bool intel_crtc_is_bigjoiner(const struct intel_crtc_state *pipe_config)
> >>>>> +{
> >>>>> +	return hweight8(pipe_config->joiner_pipes) == 2;
> >>>>> +}
> >>>>> +
> >>>>> +const enum pipe *intel_get_pipe_order_enable(const struct intel_crtc_state *crtc_state)
> >>>>> +{
> >>>>> +	static const enum pipe ultrajoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_B, PIPE_D, PIPE_C, PIPE_A
> >>>>> +	};
> >>>>> +	static const enum pipe bigjoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_B, PIPE_A, PIPE_D, PIPE_C
> >>>>> +	};
> >>>>> +	static const enum pipe nojoiner_pipe_order_enable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >>>>> +	};
> >>>>> +
> >>>>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> >>>>> +		return ultrajoiner_pipe_order_enable;
> >>>>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> >>>>> +		return bigjoiner_pipe_order_enable;
> >>>>> +	return nojoiner_pipe_order_enable;
> >>>>> +}
> >>>>> +
> >>>>> +const enum pipe *intel_get_pipe_order_disable(const struct intel_crtc_state *crtc_state)
> >>>>> +{
> >>>>> +	static const enum pipe ultrajoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_A, PIPE_B, PIPE_D, PIPE_C
> >>>>> +	};
> >>>>> +	static const enum pipe bigjoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >>>>> +	};
> >>>>> +	static const enum pipe nojoiner_pipe_order_disable[I915_MAX_PIPES] = {
> >>>>> +		PIPE_A, PIPE_B, PIPE_C, PIPE_D
> >>>>> +	};
> >>>>> +
> >>>>> +	if (intel_crtc_is_ultrajoiner(crtc_state))
> >>>>> +		return ultrajoiner_pipe_order_disable;
> >>>>> +	else if (intel_crtc_is_bigjoiner(crtc_state))
> >>>>> +		return bigjoiner_pipe_order_disable;
> >>>>> +	return nojoiner_pipe_order_disable;
> >>>> I don't think we should need all those diffrent order array. Technically
> >>>> one should do. Though having two might make sense.
> >>>>
> >>>> Another problem is the hardcoded pipes. If we eg. get hardware that
> >>>> would support ultrajoiner on pipes B-E in the future this would no
> >>>> longer  work.
> >>>>
> >>>>> +}
> >>>> <snip>
> >>>>> +#define for_each_intel_crtc_in_mask_priority(__dev_priv, intel_crtc, __p, __mask, __priolist) \
> >>>>> +	for_each_pipe(__dev_priv, __p) \
> >>>>> +		for_each_if((__mask) & BIT(__priolist[__p])) \
> >>>>> +			for_each_if(intel_crtc = intel_crtc_for_pipe(to_intel_display(&__dev_priv->drm), __priolist[__p]))
> >>>> I think something like:
> >>>>
> >>>> const u8 intel_pipe_order_enable[4] = {
> >>>>           3, 1, 2, 0,
> >>>> };
> >>>>
> >>>> const u8 intel_pipe_order_disable[4] = {
> >>>>           0, 2, 1, 3,
> >>>> };
> 
> 
> I just realized that as per bspec:54142 sequence for ultrajoiner doesnt 
> follow this.
> 
> its 1, 3, 2, 0 for enabling and 0, 1, 3, 2 for disabling :(

The bigjoiner secondary pipes are listed as one step in the sequence.
I believe that means that there is no ordering requirement between
them.

As for the funny C vs. BD order in the disable sequence, bspec:68847
has it the other way around as ACBD (a more proper mirror image of the
enable sequence). So either the hardware really has changed between
these two and the order is thus different, or one of them is simply
wrong, or the order doesn't really matter here either.

I suspect we can just always follow the more sensible order from
bspec:68847. Should probably ask for clarification though, and
test on actual hardware to confirm ofc.

-- 
Ville Syrjälä
Intel
