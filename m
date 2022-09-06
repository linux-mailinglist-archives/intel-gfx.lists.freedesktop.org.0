Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0085AE69F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 13:32:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06D510E5C4;
	Tue,  6 Sep 2022 11:32:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BB610E5C4
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 11:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662463929; x=1693999929;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lBpRhg/3UeudyBD9NkOOsXhtOXMwXyFMChPBCXbM0SE=;
 b=B3R1HS73OVkyrmrOV7pWyG7eGMY8zL92adlIb0BZzGDGZZc9kXjOXeS7
 ik7fiNEu/6Ngztv3ly5u4Y6zxcYvVa4nbx8eXJbLq60m5TMtJNy8F7TEb
 DVrBPtAzo1G2iYOuuXwybntfYIAnzTat+pHSuTAg2jPx+S1yiGMckibBu
 kff+U2bVbuCQX/0WoK8YcoQwnfVfac1XVgcXKC52uVIBfA5tKCaDNSqPN
 Ji/WCfubiXZ5QxDSZk2M++qiSZBJhXzfqF3TH+pEJDy73xG1nZBfcL3ZI
 l1rUWCCerCum2A8sTN4jC/puMOKZlesWCU3AD/zHJD4MJ4GXXWuZUTahY w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="358285351"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="358285351"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 04:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="609926346"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 06 Sep 2022 04:32:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Sep 2022 14:32:06 +0300
Date: Tue, 6 Sep 2022 14:32:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <YxcvtoVGEs5FuvZ3@intel.com>
References: <20220905080500.213330-1-andrzej.hajda@intel.com>
 <YxXh+gGqGGahJc08@intel.com>
 <f9337b9b-4b06-cee8-4550-db7513b1a953@intel.com>
 <YxY1mznljBVkDHCw@intel.com>
 <2501aa82-dac0-6cdf-db97-c43893106027@intel.com>
 <YxctfpfZ48ySBaCc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YxctfpfZ48ySBaCc@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: do not reset PLANE_SURF on plane
 disable on older gens
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 06, 2022 at 02:22:38PM +0300, Ville Syrjälä wrote:
> On Tue, Sep 06, 2022 at 01:09:16PM +0200, Andrzej Hajda wrote:
> > 
> > 
> > On 05.09.2022 19:44, Ville Syrjälä wrote:
> > > On Mon, Sep 05, 2022 at 07:02:40PM +0200, Andrzej Hajda wrote:
> > >>
> > >> On 05.09.2022 13:48, Ville Syrjälä wrote:
> > >>> On Mon, Sep 05, 2022 at 10:05:00AM +0200, Andrzej Hajda wrote:
> > >>>> In case of ICL and older generations disabling plane and/or disabling
> > >>>> async update is always performed on vblank,
> > >>> It should only be broken on bdw-glk (see. need_async_flip_disable_wa).
> > >> On CFL it is reported every drmtip run:
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?testfilter=tiled-max-hw
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html#dmesg-warnings402
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html#dmesg-warnings402
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1209/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1208/fi-cfl-8109u/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> > >> ...
> > >> On APL it is less frequent, probably due to other bugs preventing run of
> > >> this test, last seen at:
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1190/fi-apl-guc/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> > >> Similar for SKL:
> > >> https://intel-gfx-ci.01.org/tree/drm-tip/drmtip_1181/fi-skl-guc/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> > >>
> > >> I am not sure if I correctly read the docs but [1] says that 9th bit of
> > >> PLANE_CFG (Async Address Update Enable) is "not double buffered and the
> > >> changes will apply immediately" only for ICL, JSL, LKF1.
> > > It got broken in bdw and fixed again in icl.
> > >
> > >> So the change is not necessary in case of icl_plane_disable_arm.
> > >>
> > >> [1]: https://gfxspecs.intel.com/Predator/Home/Index/7656
> > >>>> but if async update is enabled
> > >>>> PLANE_SURF register is updated asynchronously. Writing 0 to PLANE_SURF
> > >>>> when plane is still enabled can cause DMAR/PIPE errors.
> > >>>> On the other side PLANE_SURF is used to arm plane registers - we need to
> > >>>> write to it to trigger update on VBLANK, writting current value should
> > >>>> be safe - the buffer address is valid till vblank.
> > >>> I think you're effectively saying that somehow the async
> > >>> flip disable w/a is not kicking in sometimes.
> > >> I was not aware of existence of this w/a and I am little lost in
> > >> figuring out how this w/a can prevent zeroing PLANE_SURF too early.
> > > When it works as designed it should:
> > > 1. turn off the async flip bit
> > > 2. wait for vblank so that gets latched
> > > 3. do the sync plane update/disable normally
> > 
> > After debugging this terra incognita, I've figured out that plane states 
> > are not populated in intel_crtc_async_flip_disable_wa
> > so for_each_old_intel_plane_in_state does not iterate over affected 
> > planes and w/a does not work at all.
> > I have no idea where affected plane states should be added.
> > Adding them to the beginning of intel_atomic_check helped, but this is 
> > just blind shot:
> > 
> > @@ -6778,10 +6778,14 @@ static int intel_atomic_check(struct drm_device 
> > *dev,
> >               new_crtc_state->uapi.mode_changed = true;
> > 
> >           if (new_crtc_state->uapi.scaling_filter !=
> >               old_crtc_state->uapi.scaling_filter)
> >               new_crtc_state->uapi.mode_changed = true;
> > +
> > +        ret = intel_atomic_add_affected_planes(state, crtc);
> > +        if (ret)
> > +            goto fail;
> >       }
> > 
> >       intel_vrr_check_modeset(state);
> > 
> >       ret = drm_atomic_helper_check_modeset(dev, &state->base);
>               ^
> This guy should be adding them for any crtc that has been flagged
> for modeset ahead of time. For modesets flagged later we have to
> add them by hand (eg. in intel_modeset_all_pipes()).
> 
> For normal plane updates the relevant planes are already added
> when the property values are updated.

