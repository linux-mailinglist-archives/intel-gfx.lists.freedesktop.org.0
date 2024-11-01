Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD019B9248
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 14:46:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC9010E2DF;
	Fri,  1 Nov 2024 13:46:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nn4+s+tD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E55A410E2DF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Nov 2024 13:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730468769; x=1762004769;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=19LhWhQ6fXeAj7d0YbxwECp3DSJv+88tWxoD3uda18Q=;
 b=nn4+s+tDuIgkBza8Wped0G66VMzt5Fy5bE1om2FLHMIFabVm7eU5RPyd
 a5zJY6Vg4tpomePz+eNE1jfQjs14iDEkFsNeidlHp5zM/7CAjILBJzqoi
 qDfgvoxPW7O/dhycwEPiSSqH9EYZi+7c/KodmtkYQ+vZYDErNjuEHyT5Z
 Zw3YB3KbfsVkfT/PJg5s6TtIDAA00HwLwYJRlVF835qDc60nChO54alBa
 in0p6yfTMhpKUvW6o5i2M4wAN/MTLnbtJ+Dsz1BtmLseTxRujXwXH0gfW
 mhGRIk01Cyz737O4Zzo++cHZGSC+H1bj1QZfTfcx7GTiRCwKDgYZLM63K A==;
X-CSE-ConnectionGUID: JNvlK9c8T+SiaSY6mZqVOg==
X-CSE-MsgGUID: krMTcVEVTb+OGU1AlBUCrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40778903"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40778903"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2024 06:46:08 -0700
X-CSE-ConnectionGUID: zF41a7WoSJiCWwJwewvtkQ==
X-CSE-MsgGUID: M5Xsbn29RRGfwU2oacHl7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,249,1725346800"; d="scan'208";a="83092997"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 01 Nov 2024 06:46:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Nov 2024 15:46:05 +0200
Date: Fri, 1 Nov 2024 15:46:05 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915: Extract pipe_mbus_dbox_ctl_update()
Message-ID: <ZyTbnVxcHnwvwi0K@intel.com>
References: <20241031155646.15165-1-ville.syrjala@linux.intel.com>
 <20241031155646.15165-4-ville.syrjala@linux.intel.com>
 <87cyjfjlhs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87cyjfjlhs.fsf@intel.com>
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

On Fri, Nov 01, 2024 at 12:29:03PM +0200, Jani Nikula wrote:
> On Thu, 31 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > We'll be wanting reprogram the PIPE_MBUS_DBOX_CTL registers
> 
> wanting *to* reprogram
> 
> I would've wanted to see conversion to struct intel_display here too, or
> at least a mention we're keeping it this way for backports, or
> something. A patch on top changing everything in one go is fine too.

Yeah, IIRC I did it with intel_display originally but changed it
in case we need to backport this. I can toss in a note stating
as much.

I think I tried to do a full conversion of skl_watermark.c at some
point but at the time there were still so many depedencies left that
it looked rather pointless. I can have another look at it now that
we've progressed a bit further.

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Ta.

> 
> > during an upcoming MBUS sanitation stage. Extract the reprogramming
> > loop into a helper that doesn't depend on the full atomic state
> > so that it can be reused.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 7a7caaf7e87d..8a31508f94bb 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -3319,11 +3319,20 @@ static u32 pipe_mbus_dbox_ctl(const struct intel_crtc *crtc,
> >  	return val;
> >  }
> >  
> > +static void pipe_mbus_dbox_ctl_update(struct drm_i915_private *i915,
> > +				      const struct intel_dbuf_state *dbuf_state)
> > +{
> > +	struct intel_crtc *crtc;
> > +
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, dbuf_state->active_pipes)
> > +		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
> > +			       pipe_mbus_dbox_ctl(crtc, dbuf_state));
> > +}
> > +
> >  static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> >  {
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> >  	const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state;
> > -	const struct intel_crtc *crtc;
> >  
> >  	if (DISPLAY_VER(i915) < 11)
> >  		return;
> > @@ -3335,9 +3344,7 @@ static void intel_mbus_dbox_update(struct intel_atomic_state *state)
> >  	     new_dbuf_state->active_pipes == old_dbuf_state->active_pipes))
> >  		return;
> >  
> > -	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, new_dbuf_state->active_pipes)
> > -		intel_de_write(i915, PIPE_MBUS_DBOX_CTL(crtc->pipe),
> > -			       pipe_mbus_dbox_ctl(crtc, new_dbuf_state));
> > +	pipe_mbus_dbox_ctl_update(i915, new_dbuf_state);
> >  }
> >  
> >  int intel_dbuf_state_set_mdclk_cdclk_ratio(struct intel_atomic_state *state,
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
