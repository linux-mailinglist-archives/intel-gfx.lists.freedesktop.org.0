Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D7D16F80BD
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 12:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 055EE10E5BB;
	Fri,  5 May 2023 10:28:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619CE10E5BB
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 10:28:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683282504; x=1714818504;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rl9L74pZRkN76s3QX9JPwh6SxcmjQs7F95dVJ85FAQI=;
 b=cV/Y4w1NM/OSMN5CSe9WhNPyZAITYJ07pg1IWvvxmwkXe7xj/TE6gIyb
 krytjOFyRct5dGxfj46du8Lm82Ba120+pyCTeueKULx3nAvQxZ6TgZ0z4
 +2IBhmF1n6n1tCgLExOqEt0lXFCTtnFMtfeH/7SIlY120eTSQedYXtUeA
 LIgkxNsbHM9mNu5LQWP6JX2uNHsHNamMqGdYo7AF/sKpe5pKqQL9blAOB
 Xe6mGw1cyiyl7HK0conFEUIbshNrLKahSUfZ3f0XE8pb2feCuMzb17BPR
 haKkk9/So3b8KlzeA/ugxBpYovNhqwBNXtzvT1mRraG05L8B+e47kzFfx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="414713723"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="414713723"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:28:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="762396246"
X-IronPort-AV: E=Sophos;i="5.99,251,1677571200"; d="scan'208";a="762396246"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 03:28:21 -0700
Date: Fri, 5 May 2023 13:28:15 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZFTaP6zqzPWw7ZGe@intel.com>
References: <20230505082212.27089-1-stanislav.lisovskiy@intel.com>
 <701bcdab-0070-1b3e-580b-b7bcd7c1e315@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <701bcdab-0070-1b3e-580b-b7bcd7c1e315@intel.com>
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

On Fri, May 05, 2023 at 11:29:22AM +0200, Andrzej Hajda wrote:
> On 05.05.2023 10:22, Stanislav Lisovskiy wrote:
> > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > for NULLness here, just as in many other places, where we can't guarantee
> > that intel_atomic_get_crtc_state was called.
> > We are currently getting NULL ptr deref because of that, so this fix was
> > confirmed to help.
> > 
> > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> I wonder if it wouldn't be safer to move the check to
> intel_crtc_needs_modeset, up to you.
> 
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Hi Andrzej,

Thank you for the review, I would probably still prefer to leave that check
to the calling site, because depending on new_crtc_state availability
calling site might need to do different actions, so it anyway has to be dealt
with.

Stan

> 
> Regards
> Andrzej
> 
> > ---
> >   drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> >   1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 9f670dcfe76e..4125ee07a271 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >   	int ret;
> >   	if (old_obj) {
> > -		const struct intel_crtc_state *crtc_state =
> > +		const struct intel_crtc_state *new_crtc_state =
> >   			intel_atomic_get_new_crtc_state(state,
> >   							to_intel_crtc(old_plane_state->hw.crtc));
> > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> >   		 * This should only fail upon a hung GPU, in which case we
> >   		 * can safely continue.
> >   		 */
> > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> >   			ret = i915_sw_fence_await_reservation(&state->commit_ready,
> >   							      old_obj->base.resv,
> >   							      false, 0,
> 