Hmm. Not having in the state doesn't really make sense
because then we wouldn't have called the disable hook for the
plane anyway. I guess one theory would be that update_mask is
somehow stale. I did see one weird assert_plane() failure on
one of my machines recently so that could also be pointing
to the same thing. But I've not had time to investigate that
one yet.

I did type up a preliminary patch to see if we might catch
something funny, but haven't tried feeding it to ci yet:

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index dd876dbbaa39..f8ca3854357c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -752,6 +752,9 @@ void intel_plane_disable_arm(struct intel_plane *plane,
 void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc)
 {
+	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	u32 update_mask = new_crtc_state->update_planes;
@@ -762,6 +765,14 @@ void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
 	if (new_crtc_state->do_async_flip)
 		return;
 
+	drm_WARN(&dev_priv->drm, intel_crtc_needs_modeset(new_crtc_state) &&
+		 ~update_mask & new_crtc_state->active_planes,
+		 "[CRTC:%d:%s] active planes 0x%x -> 0x%x, update planes 0x%x\n",
+		 crtc->base.base.id, crtc->base.name,
+		 old_crtc_state->active_planes,
+		 new_crtc_state->active_planes,
+		 new_crtc_state->update_planes);
+
 	/*
 	 * Since we only write non-arming registers here,
 	 * the order does not matter even for skl+.
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a2ba7359ce8c..f9e2814a3ba1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1426,6 +1426,8 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 				      struct intel_crtc *crtc)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	const struct intel_crtc_state *old_crtc_state =
+		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	unsigned int update_mask = new_crtc_state->update_planes;
@@ -1434,6 +1436,14 @@ static void intel_crtc_disable_planes(struct intel_atomic_state *state,
 	unsigned fb_bits = 0;
 	int i;
 
+	drm_WARN(&dev_priv->drm,
+		 ~update_mask & old_crtc_state->active_planes,
+		 "[CRTC:%d:%s] active planes 0x%x -> 0x%x, update planes 0x%x\n",
+		 crtc->base.base.id, crtc->base.name,
+		 old_crtc_state->active_planes,
+		 new_crtc_state->active_planes,
+		 new_crtc_state->update_planes);
+
 	intel_crtc_dpms_overlay_disable(crtc);
 
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {

-- 
Ville Syrjälä
Intel
