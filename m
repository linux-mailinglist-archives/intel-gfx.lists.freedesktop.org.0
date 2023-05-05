Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 589D36F8228
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 13:41:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58B2E10E5D8;
	Fri,  5 May 2023 11:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88F4410E5D8
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 11:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683286892; x=1714822892;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iPnfOMVtSy1ITEa0mEi/cShB/8JUq8hkwvVd+K/K+X8=;
 b=Ad1OHvnjYF8Yc4fAXYSEvSS9K6qFmHA99xsVZXKe2mUpthsnD3eK8Vje
 v8uP6nJzrlpD6QGDv5A0c3uRUFwvLxOCzf3PDosfOkLcRpZ7Fr/gfxAW3
 WLSyJ66rwcfw4s/OjftJprV4fT68Q8chzDiZ+K8gfejewH+MSFe8uO9HV
 pi5Zoa35M/fmTFagVbjDTUKOhzv4U+sRTq5o/62qjvjdvKzY0rOap/dR3
 i3a5dCrzYbHn6Iz0E4EgJtyRfDjWR6fX6iUQ7xWw5VOWKrd3Qcqvm0bQz
 JuhcZo9eY7tzlkhyXptqXzdfdich1N5FA5MLyIdIteFhEOkWTecc34sov w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="338376721"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="338376721"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:41:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="697545149"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="697545149"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 04:41:30 -0700
Date: Fri, 5 May 2023 14:41:24 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFTrZEUKcuyPmlh4@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
 <ZFTgVqioUZnEbfyV@intel.com> <ZFThO5u6IiYc2IQ4@intel.com>
 <ZFTiU924796iuQVn@intel.com> <ZFTi96yiKwfxqPFg@intel.com>
 <ZFTjOncKZ1ZksCSH@intel.com> <ZFTmcR48e6eXPIg6@intel.com>
 <ZFTnuvm6DH9Ow+gP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFTnuvm6DH9Ow+gP@intel.com>
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

On Fri, May 05, 2023 at 02:25:46PM +0300, Ville Syrjälä wrote:
> On Fri, May 05, 2023 at 02:20:17PM +0300, Lisovskiy, Stanislav wrote:
> > On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrjälä wrote:
> > > On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> > > > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > > > confirmed to help.
> > > > > > > > 
> > > > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > >  	int ret;
> > > > > > > >  
> > > > > > > >  	if (old_obj) {
> > > > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > > > >  
> > > > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > > > >  		 * can safely continue.
> > > > > > > >  		 */
> > > > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > > > 
> > > > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > > > 
> > > > > > I had pushed this already.
> > > > > 
> > > > > It didn't even finish CI. Please revert.
> > > > 
> > > > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> > > 
> > > Fine. I'll do it.
> > 
> > Problem is that you don't even care to explain, why this fix is wrong, but simply
> > act in authoritarian way, instead of having constructive discussion.
> 
> I've explanined this one about a hundred times. The NULL pointer should
> not happen. Someone needs to actually analyze what is happening instead
> of just adding randomg NULL checks all over the place.

I do get this point. However why are we doing those check in other places then?
Moreover I can remember that you told me to do this check even, when were reviewing
my other patches. Because we always have to check result of this function, as it
can be NULL, in case if intel_atomic_get_crtc_state wasn't called before, which
could happen even in normal case, as I understand.

If we want to understand why it happens in particular here, great lets investigate,
however I don't get why we are having same checks everywhere all over the place then
and I can even find your words, that we need to do those checks as well.

Also if this doesn't break anything, improves our CI results, not violating our coding
practices, because once again worth mentioning we do check new_crtc_state for NULLness
in many places.. then why it can't be the fix?
If we find better solution thats great, but there are plenty of other things as well,
if you haven't noticed.

Can we somehow _stop_ these childish kindergarden level review arguing warfare, at least 
for sake of professional efficiency? 

For all my next patches I will always add you to CC and _personally_ will ask to review,
even though quite often when I do this - I get nothing.

Stan


> 
> > I told that we had verified the fix and that we always do those checks in
> > many places anyway where we get new_crtc_state.
> > However there were no even reasons to reject mentioned here. 
> > I don't really think that bringing personality traits and authoritarian
> > discussion style is a professional behaviour.
> > Thanks for cooperation. 
> > 
> > > 
> > > > 
> > > > > 
> > > > > > Moreover as I understand we need to check that new_crtc_state
> > > > > > for being NULL anyway. We do check it for being NULL in other places.
> > > > > > But if you have another solution - go for it.
> > > > > > 
> > > > > > Stan
> > > > > > 
> > > > > > 
> > > > > > > 
> > > > > > > >  			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> > > > > > > >  							      old_obj->base.resv,
> > > > > > > >  							      false, 0,
> > > > > > > > -- 
> > > > > > > > 2.37.3
> > > > > > > 
> > > > > > > -- 
> > > > > > > Ville Syrjälä
> > > > > > > Intel
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
