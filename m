Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3148BB0481
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 14:10:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54AE010E6C8;
	Wed,  1 Oct 2025 12:10:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nY46ORQ2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D54010E6C8;
 Wed,  1 Oct 2025 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759320634; x=1790856634;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rsxkDHthoj/fyLdkNCIaM4OF+9yow7Tfk3sFIaAsFAI=;
 b=nY46ORQ2c5O73Rg+OBMV7Cc36LiBNvaZpxWVCSKtqehfOUlbIPSpvNiu
 LtQbe8nMIvYB3p9NQs7Opt4+GxfIkasCadg1OBB3d8eDFI0mHu3iAmZ9p
 C8oxOu4mq/udp1DAwrP4j5mWw2Nnb4xMhYZQx/qXaToQS/sW0VD9qf+Ls
 RwAu68UAoVItZnvu4Yid3T8ODPOoTA9SQqb5mahtmiuTjx7ZnnO2aboLD
 S/vjFVTESbOsQLprQ4Xvt4mGZ/+g7uOS/FkBdaQu+k4cLhvZgWF8YrCxt
 gqeL/hamVSyQyoUGEReAr3DsU77xRcdxJEh3p6M3eL4RT5nKZv6+tb9Av g==;
X-CSE-ConnectionGUID: dFNn+vfYRJiraW2twSQoOg==
X-CSE-MsgGUID: VPWnD73UStOqsg211NF+dg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="79010251"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="79010251"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:10:33 -0700
X-CSE-ConnectionGUID: CTlUavdHRoe6RgB8PDtrVw==
X-CSE-MsgGUID: 0W4URZzVROCwlgvALYPR8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="178375486"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.91])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 05:10:32 -0700
Date: Wed, 1 Oct 2025 15:10:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
Message-ID: <aN0aNFjModmYJ3Lf@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpHHxXXFOEKDUmP@intel.com>
 <5687e76d-cd14-48b5-b30c-4d5efab8e605@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5687e76d-cd14-48b5-b30c-4d5efab8e605@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 01, 2025 at 04:04:37PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/29/2025 2:15 PM, Ville Syrjälä wrote:
> > On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
> >> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
> >> +				    struct intel_crtc *crtc)
> >> +{
> >> +	struct intel_crtc_state *crtc_state =
> >> +		intel_atomic_get_new_crtc_state(state, crtc);
> >> +	struct drm_display_mode *adjusted_mode =
> >> +		&crtc_state->hw.adjusted_mode;
> >> +	int vblank_delay = 0;
> >> +
> >> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
> >> +
> >> +	adjusted_mode->crtc_vblank_start += vblank_delay;
> > The situation with crtc_vblank_start is already kinda broken,
> > and I think we need to fix that first somehow.
> >
> > Currently crtc_vblank_start is assumed to be the vblank_start
> > for the fixed refresh rate case. That value can be different
> > from the variable refresh rate case whenever
> > always_use_vrr_tg()==false. On icl/tgl it's always different
> > due to the extra vblank delay, and also on adl+ it could be
> > different if we were to use an optimized guardband.
> >
> > I think there are a few options how we might solve this:
> > 1. keep crtc_vblank_start as is, and make sure every user of it
> >     gets adjusted to also deal with the vrr case correctly
> 
> 
> Alright, so we avoid changing the vblank_start.
> It means for platforms with always_use_vrr_tg()==true we directly set 
> the value for guardband. (Currently I was getting it from vmin_vtotal - 
> vblank_start)
> For platforms ADL+ with always always_use_vrr_tg()== false for the fixed 
> refresh rate case, guardband is full vblank_length for variable refresh 
> rate set the guardband directly.

I think we could just use something like this:

something_something_vblank_len()
{
	if (crtc_state->vrr.enable)
		return crtc_state->vrr.guardband;
	else
		return adjuste_mode.crtc_vtotal -
			adjusted_mode.crtc_vblank_start;
}

That should work fine for for both values of always_use_vrr_tg().

> 
> As you have mentioned need to check which all places we need vblank_start.
> 
> For ICL/TGL we do not use optimization for now, right?

Effectively we do, because of intel_vrr_extra_vblank_delay().
The VRR guardband is always one line less than the fixed refresh
rate guardband. And if we run into the max pipeline full limit
then the difference would be even larger.

> The extra_vblank_delay quirk is already handled while filling the 
> registers.
> 
> 
> > 2. enable always_use_vrr_tg() whenever there might be switch
> >     between vrr and fixed refresh rate, which I think would mean
> >     crtc_state->vrr.in_range==true.
> I think I didnt get this part:
> Do you mean later at some point we move to option 2: 
> always_use_vrr_tg()==true for all platforms.(Need to check if we can do 
> it for ICL, TGL).

I'm pretty sure I tested always_use_vrr_tg()==true briefly on
TGL and ADL and it seemed to be working fine.

But I'm a bit concerned becase we originally enabled the VRR timing
generator earlier during the modeset (but not from the very start IIRC),
and that wasn't working all that well on some systems. So later I
changed things to keep running with the legacy TG for the modeset and
only switch to the VRR TG at the very end. It might have been some MTL
system where we had these problems actually...

It's of course possible that we've since fixed whatever was the
underlying cause there. Or maybe the problem really was that we
started to use the VRR timings already during the modeset. With the
current always_use_vrr_tg()==true code we will still use the fixed
refresh rate timings for the modeset, and switch to the VRR timings
only at the very end.

-- 
Ville Syrjälä
Intel
