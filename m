Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D9788AEDE
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 19:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A3F10E0C7;
	Mon, 25 Mar 2024 18:49:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHiquVzq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0AD310EA51
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 18:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711392576; x=1742928576;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RPtT/F3wq4AyY3WQICrG65ft4P3fsV3dBZ8d+F77toE=;
 b=PHiquVzq5Mv7Z4xcOoBn2RDbJdMn/XYmrWJjsmikhIeve89B3pZtu7MP
 wpaqrzg1QWFT+rz0d8shAegV9mkvo7PS3ayoW+VdwHMROS+QzmRMlr9bJ
 4o/9aesJdUGmiCK4kB/V+1NAr81IE3hFR+wzCaqSs7+8AShsI6lAZRiui
 BhBXU9uqcdK2JxlFLKsqXbXZX2tuu3JNCmGS5X2gtkGkndrZXaj4QwiQf
 FCqgT3Ad5PzN7FUlzc5uRfDHVLmRPUBtnEnTwmFK/5i4QktQ0lINKt0n2
 3ktku7Qp1i4+biZQvUf2wNCPu/ROwIWGUmkYc+RvTDAH2CZRE2lM0iJns A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="16956652"
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="16956652"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:49:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,154,1708416000"; d="scan'208";a="20364352"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 11:49:34 -0700
Date: Mon, 25 Mar 2024 20:49:26 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915: Use old mbus_join value when increasing
 CDCLK
Message-ID: <ZgHHNnzIFDNTcvVC@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
 <20240325112329.7922-3-stanislav.lisovskiy@intel.com>
 <ZgGKdnlh5Kw5mY_V@intel.com> <ZgGsW3xQCJXGru1v@intel.com>
 <ZgGt_AJK-iD6eSBw@intel.com> <ZgG/lzawZxE4FAcF@intel.com>
 <ZgHA8RHihlozBoAn@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgHA8RHihlozBoAn@intel.com>
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

On Mon, Mar 25, 2024 at 08:22:41PM +0200, Ville Syrjälä wrote:
> On Mon, Mar 25, 2024 at 08:16:55PM +0200, Lisovskiy, Stanislav wrote:
> > On Mon, Mar 25, 2024 at 07:01:48PM +0200, Ville Syrjälä wrote:
> > > On Mon, Mar 25, 2024 at 06:55:21PM +0200, Lisovskiy, Stanislav wrote:
> > > > On Mon, Mar 25, 2024 at 04:30:14PM +0200, Ville Syrjälä wrote:
> > > > > On Mon, Mar 25, 2024 at 01:23:27PM +0200, Stanislav Lisovskiy wrote:
> > > > > > In order to make sure we are not breaking the proper sequence
> > > > > > lets to updates step by step and don't change MBUS join value
> > > > > > during MDCLK/CDCLK programming stage.
> > > > > > MBUS join programming would be taken care by pre/post ddb hooks.
> > > > > > 
> > > > > > v2: - Reworded comment about using old mbus_join value in
> > > > > >       intel_set_cdclk(Ville Syrjälä)
> > > > > > 
> > > > > > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_cdclk.c | 12 +++++++++++-
> > > > > >  1 file changed, 11 insertions(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > > index 31aaa9780dfcf..c7813d433c424 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > > > > > @@ -2611,9 +2611,19 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
> > > > > >  
> > > > > >  	if (pipe == INVALID_PIPE ||
> > > > > >  	    old_cdclk_state->actual.cdclk <= new_cdclk_state->actual.cdclk) {
> > > > > > +		struct intel_cdclk_config cdclk_config;
> > > > > > +
> > > > > >  		drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
> > > > > >  
> > > > > > -		intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
> > > > > > +		/*
> > > > > > +		 * By this hack we want to prevent mbus_join to be changed
> > > > > > +		 * beforehand
> > > > > 
> > > > > That sentence is still confusing.
> > > > 
> > > > Write it yourself then. I'm not going to rephrase it anymore.
> > > 
> > > You didn't rephrase it at all AFAIK.
> > > 
> > > Something like
> > > "MBUS joining will be changed later by
> > >  intel_dbuf_mbus_{pre,post}_ddb_update(), thus
> > >  keep using the old joined_mbus state during cdclk
> > >  programming to match the actual hardware state."
> > 
> > Basically my comment says exactly same stuff but with other
> > words, i.e preventing changing mbus join value beforehand,
> > until intel_dbuf_mbus_post_ddb_update takes care of that.
> 
> To me your comment literally says
> "we massage cdclk_config in order to prevent mbus
>  joining changes from happening here"
> Which is a lie; mbus joining will not change here
> no matter what we do to the cdclk_config.
> 
> What we do is make sure the cdclk_config actually
> matches the real hardware state of mbus joining.

Couple of revisions ago we discussed that here we use
old_cdclk state in order to prevent mbus join state to be
changed here so that we kind of do it in steps.
That is what I exactly meant.
To be honest I had some kind of impression from your words
that eventually it might get changed here as well, otherwise
it seems to be quite too much hassle for just keeping
hw/sw in sync.
Arguing about comments is of course really required here.

> 
> > 
> > > 
> > > > 
> > > > > 
> > > > > > - we will take care of this later in
> > > > > > +		 * intel_dbuf_mbus_post_ddb_update
> > > > > > +		 */
> > > > > > +		cdclk_config = new_cdclk_state->actual;
> > > > > > +		cdclk_config.joined_mbus = old_cdclk_state->actual.joined_mbus;
> > > > > > +
> > > > > > +		intel_set_cdclk(i915, &cdclk_config, pipe);
> > > > > >  	}
> > > > > >  }
> > > > > >  
> > > > > > -- 
> > > > > > 2.37.3
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
