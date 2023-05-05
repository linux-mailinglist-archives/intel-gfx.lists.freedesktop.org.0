Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB526F838D
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 15:12:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 617D710E5EF;
	Fri,  5 May 2023 13:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFAD10E5EF
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 13:11:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683292316; x=1714828316;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gDTfzwCM9S24WrBrCtsVJD1TxOJRwHlNmXZq3jeeU/M=;
 b=RCu1UhGjvW1sfH6mhAnbvZjMbDVUBK9JYh9lq8MvuSGJxdTIOG14BbVf
 Mu+lL2LRwcCRZPuTuSkRSct3z3Z7H37UAsDZeH34lM4XB0NeTZyKfK7lU
 8MZUHvRC+Wapg5FJTFHix2mEV9dgLSd94XhquIl7DAWc5GiEJTgTYFHC5
 wIr3Am2LcNQv2Jd6/pFfY2Of9pKH11zSdtAa/Gcz/KOowU805ITeBPxlZ
 eth4CsZ/I9sQLLg5y62mGoaGgGUcFjuG/GN0haxdAGtFJ/orqXKtz2N0R
 8d6Rn93fuJKIhUDBpN1J6383uUufqUC6ic5HvfxeoBecP3qmVcR5BwtQH w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="328827298"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="328827298"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 06:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="700427105"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="700427105"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 05 May 2023 06:11:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 16:11:52 +0300
Date: Fri, 5 May 2023 16:11:52 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZFUAmNkBiY95hDAM@intel.com>
References: <ZFTiU924796iuQVn@intel.com> <ZFTi96yiKwfxqPFg@intel.com>
 <ZFTjOncKZ1ZksCSH@intel.com> <ZFTmcR48e6eXPIg6@intel.com>
 <ZFTnuvm6DH9Ow+gP@intel.com> <ZFTrZEUKcuyPmlh4@intel.com>
 <ZFTx3esk/Jlcnpjj@intel.com> <ZFT2R33ftOs3xnH5@intel.com>
 <ZFT6sMoymxdJkD9G@intel.com> <ZFT8oh057XUt2vaV@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFT8oh057XUt2vaV@intel.com>
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

On Fri, May 05, 2023 at 03:54:58PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, May 05, 2023 at 03:46:40PM +0300, Ville Syrjälä wrote:
> > On Fri, May 05, 2023 at 03:27:51PM +0300, Lisovskiy, Stanislav wrote:
> > > On Fri, May 05, 2023 at 03:09:01PM +0300, Ville Syrjälä wrote:
> > > > On Fri, May 05, 2023 at 02:41:24PM +0300, Lisovskiy, Stanislav wrote:
> > > > > On Fri, May 05, 2023 at 02:25:46PM +0300, Ville Syrjälä wrote:
> > > > > > On Fri, May 05, 2023 at 02:20:17PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrjälä wrote:
> > > > > > > > On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > > > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > > > > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > > > > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > > > > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > > > > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > > > > > > > > confirmed to help.
> > > > > > > > > > > > > 
> > > > > > > > > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > > > > > > ---
> > > > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > > > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > > > > 
> > > > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > >  	int ret;
> > > > > > > > > > > > >  
> > > > > > > > > > > > >  	if (old_obj) {
> > > > > > > > > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > > > > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > > > > > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > > > > > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > > > > > > > > >  
> > > > > > > > > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > > > > > > > > >  		 * can safely continue.
> > > > > > > > > > > > >  		 */
> > > > > > > > > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > > > > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > > > > > > > > 
> > > > > > > > > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > > > > > > > > 
> > > > > > > > > > > I had pushed this already.
> > > > > > > > > > 
> > > > > > > > > > It didn't even finish CI. Please revert.
> > > > > > > > > 
> > > > > > > > > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> > > > > > > > 
> > > > > > > > Fine. I'll do it.
> > > > > > > 
> > > > > > > Problem is that you don't even care to explain, why this fix is wrong, but simply
> > > > > > > act in authoritarian way, instead of having constructive discussion.
> > > > > > 
> > > > > > I've explanined this one about a hundred times. The NULL pointer should
> > > > > > not happen. Someone needs to actually analyze what is happening instead
> > > > > > of just adding randomg NULL checks all over the place.
> > > > > 
> > > > > I do get this point. However why are we doing those check in other places then?
> > > > 
> > > > We do then when they are actually necessary.
> > > 
> > > Well but for example when we do check like if(new_bw_state) in intel_bw.c,
> > > we are also might be having potentially some silent bugs.
> > > Would you guarantee that if we remove all if(crtc_state) and if(new_bw_state) checks
> > > in our code, that there won't be NULL pointer dereferences? I bet you don't.
> > 
> > We have the checks where they are needed. The check in
> > intel_bw_atomic_check() (if that's the one you mean)
> > looks entirely correct to me.
> 
> Typo in my prev message, I meant intel_atomic_get_bw_state..but common idea is the same.

get_state() vs. get_{new,old}_state() are entirely different
things.

You use get_state() when you really want the state to be
included, and either
- know the state isn't included already, or
- you don't know wether the might have alerady been included

And one must of course remember that get_state() can
- fail so error handling is needed
- only be used during the check phase, and is illegal during the
  commit phase.

The get_{new,old}_state() (or the various for loop variants)
you can use when you either:
- know that the state is included already
- are fine with the state potentially not being included

That's just atomic 101.

-- 
Ville Syrjälä
Intel
