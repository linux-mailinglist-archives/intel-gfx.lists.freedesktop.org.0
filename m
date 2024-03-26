Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE2388CC84
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 19:58:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E17E10EC82;
	Tue, 26 Mar 2024 18:58:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fjVCG5CX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1987A10EC82
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 18:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711479507; x=1743015507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7yTIyeefHSqOcoGR39yGz9hKy8q2+fqytN0kNiOL+pM=;
 b=fjVCG5CXmRI/4BdY43JD6SALYjN9B9h1TGkuEHame58FLFMFqrqcVP14
 eBLOEVU8mMY4BRl4k8tO9bGi9Ko7hNuTgvD8jmfBA4HUwlQVqQewcWO7f
 DrdtN4cMb8LPNB3JiuK6AdbtT6lMe0H+d8Y2+e49g4dX/fo+cP5HMDKYi
 U1YBEvAZpqpG437+gd6Ki89cUQ5jwwjZYhGvzi8Bopl8fjr7xxdCRpdfN
 urXVeXcTCSRVhJZ/s/WVIqbVCuj8GL3Tz2eHJMYw03eFr9/FYVeqj2W5n
 N/rnY5xT5qqevsQh7Rvt1dx4ugDgUIYfJXR34wSATCYU26ijkBidAohD1 g==;
X-CSE-ConnectionGUID: YWT8uOAOTc+ivb0V9g5afw==
X-CSE-MsgGUID: rJ0+3cOURRqz/uSNLaPyBQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="10350816"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="10350816"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 11:58:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11025"; a="827785384"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="827785384"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 11:58:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 20:58:22 +0200
Date: Tue, 26 Mar 2024 20:58:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/4] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <ZgMazuoNklgFjOqq@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-2-stanislav.lisovskiy@intel.com>
 <ZgGOHR8gOPUQNdMS@intel.com> <ZgGtz/jg1AK2Af6G@intel.com>
 <ZgGwOSEQIrp8auff@intel.com> <ZgHCpHvSXRJT8X0v@intel.com>
 <ZgHFvskbutiI4T03@intel.com> <ZgHKhFBkpcuaP22u@intel.com>
 <ZgK7vynnK68NhgKx@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgK7vynnK68NhgKx@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 26, 2024 at 02:12:47PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 09:03:32PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 25, 2024 at 08:43:10PM +0200, Ville Syrjälä wrote:
