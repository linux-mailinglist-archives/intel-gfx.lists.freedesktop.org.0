Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588D31208A5
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 15:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B30D6E5B6;
	Mon, 16 Dec 2019 14:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 700C06E5B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 14:31:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 06:31:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="227131129"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by orsmga002.jf.intel.com with ESMTP; 16 Dec 2019 06:31:21 -0800
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 16 Dec 2019 14:31:20 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.165]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.131]) with mapi id 14.03.0439.000;
 Mon, 16 Dec 2019 14:31:20 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v8 4/4] drm/i915: Correctly map DBUF slices to pipes
Thread-Index: AQHVsbYC0XmV3C6ZuUK+sEOzvOnHe6e4zjQAgAQIkQA=
Date: Mon, 16 Dec 2019 14:31:19 +0000
Message-ID: <084549fb914869fef8b029dfddd966552ddfde1d.camel@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-5-stanislav.lisovskiy@intel.com>
 <20191214005252.GG85422@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191214005252.GG85422@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <24DBF65003C7EA4E8EC4E370EA42A546@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v8 4/4] drm/i915: Correctly map DBUF slices
 to pipes
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 2019-12-13 at 16:52 -0800, Matt Roper wrote:
> On Fri, Dec 13, 2019 at 03:02:28PM +0200, Stanislav Lisovskiy wrote:
> > Added proper DBuf slice mapping to correspondent
> > pipes, depending on pipe configuration as stated
> > in BSpec.
> > 
> > v2:
> >     - Remove unneeded braces
> >     - Stop using macro for DBuf assignments as
> >       it seems to reduce readability.
> > 
> > v3: Start using enabled slices mask in dev_priv
> > 
> > v4: Renamed "enabled_slices" used in dev_priv
> >     to "enabled_dbuf_slices_mask"(Matt Roper)
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_pm.c | 226
> > ++++++++++++++++++++++++++++++--
> >  1 file changed, 216 insertions(+), 10 deletions(-)

Hi Matt, 

thanks for good comments, as usual. 
Most of the issues I've addressed in a recent series,
for some which I didn't I will reply inline here.

> > 
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c
> > index 111bcafd6e4c..a13052b2c2ef 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3832,13 +3832,30 @@ bool intel_can_enable_sagv(struct
> > intel_atomic_state *state)
> >  	return true;
> >  }
> >  
> > +/*
> > + * Calculate initial DBuf slice offset, based on slice size
> > + * and mask(i.e if slice size is 1024 and second slice is enabled
> > + * offset would be 1024)
> > + */
> > +static u32 icl_get_first_dbuf_slice_offset(u32 dbuf_slice_mask,
> > +					   u32 slice_size, u32
> > ddb_size)
> > +{
> 
> It might be worth just passing the mask + dev_priv to this function
> and
> let it get slice_size / ddb_size on its own to keep the logic simpler
> at
> the callsite.

The thing is that this is called only at single place and also
at call site I still do need slice_size for other calculations.
So I would still leave it there, as leaving only dev_priv here 
as parameter won't simply things at callsite as it will have to
get those parameters anyway.

> 
> > +	u32 offset = 0;
> > +
> > +	if (!dbuf_slice_mask)
> > +		return 0;
> > +
> > +	offset = (ffs(dbuf_slice_mask) - 1) * slice_size;
> > +
> > +	WARN_ON(offset >= ddb_size);
> > +	return offset;
> > +}
> > +
> >  static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
> >  			      const struct intel_crtc_state
> > *crtc_state,
> >  			      const u64 total_data_rate,
> >  			      const int num_active)
> 
> I probably should have mentioned it on the previous patch, but most
> of
> these parameters are no longer needed now.

