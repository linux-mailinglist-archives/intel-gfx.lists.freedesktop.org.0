Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1073B07D0D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 20:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DF410E3A8;
	Wed, 16 Jul 2025 18:40:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hThoi0Bm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C088510E3A8;
 Wed, 16 Jul 2025 18:40:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752691245; x=1784227245;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lWnbiAf4ytPP2bVU4uh4Lj6VhtdMwzO6Ouf9JgwG01M=;
 b=hThoi0BmUw+hOwh+oZk3XdoGADLwiLGrM9hPVbHP75BQiewnXM7BNQT0
 e3C2Xt+annnUs42yFpEB31HV498eh497BIIflCiI6UVzGiCz9qqVktcek
 +LbiCW6EtWX5a5mwJReVqPl833h2UxV+t8BncSXOTUrLC5xyveHXy/iGc
 a2SSMMYLu9ZDWgSaE+epGhVHRUSNRx6ZIUVRwAREZsLbtsp8AxcolszMo
 7Nl5lt2MPpwEFLBGVkKKm6NrH8eZcBxfuf16TDw3gllOXxek3bvvjSWNc
 3k8lcdITzgsVWhlPaEMJ1/v2RLRWGS2iR29Ul1SUZIr69h9PrOWXOTqvO g==;
X-CSE-ConnectionGUID: HSdZs0okSt6wyE3EK/9zNg==
X-CSE-MsgGUID: 7B1eo3g5TVSwcbOL3GUqQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="58760740"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="58760740"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 11:40:44 -0700
X-CSE-ConnectionGUID: 5GCTy5J9QWCTb81s1XmyPA==
X-CSE-MsgGUID: ts3VSS5/QoyIzOHJMpsHHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="163210921"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 16 Jul 2025 11:40:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Jul 2025 21:40:40 +0300
Date: Wed, 16 Jul 2025 21:40:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 stable@vger.kernel.org
Subject: Re: [PATCH 1/7] drm/i915/dp: Fix 2.7 Gbps DP_LINK_BW value on g4x
Message-ID: <aHfyKJ_NJL-i8B94@intel.com>
References: <20250710201718.25310-1-ville.syrjala@linux.intel.com>
 <20250710201718.25310-2-ville.syrjala@linux.intel.com>
 <aHenHJLCSVjYDUKp@ideak-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aHenHJLCSVjYDUKp@ideak-desk>
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

On Wed, Jul 16, 2025 at 04:20:28PM +0300, Imre Deak wrote:
> On Thu, Jul 10, 2025 at 11:17:12PM +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > On g4x we currently use the 96MHz non-SSC refclk, which can't actually
> > generate an exact 2.7 Gbps link rate. In practice we end up with 2.688
> > Gbps which seems to be close enough to actually work, but link training
> > is currently failing due to miscalculating the DP_LINK_BW value (we
> > calcualte it directly from port_clock which reflects the actual PLL
> > outpout frequency).
> > 
> > Ideas how to fix this:
> > - nudge port_clock back up to 270000 during PLL computation/readout
> > - track port_clock and the nominal link rate separately so they might
> >   differ a bit
> > - switch to the 100MHz refclk, but that one should be SSC so perhaps
> >   not something we want
> > 
> > While we ponder about a better solution apply some band aid to the
> > immediate issue of miscalculated DP_LINK_BW value. With this
> > I can again use 2.7 Gbps link rate on g4x.
> > 
> > Cc: stable@vger.kernel.org
> > Fixes: 665a7b04092c ("drm/i915: Feed the DPLL output freq back into crtc_state")
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Reviewed-by: Imre Deak <imre.deak@intel.com>
> 
> IIUC, port_clock for g4x is ref * m / n / p, where for DP the fixed
> ref=96000 and m/n/p values from g4x_dpll are used.
> 
> Ftr, m = 135, n = 6, p = 8 would give port_clock = 270000, but there's
> no intel_limit for DP, so can't know if these params are within range.

The P divider can only be some multiple of 5.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index f48912f308df..7976fec88606 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -1606,6 +1606,12 @@ int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
> >  void intel_dp_compute_rate(struct intel_dp *intel_dp, int port_clock,
> >  			   u8 *link_bw, u8 *rate_select)
> >  {
> > +	struct intel_display *display = to_intel_display(intel_dp);
> > +
> > +	/* FIXME g4x can't generate an exact 2.7GHz with the 96MHz non-SSC refclk */
> > +	if (display->platform.g4x && port_clock == 268800)
> > +		port_clock = 270000;
> > +
> >  	/* eDP 1.4 rate select method. */
> >  	if (intel_dp->use_rate_select) {
> >  		*link_bw = 0;
> > -- 
> > 2.49.0
> > 

-- 
Ville Syrjälä
Intel
