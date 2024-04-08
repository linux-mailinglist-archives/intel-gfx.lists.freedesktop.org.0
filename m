Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F398589BF55
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 14:46:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1632112552;
	Mon,  8 Apr 2024 12:46:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3N4IpdW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5DA1112553
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Apr 2024 12:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712580380; x=1744116380;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6raYpUWIG9JNGW2bbyuod5HTHwaKQhwjhwZyMgcXwnQ=;
 b=Y3N4IpdWgF60OMQVhwzzZQBncMWgFVAnCQ91DmYkTX7RdsX18zmwx7W0
 73K7sAKKDrnPMVSD07CV4f4Vd3IIkSOmam+P0jGOvGznhm3g0HISziQEw
 +535Ix5CqKAnRgGSyCug7tFWDqkU1ASRqPB+Y+JVUSuSloTPA/roMA2nd
 YBZtLoEGPRV+ESY3eNCDcX25M+us3H1dhg42elIqtMLHEs8W05SNwPjYM
 U6QZ9/nxSnp3aTErQbjszD4zaxCg/gyDaOPtcqfxvfqyNFSZukIuac3VD
 AjKN/sardcZSlyByDPfFYfVdN3Mb9QoVc8Vw4zNNby4FU8YU+QCpcyN+O A==;
X-CSE-ConnectionGUID: eYDsfh5jSNGY9B4MUZvwDQ==
X-CSE-MsgGUID: ChvtWGH3TC6rWyxLOvofwQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="33251697"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="33251697"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2024 05:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="827792240"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="827792240"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Apr 2024 05:46:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 08 Apr 2024 15:46:00 +0300
Date: Mon, 8 Apr 2024 15:46:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for
 bigjoiner
Message-ID: <ZhPnCGiglWA8x2_I@intel.com>
References: <20240404213441.17637-1-ville.syrjala@linux.intel.com>
 <20240404213441.17637-2-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307EF4E4263D22864B078D2BA032@IA0PR11MB7307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <IA0PR11MB7307EF4E4263D22864B078D2BA032@IA0PR11MB7307.namprd11.prod.outlook.com>
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

On Fri, Apr 05, 2024 at 12:56:52PM +0000, Murthy, Arun R wrote:
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Friday, April 5, 2024 3:04 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH v2 01/17] drm/i915: Update pipes in reverse order for bigjoiner
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > With bigjoiner the master crtc is the one that will send out the uapi event/etc.
> > We want that to happen after all the slaves are done, so let's try to do the
> > commits in reverse order so that the master comes last.
> > 
> > Even worse, the modeset helper will simply complete the commit on the slave
> > pipe immediately as it consider the crtc to be inactive (it can't see our
> > crtc_state->hw.active/etc.).
> > 
> > With regular sync updates this generally doesn't matter all that much as the
> > slave pipe should typically finish its work during the same frame as the master
> > pipe. However in case the slave pipe's commit slips into the next frame we end
> > up in a bit of trouble. This is most visible with either async flips (currently
> > disabled with bigjoiner exactly for this reason), and DSB gamma updates. With
> > DSB the problem happens because the DSB itself will wait until the next start
> > vblank before starting to execute. So if the master pipe already finished its
> > commit and the DSB on the slave pipe is still waiting for the next vblank we will
> > assume the DSB as gotten stuck and terminate it.
> > 
> > Reversing the commit order should ameliarate this for the most part as the
> > master pipe is guaranteed to start its commit after the slave pipe started. The
> > one thing that can still screw us over is the fact that we aren't necessarily going
> > to commit the pipes in the reverse order as the actual order is dictated by the
> > DDB overlap avoidance.
> > But that can only happen while other pipes are being enabled/disabled, and so
> > in the normal steady state we should be safe.
> > 
> > The full fix will involve making the commit machinery aware of the slave pipes
> > and not finish their commits prematurely. But that will involve a bit more work
> > than this. And this commit order reversal will still be beneficial to avoid
> > userspace getting an -EBUSY from the following page flip if the second pipe's
> > commit does stretch into the next frame.
> Can there be a possibility of seeing a flicker/corruption in that case?
> Also should this be added a TODO in the driver so that it will not be missed out?

I have something typed up for this already. Just waiting for better
testing coverage to actually exercise it properly.

> 
> Above comment is for clarification and if a TODO is required, can be taken up while merging the patch. Remaining logic looks good to me.
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks. I've pushed patches 1-6.

> 
> Thanks and Regards,
> Arun R Murthy
> --------------------
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++++++---
> > drivers/gpu/drm/i915/display/intel_display.h |  8 ++++++++
> >  2 files changed, 19 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index a481c9218138..0086a7422e86 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6956,8 +6956,12 @@ static void skl_commit_modeset_enables(struct
> > intel_atomic_state *state)
> >  	intel_dbuf_mbus_pre_ddb_update(state);
> > 
> >  	while (update_pipes) {
> > -		for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > -						    new_crtc_state, i) {
> > +		/*
> > +		 * Commit in reverse order to make bigjoiner master
> > +		 * send the uapi events after slaves are done.
> > +		 */
> > +		for_each_oldnew_intel_crtc_in_state_reverse(state, crtc,
> > old_crtc_state,
> > +							    new_crtc_state, i) {
> >  			enum pipe pipe = crtc->pipe;
> > 
> >  			if ((update_pipes & BIT(pipe)) == 0) @@ -7036,7
> > +7040,11 @@ static void skl_commit_modeset_enables(struct
> > intel_atomic_state *state)
> >  		intel_pre_update_crtc(state, crtc);
> >  	}
> > 
> > -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > +	/*
> > +	 * Commit in reverse order to make bigjoiner master
> > +	 * send the uapi events after slaves are done.
> > +	 */
> > +	for_each_new_intel_crtc_in_state_reverse(state, crtc, new_crtc_state,
> > +i) {
> >  		enum pipe pipe = crtc->pipe;
> > 
> >  		if ((update_pipes & BIT(pipe)) == 0)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h
> > b/drivers/gpu/drm/i915/display/intel_display.h
> > index 986ec77490de..423074d6947a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
> > @@ -344,6 +344,14 @@ enum phy_fia {
> >  	     (__i)++) \
> >  		for_each_if(crtc)
> > 
> > +#define for_each_new_intel_crtc_in_state_reverse(__state, crtc,
> > new_crtc_state, __i) \
> > +	for ((__i) = (__state)->base.dev->mode_config.num_crtc - 1; \
> > +	     (__i) >= 0  && \
> > +	     ((crtc) = to_intel_crtc((__state)->base.crtcs[__i].ptr), \
> > +	      (new_crtc_state) = to_intel_crtc_state((__state)-
> > >base.crtcs[__i].new_state), 1); \
> > +	     (__i)--) \
> > +		for_each_if(crtc)
> > +
> >  #define for_each_oldnew_intel_plane_in_state(__state, plane, old_plane_state,
> > new_plane_state, __i) \
> >  	for ((__i) = 0; \
> >  	     (__i) < (__state)->base.dev->mode_config.num_total_plane && \
> > --
> > 2.43.2
> 

-- 
Ville Syrjälä
Intel
