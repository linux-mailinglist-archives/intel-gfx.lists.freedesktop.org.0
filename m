Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 082A06F8448
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 15:42:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EE110E5FD;
	Fri,  5 May 2023 13:42:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6C910E5FD
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 13:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683294161; x=1714830161;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9wLIlIkDT/SuuecTwXI9k10crQylTu8O6JumVpFecnQ=;
 b=jmXfhck8f0w8HeVW4r1lXM275ZMq8fNrCXE4vMY1EqlUxLSOqQ7KRf+o
 7/BoOCOKDhLfTSEd0TAZw+Jlev2rLfOESLCsV63ZcptSxePNc6Lpb8Qsn
 T6ZZL9u6nXe0Gzo6ZPkKPv5IpHRP44Z1jS/06TASCNAcyjT6C/bGSX7xt
 z3gRR5tngcQ8Bdum6rdzqvMrTu3WBPCin+nmPjIEZpb5JvmaENBR+SAuE
 WfuJS4GkDP7tVlIf7V9Sby06VTbifLS9cHFeNviIYj3Kb5MvlSFghyZ5Q
 ol+RIa7336T1rQ+fTlEvpX8vqnLIbT8GCzPEyb9BVMhKwIxfSqSAdM6vT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="329565917"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="329565917"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 06:42:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="730347345"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="730347345"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 06:42:39 -0700
Date: Fri, 5 May 2023 16:42:33 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFUHyVLFGfbRxajB@intel.com>
References: <ZFTmcR48e6eXPIg6@intel.com> <ZFTnuvm6DH9Ow+gP@intel.com>
 <ZFTrZEUKcuyPmlh4@intel.com> <ZFTx3esk/Jlcnpjj@intel.com>
 <ZFT2R33ftOs3xnH5@intel.com> <ZFT6sMoymxdJkD9G@intel.com>
 <ZFT8oh057XUt2vaV@intel.com> <ZFUAmNkBiY95hDAM@intel.com>
 <ZFUCzMeHI5UFqfL7@intel.com> <ZFUEkh-42PjplGtN@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFUEkh-42PjplGtN@intel.com>
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

On Fri, May 05, 2023 at 04:28:50PM +0300, Ville Syrjälä wrote:
> On Fri, May 05, 2023 at 04:21:16PM +0300, Lisovskiy, Stanislav wrote:
> > On Fri, May 05, 2023 at 04:11:52PM +0300, Ville Syrjälä wrote:
> > > On Fri, May 05, 2023 at 03:54:58PM +0300, Lisovskiy, Stanislav wrote:
> > > > On Fri, May 05, 2023 at 03:46:40PM +0300, Ville Syrjälä wrote:
> > > > > On Fri, May 05, 2023 at 03:27:51PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > On Fri, May 05, 2023 at 03:09:01PM +0300, Ville Syrjälä wrote:
> > > > > > > On Fri, May 05, 2023 at 02:41:24PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > On Fri, May 05, 2023 at 02:25:46PM +0300, Ville Syrjälä wrote:
> > > > > > > > > On Fri, May 05, 2023 at 02:20:17PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > > > > > > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > > > > > > > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > > > > > > > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > > > > > > > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > > > > > > > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > > > > > > > > > > > confirmed to help.
> > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > > > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > > > > > > > > > ---
> > > > > > > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > > > > > > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > > > > >  	int ret;
> > > > > > > > > > > > > > > >  
> > > > > > > > > > > > > > > >  	if (old_obj) {
> > > > > > > > > > > > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > > > > > > > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > > > > > > > > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > > > > > > > > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > > > > > > > > > > > >  
> > > > > > > > > > > > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > > > > > > > > > > > >  		 * can safely continue.
> > > > > > > > > > > > > > > >  		 */
> > > > > > > > > > > > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > > > > > > > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > > > > > > > > > > > 
> > > > > > > > > > > > > > I had pushed this already.
> > > > > > > > > > > > > 
> > > > > > > > > > > > > It didn't even finish CI. Please revert.
> > > > > > > > > > > > 
> > > > > > > > > > > > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> > > > > > > > > > > 
> > > > > > > > > > > Fine. I'll do it.
> > > > > > > > > > 
> > > > > > > > > > Problem is that you don't even care to explain, why this fix is wrong, but simply
> > > > > > > > > > act in authoritarian way, instead of having constructive discussion.
> > > > > > > > > 
> > > > > > > > > I've explanined this one about a hundred times. The NULL pointer should
> > > > > > > > > not happen. Someone needs to actually analyze what is happening instead
> > > > > > > > > of just adding randomg NULL checks all over the place.
> > > > > > > > 
> > > > > > > > I do get this point. However why are we doing those check in other places then?
> > > > > > > 
> > > > > > > We do then when they are actually necessary.
> > > > > > 
> > > > > > Well but for example when we do check like if(new_bw_state) in intel_bw.c,
> > > > > > we are also might be having potentially some silent bugs.
> > > > > > Would you guarantee that if we remove all if(crtc_state) and if(new_bw_state) checks
> > > > > > in our code, that there won't be NULL pointer dereferences? I bet you don't.
> > > > > 
> > > > > We have the checks where they are needed. The check in
> > > > > intel_bw_atomic_check() (if that's the one you mean)
> > > > > looks entirely correct to me.
> > > > 
> > > > Typo in my prev message, I meant intel_atomic_get_bw_state..but common idea is the same.
> > > 
> > > get_state() vs. get_{new,old}_state() are entirely different
> > > things.
> > > 
> > > You use get_state() when you really want the state to be
> > > included, and either
> > > - know the state isn't included already, or
> > > - you don't know wether the might have alerady been included
> > > 
> > > And one must of course remember that get_state() can
> > > - fail so error handling is needed
> > > - only be used during the check phase, and is illegal during the
> > >   commit phase.
> > 
> > Sure I know this. I even remember we discussed this many times.
> > 
> > > 
> > > The get_{new,old}_state() (or the various for loop variants)
> > > you can use when you either:
> > > - know that the state is included already
> > > - are fine with the state potentially not being included
> > 
> > Don't you see that it is a bit of a contradiction in those 2 above??
> > 
> > You can't be "know that the state is included already" and 
> > "are fine with the state potentially not being included" same time :)
> > 
> > Those 2 above actually mean that you CANNOT be sure, because you 
> > are "fine with the state potentially not being included"! 
> > Otherwise second one would have been redundant.
> 
> No. You are either fine with NULL, XOR you know that
> the state is there already. There is no contradiction.

I do get that. But that way of calling the function is veeery counterintuitive.
Means that you call it and check for NULLness..if you are fine with NULL and
don't check for NULL..if you aren't fine with it and expect the state to be there.

That is really probabilistic design.
I think we must enumerate all the cases where 
1) we expect new_state to be there and
   then we don't need even any checks to be there, because we will then rely on get_state.
2) we don't expect it to be there and then call get_state always.

Because if you are "fine" with new_state being NULL, why even calling it?
I don't get what means "fine" here - there should be a reason why it is not there right?
crtc wasn't added to the state. get_crtc_state wasn't called - it means either we don't even 
need to call get_new_*state at all or there _is_ a problem.

Stan

> 
> > 
> > So basically in theory you must also use that
> > "you don't know wether the might have alerady been included" mentioned
> > for *_get_state here as well.
> 
> No. This code _expects_ the state to be included. The fact
> that it is not is a problem.
> 
> > 
> > > 
> > > That's just atomic 101.
> > 
> > Nope, it is not even that. It is 1st order logic here.
> > 
> > Stan
> > 
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
