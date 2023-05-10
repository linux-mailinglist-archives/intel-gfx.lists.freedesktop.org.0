Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFD56FE2B4
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 18:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F59A10E282;
	Wed, 10 May 2023 16:43:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B957910E282
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 16:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683737029; x=1715273029;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9rXxLDvpJQL5gFP35qf88XatFSd9jcu30XxnKAf2s9g=;
 b=encn2OWFrxXwjDY2teS7OoQemYvt3GXbUG9EnBlVgDQ+RFW0/KyHnl0S
 P0wIHIT9TlNeKrcLKkqrCLkL+/Xehymhhnv8FSI4Its8730aoTnsWAp7A
 VLCs4x1YiQ1pD9WXuKJOpATUsb1dglzQi1CsJPWdMa3nh55VbIoe2DsK1
 NSlDu/X8WVE0eY0GNv/s0e4Ugsh9lZJMm6KBml0vMFOH4B+d8LPnBD9GX
 1+H6Pwk5saP7/wdTmI1md9LUoLHj9/kIwuTxgtyoGSmZ638el+5eVHjA5
 EvCvrBsEzi9ptKUSWFkIPdKqwBRm8G/DtNLMOzXciV5gy5NzEEFfiVfTh w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349098693"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="349098693"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 09:43:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="676905057"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="676905057"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 09:43:47 -0700
Date: Wed, 10 May 2023 19:43:41 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZFvJvV8R9rjR0uCu@intel.com>
References: <20230509111441.4293-1-stanislav.lisovskiy@intel.com>
 <ZFugjfa1hDBa5Rgs@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZFugjfa1hDBa5Rgs@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: WARN if not all pipes are in
 bigjoiner mask, when copying plane state
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

On Wed, May 10, 2023 at 04:47:57PM +0300, Ville Syrjälä wrote:
> On Tue, May 09, 2023 at 02:14:41PM +0300, Stanislav Lisovskiy wrote:
> > There is a suspicion that we might not have all bigjoiner pipes
> > set in correspodent mask, which leads to that not all crtc are added to the state,
> > however because we are copying for instance crtc reference from master crtc
> > to slave crtc, we might be trying to get it via intel_atomic_get_new_crtc_state,
> > which might the return NULL.
> > This is surely not a fix, but at least the WARN should give us some clue and
> > "red light" when this happens.
> > In future we might need to evaluate the logic of adding crtc to the state,
> > to make sure that we always have all affected crtcs in the state,
> > even though such functions already exist, there seem to be still some
> > glitches in this logic.
> > 
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++++++++
> >  drivers/gpu/drm/i915/display/intel_display.c      |  2 +-
> >  drivers/gpu/drm/i915/display/intel_display.h      |  1 +
> >  3 files changed, 15 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index 4125ee07a271..03cbd755261b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -695,6 +695,19 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
> >  
> >  		new_master_plane_state =
> >  			intel_atomic_get_new_plane_state(state, master_plane);
> > +
> > +		/*
> > +		 * We would be copying plane state from master crtc
> > +		 * however if crtc_state->bigjoiner_pipes doesn't contain both
> > +		 * master and slave, that means that quite likely we didn't call
> > +		 * intel_atomic_get_crtc_state for both, which can cause issues,
> > +		 * like intel_atomic_get_new_crtc_state returning NULL suddently,
> > +		 * when we for example try to use hw.crtc from that plane state.
> > +		 * This WARN might sched some light on out existing issues, also
> > +		 * prevent others from happening in future.
> > +		 */
> > +		drm_WARN_ON(state->base.dev, intel_bigjoiner_num_pipes(new_crtc_state) < 2);
> 
> What you are doing here is basically just
>  if (bigjoiner_pipes)
>   	assert(bigjoiner_pipes != 1);
> which is not going to catch anything.
> 
> We can trivially see that it will never happen given
> how bigjoiner_pipes is initialized.

intel_bigjoiner_num_pipes counts how many pipe are used, 
as I understand in case of bigjoiner we should always have it 
returning 2, right?

For example intel_bigjoiner_adjust_timings uses it currently
same way in our code, also I think there other places:

static void intel_bigjoiner_adjust_timings(const struct intel_crtc_state *crtc_state,
					   struct drm_display_mode *mode)
{
	int num_pipes = intel_bigjoiner_num_pipes(crtc_state);

	if (num_pipes < 2)
		return;

...

I was just willing to check if, we might have this mask
messed up somehow, because we add crtcs to the state based
on this mask. 

However I already checked, problem seems to be
somewhere else. 

Stan

> 
> -- 
> Ville Syrjälä
> Intel
