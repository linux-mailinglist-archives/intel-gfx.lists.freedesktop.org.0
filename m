Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99F2A91861D
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2024 17:43:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92D1E10E922;
	Wed, 26 Jun 2024 15:43:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nsnLNFFk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB60D10E922;
 Wed, 26 Jun 2024 15:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719416579; x=1750952579;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=AD5npAPpDCB0s50a7MamSL0fIjzrdWoH8051kIBP8PE=;
 b=nsnLNFFkKeP6WrVJgPGgZm/flC49Ij/TRJVJLxiO3DeNi60ulA14L6NC
 Eeuq+5g2hK4Lodmmt8UAYuniqwlKvyHEZCXeam+skwWthvSCAepLuK9kH
 l4a1PKnvjnU5l3R62OgRWKqOowg2lL9Ft9IYZ7KwXEq8lFaO2O9or/prc
 wkl6lGFgo+EqcA+30JTe6ibnL4v7GJqdC6WRlA3ObIzDymYLNQQfbzeQY
 jM26mUTR77uQlhHi8YCAwotq+6R+BOtxvyeRInKFyY7F/z5fbShZ8BUml
 trAp/DkY1IQ2cKDqIveGSCG8BFwi1TQWWuNW6Cofj8Dqt7n0OxX5pKblu w==;
X-CSE-ConnectionGUID: VRnL1FrfQ4262Xex24L6pg==
X-CSE-MsgGUID: pbzEFZkwRS29t2zU85QNlw==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16647296"
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="16647296"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:42:58 -0700
X-CSE-ConnectionGUID: ZCkO4Dd7TaCKhRJ6wcTQMw==
X-CSE-MsgGUID: Cs7oUyK4TwGDYKQyBCEs8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,267,1712646000"; d="scan'208";a="44760371"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2024 08:42:57 -0700
Date: Wed, 26 Jun 2024 18:43:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Arthur J Runyan <arthur.j.runyan@intel.com>,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun
 during retrain
Message-ID: <Znw3DEQVuXkJgDeA@ideak-desk.fi.intel.com>
References: <20240626083624.4042544-1-ankit.k.nautiyal@intel.com>
 <ZnwwBZFFugbV7JPj@intel.com>
 <BYAPR11MB3013A95F661ED52F8D1AA7A0B2D62@BYAPR11MB3013.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <BYAPR11MB3013A95F661ED52F8D1AA7A0B2D62@BYAPR11MB3013.namprd11.prod.outlook.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Atm the link on DP-SST is retrained without a full modeset, which
probably causes an underrun. This was originally done for simplicity,
the underrun not causing further known issues. The plan is to retrain
the link with a full modeset instead on DP-SST as well, similarly to how
this is done on DP-MST already:

https://github.com/ideak/linux/commits/sst-modeset-retrain

On Wed, Jun 26, 2024 at 03:18:32PM +0000, Runyan, Arthur J wrote:
> There is no underrun expected (that I know of) when coming out of
> training on recent product generations.  You should undo this masking
> and debug.
> 
> -----Original Message-----
> From: Vivi, Rodrigo <rodrigo.vivi@intel.com> 
> Sent: Wednesday, June 26, 2024 8:13 AM
> To: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>; Runyan, Arthur J <arthur.j.runyan@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915/dp: Wait more before rearming FIFO underrun during retrain
> 
> On Wed, Jun 26, 2024 at 02:06:24PM +0530, Ankit Nautiyal wrote:
> > During Link re-training reporting underrun is disabled and then 
> > renabled after re-training is completed. For BMG its seen that we get 
> > FIFO underrun just after the retraining is completed and the underrun 
> > reporting is re-enabled.
> > Add one more intel_crtc_wait_for_next_vblank before re-arming the 
> > underruns.
> 
> Cc: Arthur Runyan <arthur.j.runyan@intel.com>
> 
> Art, any new workaround in BMG for this issue?
> 
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> 
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c 
> > b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 3903f6ead6e6..25af51499383 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5325,7 +5325,12 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
> >  		const struct intel_crtc_state *crtc_state =
> >  			to_intel_crtc_state(crtc->base.state);
> >  
> > -		/* Keep underrun reporting disabled until things are stable */
> > +		/*
> > +		 * Keep underrun reporting disabled until things are stable.
> > +		 * Wait for some more time, as we see (at least on BMG) that
> > +		 * underrun gets reported just after the reporting is enabled.
> > +		 */
> > +		intel_crtc_wait_for_next_vblank(crtc);
> >  		intel_crtc_wait_for_next_vblank(crtc);
> >  
> >  		intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, true);
> > --
> > 2.40.1
> > 
