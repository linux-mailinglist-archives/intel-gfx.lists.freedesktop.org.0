Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4D411DF68
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 09:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21D86E2CF;
	Fri, 13 Dec 2019 08:27:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96B916E2CF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 08:27:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 00:27:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="208387906"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2019 00:27:34 -0800
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 13 Dec 2019 08:27:33 +0000
Received: from irsmsx105.ger.corp.intel.com ([169.254.7.165]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.75]) with mapi id 14.03.0439.000;
 Fri, 13 Dec 2019 08:27:33 +0000
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v7 1/4] drm/i915: Remove skl_ddl_allocation struct
Thread-Index: AQHVprqMZe+L6nS+ZUivtogW01eGpae3jFSAgABDwYA=
Date: Fri, 13 Dec 2019 08:27:32 +0000
Message-ID: <4ac6433a0a08505a48439fe60d559de3a8563227.camel@intel.com>
References: <20191129133709.24397-1-stanislav.lisovskiy@intel.com>
 <20191129133709.24397-2-stanislav.lisovskiy@intel.com>
 <20191213042213.GW85422@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20191213042213.GW85422@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.89]
Content-ID: <CB9302CA06B24140ABF8F29F1F4C17D0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 1/4] drm/i915: Remove skl_ddl_allocation
 struct
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

