Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ADEC876714
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 16:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C84410FA40;
	Fri,  8 Mar 2024 15:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AQBAFhjT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A79C1121C6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 15:11:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709910706; x=1741446706;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=T6uI1eRIte07xmoZQJoQdKhH/t23+sL0fF0xGMRRmwM=;
 b=AQBAFhjTZum7a6n+WH7T7V4+JkLsRTftaAkYyc23h/cTpqK0K4cK0f5b
 cxxRMYJ/SxPS+evt/Bt+ZPyDSnZBGJl7l8H/+yafFk2Fit+6qIXeFxUjY
 zSGo+zSZQttNXQpOZ1HMZ0stHsnsfe+3uBbSbJ8ASwKWNaxsjLcQHjp5O
 witqU+ihxH3VyIwvPIYpmVOH7Gwma594vi0kTrg1+/LkrgiP/vkidGCqg
 wqyVNZM2oicDne+h/PIUrxtbGsBP3WjPK7StB9rsrnzVGrFMXeR9xk9iG
 ANW7cJjI10h/DpbWogI20F6SH/mvm/CyRPjrstI4kiI2jDBq9yvxmbyG7 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="7578792"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="7578792"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 07:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775264"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775264"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 07:11:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 17:11:42 +0200
Date: Fri, 8 Mar 2024 17:11:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 2/2] drm/i915: Implement vblank synchronized MBUS join
 changes
Message-ID: <ZesqrnNp9lH2gTd8@intel.com>
References: <20240228080213.17441-1-stanislav.lisovskiy@intel.com>
 <20240228080213.17441-3-stanislav.lisovskiy@intel.com>
 <ZerjV9jnlUp-GTwP@intel.com> <ZesWB7CpU3b9X28J@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZesWB7CpU3b9X28J@intel.com>
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

