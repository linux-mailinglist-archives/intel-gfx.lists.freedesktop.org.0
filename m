Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B5B775622
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 11:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F018510E405;
	Wed,  9 Aug 2023 09:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83CD10E405
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 09:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691572078; x=1723108078;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=dKlZyxuecFvxxCjS+IorQKRG37tJPvS0dyTEDTgr4g0=;
 b=OUPsncne+XRFKXqMhcq85uKXZf3tajtf3MCo4Jf/UrKlDUgAcZPh1LAR
 nSH3zchVTH2bG7JNVznbphh/AxX0xJOWPdJDvTjJroYL6oGd7IMW/XCIj
 sk0LsUb4aqAMdpPUAVJr7X4pAPFiBcY67H0ZkQTuEsRyVBNpLwjJ1BfSK
 z+/nTWdxkT49qBgrWtsKysyV+M0SP1HauX/buf6C0qMdh4x+vEXjBfMhi
 0fpjOoGo6MqPgsneZg6wnku/OVeEF71IJoXsGINsPIVPkWs3JHGdqXlcJ
 jhYtcoxliJ+6SUZ/TY8Pv/vIXAXRH7uZB8D/N8wqmKsyPoJQ4xPUc6AOF w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="361198923"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="361198923"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 02:07:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821770514"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="821770514"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 02:07:55 -0700
Date: Wed, 9 Aug 2023 12:07:49 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNNXZYeTNdZVYalP@intel.com>
References: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
 <87sf8ssj9r.fsf@intel.com> <ZNNS02EMPmgLZDBc@intel.com>
 <87o7jgsi6y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o7jgsi6y.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mistake in
 intel_modeset_all_pipes condition
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

On Wed, Aug 09, 2023 at 12:01:25PM +0300, Jani Nikula wrote:
> On Wed, 09 Aug 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> > On Wed, Aug 09, 2023 at 11:38:08AM +0300, Jani Nikula wrote:
> >> On Wed, 09 Aug 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> >> > It is supposed to be "!intel_crtc_needs_modeset" - otherwise,
> >> > we are active exactly vice versa for active pipes: skipping if modeset
> >> > is needed and not skipping if not needed.
> >> 
> >> If the crtc *already* needs a full modeset, there's no need to force a
> >> modeset on it.
> >> 
> >> BR,
> >> Jani.
> >
> > We have curently some issue with that. There are multiple places from where
> > intel_modeset_all_pipes is called. One is that when we do detect that mbus join
> > state had changed. All the previous checks indicated that fastset is enough,
> > however once we detect mbus join state had changed in skl_watermarks.c we call
> > this function there as well and I think it might act in a wrong way then.
> >
> > So basically this condition checks whether we need to force a modeset, but not
> > if we need it, so no crtc's are supposed to escape this?
> > Could be then that we just calling that whole function there wrongly.
> 
> Simplified, it's an optimization of:
> 
> 	if (crtc_state->uapi.mode_changed)
>         	continue;
> 
> 	crtc_state->uapi.mode_changed = true;
> 
> With your change, it becomes:
> 
> 	if (!crtc_state->uapi.mode_changed)
>         	continue;
> 
> 	crtc_state->uapi.mode_changed = true;
> 
> and intel_modeset_all_pipes() roughly becomes a no-op.

Okay, basically I was wrong in interpretation of intel_modeset_all_pipes - mine was that it is
supposed to modeset only pipes, which actually _need_ a full modeset, while the real one is supposed
to force a modeset on those which even don't need that.
Regarding mbus join, I think it could be just wrong to call it there rightaway.
Most likely we can live with fastset there, unless ddb allocations haven't changed(we could then just
update the mbus join state)

Stan

> 
> 
> BR,
> Jani.
> 
> >
> > Stan
> >
> >> 
> >> >
> >> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >> > index 763ab569d8f32..4b1d7034078ca 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> > @@ -5439,7 +5439,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
> >> >  			return PTR_ERR(crtc_state);
> >> >  
> >> >  		if (!crtc_state->hw.active ||
> >> > -		    intel_crtc_needs_modeset(crtc_state))
> >> > +		    !intel_crtc_needs_modeset(crtc_state))
> >> >  			continue;
> >> >  
> >> >  		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
> >> 
> >> -- 
> >> Jani Nikula, Intel Open Source Graphics Center
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