> > > On Mon, Mar 25, 2024 at 08:29:56PM +0200, Lisovskiy, Stanislav wrote:
> > > > On Mon, Mar 25, 2024 at 07:11:21PM +0200, Ville Syrjälä wrote:
> > > > > On Mon, Mar 25, 2024 at 07:01:03PM +0200, Lisovskiy, Stanislav wrote:
> > > > > > On Mon, Mar 25, 2024 at 04:45:49PM +0200, Ville Syrjälä wrote:
> > > > > > > On Mon, Mar 25, 2024 at 01:23:26PM +0200, Stanislav Lisovskiy wrote:
> > > > > > > > According to BSpec we need to do correspondent MBUS updates before
> > > > > > > > or after DBUF reallocation, depending on whether we are enabling
> > > > > > > > or disabling mbus joining(typical scenario is swithing between
> > > > > > > > multiple and single displays).
> > > > > > > > 
> > > > > > > > Also we need to be able to update dbuf min tracker and mdclk ratio
> > > > > > > > separately if mbus_join state didn't change, so lets add one
> > > > > > > > degree of freedom and make it possible.
> > > > > > > > 
> > > > > > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++-------
> > > > > > > >  1 file changed, 35 insertions(+), 19 deletions(-)
> > > > > > > > 
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > > > index bc341abcab2fe..2b947870527fc 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > > > @@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
> > > > > > > >  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> > > > > > > >  }
> > > > > > > >  
> > > > > > > > +static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> > > > > > > > +{
> > > > > > > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > > > > > > +	const struct intel_dbuf_state *old_dbuf_state =
> > > > > > > > +		intel_atomic_get_old_dbuf_state(state);
> > > > > > > > +	const struct intel_dbuf_state *new_dbuf_state =
> > > > > > > > +		intel_atomic_get_new_dbuf_state(state);
> > > > > > > > +
> > > > > > > > +	if (DISPLAY_VER(i915) >= 20 &&
> > > > > > > > +	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > > > > > > > +		/*
> > > > > > > > +		 * For Xe2LPD and beyond, when there is a change in the ratio
> > > > > > > > +		 * between MDCLK and CDCLK, updates to related registers need to
> > > > > > > > +		 * happen at a specific point in the CDCLK change sequence. In
> > > > > > > > +		 * that case, we defer to the call to
> > > > > > > > +		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > > > > > > > +		 */
> > > > > > > > +		return;
> > > > > > > > +	}
> > > > > > > 
> > > > > > > That still needs to be removed or else we'll not update the ratio at
> > > > > > > all during the mbus_join changes. I don't think I saw any removal
> > > > > > > in subsequent patches.
> > > > > > > 
> > > > > > > > +
> > > > > > > > +	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> > > > > > 
> > > > > > I don't get what is happening here.
> > > > > > 
> > > > > > "That whole condition I think needs to go. We want to update the ratio
> > > > > > also when changing mbus joining. But that behavioural change doesn't
> > > > > > really belong in this patch, so this is
> > > > > > 
> > > > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>"
> > > > > > 
> > > > > > Now it again needs to be changed or changed in other patch(in this series or which one), 
> > > > > > I don't follow.
> > > > > > Should it be the patch changing MBUS join value?
> > > > > 
> > > > > Yeah, probably should be in the last patch. Perhaps we
> > > > > could change it before that, but that would need some
> > > > > extra brain power to make sure it doesn't temporarily
> > > > > break something. So probably not worth the hassle
> > > > > to do as a separate patch.
> > > > > 
> > > > > > 
> > > > > > Stan
> > > > > > 
> > > > > > > 
> > > > > > > And it just occurred to me that this thing will in fact be wrong
> > > > > > > during the pre/post ddb hooks *and* cdclk is getting decreased
> > > > > > > from the post plane update hook.
> > > > > > > 
> > > > > > > I can't immediately think of a super nice way to handle this.
> > > > 
> > > > First of all why that
> > > > condition above prevents update when mbus join changes?
> > > > It exits when mdclk_cdclk ratio is changed not mbus_join?
> > > 
> > > And what happens when mbus_join needs to be changed
> > > but mdclk_cdclk_ratio remains unchanged?
> > 
> > If it is not changed, that condition won't exit, 
> > intel_dbuf_mdclk_cdclk_ratio_update will get called.
> 
> Hmm, right. I read it the wrong way around I guess. But it's
> still wrong. It will be called only when we change cdclk
> (and perhaps not always even in that case) not when we 
> change mbus_join. We need to call it in both cases because
> they happen at different times in the sequence and we
> want to keep this stuff in sync with the actual hardware
> state (so same deal as in the the pre plane cdclk hook).
> 
> > > 
> > > > 
> > > > That review process to me seems rather chaotic.
> > > > Constantly something new pops up, moreover we did previously agree
> > > > about that code.
> > > 
> > > The review process exists to make sure the code actually
> > > works correctly. New things come up because of how human
> > > brains work, not all things are immediately apparent to
> > > everyone. If that were the case then you should have
> > > been able to make the code 100% correct from the start,
> > > and I wouldn't be able to come up with new ways in
> > > which it can fail. So I guess you're the pot and
> > > I'm the kettle?
> > 
> > So do you mean that all code that you commit or give r-b
> > doesn't have issue and/or will never be required to improve?
> 
> Rb == says what it does on the tin and has no known
> problems that can cause real problems. So far this
> does not meet that criteria.
> 
> It's fine to have eg. known gaps in functionality
> if we plan on dealing with those later. This is,
> for example, what we did for the mbus joining
> originally. But every patch must work correctly
> regardless of those gaps. Of course we sometimes fail
> at that and bugs do slip in, but introducing issues
> on purpose is not acceptable.
> 
> So we need to make sure the ratio gets correctly programmed
> in all the steps of the sequence I outlined before. Let me
> list it here again:
> 1. disable pipes
> 2. increase cdclk
>  2.1 reprogram cdclk
>  2.2 update dbuf tracker value
> 3. enable mbus joining if necessary
>  3.1 update mbus_ctl
>  3.2 update dbuf tracker value
> 4. reallocate dbuf for planes on active pipes
> 5. disable mbus joining if necessary
>  5.1 update dbuf tracker value
>  5.2 update mbus_ctl
> 6. enable pipes
> 7. decrease cdclk, mbus joining is unchanged
>   7.1 update dbuf tracker value
>   7.2 reprogram cdclk

Ugh. I had a look at our cdclk pre/post hooks and those actually
look very scary. It seems we never updated the logic there to
correctly handle crawl/squash. So it will now happily do the
cdclk update always from intel_set_cdclk_pre_plane_update()
even when decreasing the cdclk frequency. I'll go cook up
a patch...

-- 
Ville Syrjälä
Intel