On Thu, 2019-12-12 at 20:22 -0800, Matt Roper wrote:
> On Fri, Nov 29, 2019 at 03:37:06PM +0200, Stanislav Lisovskiy wrote:
> > Current consensus that it is redundant as
> > we already have skl_ddb_values struct out there,
> > also this struct contains only single member
> > which makes it unnecessary.
> > 
> > v2: As dirty_pipes soon going to be nuked away
> >     from skl_ddb_values, evacuating enabled_slices
> >     to safer in dev_priv.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  | 16 ++++-----
> >  .../drm/i915/display/intel_display_power.c    |  8 ++---
> >  .../drm/i915/display/intel_display_types.h    |  3 ++
> >  drivers/gpu/drm/i915/i915_drv.h               |  7 ++--
> >  drivers/gpu/drm/i915/intel_pm.c               | 34 ++++++++-------
> > ----
> >  drivers/gpu/drm/i915/intel_pm.h               |  6 ++--
> >  6 files changed, 34 insertions(+), 40 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 53dc310a5f6d..dda43e3dcdbf 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13393,14 +13393,13 @@ static void verify_wm_state(struct
> > intel_crtc *crtc,
> >  	struct skl_hw_state {
> >  		struct skl_ddb_entry ddb_y[I915_MAX_PLANES];
> >  		struct skl_ddb_entry ddb_uv[I915_MAX_PLANES];
> > -		struct skl_ddb_allocation ddb;
> >  		struct skl_pipe_wm wm;
> >  	} *hw;
> > -	struct skl_ddb_allocation *sw_ddb;
> >  	struct skl_pipe_wm *sw_wm;
> >  	struct skl_ddb_entry *hw_ddb_entry, *sw_ddb_entry;
> >  	const enum pipe pipe = crtc->pipe;
> >  	int plane, level, max_level = ilk_wm_max_level(dev_priv);
> > +	u8 hw_enabled_slices;
> >  
> >  	if (INTEL_GEN(dev_priv) < 9 || !new_crtc_state->hw.active)
> >  		return;
> > @@ -13414,14 +13413,13 @@ static void verify_wm_state(struct
> > intel_crtc *crtc,
> >  
> >  	skl_pipe_ddb_get_hw_state(crtc, hw->ddb_y, hw->ddb_uv);
> >  
> > -	skl_ddb_get_hw_state(dev_priv, &hw->ddb);
> > -	sw_ddb = &dev_priv->wm.skl_hw.ddb;
> > +	hw_enabled_slices = intel_enabled_dbuf_slices_num(dev_priv);
> >  
> >  	if (INTEL_GEN(dev_priv) >= 11 &&
> > -	    hw->ddb.enabled_slices != sw_ddb->enabled_slices)
> > +	    hw_enabled_slices != dev_priv->enabled_slices)
> >  		DRM_ERROR("mismatch in DBUF Slices (expected %u, got
> > %u)\n",
> > -			  sw_ddb->enabled_slices,
> > -			  hw->ddb.enabled_slices);
> > +			  dev_priv->enabled_slices,
> > +			  hw_enabled_slices);
> >  
> >  	/* planes */
> >  	for_each_universal_plane(dev_priv, pipe, plane) {
> > @@ -14647,8 +14645,8 @@ static void
> > skl_commit_modeset_enables(struct intel_atomic_state *state)
> >  	unsigned int updated = 0;
> >  	bool progress;
> >  	int i;
> > -	u8 hw_enabled_slices = dev_priv->wm.skl_hw.ddb.enabled_slices;
> > -	u8 required_slices = state->wm_results.ddb.enabled_slices;
> > +	u8 hw_enabled_slices = dev_priv->enabled_slices;
> > +	u8 required_slices = state->enabled_slices;
> >  	struct skl_ddb_entry entries[I915_MAX_PIPES] = {};
> >  
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > old_crtc_state, new_crtc_state, i)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index ce1b64f4dd44..4c3ede73e863 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -4264,7 +4264,7 @@ static u8 intel_dbuf_max_slices(struct
> > drm_i915_private *dev_priv)
> >  void icl_dbuf_slices_update(struct drm_i915_private *dev_priv,
> >  			    u8 req_slices)
> >  {
> > -	const u8 hw_enabled_slices = dev_priv-
> > >wm.skl_hw.ddb.enabled_slices;
> > +	const u8 hw_enabled_slices = dev_priv->enabled_slices;
> >  	bool ret;
> >  
> >  	if (req_slices > intel_dbuf_max_slices(dev_priv)) {
> > @@ -4281,7 +4281,7 @@ void icl_dbuf_slices_update(struct
> > drm_i915_private *dev_priv,
> >  		ret = intel_dbuf_slice_set(dev_priv, DBUF_CTL_S2,
> > false);
> >  
> >  	if (ret)
> > -		dev_priv->wm.skl_hw.ddb.enabled_slices = req_slices;
> > +		dev_priv->enabled_slices = req_slices;
> >  }
> >  
> >  static void icl_dbuf_enable(struct drm_i915_private *dev_priv)
> > @@ -4300,7 +4300,7 @@ static void icl_dbuf_enable(struct
> > drm_i915_private *dev_priv)
> >  		 * FIXME: for now pretend that we only have 1 slice,
> > see
> >  		 * intel_enabled_dbuf_slices_num().
> >  		 */
> > -		dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
> > +		dev_priv->enabled_slices = 1;
> >  }
> >  
> >  static void icl_dbuf_disable(struct drm_i915_private *dev_priv)
> > @@ -4319,7 +4319,7 @@ static void icl_dbuf_disable(struct
> > drm_i915_private *dev_priv)
> >  		 * FIXME: for now pretend that the first slice is
> > always
> >  		 * enabled, see intel_enabled_dbuf_slices_num().
> >  		 */
> > -		dev_priv->wm.skl_hw.ddb.enabled_slices = 1;
> > +		dev_priv->enabled_slices = 1;
> >  }
> >  
> >  static void icl_mbus_init(struct drm_i915_private *dev_priv)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 83ea04149b77..5eaeaf487a01 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -517,6 +517,9 @@ struct intel_atomic_state {
> >  	/* Gen9+ only */
> >  	struct skl_ddb_values wm_results;
> >  
> > +	/* Number of enabled DBuf slices */
> > +	u8 enabled_slices;
> > +
> >  	struct i915_sw_fence commit_ready;
> >  
> >  	struct llist_node freed;
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h
> > b/drivers/gpu/drm/i915/i915_drv.h
> > index fdae5a919bc8..195629a37a61 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -798,13 +798,8 @@ static inline bool skl_ddb_entry_equal(const
> > struct skl_ddb_entry *e1,
> >  	return false;
> >  }
> >  
> > -struct skl_ddb_allocation {
> > -	u8 enabled_slices; /* GEN11 has configurable 2 slices */
> > -};
> > -
> >  struct skl_ddb_values {
> >  	unsigned dirty_pipes;
> > -	struct skl_ddb_allocation ddb;
> >  };
> 
> Seems strange to have a single entry structure (especially one that
> isn't even a "DDB value" as the name implies).  Do you kill
> dirty_pipes
> somewhere later in this series?  I didn't see it from a quick skim.

Those dirty pipes are going to be nuked in Villes series, I guess then
the whole skl_ddb_values struct will be then removed completely. 
I would remove it myself however Villes patches need to land, where
he gets rid of dirty_pipes usage.

> 
> >  
> >  struct skl_wm_level {
> > @@ -1215,6 +1210,8 @@ struct drm_i915_private {
> >  		bool distrust_bios_wm;
> >  	} wm;
> >  
> > +	u8 enabled_slices; /* GEN11 has configurable 2 slices */
> 
> Intel hardware has long used the terms "slice" and "subslice" for the
> way EUs are grouped on the GT side.  Now that this is pulled out from
> the substructs that gave it additional context, I think we need to
> rename this to something like 'enabled_dbuf_slices' to avoid
> confusion
> with the more widespread meaning of the word 'slice.'  Same for
> intel_atomic_state farther up.

Absolutely agree. I was just a bit confused as I have also
num_supported_dbuf_slices in dev_info, which indicates how much we
theoretically support, which is now named properly, what made
me think that I've renamed that one already..

However now probably we will have also "enabled_dbuf_slices_mask" here.

> 
> > +
> >  	struct dram_info {
> >  		bool valid;
> >  		bool is_16gb_dimm;
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > b/drivers/gpu/drm/i915/intel_pm.c
> > index 5aad9d49a528..a93b4385de4b 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -3599,7 +3599,7 @@ bool ilk_disable_lp_wm(struct drm_device
> > *dev)
> >  	return _ilk_disable_lp_wm(dev_priv, WM_DIRTY_LP_ALL);
> >  }
> >  
> > -static u8 intel_enabled_dbuf_slices_num(struct drm_i915_private
> > *dev_priv)
> > +u8 intel_enabled_dbuf_slices_num(struct drm_i915_private
> > *dev_priv)
> >  {
> >  	u8 enabled_slices;
> >  
> > @@ -3822,9 +3822,10 @@ bool intel_can_enable_sagv(struct
> > intel_atomic_state *state)
> >  static u16 intel_get_ddb_size(struct drm_i915_private *dev_priv,
> >  			      const struct intel_crtc_state
> > *crtc_state,
> >  			      const u64 total_data_rate,
> > -			      const int num_active,
> > -			      struct skl_ddb_allocation *ddb)
> > +			      const int num_active)
> >  {
> > +	struct drm_atomic_state *state = crtc_state->uapi.state;
> > +	struct intel_atomic_state *intel_state =
> > to_intel_atomic_state(state);
> >  	const struct drm_display_mode *adjusted_mode;
> >  	u64 total_data_bw;
> >  	u16 ddb_size = INTEL_INFO(dev_priv)->ddb_size;
> > @@ -3846,9 +3847,9 @@ static u16 intel_get_ddb_size(struct
> > drm_i915_private *dev_priv,
> >  	 * - should validate we stay within the hw bandwidth limits
> >  	 */
> >  	if (0 && (num_active > 1 || total_data_bw >= GBps(12))) {
> > -		ddb->enabled_slices = 2;
> > +		intel_state->enabled_slices = 2;
> >  	} else {
> > -		ddb->enabled_slices = 1;
> > +		intel_state->enabled_slices = 1;
> >  		ddb_size /= 2;
> >  	}
> >  
> > @@ -3859,7 +3860,6 @@ static void
> >  skl_ddb_get_pipe_allocation_limits(struct drm_i915_private
> > *dev_priv,
> >  				   const struct intel_crtc_state
> > *crtc_state,
> >  				   const u64 total_data_rate,
> > -				   struct skl_ddb_allocation *ddb,
> >  				   struct skl_ddb_entry *alloc, /* out
> > */
> >  				   int *num_active /* out */)
> >  {
> > @@ -3885,7 +3885,7 @@ skl_ddb_get_pipe_allocation_limits(struct
> > drm_i915_private *dev_priv,
> >  		*num_active = hweight8(dev_priv->active_pipes);
> >  
> >  	ddb_size = intel_get_ddb_size(dev_priv, crtc_state,
> > total_data_rate,
> > -				      *num_active, ddb);
> > +				      *num_active);
> >  
> >  	/*
> >  	 * If the state doesn't change the active CRTC's or there is no
> > @@ -4046,10 +4046,9 @@ void skl_pipe_ddb_get_hw_state(struct
> > intel_crtc *crtc,
> >  	intel_display_power_put(dev_priv, power_domain, wakeref);
> >  }
> >  
> > -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
> > -			  struct skl_ddb_allocation *ddb /* out */)
> > +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv)
> >  {
> > -	ddb->enabled_slices = intel_enabled_dbuf_slices_num(dev_priv);
> > +	dev_priv->enabled_slices =
> > intel_enabled_dbuf_slices_num(dev_priv);
> >  }
> >  
> >  /*
> > @@ -4226,8 +4225,7 @@ icl_get_total_relative_data_rate(struct
> > intel_crtc_state *crtc_state,
> >  }
> >  
> >  static int
> > -skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state,
> > -		      struct skl_ddb_allocation *ddb /* out */)
> > +skl_allocate_pipe_ddb(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_atomic_state *state = crtc_state->uapi.state;
> >  	struct drm_crtc *crtc = crtc_state->uapi.crtc;
> > @@ -4269,7 +4267,7 @@ skl_allocate_pipe_ddb(struct intel_crtc_state
> > *crtc_state,
> >  
> >  
> >  	skl_ddb_get_pipe_allocation_limits(dev_priv, crtc_state,
> > total_data_rate,
> > -					   ddb, alloc, &num_active);
> > +					   alloc, &num_active);
> >  	alloc_size = skl_ddb_entry_size(alloc);
> >  	if (alloc_size == 0)
> >  		return 0;
> > @@ -5183,18 +5181,17 @@ skl_ddb_add_affected_planes(const struct
> > intel_crtc_state *old_crtc_state,
> >  static int
> >  skl_compute_ddb(struct intel_atomic_state *state)
> >  {
> > -	const struct drm_i915_private *dev_priv = to_i915(state-
> > >base.dev);
> > -	struct skl_ddb_allocation *ddb = &state->wm_results.ddb;
> > +	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> >  	struct intel_crtc_state *old_crtc_state;
> >  	struct intel_crtc_state *new_crtc_state;
> >  	struct intel_crtc *crtc;
> >  	int ret, i;
> >  
> > -	memcpy(ddb, &dev_priv->wm.skl_hw.ddb, sizeof(*ddb));
> > +	state->enabled_slices = dev_priv->enabled_slices;
> >  
> >  	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > old_crtc_state,
> >  					    new_crtc_state, i) {
> > -		ret = skl_allocate_pipe_ddb(new_crtc_state, ddb);
> > +		ret = skl_allocate_pipe_ddb(new_crtc_state);
> >  		if (ret)
> >  			return ret;
> >  
> > @@ -5666,11 +5663,10 @@ void skl_pipe_wm_get_hw_state(struct
> > intel_crtc *crtc,
> >  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv)
> >  {
> >  	struct skl_ddb_values *hw = &dev_priv->wm.skl_hw;
> > -	struct skl_ddb_allocation *ddb = &dev_priv->wm.skl_hw.ddb;
> >  	struct intel_crtc *crtc;
> >  	struct intel_crtc_state *crtc_state;
> >  
> > -	skl_ddb_get_hw_state(dev_priv, ddb);
> > +	skl_ddb_get_hw_state(dev_priv);
> 
> At this point you might as well replace this with a direct call to
> intel_enabled_dbuf_slices_num() and drop the skl_ddb_get_hw_state()
> completely.
> 
> >  	for_each_intel_crtc(&dev_priv->drm, crtc) {
> >  		crtc_state = to_intel_crtc_state(crtc->base.state);
> >  
> > diff --git a/drivers/gpu/drm/i915/intel_pm.h
> > b/drivers/gpu/drm/i915/intel_pm.h
> > index b579c724b915..4aafae4c8e0d 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_pm.h
> > @@ -17,8 +17,8 @@ struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> >  struct intel_plane;
> > -struct skl_ddb_allocation;
> >  struct skl_ddb_entry;
> > +struct skl_ddb_values;
> >  struct skl_pipe_wm;
> >  struct skl_wm_level;
> >  
> > @@ -33,11 +33,11 @@ void g4x_wm_get_hw_state(struct
> > drm_i915_private *dev_priv);
> >  void vlv_wm_get_hw_state(struct drm_i915_private *dev_priv);
> >  void ilk_wm_get_hw_state(struct drm_i915_private *dev_priv);
> >  void skl_wm_get_hw_state(struct drm_i915_private *dev_priv);
> > +u8 intel_enabled_dbuf_slices_num(struct drm_i915_private
> > *dev_priv);
> >  void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
> >  			       struct skl_ddb_entry *ddb_y,
> >  			       struct skl_ddb_entry *ddb_uv);
> > -void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv,
> > -			  struct skl_ddb_allocation *ddb /* out */);
> > +void skl_ddb_get_hw_state(struct drm_i915_private *dev_priv);
> >  void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
> >  			      struct skl_pipe_wm *out);
> >  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
> > -- 
> > 2.17.1
> > 
> 
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
