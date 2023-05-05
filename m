Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9006F8185
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 13:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F12010E5CF;
	Fri,  5 May 2023 11:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23FDE10E5CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 11:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683285626; x=1714821626;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6AoTFIA2tgTZ0znqpSVPsUFm6eHA6d954pLCPL45SEk=;
 b=LMQ+NZJ9GLxRJS0cCanP5HqH2POlJrIe3+EzYB3K2OqoTGotpBcT004s
 pCwfuhevuk48Dj5UDhTLOmKPXNyMyOCmk4IhNV7xEqnDN47YTmAEIiWuV
 vLdkepVk0PXZCx7A+annN3fkd6EB8jAUpKP2Zf2lY1AcDa0tR0lG0IjDv
 7G8etyk9RNxfT8kSUheModCXU68aUzGL60eIS2cGsulb1joBeP6g7xEx4
 F07pcFE8f/l+iquCt0eQKqlqjWcd384o/y1DXBQp/zMCTPhqMi1mDWhh+
 Y6dXoXHUINClbkOCj4GT/IMX5vuPt+16SaP63DoefBdszamGKrQcQhK0H Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351325047"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="351325047"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:20:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="700383647"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="700383647"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:20:23 -0700
Date: Fri, 5 May 2023 14:20:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFTmcR48e6eXPIg6@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
 <ZFTgVqioUZnEbfyV@intel.com> <ZFThO5u6IiYc2IQ4@intel.com>
 <ZFTiU924796iuQVn@intel.com> <ZFTi96yiKwfxqPFg@intel.com>
 <ZFTjOncKZ1ZksCSH@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFTjOncKZ1ZksCSH@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NULL ptr deref by checking
 new_crtc_state
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

On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrjälä wrote:
> On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > confirmed to help.
> > > > > > 
> > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > >  	int ret;
> > > > > >  
> > > > > >  	if (old_obj) {
> > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > >  
> > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > >  		 * can safely continue.
> > > > > >  		 */
> > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > 
> > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > 
> > > > I had pushed this already.
> > > 
> > > It didn't even finish CI. Please revert.
> > 
> > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> 
> Fine. I'll do it.

Problem is that you don't even care to explain, why this fix is wrong, but simply
act in authoritarian way, instead of having constructive discussion.
I told that we had verified the fix and that we always do those checks in
many places anyway where we get new_crtc_state.
However there were no even reasons to reject mentioned here. 
I don't really think that bringing personality traits and authoritarian
discussion style is a professional behaviour.
Thanks for cooperation. 

> 
> > 
> > > 
> > > > Moreover as I understand we need to check that new_crtc_state
> > > > for being NULL anyway. We do check it for being NULL in other places.
> > > > But if you have another solution - go for it.
> > > > 
> > > > Stan
> > > > 
> > > > 
> > > > > 
> > > > > >  			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> > > > > >  							      old_obj->base.resv,
> > > > > >  							      false, 0,
> > > > > > -- 
> > > > > > 2.37.3
> > > > > 
> > > > > -- 
> > > > > Ville Syrjälä
> > > > > Intel
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