> 
> >  {
> > -	struct drm_atomic_state *state = crtc_state->uapi.state;
> > -	struct intel_atomic_state *intel_state =
> > to_intel_atomic_state(state);
> >  	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
> >  
> >  	WARN_ON(ddb_size == 0);
> > @@ -3846,12 +3863,13 @@ static u16 intel_get_ddb_size(struct
> > drm_i915_private *dev_priv,
> >  	if (INTEL_GEN(dev_priv) < 11)
> >  		return ddb_size - 4; /* 4 blocks for bypass path
> > allocation */
> >  
> > -	intel_state->enabled_dbuf_slices_mask = DBUF_S1_BIT;
> > -	ddb_size /= 2;
> > -
> >  	return ddb_size;
> >  }
> >  
> > +u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,
> > +			      int pipe, u32 active_pipes,
> > +			      const struct intel_crtc_state
> > *crtc_state);
> > +
> >  static void
> >  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private
> > *dev_priv,
> >  				   const struct intel_crtc_state
> > *crtc_state,
> > @@ -3866,7 +3884,14 @@ skl_ddb_get_pipe_allocation_limits(struct
> > drm_i915_private *dev_priv,
> >  	u32 pipe_width = 0, total_width = 0, width_before_pipe = 0;
> >  	enum pipe for_pipe = to_intel_crtc(for_crtc)->pipe;
> >  	u16 ddb_size;
> > +	u32 ddb_range_size;
> >  	u32 i;
> > +	u32 dbuf_slice_mask;
> > +	u32 active_pipes;
> > +	u32 offset;
> > +	u32 slice_size;
> > +	u32 total_slice_mask;
> > +	u32 start, end;
> >  
> >  	if (WARN_ON(!state) || !crtc_state->hw.active) {
> >  		alloc->start = 0;
> > @@ -3875,14 +3900,19 @@ skl_ddb_get_pipe_allocation_limits(struct
> > drm_i915_private *dev_priv,
> >  		return;
> >  	}
> >  
> > -	if (intel_state->active_pipe_changes)
> > +	if (intel_state->active_pipe_changes) {
> >  		*num_active = hweight8(intel_state->active_pipes);
> > -	else
> > +		active_pipes = intel_state->active_pipes;
> > +	} else {
> >  		*num_active = hweight8(dev_priv->active_pipes);
> > +		active_pipes = dev_priv->active_pipes;
> > +	}
> 
> Might be slightly more intuitive to move the num_active assignment
> outside the 'if' as
> 
>         *num_active = hweight8(active_pipes);
> 
> Up to you; doesn't really matter.
> 
> >  
> >  	ddb_size = intel_get_ddb_size(dev_priv, crtc_state,
> > total_data_rate,
> >  				      *num_active);
> >  
> > +	slice_size = ddb_size / INTEL_INFO(dev_priv)-
> > >num_supported_dbuf_slices;
> > +
> >  	/*
> >  	 * If the state doesn't change the active CRTC's or there is no
> >  	 * modeset request, then there's no need to recalculate;
> > @@ -3900,18 +3930,68 @@ skl_ddb_get_pipe_allocation_limits(struct
> > drm_i915_private *dev_priv,
> >  		return;
> >  	}
> >  
> > +	/*
> > +	 * Get allowed DBuf slices for correspondent pipe and platform.
> > +	 */
> > +	dbuf_slice_mask = i915_possible_dbuf_slices(dev_priv, for_pipe,
> > +						    active_pipes,
> > crtc_state);
> > +
> > +	DRM_DEBUG_KMS("DBuf slice mask %x pipe %d active pipes %x\n",
> > +		      dbuf_slice_mask,
> > +		      for_pipe, active_pipes);
> > +
> > +	/*
> > +	 * Figure out at which DBuf slice we start, i.e if we start at
> > Dbuf S2
> > +	 * and slice size is 1024, the offset would be 1024
> > +	 */
> > +	offset = icl_get_first_dbuf_slice_offset(dbuf_slice_mask,
> > +						 slice_size, ddb_size);
> > +
> > +	/*
> > +	 * Figure out total size of allowed DBuf slices, which is
> > basically
> > +	 * a number of allowed slices for that pipe multiplied by slice
> > size.
> > +	 * Inside of this
> > +	 * range ddb entries are still allocated in proportion to
> > display width.
> > +	 */
> > +	ddb_range_size = hweight8(dbuf_slice_mask) * slice_size;
> > +
> >  	/*
> >  	 * Watermark/ddb requirement highly depends upon width of the
> >  	 * framebuffer, So instead of allocating DDB equally among
> > pipes
> >  	 * distribute DDB based on resolution/width of the display.
> >  	 */
> > +	total_slice_mask = dbuf_slice_mask;
> >  	for_each_new_intel_crtc_in_state(intel_state, crtc, crtc_state,
> > i) {
> >  		const struct drm_display_mode *adjusted_mode =
> >  			&crtc_state->hw.adjusted_mode;
> >  		enum pipe pipe = crtc->pipe;
> >  		int hdisplay, vdisplay;
> > +		u32 pipe_dbuf_slice_mask =
> > +					i915_possible_dbuf_slices(dev_p
> > riv,
> > +								  pipe,
> > +								  activ
> > e_pipes,
> > +								  crtc_
> > state);
> > +
> > +		if (!crtc_state->hw.active)
> > +			continue;
> 
> You might want to do this check before we go through the bother of
> executing i915_possible_dbuf_slices.
> 
> > +
> > +		/*
> > +		 * According to BSpec pipe can share one dbuf slice
> > with another
> > +		 * pipes or pipe can use multiple dbufs, in both cases
> > we
> > +		 * account for other pipes only if they have exactly
> > same mask.
> > +		 * However we need to account how many slices we should
> > enable
> > +		 * in total.
> > +		 */
> > +		total_slice_mask |= pipe_dbuf_slice_mask;
> >  
> > -		if (!crtc_state->hw.enable)
> > +		/*
> > +		 * Do not account pipes using other slice sets
> > +		 * luckily as of current BSpec slice sets do not
> > partially
> > +		 * intersect(pipes share either same one slice or same
> > slice set
> > +		 * i.e no partial intersection), so it is enough to
> > check for
> > +		 * equality for now.
> > +		 */
> > +		if (dbuf_slice_mask != pipe_dbuf_slice_mask)
> >  			continue;
> >  
> >  		drm_mode_get_hv_timing(adjusted_mode, &hdisplay,
> > &vdisplay);
> > @@ -3923,8 +4003,19 @@ skl_ddb_get_pipe_allocation_limits(struct
> > drm_i915_private *dev_priv,
> >  			pipe_width = hdisplay;
> >  	}
> >  
> > -	alloc->start = ddb_size * width_before_pipe / total_width;
> > -	alloc->end = ddb_size * (width_before_pipe + pipe_width) /
> > total_width;
> > +	intel_state->enabled_dbuf_slices_mask = total_slice_mask;
> > +
> > +	start = ddb_range_size * width_before_pipe / total_width;
> > +	end = ddb_range_size * (width_before_pipe + pipe_width) /
> > total_width;
> 
> I found it a bit confusing that "total_slice_mask" is a mask of all
> active CRTCs, whereas total_width is only the width of the subset of
> active CRTCs that share our slice mask (i.e., different meanings of
> "total").  I think the logic here is correct, but some variable
> renaming
> might make it more obvious what's going on?
> 
> 
> > +
> > +	alloc->start = offset + start;
> > +	alloc->end = offset + end;
> > +
> > +	DRM_DEBUG_KMS("Pipe %d ddb %d-%d\n", for_pipe,
> > +		      alloc->start, alloc->end);
> > +	DRM_DEBUG_KMS("Enabled ddb slices mask %x num supported %d\n",
> > +		      intel_state->enabled_dbuf_slices_mask,
> > +		      INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
> >  }
> >  
> >  static int skl_compute_wm_params(const struct intel_crtc_state
> > *crtc_state,
> > @@ -4094,6 +4185,121 @@ skl_plane_downscale_amount(const struct
> > intel_crtc_state *crtc_state,
> >  	return mul_fixed16(downscale_w, downscale_h);
> >  }
> >  
> > +struct dbuf_slice_conf_entry {
> > +	u32 active_pipes;
> > +	u32 dbuf_mask[I915_MAX_PIPES];
> > +};
> > +
> > +/*
> > + * Table taken from Bspec 12716
> > + * Pipes do have some preferred DBuf slice affinity,
> > + * plus there are some hardcoded requirements on how
> > + * those should be distributed for multipipe scenarios.
> > + * For more DBuf slices algorithm can get even more messy
> > + * and less readable, so decided to use a table almost
> > + * as is from BSpec itself - that way it is at least easier
> > + * to compare, change and check.
> > + */
> > +static struct dbuf_slice_conf_entry icl_allowed_dbufs[] = {
> > +	{ BIT(PIPE_A), { DBUF_S1_BIT, 0, 0, 0 } },
> > +	{ BIT(PIPE_B), { 0, DBUF_S1_BIT, 0, 0 } },
> > +	{ BIT(PIPE_C), { 0, 0, DBUF_S2_BIT, 0 } },
> > +	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S1_BIT, DBUF_S2_BIT, 0, 0 }
> > },
> > +	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 }
> > },
> > +	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 }
> > },
> > +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> > +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } }
> 
> I believe it's legal to leave ending array elements out of
> definitions,
> in which case they'll just be 0.  So you can drop the fourth element
> of
> all these dbuf_mask arrays since that's more intuitive given these
> platforms only actually have three pipes.
> 
> > +};
> > +
> > +/*
> > + * Table taken from Bspec 49255
> > + * Pipes do have some preferred DBuf slice affinity,
> > + * plus there are some hardcoded requirements on how
> > + * those should be distributed for multipipe scenarios.
> > + * For more DBuf slices algorithm can get even more messy
> > + * and less readable, so decided to use a table almost
> > + * as is from BSpec itself - that way it is at least easier
> > + * to compare, change and check.
> > + */
> > +static struct dbuf_slice_conf_entry tgl_allowed_dbufs[] = {
> > +	{ BIT(PIPE_A), { DBUF_S1_BIT | DBUF_S2_BIT, 0, 0, 0 } },
> > +	{ BIT(PIPE_B), { 0, DBUF_S1_BIT | DBUF_S2_BIT, 0, 0 } },
> > +	{ BIT(PIPE_C), { 0, 0, DBUF_S1_BIT | DBUF_S2_BIT, 0 } },
> > +	{ BIT(PIPE_D), { 0, 0, 0, DBUF_S1_BIT | DBUF_S2_BIT } },
> > +	{ BIT(PIPE_A) | BIT(PIPE_B), { DBUF_S2_BIT, DBUF_S1_BIT, 0, 0 }
> > },
> > +	{ BIT(PIPE_A) | BIT(PIPE_C), { DBUF_S1_BIT, 0, DBUF_S2_BIT, 0 }
> > },
> > +	{ BIT(PIPE_A) | BIT(PIPE_D), { DBUF_S1_BIT, 0, 0, DBUF_S2_BIT }
> > },
> > +	{ BIT(PIPE_B) | BIT(PIPE_C), { 0, DBUF_S1_BIT, DBUF_S2_BIT, 0 }
> > },
> > +	{ BIT(PIPE_B) | BIT(PIPE_D), { 0, DBUF_S1_BIT, 0, DBUF_S2_BIT }
> > },
> > +	{ BIT(PIPE_C) | BIT(PIPE_D), { 0, 0, DBUF_S2_BIT, DBUF_S2_BIT }
> > },
> 
>                                              ^^^^^^^^^^^
> I think this one is supposed to be S1 for pipe C.
> 
> 
> > +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
> > +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, 0 } },
> > +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_D),
> > +		{ DBUF_S1_BIT, DBUF_S1_BIT, 0, DBUF_S2_BIT } },
> > +	{ BIT(PIPE_A) | BIT(PIPE_C) | BIT(PIPE_D),
> > +		{ DBUF_S1_BIT, 0, DBUF_S2_BIT, DBUF_S2_BIT } },
> > +	{ BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> > +		{ 0, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT } },
> > +	{ BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
> > +		{ DBUF_S1_BIT, DBUF_S1_BIT, DBUF_S2_BIT, DBUF_S2_BIT }
> > },
> > +};
> > +
> > +static u32 i915_find_pipe_conf(int pipe,
> > +			       u32 active_pipes,
> > +			       const struct dbuf_slice_conf_entry
> > *dbuf_slices,
> > +			       int size)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < size; i++) {
> > +		if (dbuf_slices[i].active_pipes == active_pipes)
> > +			return dbuf_slices[i].dbuf_mask[pipe];
> > +	}
> > +	return 0;
> > +}
> > +
> > +/*
> > + * This function finds an entry with same enabled pipe
> > configuration and
> > + * returns correspondent DBuf slice mask as stated in BSpec for
> > particular
> > + * platform.
> > + */
> > +static u32 icl_possible_dbuf_slices(int pipe,
> > +				    u32 active_pipes,
> > +				    const struct intel_crtc_state
> > *crtc_state)
> > +{
> > +	return i915_find_pipe_conf(pipe, active_pipes,
> > +				   icl_allowed_dbufs,
> > +				   ARRAY_SIZE(icl_allowed_dbufs));
> 
> Should we be handling the <88.8% pipe ratio stuff here?  I.e., an
> extra
> condition that if # pipes == 1 and the pipe ratio is less than 88.8%,
> return both S1 and S2?  Or will that come in a future patch (in which
> case a TODO/FIXME comment might be appropriate)?

I have added a comment in the code. Problem is that the whole
pipe_ratio thing turned out to be completely wrong(see BSpec bugs). 
So I completely excluded that stuff until that constraint is
fully clarified. 

> 
> 
> > +}
> > +
> > +static u32 tgl_possible_dbuf_slices(int pipe,
> > +				    u32 active_pipes,
> > +				    const struct intel_crtc_state
> > *crtc_state)
> > +{
> > +	return i915_find_pipe_conf(pipe, active_pipes,
> > +				   tgl_allowed_dbufs,
> > +				   ARRAY_SIZE(tgl_allowed_dbufs));
> > +}
> 
> Seems like these two functions (as currently written) are so simple
> that
> we can just invoke i915_find_pipe_conf directly in
> i915_possible_dbuf_slices.  Might also be worth considering using an
> empty table entry as a terminator rather than requiring than an
> explicit
> length be passed.
> 
> > +
> > +u32 i915_possible_dbuf_slices(struct drm_i915_private *dev_priv,
> 
> This can be static I think?
> 
> > +			      int pipe, u32 active_pipes,
> > +			      const struct intel_crtc_state
> > *crtc_state)
> > +{
> > +	if (IS_GEN(dev_priv, 11))
> > +		return icl_possible_dbuf_slices(pipe,
> > +						active_pipes,
> > +						crtc_state);
> > +	else if (IS_GEN(dev_priv, 12))
> > +		return tgl_possible_dbuf_slices(pipe,
> > +						active_pipes,
> > +						crtc_state);
> > +	/*
> > +	 * For anything else just return one slice yet.
> > +	 * Should be extended for other platforms.
> > +	 */
> > +	return DBUF_S1_BIT;
> > +}
> 
> None of the three functions above seem to actually use crtc_state, so
> I
> think we can drop that parameter.

I would still leave it, as once we get that BSpec "pipe_ratio" or
something else clarified most likely we'll still need crtc_state..


Stan
> 
> 
> > +
> >  static u64
> >  skl_plane_relative_data_rate(const struct intel_crtc_state
> > *crtc_state,
> >  			     const struct intel_plane_state
> > *plane_state,
> > -- 
> > 2.17.1
> > 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
