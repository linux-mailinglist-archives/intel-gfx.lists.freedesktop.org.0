Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51192474808
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 17:29:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E1A210E580;
	Tue, 14 Dec 2021 16:29:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0670110E580
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Dec 2021 16:29:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="238961470"
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="238961470"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2021 08:25:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,205,1635231600"; d="scan'208";a="545222763"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 14 Dec 2021 08:25:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Dec 2021 18:25:43 +0200
Date: Tue, 14 Dec 2021 18:25:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbjFh6AnBtI729+V@intel.com>
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
 <20211213134450.3082-2-ville.syrjala@linux.intel.com>
 <871r2g702r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <871r2g702r.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915/fbc: Parametrize FBC
 register offsets
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

On Mon, Dec 13, 2021 at 09:54:04PM +0200, Jani Nikula wrote:
> On Mon, 13 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Parametrize ilk+ FBC register offsets based on the FBC instance.
> >
> > v2: More intel_ namespace (Jani)
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Some questions below, apart from that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 34 +++++++++++++-----------
> >  drivers/gpu/drm/i915/display/intel_fbc.h |  6 +++++
> >  drivers/gpu/drm/i915/i915_reg.h          | 34 ++++++++++++------------
> >  drivers/gpu/drm/i915/intel_pm.c          | 31 ++++++++++++---------
> >  4 files changed, 60 insertions(+), 45 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 8be01b93015f..112aafa72253 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -85,6 +85,8 @@ struct intel_fbc {
> >  	struct drm_mm_node compressed_fb;
> >  	struct drm_mm_node compressed_llb;
> >  
> > +	enum intel_fbc_id id;
> > +
> >  	u8 limit;
> >  
> >  	bool false_color;
> > @@ -454,10 +456,10 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
> >  	struct intel_fbc_state *fbc_state = &fbc->state;
> >  	struct drm_i915_private *i915 = fbc->i915;
> >  
> > -	intel_de_write(i915, ILK_DPFC_FENCE_YOFF,
> > +	intel_de_write(i915, ILK_DPFC_FENCE_YOFF(fbc->id),
> >  		       fbc_state->fence_y_offset);
> >  
> > -	intel_de_write(i915, ILK_DPFC_CONTROL,
> > +	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> >  		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
> >  }
> >  
> > @@ -467,28 +469,28 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
> >  	u32 dpfc_ctl;
> >  
> >  	/* Disable compression */
> > -	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL);
> > +	dpfc_ctl = intel_de_read(i915, ILK_DPFC_CONTROL(fbc->id));
> >  	if (dpfc_ctl & DPFC_CTL_EN) {
> >  		dpfc_ctl &= ~DPFC_CTL_EN;
> > -		intel_de_write(i915, ILK_DPFC_CONTROL, dpfc_ctl);
> > +		intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> >  	}
> >  }
> >  
> >  static bool ilk_fbc_is_active(struct intel_fbc *fbc)
> >  {
> > -	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL) & DPFC_CTL_EN;
> > +	return intel_de_read(fbc->i915, ILK_DPFC_CONTROL(fbc->id)) & DPFC_CTL_EN;
> >  }
> >  
> >  static bool ilk_fbc_is_compressing(struct intel_fbc *fbc)
> >  {
> > -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS) & DPFC_COMP_SEG_MASK;
> > +	return intel_de_read(fbc->i915, ILK_DPFC_STATUS(fbc->id)) & DPFC_COMP_SEG_MASK;
> >  }
> >  
> >  static void ilk_fbc_program_cfb(struct intel_fbc *fbc)
> >  {
> >  	struct drm_i915_private *i915 = fbc->i915;
> >  
> > -	intel_de_write(i915, ILK_DPFC_CB_BASE, fbc->compressed_fb.start);
> > +	intel_de_write(i915, ILK_DPFC_CB_BASE(fbc->id), fbc->compressed_fb.start);
> >  }
> >  
> >  static const struct intel_fbc_funcs ilk_fbc_funcs = {
> > @@ -524,8 +526,8 @@ static void snb_fbc_nuke(struct intel_fbc *fbc)
> >  {
> >  	struct drm_i915_private *i915 = fbc->i915;
> >  
> > -	intel_de_write(i915, MSG_FBC_REND_STATE, FBC_REND_NUKE);
> > -	intel_de_posting_read(i915, MSG_FBC_REND_STATE);
> > +	intel_de_write(i915, MSG_FBC_REND_STATE(fbc->id), FBC_REND_NUKE);
> > +	intel_de_posting_read(i915, MSG_FBC_REND_STATE(fbc->id));
> >  }
> >  
> >  static const struct intel_fbc_funcs snb_fbc_funcs = {
> > @@ -547,7 +549,7 @@ static void glk_fbc_program_cfb_stride(struct intel_fbc *fbc)
> >  		val |= FBC_STRIDE_OVERRIDE |
> >  			FBC_STRIDE(fbc_state->override_cfb_stride / fbc->limit);
> >  
> > -	intel_de_write(i915, GLK_FBC_STRIDE, val);
> > +	intel_de_write(i915, GLK_FBC_STRIDE(fbc->id), val);
> >  }
> >  
> >  static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
> > @@ -598,19 +600,19 @@ static void ivb_fbc_activate(struct intel_fbc *fbc)
> >  	if (i915->ggtt.num_fences)
> >  		snb_fbc_program_fence(fbc);
> >  
> > -	intel_de_write(i915, ILK_DPFC_CONTROL,
> > +	intel_de_write(i915, ILK_DPFC_CONTROL(fbc->id),
> >  		       DPFC_CTL_EN | ivb_dpfc_ctl(fbc));
> >  }
> >  
> >  static bool ivb_fbc_is_compressing(struct intel_fbc *fbc)
> >  {
> > -	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2) & DPFC_COMP_SEG_MASK_IVB;
> > +	return intel_de_read(fbc->i915, ILK_DPFC_STATUS2(fbc->id)) & DPFC_COMP_SEG_MASK_IVB;
> >  }
> >  
> >  static void ivb_fbc_set_false_color(struct intel_fbc *fbc,
> >  				    bool enable)
> >  {
> > -	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL,
> > +	intel_de_rmw(fbc->i915, ILK_DPFC_CONTROL(fbc->id),
> >  		     DPFC_CTL_FALSE_COLOR, enable ? DPFC_CTL_FALSE_COLOR : 0);
> >  }
> >  
> > @@ -1620,7 +1622,8 @@ void intel_fbc_add_plane(struct intel_fbc *fbc, struct intel_plane *plane)
> >  	fbc->possible_framebuffer_bits |= plane->frontbuffer_bit;
> >  }
> >  
> > -static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
> > +static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915,
> > +					  enum intel_fbc_id fbc_id)
> >  {
> >  	struct intel_fbc *fbc;
> >  
> > @@ -1628,6 +1631,7 @@ static struct intel_fbc *intel_fbc_create(struct drm_i915_private *i915)
> >  	if (!fbc)
> >  		return NULL;
> >  
> > +	fbc->id = fbc_id;
> >  	fbc->i915 = i915;
> >  	INIT_WORK(&fbc->underrun_work, intel_fbc_underrun_work_fn);
> >  	mutex_init(&fbc->lock);
> > @@ -1671,7 +1675,7 @@ void intel_fbc_init(struct drm_i915_private *i915)
> >  	if (!HAS_FBC(i915))
> >  		return;
> >  
> > -	fbc = intel_fbc_create(i915);
> > +	fbc = intel_fbc_create(i915, INTEL_FBC_A);
> >  	if (!fbc)
> >  		return;
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> > index 07ad0411fcc3..7b7631aec527 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> > @@ -17,6 +17,12 @@ struct intel_fbc;
> >  struct intel_plane;
> >  struct intel_plane_state;
> >  
> > +enum intel_fbc_id {
> > +	INTEL_FBC_A,
> > +
> > +	I915_MAX_FBCS,
> > +};
> > +
> >  int intel_fbc_atomic_check(struct intel_atomic_state *state);
> >  bool intel_fbc_pre_update(struct intel_atomic_state *state,
> >  			  struct intel_crtc *crtc);
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index d27ba273cc68..698a023e70f5 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3386,10 +3386,10 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >  #define FBC_LL_SIZE		(1536)
> >  
> >  /* Framebuffer compression for GM45+ */
> > -#define DPFC_CB_BASE		_MMIO(0x3200)
> > -#define ILK_DPFC_CB_BASE	_MMIO(0x43200)
> > -#define DPFC_CONTROL		_MMIO(0x3208)
> > -#define ILK_DPFC_CONTROL	_MMIO(0x43208)
> > +#define DPFC_CB_BASE			_MMIO(0x3200)
> > +#define ILK_DPFC_CB_BASE(fbc_id)	_MMIO_PIPE((fbc_id), 0x43200, 0x43240)
> > +#define DPFC_CONTROL			_MMIO(0x3208)
> > +#define ILK_DPFC_CONTROL(fbc_id)	_MMIO_PIPE((fbc_id), 0x43208, 0x43248)
> >  #define   DPFC_CTL_EN				REG_BIT(31)
> >  #define   DPFC_CTL_PLANE_MASK_G4X		REG_BIT(30) /* g4x-snb */
> >  #define   DPFC_CTL_PLANE_G4X(i9xx_plane)	REG_FIELD_PREP(DPFC_CTL_PLANE_MASK_G4X, (i9xx_plane))
> > @@ -3407,28 +3407,28 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> >  #define   DPFC_CTL_LIMIT_4X			REG_FIELD_PREP(DPFC_CTL_LIMIT_MASK, 2)
> >  #define   DPFC_CTL_FENCENO_MASK			REG_GENMASK(3, 0)
> >  #define   DPFC_CTL_FENCENO(fence)		REG_FIELD_PREP(DPFC_CTL_FENCENO_MASK, (fence))
> > -#define DPFC_RECOMP_CTL		_MMIO(0x320c)
> > -#define ILK_DPFC_RECOMP_CTL	_MMIO(0x4320c)
> > +#define DPFC_RECOMP_CTL			_MMIO(0x320c)
> > +#define ILK_DPFC_RECOMP_CTL(fbc_id)	_MMIO_PIPE((fbc_id), 0x4320c, 0x4324c)
> 
> This is display 5 and 6 only, right?

Hmm. Looks like it may be removed in adl-p. But definitely still
present in tgl.

> Will there be a register instance
> for fbc_id > INTEL_FBC_A? Or is the parametrization just for
> completeness?

If it's not present in future hw then I guess it won't have a second
instance. But I might prefer parametrizing all of them anyway.

> 
> This one is only used in gvt, anyway. And that actually makes me wonder
> if this should be breaking the build. Does CI not have gvt enabled?

Hmm. I thought it was enabled in CI, but maybe not. I've often broken
gvt with register define changes but I've always caught it before
pushing. I think I have gvt enabled in my "make sure all commits build
before I push" test config, so maybe that's where I caught most of them.

Tomi, can we enable gvt in ci builds to make sure it at least still
builds?

> >  #define   DPFC_RECOMP_STALL_EN			REG_BIT(27)
> >  #define   DPFC_RECOMP_STALL_WM_MASK		REG_GENMASK(26, 16)
> >  #define   DPFC_RECOMP_TIMER_COUNT_MASK		REG_GENMASK(5, 0)
> > -#define DPFC_STATUS		_MMIO(0x3210)
> > -#define ILK_DPFC_STATUS		_MMIO(0x43210)
> > +#define DPFC_STATUS			_MMIO(0x3210)
> > +#define ILK_DPFC_STATUS(fbc_id)		_MMIO_PIPE((fbc_id), 0x43210, 0x43250)
> 
> Ditto, apart from the gvt part.

Looks like this too might be gone in adl-p.

> 
> >  #define   DPFC_INVAL_SEG_MASK			REG_GENMASK(26, 16)
> >  #define   DPFC_COMP_SEG_MASK			REG_GENMASK(10, 0)
> > -#define DPFC_STATUS2		_MMIO(0x3214)
> > -#define ILK_DPFC_STATUS2		_MMIO(0x43214)
> > +#define DPFC_STATUS2			_MMIO(0x3214)
> > +#define ILK_DPFC_STATUS2(fbc_id)	_MMIO_PIPE((fbc_id), 0x43214, 0x43254)
> >  #define   DPFC_COMP_SEG_MASK_IVB		REG_GENMASK(11, 0)
> > -#define DPFC_FENCE_YOFF		_MMIO(0x3218)
> > -#define ILK_DPFC_FENCE_YOFF	_MMIO(0x43218)
> > -#define DPFC_CHICKEN		_MMIO(0x3224)
> > -#define ILK_DPFC_CHICKEN	_MMIO(0x43224)
> > +#define DPFC_FENCE_YOFF			_MMIO(0x3218)
> > +#define ILK_DPFC_FENCE_YOFF(fbc_id)	_MMIO_PIPE((fbc_id), 0x43218, 0x43258)
> 
> Ditto.

I think this got nuked in ivb. It's not really used on snb either 
since snb introduced the system agent version of this register, but
I'm pretty sure the old register was still present in the snb hw.

-- 
Ville Syrjälä
Intel
