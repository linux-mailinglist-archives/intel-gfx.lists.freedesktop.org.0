Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4896F84B2
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 16:17:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AB710E60A;
	Fri,  5 May 2023 14:17:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E062E10E60A
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 14:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683296229; x=1714832229;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=97lUDt6sx6uvOIeWt1VIdsaVie4K/YTigh4FmTnRihI=;
 b=X3H1bHGnV2VbJ1TpuWijCjue8NalxIupWs9hFbstYTa5kMsaLL0S9NlJ
 IcEXcaPrSpn+Jz0gMTcsVPpxXPzLACLlQPvOW15u9cvNz3CXsOc4O7Due
 kzwGF441TyfN/ycNKqviDsrQG/FiHfwB+Fsou7O48fnj8i9EGfjhDo/Yy
 kztDLZGp3+dVOq4UC81g+vlqGvEztlq+UoiP2sC1/rhEcpUyVbVXm+bv7
 151RbR3vjcVMIo0fzKSsWj7tZAvUSewgBfZvWQ5DF+j4pguPBT9AhKBsp
 wCWEhu1FNaQ7cMfxJZGBLLyAuv7aKqmf/vTnQBaKVbCRG7iDSA2vG9Cvr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="351354856"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="351354856"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:17:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="841765177"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="841765177"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 05 May 2023 07:17:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 May 2023 17:17:06 +0300
Date: Fri, 5 May 2023 17:17:06 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <ZFUP4s4mJsztgoIB@intel.com>
References: <ZFTx3esk/Jlcnpjj@intel.com> <ZFT2R33ftOs3xnH5@intel.com>
 <ZFT6sMoymxdJkD9G@intel.com> <ZFT8oh057XUt2vaV@intel.com>
 <ZFUAmNkBiY95hDAM@intel.com> <ZFUCzMeHI5UFqfL7@intel.com>
 <ZFUEkh-42PjplGtN@intel.com> <ZFUHyVLFGfbRxajB@intel.com>
 <ZFULYgF1jBv4dTjq@intel.com> <ZFUNQ8bauuRmMnVh@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFUNQ8bauuRmMnVh@intel.com>
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

