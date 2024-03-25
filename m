Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A5E88AF37
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 20:03:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F6A10E82F;
	Mon, 25 Mar 2024 19:03:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="crwqs2Yz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4C3E10E82F
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 19:03:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711393416; x=1742929416;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BZiCyAT5Y5eZfKKlcEUCnqk4wgGSVg1XCmR4QuK2w6o=;
 b=crwqs2Yz+uawxMzhnQ3ZR09MXoLqGNq8xR7i5gGj9EDAI7ZhPzLoUKeK
 fjv3/NREJvrSrSi4DJdrUNETQfxHdLug1/Fm7NXLSMVH6F8M8/05rIvw0
 dmlEZrAAH5mzRnpOLhK1bqoQoyEmTkkW4fHnKyjoXrGN4b0tHgROhyCpB
 uXBp7+IgRSnJ6i6iBSuUJOwBFtCckSZhapikHm0VNRsdksuMZZLzbCJsk
 z75ZEaMVVX/VxQfAsrcIzQhurrA3/MFSNvZoJ40pmfEJJWnE4A2dEIRdk
 n00a45oeHbGOCcHjYtyFqoC+sWY+SgXifJ8G1TBG7TRe1i0InjSFZD1pI g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="6527558"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; 
   d="scan'208";a="6527558"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 12:03:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="15681066"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 12:03:36 -0700
Date: Mon, 25 Mar 2024 21:03:32 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 1/4] drm/i915: Update mbus in intel_dbuf_mbus_update and
 do it properly
Message-ID: <ZgHKhFBkpcuaP22u@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-2-stanislav.lisovskiy@intel.com>
 <ZgGOHR8gOPUQNdMS@intel.com> <ZgGtz/jg1AK2Af6G@intel.com>
 <ZgGwOSEQIrp8auff@intel.com> <ZgHCpHvSXRJT8X0v@intel.com>
 <ZgHFvskbutiI4T03@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgHFvskbutiI4T03@intel.com>
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

On Mon, Mar 25, 2024 at 08:43:10PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 08:29:56PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 25, 2024 at 07:11:21PM +0200, Ville Syrjälä wrote:
> > > On Mon, Mar 25, 2024 at 07:01:03PM +0200, Lisovskiy, Stanislav wrote:
> > > > On Mon, Mar 25, 2024 at 04:45:49PM +0200, Ville Syrjälä wrote:
> > > > > On Mon, Mar 25, 2024 at 01:23:26PM +0200, Stanislav Lisovskiy wrote:
> > > > > > According to BSpec we need to do correspondent MBUS updates before
> > > > > > or after DBUF reallocation, depending on whether we are enabling
> > > > > > or disabling mbus joining(typical scenario is swithing between
> > > > > > multiple and single displays).
> > > > > > 
> > > > > > Also we need to be able to update dbuf min tracker and mdclk ratio
> > > > > > separately if mbus_join state didn't change, so lets add one
> > > > > > degree of freedom and make it possible.
> > > > > > 
> > > > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++-------
> > > > > >  1 file changed, 35 insertions(+), 19 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > index bc341abcab2fe..2b947870527fc 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > > > > @@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
> > > > > >  			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
> > > > > >  }
> > > > > >  
> > > > > > +static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
> > > > > > +{
> > > > > > +	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > > > > +	const struct intel_dbuf_state *old_dbuf_state =
> > > > > > +		intel_atomic_get_old_dbuf_state(state);
> > > > > > +	const struct intel_dbuf_state *new_dbuf_state =
> > > > > > +		intel_atomic_get_new_dbuf_state(state);
> > > > > > +
> > > > > > +	if (DISPLAY_VER(i915) >= 20 &&
> > > > > > +	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
> > > > > > +		/*
> > > > > > +		 * For Xe2LPD and beyond, when there is a change in the ratio
> > > > > > +		 * between MDCLK and CDCLK, updates to related registers need to
> > > > > > +		 * happen at a specific point in the CDCLK change sequence. In
> > > > > > +		 * that case, we defer to the call to
> > > > > > +		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
> > > > > > +		 */
> > > > > > +		return;
> > > > > > +	}
> > > > > 
> > > > > That still needs to be removed or else we'll not update the ratio at
> > > > > all during the mbus_join changes. I don't think I saw any removal
> > > > > in subsequent patches.
> > > > > 
> > > > > > +
> > > > > > +	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
> > > > 
> > > > I don't get what is happening here.
> > > > 
> > > > "That whole condition I think needs to go. We want to update the ratio
> > > > also when changing mbus joining. But that behavioural change doesn't
> > > > really belong in this patch, so this is
> > > > 
> > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>"
> > > > 
> > > > Now it again needs to be changed or changed in other patch(in this series or which one), 
> > > > I don't follow.
> > > > Should it be the patch changing MBUS join value?
> > > 
> > > Yeah, probably should be in the last patch. Perhaps we
> > > could change it before that, but that would need some
> > > extra brain power to make sure it doesn't temporarily
> > > break something. So probably not worth the hassle
> > > to do as a separate patch.
> > > 
> > > > 
> > > > Stan
> > > > 
> > > > > 
> > > > > And it just occurred to me that this thing will in fact be wrong
> > > > > during the pre/post ddb hooks *and* cdclk is getting decreased
> > > > > from the post plane update hook.
> > > > > 
> > > > > I can't immediately think of a super nice way to handle this.
> > 
> > First of all why that
> > condition above prevents update when mbus join changes?
> > It exits when mdclk_cdclk ratio is changed not mbus_join?
> 
> And what happens when mbus_join needs to be changed
> but mdclk_cdclk_ratio remains unchanged?

If it is not changed, that condition won't exit, 
intel_dbuf_mdclk_cdclk_ratio_update will get called.

> 
> > 
> > That review process to me seems rather chaotic.
> > Constantly something new pops up, moreover we did previously agree
> > about that code.
> 
> The review process exists to make sure the code actually
> works correctly. New things come up because of how human
> brains work, not all things are immediately apparent to
> everyone. If that were the case then you should have
> been able to make the code 100% correct from the start,
> and I wouldn't be able to come up with new ways in
> which it can fail. So I guess you're the pot and
> I'm the kettle?

So do you mean that all code that you commit or give r-b
doesn't have issue and/or will never be required to improve?

There has to be some constructive planning or discussion of what
we aim to do at that stage and what is an acceptance criteria.
Even google/chrome guys tested initially those patches and were fine
with changes.
However what I see here is that you are constantly coming up with something
new.
And both you and me know that current code is far from perfect
as well currently, there are still exist unsolved problems.
So what? We are anyway constantly improving, but not trying
to achieve everything in a single "perfect" patch series.
I don't get why this "perfection" is so particularly required from me here.

Morever many things have to be done in a way exactly how
you say, with no freedom or space for another opinion, while
things like whether to use or not additional variable in the code,
quite often can be done in multiple ways and it is often quite
arguable to say the least, what is the best way to do that.

> 
> -- 
> Ville Syrjälä
> Intel
