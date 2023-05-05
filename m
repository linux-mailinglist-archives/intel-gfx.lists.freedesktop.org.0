Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EC26F8342
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 14:46:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E884310E5FA;
	Fri,  5 May 2023 12:46:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA9210E5EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 12:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683290804; x=1714826804;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Gxxm/o6QiOj49kvRwxfE43BKKeCcg+okAMgOvYkm6yk=;
 b=dNR76cfncF4YyGF6p8FpfssnHdKiacKYkOSMpixUIQWBRjNhQfhKyfhx
 Grq8LFj6eB5ibv+p0vJLNN+MIf8NaDROIbsD+Q5Vr8oOTt1JjxRV+eNVf
 DqHkt2Nftt+0Gihu0JNrKW3eHlfDzUXD+T/2GLonF5qylzAxL8FrZUr5n
 caQnIdimDhe3HYTUy0643vJf2TiWe4M4OwRqNXM+KGMp07nlBSzaGbdLm
 s59o77sxWfm037T53yiK9/p59G7eOu033Jp2bYe3DmQKSXU8xSlACZDJ9
 xs1jMdFQ5+b+ca1ORjQQ+snotp2dXGCHVxxNvjB1ODSMIItBN8PLKJzjQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="435523132"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="435523132"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 05:46:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="943853164"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="943853164"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga006.fm.intel.com with SMTP; 05 May 2023 05:46:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 15:46:40 +0300
Date: Fri, 5 May 2023 15:46:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZFT6sMoymxdJkD9G@intel.com>
References: <ZFTgVqioUZnEbfyV@intel.com> <ZFThO5u6IiYc2IQ4@intel.com>
 <ZFTiU924796iuQVn@intel.com> <ZFTi96yiKwfxqPFg@intel.com>
 <ZFTjOncKZ1ZksCSH@intel.com> <ZFTmcR48e6eXPIg6@intel.com>
 <ZFTnuvm6DH9Ow+gP@intel.com> <ZFTrZEUKcuyPmlh4@intel.com>
 <ZFTx3esk/Jlcnpjj@intel.com> <ZFT2R33ftOs3xnH5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFT2R33ftOs3xnH5@intel.com>
X-Patchwork-Hint: comment
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

On Fri, May 05, 2023 at 03:27:51PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, May 05, 2023 at 03:09:01PM +0300, Ville Syrj�l� wrote:
> > On Fri, May 05, 2023 at 02:41:24PM +0300, Lisovskiy, Stanislav wrote:
> > > On Fri, May 05, 2023 at 02:25:46PM +0300, Ville Syrj�l� wrote:
> > > > On Fri, May 05, 2023 at 02:20:17PM +0300, Lisovskiy, Stanislav wrote:
> > > > > On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrj�l� wrote:
> > > > > > On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrj�l� wrote:
> > > > > > > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrj�l� wrote:
> > > > > > > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > > > > > > confirmed to help.
> > > > > > > > > > > 
> > > > > > > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > > > > ---
> > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > > 
> > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > >  	int ret;
> > > > > > > > > > >  
> > > > > > > > > > >  	if (old_obj) {
> > > > > > > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > > > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > > > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > > > > > > >  
> > > > > > > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > > > > > > >  		 * can safely continue.
> > > > > > > > > > >  		 */
> > > > > > > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > > > > > > 
> > > > > > > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > > > > > > 
> > > > > > > > > I had pushed this already.
> > > > > > > > 
> > > > > > > > It didn't even finish CI. Please revert.
> > > > > > > 
> > > > > > > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> > > > > > 
> > > > > > Fine. I'll do it.
> > > > > 
> > > > > Problem is that you don't even care to explain, why this fix is wrong, but simply
> > > > > act in authoritarian way, instead of having constructive discussion.
> > > > 
> > > > I've explanined this one about a hundred times. The NULL pointer should
> > > > not happen. Someone needs to actually analyze what is happening instead
> > > > of just adding randomg NULL checks all over the place.
> > > 
> > > I do get this point. However why are we doing those check in other places then?
> > 
> > We do then when they are actually necessary.
> 
> Well but for example when we do check like if(new_bw_state) in intel_bw.c,
> we are also might be having potentially some silent bugs.
> Would you guarantee that if we remove all if(crtc_state) and if(new_bw_state) checks
> in our code, that there won't be NULL pointer dereferences? I bet you don't.

We have the checks where they are needed. The check in
intel_bw_atomic_check() (if that's the one you mean)
looks entirely correct to me.

> 
> But IF you do, then lets remove it everywhere then, why keeping it there, if we are sure! :))
> 
> > 
> > > Moreover I can remember that you told me to do this check even, when were reviewing
> > > my other patches. Because we always have to check result of this function, as it
> > > can be NULL, in case if intel_atomic_get_crtc_state wasn't called before, which
> > > could happen even in normal case, as I understand.
> > 
> > You can't apply that kind of general rule. Whether the crtc should have
> > already been added to the state or not is case dependent. In this case
> > that should never be the case since the plane was already added to the
> > state, and thus its crtc should also have been added.
> 
> Well it is kinda weird, that we don't have clear rules here.
> As I understand this is Bigjoiner, so most likely that was the reason why intel_get_crtc_state
> wasn't called.
> I mean I was anyway planning to continue investigating that Bigjoiner logic here in fact,
> however that fix could help at least CI team to continue testing further.

What's the point of testing code that is known to be broken in
ways no one currently understands. Any results you get are entirely
suspect.

> 
> > 
> > > 
> > > If we want to understand why it happens in particular here, great lets investigate,
> > > however I don't get why we are having same checks everywhere all over the place then
> > > and I can even find your words, that we need to do those checks as well.
> > > 
> > > Also if this doesn't break anything,
> > 
> > You can't know that. You're trading a clearly reproducible
> > bug with a silent bug that can cause who knows what other
> > issues. That one will be impossible to debug.
> 
> Answered above...
> 
> > 
> > > improves our CI results, not violating our coding
> > > practices, because once again worth mentioning we do check new_crtc_state for NULLness
> > > in many places.. then why it can't be the fix?
> > > If we find better solution thats great, but there are plenty of other things as well,
> > > if you haven't noticed.
> > > 
> > > Can we somehow _stop_ these childish kindergarden level review arguing warfare, at least 
> > > for sake of professional efficiency? 
> > 
> > Not sure what that kindergarten level stuff is. I just
> > NAKed the patch.
> 
> Well, I'm glad, we are at least discussing now, why you NAKed it, initially without
> having discussion first.

Like I said, this specific bug has been discussed before, and IIRC 
we have at least one internal bug report about it, not sure if
there's also a gitlab issue. Am I to assume you haven't actually
read those?

> 
> > 
> > > 
> > > For all my next patches I will always add you to CC and _personally_ will ask to review,
> > > even though quite often when I do this - I get nothing.
> > 
> > I can't review everything in detail. But in any case you should
> > at least wait a day or two for review feedback, and you definitely
> > need to wait for CI results as well.
> 
> Sometimes I wait for weeks.

I presume you mean review feedback here rather than CI results?
I would say if a week has passed by and you need more input then
ping people directly (for me pinging on irc is probably the
thing that works best).

If you need to wait for CI results for that long then you need
to have a serious talk with the CI team.

-- 
Ville Syrj�l�
Intel
