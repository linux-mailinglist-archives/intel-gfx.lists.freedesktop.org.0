Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 185996F8135
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 13:05:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 859AD10E5C3;
	Fri,  5 May 2023 11:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5F1210E5C3
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 11:05:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683284731; x=1714820731;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=27H8435SJhoTGntHjWa0L2nmuiVObzjJY8eTC2ic3Dg=;
 b=itHzuaywHO/Rupe+Lyw9IP1gCjh0iCEiAAW0PtsMKBQ4EuhRcXr/NLEn
 KkngsdNGAe1CRN0oOZBNsp5OXHI2FEyIWbT8PxbMiibJAeIL8sy2JHH9R
 CcU9oRWjbbP3+1xzaUwf4laYqC6uB4cabvsKo6m6y4Y/hksr13oSwL3Fr
 jnjb/QZELIQ9r7Zwrs+nXpyjTU37X6NVspn+rs9lLHwVgX9RfjEDgJ2kH
 3vdvs3n1DzHSlz1X3KpFQLLFdvOIlC7MuJmHd/bhYujm8VfccE4FaLOA3
 GCPaJjYG/OTuVlXTfiL1+N9WWCdMyPjljxBRntLnO8umbgJinVznKAFkW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="333608209"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="333608209"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:05:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841689837"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="841689837"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:05:30 -0700
Date: Fri, 5 May 2023 14:05:27 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFTi96yiKwfxqPFg@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
 <ZFTgVqioUZnEbfyV@intel.com> <ZFThO5u6IiYc2IQ4@intel.com>
 <ZFTiU924796iuQVn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFTiU924796iuQVn@intel.com>
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

On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > that intel_atomic_get_crtc_state was called.
> > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > confirmed to help.
> > > > 
> > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > >  	int ret;
> > > >  
> > > >  	if (old_obj) {
> > > > -		const struct intel_crtc_state *crtc_state =
> > > > +		const struct intel_crtc_state *new_crtc_state =
> > > >  			intel_atomic_get_new_crtc_state(state,
> > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > >  
> > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > >  		 * This should only fail upon a hung GPU, in which case we
> > > >  		 * can safely continue.
> > > >  		 */
> > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > 
> > > NAK. We need to fix the bug instead of paparing over it.
> > 
> > I had pushed this already.
> 
> It didn't even finish CI. Please revert.

Swati did run CI and verified that fix helps. I'm _not_ going to revert.

> 
> > Moreover as I understand we need to check that new_crtc_state
> > for being NULL anyway. We do check it for being NULL in other places.
> > But if you have another solution - go for it.
> > 
> > Stan
> > 
> > 
> > > 
> > > >  			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> > > >  							      old_obj->base.resv,
> > > >  							      false, 0,
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
