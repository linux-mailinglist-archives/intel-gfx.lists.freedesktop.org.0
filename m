Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A06243E30E
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 16:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCBC6E0DB;
	Thu, 28 Oct 2021 14:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097236E0DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 14:06:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="217324812"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="217324812"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 07:06:06 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="447705543"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 07:06:05 -0700
Date: Thu, 28 Oct 2021 17:05:33 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211028140533.GA23694@intel.com>
References: <20211018115030.3547-1-ville.syrjala@linux.intel.com>
 <20211018115030.3547-6-ville.syrjala@linux.intel.com>
 <20211027171137.GA6185@intel.com> <YXqfpMpOEp1CqZ29@intel.com>
 <20211028135419.GA23664@intel.com> <YXqswK8DWDcfTA9B@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YXqswK8DWDcfTA9B@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915: Split skl+ plane update into
 noarm+arm pair
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

On Thu, Oct 28, 2021 at 04:59:28PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 28, 2021 at 04:54:19PM +0300, Lisovskiy, Stanislav wrote:
> > On Thu, Oct 28, 2021 at 04:03:32PM +0300, Ville Syrjälä wrote:
> > > On Wed, Oct 27, 2021 at 08:11:37PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Mon, Oct 18, 2021 at 02:50:26PM +0300, Ville Syrjala wrote:
> > > > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > 
> > > > > Chop skl_program_plane() into two halves. Fist half becomes
> > > > > the _noarm() variant, second part the _arm() variant.
> > > > > 
> > > > > Fortunately I have already previously grouped the register
> > > > > writes into roughtly the correct order, so the split looks
> > > > > surprisingly clean.
> > > > > 
> > > > > A few notable oddities I did not realize were self arming
> > > > > are AUX_DIST and COLOR_CTL.
> > > > > 
> > > > > i915_update_info doesn't look too terrible on my cfl running
> > > > > kms_atomic_transition --r plane-all-transition --extended:
> > > > > w/o patch                           w/ patch
> > > > > Updates: 2178                       Updates: 2018
> > > > >        |                                   |
> > > > >    1us |                               1us |
> > > > >        |                                   |
> > > > >    4us |                               4us |*****
> > > > >        |*********                          |**********
> > > > >   16us |**********                    16us |*******
> > > > >        |***                                |
> > > > >   66us |                              66us |
> > > > >        |                                   |
> > > > >  262us |                             262us |
> > > > >        |                                   |
> > > > >    1ms |                               1ms |
> > > > >        |                                   |
> > > > >    4ms |                               4ms |
> > > > >        |                                   |
> > > > >   17ms |                              17ms |
> > > > >        |                                   |
> > > > > Min update: 8332ns                  Min update: 6164ns
> > > > > Max update: 48758ns                 Max update: 31808ns
> > > > > Average update: 19959ns             Average update: 13159ns
> > > > > Overruns > 100us: 0                 Overruns > 100us: 0
> > > > > 
> > > > > And with lockdep enabled:
> > > > > w/o patch                           w/ patch
> > > > > Updates: 2177			    Updates: 2172
> > > > >        |			    	   |
> > > > >    1us |			       1us |
> > > > >        |			    	   |
> > > > >    4us |			       4us |
> > > > >        |*******			    	   |*********
> > > > >   16us |**********		      16us |**********
> > > > >        |*******			    	   |*
> > > > >   66us |			      66us |
> > > > >        |			    	   |
> > > > >  262us |			     262us |
> > > > >        |			    	   |
> > > > >    1ms |			       1ms |
> > > > >        |			    	   |
> > > > >    4ms |			       4ms |
> > > > >        |			    	   |
> > > > >   17ms |			      17ms |
> > > > >        |			    	   |
> > > > > Min update: 12645ns		    Min update: 9980ns
> > > > > Max update: 50153ns		    Max update: 33533ns
> > > > > Average update: 25337ns		    Average update: 18245ns
> > > > > Overruns > 250us: 0		    Overruns > 250us: 0
> > > > > 
> > > > > TODO: On icl+ everything seems to be armed by PLANE_SURF, so we
> > > > >       can optimize this even further on modern platforms. But I
> > > > >       think there's a bit of refactoring to be done first to
> > > > >       figure out the best way to go about it (eg. just reusing
> > > > >       the current skl+ functions, or doing a lower level split).
> > > > > 
> > > > > TODO: Split scaler programming as well, but IIRC the scaler
> > > > >       has some oddball double buffering behaviour on some
> > > > >       platforms, so needs proper reverse engineering
> > > > > 
> > > > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > ---
> > > > >  .../drm/i915/display/skl_universal_plane.c    | 113 +++++++++++-------
> > > > >  1 file changed, 72 insertions(+), 41 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > index 74f3870d39b1..2a822e1e465e 100644
> > > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > > @@ -1050,60 +1050,32 @@ static void icl_plane_csc_load_black(struct intel_plane *plane)
> > > > >  }
> > > > >  
> > > > >  static void
> > > > > -skl_program_plane(struct intel_plane *plane,
> > > > > -		  const struct intel_crtc_state *crtc_state,
> > > > > -		  const struct intel_plane_state *plane_state,
> > > > > -		  int color_plane)
> > > > > +skl_program_plane_noarm(struct intel_plane *plane,
> > > > > +			const struct intel_crtc_state *crtc_state,
> > > > > +			const struct intel_plane_state *plane_state,
> > > > > +			int color_plane)
> > > > >  {
> > > > >  	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > > >  	enum plane_id plane_id = plane->id;
> > > > >  	enum pipe pipe = plane->pipe;
> > > > > -	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> > > > >  	u32 stride = skl_plane_stride(plane_state, color_plane);
> > > > >  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > > > > -	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
> > > > >  	int crtc_x = plane_state->uapi.dst.x1;
> > > > >  	int crtc_y = plane_state->uapi.dst.y1;
> > > > > -	u32 x = plane_state->view.color_plane[color_plane].x;
> > > > > -	u32 y = plane_state->view.color_plane[color_plane].y;
> > > > >  	u32 src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> > > > >  	u32 src_h = drm_rect_height(&plane_state->uapi.src) >> 16;
> > > > > -	u8 alpha = plane_state->hw.alpha >> 8;
> > > > > -	u32 plane_color_ctl = 0, aux_dist = 0;
> > > > >  	unsigned long irqflags;
> > > > > -	u32 keymsk, keymax;
> > > > > -	u32 plane_ctl = plane_state->ctl;
> > > > > -
> > > > > -	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> > > > > -
> > > > > -	if (DISPLAY_VER(dev_priv) >= 10)
> > > > > -		plane_color_ctl = plane_state->color_ctl |
> > > > > -			glk_plane_color_ctl_crtc(crtc_state);
> > > > >  
> > > > >  	/* Sizes are 0 based */
> > > > >  	src_w--;
> > > > >  	src_h--;
> > > > >  
> > > > > -	keymax = (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> > > > > -
> > > > > -	keymsk = key->channel_mask & 0x7ffffff;
> > > > > -	if (alpha < 0xff)
> > > > > -		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
> > > > > -
> > > > >  	/* The scaler will handle the output position */
> > > > >  	if (plane_state->scaler_id >= 0) {
> > > > >  		crtc_x = 0;
> > > > >  		crtc_y = 0;
> > > > >  	}
> > > > >  
> > > > > -	if (aux_plane) {
> > > > > -		aux_dist = skl_surf_address(plane_state, aux_plane) -
> > > > > -			skl_surf_address(plane_state, color_plane);
> > > > > -
> > > > > -		if (DISPLAY_VER(dev_priv) < 12)
> > > > > -			aux_dist |= skl_plane_stride(plane_state, aux_plane);
> > > > > -	}
> > > > > -
> > > > >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > > > >  
> > > > >  	/*
> > > > > @@ -1119,16 +1091,10 @@ skl_program_plane(struct intel_plane *plane,
> > > > >  	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
> > > > >  			  (src_h << 16) | src_w);
> > > > >  
> > > > > -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> > > > > -
> > > > >  	if (icl_is_hdr_plane(dev_priv, plane_id))
> > > > >  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
> > > > >  				  plane_state->cus_ctl);
> > > > >  
> > > > > -	if (DISPLAY_VER(dev_priv) >= 10)
> > > > > -		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id),
> > > > > -				  plane_color_ctl);
> > > > > -
> > > > >  	if (fb->format->is_yuv && icl_is_hdr_plane(dev_priv, plane_id))
> > > > >  		icl_program_input_csc(plane, crtc_state, plane_state);
> > > > >  
> > > > > @@ -1138,6 +1104,52 @@ skl_program_plane(struct intel_plane *plane,
> > > > >  
> > > > >  	skl_write_plane_wm(plane, crtc_state);
> > > > >  
> > > > > +	intel_psr2_program_plane_sel_fetch(plane, crtc_state, plane_state, color_plane);
> > > > > +
> > > > > +	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
> > > > > +}
> > > > > +
> > > > > +static void
> > > > > +skl_program_plane_arm(struct intel_plane *plane,
> > > > > +		      const struct intel_crtc_state *crtc_state,
> > > > > +		      const struct intel_plane_state *plane_state,
> > > > > +		      int color_plane)
> > > > > +{
> > > > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
> > > > > +	enum plane_id plane_id = plane->id;
> > > > > +	enum pipe pipe = plane->pipe;
> > > > > +	const struct drm_intel_sprite_colorkey *key = &plane_state->ckey;
> > > > > +	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > > > > +	int aux_plane = skl_main_to_aux_plane(fb, color_plane);
> > > > > +	u32 x = plane_state->view.color_plane[color_plane].x;
> > > > > +	u32 y = plane_state->view.color_plane[color_plane].y;
> > > > > +	u32 keymsk, keymax, aux_dist = 0, plane_color_ctl = 0;
> > > > > +	u8 alpha = plane_state->hw.alpha >> 8;
> > > > > +	u32 plane_ctl = plane_state->ctl;
> > > > > +	unsigned long irqflags;
> > > > > +
> > > > > +	plane_ctl |= skl_plane_ctl_crtc(crtc_state);
> > > > > +
> > > > > +	if (DISPLAY_VER(dev_priv) >= 10)
> > > > > +		plane_color_ctl = plane_state->color_ctl |
> > > > > +			glk_plane_color_ctl_crtc(crtc_state);
> > > > > +
> > > > > +	keymax = (key->max_value & 0xffffff) | PLANE_KEYMAX_ALPHA(alpha);
> > > > > +
> > > > > +	keymsk = key->channel_mask & 0x7ffffff;
> > > > > +	if (alpha < 0xff)
> > > > > +		keymsk |= PLANE_KEYMSK_ALPHA_ENABLE;
> > > > > +
> > > > > +	if (aux_plane) {
> > > > > +		aux_dist = skl_surf_address(plane_state, aux_plane) -
> > > > > +			skl_surf_address(plane_state, color_plane);
> > > > > +
> > > > > +		if (DISPLAY_VER(dev_priv) < 12)
> > > > > +			aux_dist |= skl_plane_stride(plane_state, aux_plane);
> > > > > +	}
> > > > > +
> > > > > +	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > > > > +
> > > > >  	intel_de_write_fw(dev_priv, PLANE_KEYVAL(pipe, plane_id),
> > > > >  			  key->min_value);
> > > > >  	intel_de_write_fw(dev_priv, PLANE_KEYMSK(pipe, plane_id), keymsk);
> > > > > @@ -1146,17 +1158,22 @@ skl_program_plane(struct intel_plane *plane,
> > > > >  	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> > > > >  			  (y << 16) | x);
> > > > 
> > > > Wondering, if we could also move PLANE_OFFSET register to non-arming
> > > > section.
> > > 
> > > No. It is self arming.
> > > 
> > > > BSpec states, that it is not arming and being armed by
> > > > writing PLANE_SURF. I think we even agreed to check  if that was true,
> > > > so I made some tests with DG2, I think and writes to PLANE_OFFSET
> > > > didn't anyhow affect the hw until PLANE_SURF was written(was checking
> > > > it by reading the crcs...)
> > > 
> > > Your test was invalid since it was done on icl+ where everything is
> > > armed by PLANE_SURF.
> > 
> > Well, at that moment the main question was about DG2/ADL, so I tested
> > it with that particular platform(we had atomic update issues mostly there)
> > 
> > Also I guess it means PLANE_OFFSET can be moved to non-arming section
> > for icl+ at least. 
> > 
> > Or was it done somewhere later in your series?
> > Didn't walk through all of the patches yet.
> 
> Quoting from the commit message of this very patch:
> "TODO: On icl+ everything seems to be armed by PLANE_SURF, so we                                          
>  can optimize this even further on modern platforms. But I                                          
>  think there's a bit of refactoring to be done first to                                             
>  figure out the best way to go about it (eg. just reusing                                           
>  the current skl+ functions, or doing a lower level split). "


Sorry, missed that part, as it was after the timing info in the long commit
text :)
I think thats where the most of what we gain
from this optimizarion will be on icl+

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> 
> -- 
> Ville Syrjälä
> Intel