On Fri, Mar 08, 2024 at 03:43:35PM +0200, Lisovskiy, Stanislav wrote:
> On Fri, Mar 08, 2024 at 12:07:19PM +0200, Ville Syrjälä wrote:
> > On Wed, Feb 28, 2024 at 10:02:13AM +0200, Stanislav Lisovskiy wrote:
> > > Currently we can't change MBUS join status without doing a modeset,
> > > because we are lacking mechanism to synchronize those with vblank.
> > > However then this means that we can't do a fastset, if there is a need
> > > to change MBUS join state. Fix that by implementing such change.
> > > We already call correspondent check and update at pre_plane dbuf update,
> > > so the only thing left is to have a non-modeset version of that.
> > > If active pipes stay the same then fastset is possible and only MBUS
> > > join state/ddb allocation updates would be committed.
> > > 
> > > v2: Implement additional changes according to BSpec.
> > >     Vblank wait is needed after MBus/Dbuf programming in case if
> > >     no modeset is done and we are switching from single to multiple
> > >     displays, i.e mbus join state switches from "joined" to  "non-joined"
> > >     state. Otherwise vblank wait is not needed according to spec.
> > > 
> > > v3: Split mbus and dbox programming into to pre/post plane update parts,
> > >     how it should be done according to BSpec.
> > > 
> > > v4: - Place "single display to multiple displays scenario" MBUS/DBOX programming
> > >       after DDB reallocation, but before crtc enabling(that is where is has
> > >       to be according to spec).
> > >     - Check if crtc is still active, not only the old state.
> > >     - Do a vblank wait if MBUX DBOX register was modified.
> > >     - And of course do vblank wait only if crtc was active.
> > >     - Do vblank wait only if we are not doing a modeset, if we are doing
> > >       something before *commit_modeset_enables, because all crtcs might be
> > >       disabled at this moment, so we will get WARN if try waiting for vblank
> > >       then.
> > >     - Still getting FIFO underrun so try waiting for vblank in pre_plane update
> > >       as well.
> > >     - Write also pipe that we need to sync with to MBUS_CTL register.
> > > 
> > > v5: - Do vblank wait only for the first pipe, if mbus is joined
> > >     - Check also if new/old_dbuf_state is not NULL, before getting single pipe
> > >       and active pipes.
> > > 
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c |  13 ++-
> > >  drivers/gpu/drm/i915/display/skl_watermark.c | 104 +++++++++++++++----
> > >  drivers/gpu/drm/i915/display/skl_watermark.h |   1 +
> > >  3 files changed, 96 insertions(+), 22 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 00ac65a140298..989818f5d342f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -6906,6 +6906,17 @@ static void skl_commit_modeset_enables(struct intel_atomic_state *state)
> > >  		}
> > >  	}
> > >  
> > > +	/*
> > > +	 * Some MBUS/DBuf update scenarios(mbus join disable) require that
> > > +	 * changes are done _after_ DDB reallocation, but _before_ crtc enabling.
> > > +	 * Typically we are disabling resources in post_plane/crtc_enable hooks,
> > > +	 * however in that case BSpec explicitly states that this should be done
> > > +	 * before we enable additional displays.
> > > +	 * FIXME: Should we still call this also there(post_plane hook)
> > > +	 * for extra-safety? If so, how to make sure, we don't call it twice?
> > > +	 */
> > > +	intel_dbuf_mbus_post_ddb_update(state);
> > > +
> > >  	update_pipes = modeset_pipes;
> > >  
> > >  	/*
> > > @@ -7148,9 +7159,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> > >  	}
> > >  
> > >  	intel_encoders_update_prepare(state);
> > > -
> > >  	intel_dbuf_pre_plane_update(state);
> > > -	intel_mbus_dbox_update(state);
> > >  
> > >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > >  		if (new_crtc_state->do_async_flip)
> > > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > index 606b7ba9db9ce..f0604ede399f7 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > > @@ -2628,13 +2628,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
> > >  		if (ret)
> > >  			return ret;
> > >  
> > > -		if (old_dbuf_state->joined_mbus != new_dbuf_state->joined_mbus) {
> > > -			/* TODO: Implement vblank synchronized MBUS joining changes */
> > > -			ret = intel_modeset_all_pipes_late(state, "MBUS joining change");
> > > -			if (ret)
> > > -				return ret;
> > > -		}
> > > -
> > >  		drm_dbg_kms(&i915->drm,
> > >  			    "Enabled dbuf slices 0x%x -> 0x%x (total dbuf slices 0x%x), mbus joined? %s->%s\n",
> > >  			    old_dbuf_state->enabled_slices,
> > > @@ -3539,8 +3532,9 @@ static void intel_dbuf_mbus_update(struct intel_atomic_state *state)
> > >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > >  	u32 mbus_ctl, dbuf_min_tracker_val;
> > >  	enum dbuf_slice slice;
> > > -	const struct intel_dbuf_state *dbuf_state =
> > > +	const struct intel_dbuf_state *new_dbuf_state =
> > >  		intel_atomic_get_new_dbuf_state(state);
> > > +	enum pipe pipe = ffs(new_dbuf_state->active_pipes) - 1;
> > 
> > That pipe might not even be enabled at this point.
> 
> Which scenario do you mean?
> intel_dbuf_mbus_update is called in two cases:
> 
> 1) When switching from single display to multiple displays, according
>    to spec we should program it before enabling additional displays,
>    but after ddb allocation happens.
> 
> 2) When switching from multiple displays to a single display,
>    we program it after disabling all displays except one, but
>    before ddb reallocation happens.

You seem to call it when the number of active pipes changes.
That doesn't necessarily mean anything for mbus joining.

> Probably you mean the case when its called from intel_dbuf_pre_plane_update,
> because commit_modeset_enables hasn't been yet called?

Yes, the pipe may still be off.

> That would be the case of switching from multiple displays to single one,
> for non-modeset at least shoudln't be a problem, as I understand.

I don't know what the hardware does in this case. Better not
to ask for trouble IMO in case it turns out the hardware won't
like it.

> 
> But where should this be called then from? 
> 
> We always called this function from intel_dbuf_pre_plane_update.

As mentioned later in my mail, I think we just want a pre/post
ddb callsites for this stuff. Though the credit stuff (should we
need to account for those changing) might complicate things further...

-- 
Ville Syrjälä
Intel