On Fri, May 05, 2023 at 05:05:55PM +0300, Lisovskiy, Stanislav wrote:
> On Fri, May 05, 2023 at 04:57:54PM +0300, Ville Syrjälä wrote:
> > On Fri, May 05, 2023 at 04:42:33PM +0300, Lisovskiy, Stanislav wrote:
> > > On Fri, May 05, 2023 at 04:28:50PM +0300, Ville Syrjälä wrote:
> > > > On Fri, May 05, 2023 at 04:21:16PM +0300, Lisovskiy, Stanislav wrote:
> > > > > On Fri, May 05, 2023 at 04:11:52PM +0300, Ville Syrjälä wrote:
> > > > > > On Fri, May 05, 2023 at 03:54:58PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > On Fri, May 05, 2023 at 03:46:40PM +0300, Ville Syrjälä wrote:
> > > > > > > > On Fri, May 05, 2023 at 03:27:51PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > On Fri, May 05, 2023 at 03:09:01PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > On Fri, May 05, 2023 at 02:41:24PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > On Fri, May 05, 2023 at 02:25:46PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > On Fri, May 05, 2023 at 02:20:17PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > > > On Fri, May 05, 2023 at 02:06:34PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > > > On Fri, May 05, 2023 at 02:05:27PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > > > > > On Fri, May 05, 2023 at 02:02:43PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > > > > > On Fri, May 05, 2023 at 01:58:03PM +0300, Lisovskiy, Stanislav wrote:
> > > > > > > > > > > > > > > > > On Fri, May 05, 2023 at 01:54:14PM +0300, Ville Syrjälä wrote:
> > > > > > > > > > > > > > > > > > On Fri, May 05, 2023 at 11:22:12AM +0300, Stanislav Lisovskiy wrote:
> > > > > > > > > > > > > > > > > > > intel_atomic_get_new_crtc_state can return NULL, unless crtc state wasn't
> > > > > > > > > > > > > > > > > > > obtained previously with intel_atomic_get_crtc_state, so we must check it
> > > > > > > > > > > > > > > > > > > for NULLness here, just as in many other places, where we can't guarantee
> > > > > > > > > > > > > > > > > > > that intel_atomic_get_crtc_state was called.
> > > > > > > > > > > > > > > > > > > We are currently getting NULL ptr deref because of that, so this fix was
> > > > > > > > > > > > > > > > > > > confirmed to help.
> > > > > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > > > > Fixes: 74a75dc90869 ("drm/i915/display: move plane prepare/cleanup to intel_atomic_plane.c")
> > > > > > > > > > > > > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > > > > > > > > > > > > ---
> > > > > > > > > > > > > > > > > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 4 ++--
> > > > > > > > > > > > > > > > > > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > > > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > > > > index 9f670dcfe76e..4125ee07a271 100644
> > > > > > > > > > > > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > > > > > > > > > > > > > > > > @@ -1029,7 +1029,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > > > > > > > >  	int ret;
> > > > > > > > > > > > > > > > > > >  
> > > > > > > > > > > > > > > > > > >  	if (old_obj) {
> > > > > > > > > > > > > > > > > > > -		const struct intel_crtc_state *crtc_state =
> > > > > > > > > > > > > > > > > > > +		const struct intel_crtc_state *new_crtc_state =
> > > > > > > > > > > > > > > > > > >  			intel_atomic_get_new_crtc_state(state,
> > > > > > > > > > > > > > > > > > >  							to_intel_crtc(old_plane_state->hw.crtc));
> > > > > > > > > > > > > > > > > > >  
> > > > > > > > > > > > > > > > > > > @@ -1044,7 +1044,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
> > > > > > > > > > > > > > > > > > >  		 * This should only fail upon a hung GPU, in which case we
> > > > > > > > > > > > > > > > > > >  		 * can safely continue.
> > > > > > > > > > > > > > > > > > >  		 */
> > > > > > > > > > > > > > > > > > > -		if (intel_crtc_needs_modeset(crtc_state)) {
> > > > > > > > > > > > > > > > > > > +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
> > > > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > > > NAK. We need to fix the bug instead of paparing over it.
> > > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > > I had pushed this already.
> > > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > > It didn't even finish CI. Please revert.
> > > > > > > > > > > > > > > 
> > > > > > > > > > > > > > > Swati did run CI and verified that fix helps. I'm _not_ going to revert.
> > > > > > > > > > > > > > 
> > > > > > > > > > > > > > Fine. I'll do it.
> > > > > > > > > > > > > 
> > > > > > > > > > > > > Problem is that you don't even care to explain, why this fix is wrong, but simply
> > > > > > > > > > > > > act in authoritarian way, instead of having constructive discussion.
> > > > > > > > > > > > 
> > > > > > > > > > > > I've explanined this one about a hundred times. The NULL pointer should
> > > > > > > > > > > > not happen. Someone needs to actually analyze what is happening instead
> > > > > > > > > > > > of just adding randomg NULL checks all over the place.
> > > > > > > > > > > 
> > > > > > > > > > > I do get this point. However why are we doing those check in other places then?
> > > > > > > > > > 
> > > > > > > > > > We do then when they are actually necessary.
> > > > > > > > > 
> > > > > > > > > Well but for example when we do check like if(new_bw_state) in intel_bw.c,
> > > > > > > > > we are also might be having potentially some silent bugs.
> > > > > > > > > Would you guarantee that if we remove all if(crtc_state) and if(new_bw_state) checks
> > > > > > > > > in our code, that there won't be NULL pointer dereferences? I bet you don't.
> > > > > > > > 
> > > > > > > > We have the checks where they are needed. The check in
> > > > > > > > intel_bw_atomic_check() (if that's the one you mean)
> > > > > > > > looks entirely correct to me.
> > > > > > > 
> > > > > > > Typo in my prev message, I meant intel_atomic_get_bw_state..but common idea is the same.
> > > > > > 
> > > > > > get_state() vs. get_{new,old}_state() are entirely different
> > > > > > things.
> > > > > > 
> > > > > > You use get_state() when you really want the state to be
> > > > > > included, and either
> > > > > > - know the state isn't included already, or
> > > > > > - you don't know wether the might have alerady been included
> > > > > > 
> > > > > > And one must of course remember that get_state() can
> > > > > > - fail so error handling is needed
> > > > > > - only be used during the check phase, and is illegal during the
> > > > > >   commit phase.
> > > > > 
> > > > > Sure I know this. I even remember we discussed this many times.
> > > > > 
> > > > > > 
> > > > > > The get_{new,old}_state() (or the various for loop variants)
> > > > > > you can use when you either:
> > > > > > - know that the state is included already
> > > > > > - are fine with the state potentially not being included
> > > > > 
> > > > > Don't you see that it is a bit of a contradiction in those 2 above??
> > > > > 
> > > > > You can't be "know that the state is included already" and 
> > > > > "are fine with the state potentially not being included" same time :)
> > > > > 
> > > > > Those 2 above actually mean that you CANNOT be sure, because you 
> > > > > are "fine with the state potentially not being included"! 
> > > > > Otherwise second one would have been redundant.
> > > > 
> > > > No. You are either fine with NULL, XOR you know that
> > > > the state is there already. There is no contradiction.
> > > 
> > > I do get that. But that way of calling the function is veeery counterintuitive.
> > > Means that you call it and check for NULLness..if you are fine with NULL and
> > > don't check for NULL..if you aren't fine with it and expect the state to be there.
> > > 
> > > That is really probabilistic design.
> > > I think we must enumerate all the cases where 
> > 
> > Not sure what you mean with enumerate. You can't just delcare
> > somewhere globally that in functions X and Y NULL is fine,
> > and in Z it is not. It depends on how X,Y,Z are implemented
> > and it may change any time the implementation is changed.
> > 
> > 
> > > 1) we expect new_state to be there and
> > >    then we don't need even any checks to be there, because we will then rely on get_state.
> > > 2) we don't expect it to be there and then call get_state always.
> > > 
> > > Because if you are "fine" with new_state being NULL, why even calling it?
> > 
> > Because
> > !NULL -> you have some work to do
> >  NULL -> you don't have work to do
> 
> Pretty sure we could find a way not to call it at all in case if no work is needed,
> and call it without any checks, if work is needed.
> 
> You typically get new bw state to recalculate and compare with old state, however
> there has to be some place where you decide whether to call get_bw/crtc_state or not.
> So from there, this could have been propagated to the moment where we decide where
> to call get_new_bw/crtc_state or not. Then no checks would have been needed.
> And NULL would always mean a bug.
> Also that would be a lot more simple, following KISS principle.

You'd need to separately track each case in some boolean/etc.
in the overall atomic state. Doable? Sure. Simpler? Don't see
it. It's the exact same code with the NULL check just replaced
with some other check. And you must additionally remember to
sprinkle those bool assignments around.

-- 
Ville Syrjälä
Intel
