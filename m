Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4156F8117
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 12:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AA710E5BF;
	Fri,  5 May 2023 10:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65AC10E5BF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 10:58:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683284290; x=1714820290;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WdhP819ejP1UPxaqj+ytpojf0xv30j1FQvkd4HcO9ps=;
 b=mfWMKRcLwll3gyGh0XetYWSu9XFnX3DX+MeWn9AK2CLylqw6s61vPeHM
 aklO5YoGpbNFK+C9y8qqkJ52KiaUxa/z/yObPh2tJrsP7G7exbfhN92M4
 tNuMOiar+4RnkxxhPkYIjVvRrTleGpDK/kBpHdkDf6qXc2F8dYpTgl+iY
 cTixpo5O30DYnVC8SbBA0v9P7EDt90e6C98PuBCvZZ2LVXEn8XyBSGe24
 I0P8TUXx7xagxse/lGoPl3GaQG6+dg9+OXoPh0jzNk+yJRN5nDX4TSty5
 tvZCwh60EEpLqdQK4rNthtduHWx0wBQg3QXyyf3cZ+Si9TbJ3VEaPt4wR g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="333606693"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="333606693"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:58:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841686363"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="841686363"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:58:08 -0700
Date: Fri, 5 May 2023 13:58:03 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFThO5u6IiYc2IQ4@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
 <ZFTgVqioUZnEbfyV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFTgVqioUZnEbfyV@intel.com>
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

On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > for NULLness here, just as in many other places, where we can't guarantee
> > that intel_atomic_get_crtc_state was called.
> > We are currently getting NULL ptr deref because of that, so this fix was
> > confirmed to help.
> > 
> > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 9f670dcfe76e..4125ee07a271 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >  	int ret;
> >  
> >  	if (old_obj) {
> > -		const struct intel_crtc_state *crtc_state =
> > +		const struct intel_crtc_state *new_crtc_state =
> >  			intel_atomic_get_new_crtc_state(state,
> >  							to_intel_crtc(old_plane_state->hw.crtc));
> >  
> > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >  		 * This should only fail upon a hung GPU, in which case we
> >  		 * can safely continue.
> >  		 */
> > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> 
> NAK. We need to fix the bug instead of paparing over it.

I had pushed this already. Moreover as I understand we need to check that new_crtc_state
for being NULL anyway. We do check it for being NULL in other places.
But if you have another solution - go for it.

Stan


> 
> >  			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> >  							      old_obj->base.resv,
> >  							      false, 0,
> > -- 
> > 2.37.3
> 
> -- 
> Ville Syrjälä
> Intel
