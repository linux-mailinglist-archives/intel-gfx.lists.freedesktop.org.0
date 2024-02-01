Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9648457DE
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 13:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A6910EC75;
	Thu,  1 Feb 2024 12:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ASiJq1u8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2298B10EC75
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 12:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706790823; x=1738326823;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0NnRnPbSKQFBw8vU10WAxrYp5kFwdRbnBIV5kebbVnE=;
 b=ASiJq1u8uYanpHvhO5p/L1BbemT+tdA0kDW9RO/ySB3BlGGcCnprLAZG
 UVSiW63CL4Z5QUaFd6cGdX0IPCco46bwcgUz7N0PpuuINM+0gxuGGZdgk
 UFldD4Y9HBY2Ut+PeRks6BdmqRTdB5rTw44EGjKTcTDBucD6iymeEGews
 3mrYG+cETz1HCcdyrODn23NqKERFQzd8v2j9491z4ZJvblmmxUTyM1RrW
 /MfL04AJ6q3oWR2EGrAbAFAN96jXJ/dmGRiYlWLD6pFCnpNBQG3h1cvdR
 LHDTHLDNCTCxhPSi2tQZHW9WGGjri7bODwZsut7yD/U6uRwxRUtDyl2yI Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="402728053"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="402728053"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:33:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="908239023"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="908239023"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 04:33:40 -0800
Date: Thu, 1 Feb 2024 14:33:32 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 3/3] drm/i915: Disable SAGV on bw init, to force QGV
 point recalculation
Message-ID: <ZbuPU7RsvrxsIllK@intel.com>
References: <20240117155718.3439-1-stanislav.lisovskiy@intel.com>
 <20240117155718.3439-4-stanislav.lisovskiy@intel.com>
 <Zaji7CC77kmy1jW4@intel.com> <ZajlDneP8IMmkwrf@intel.com>
 <ZajqS9oBPfTB5M2c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZajqS9oBPfTB5M2c@intel.com>
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

On Thu, Jan 18, 2024 at 11:07:23AM +0200, Ville Syrjälä wrote:
> On Thu, Jan 18, 2024 at 10:50:30AM +0200, Lisovskiy, Stanislav wrote:
> > On Thu, Jan 18, 2024 at 10:35:56AM +0200, Ville Syrjälä wrote:
> > > On Wed, Jan 17, 2024 at 05:57:18PM +0200, Stanislav Lisovskiy wrote:
> > > > Problem is that on some platforms, we do get QGV point mask in wrong
> > > > state on boot. However driver assumes it is set to 0
> > > > (i.e all points allowed), however in reality we might get them all restricted,
> > > > causing issues.
> > > > Lets disable SAGV initially to force proper QGV point state.
> > > > If more QGV points are available, driver will recalculate and update
> > > > those then after next commit.
> > > > 
> > > > v2: - Added trace to see which QGV/PSF GV point is used when SAGV is
> > > >       disabled.
> > > > v3: - Move force disable function to intel_bw_init in order to initialize
> > > >       bw state as well, so that hw/sw are immediately in sync after init.
> > > > v4: - Don't try sending PCode request, seems like it is not possible at
> > > >       intel_bw_init, however assigning bw->state to be restricted as if
> > > >       SAGV is off, still forces driveer to send PCode request anyway on
> > > >       next modeset, so the solution still works.
> > > >       However we still need to address the case, when no display is connected,
> > > >       which anyway requires much more changes.
> > > > 
> > > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_bw.c | 24 ++++++++++++++++++++++++
> > > >  drivers/gpu/drm/i915/display/intel_bw.h |  2 ++
> > > >  2 files changed, 26 insertions(+)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > index 7baa1c13eccd..36a6304207ba 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> > > > @@ -852,6 +852,27 @@ static unsigned int icl_max_bw_qgv_point(struct drm_i915_private *i915,
> > > >  	return max_bw_point;
> > > >  }
> > > >  
> > > > +void icl_force_disable_sagv(struct drm_i915_private *i915, struct intel_bw_state *bw_state)
> > > > +{
> > > > +	unsigned int max_bw_qgv_point = icl_max_bw_qgv_point(i915, 0);
> > > > +	unsigned int qgv_points;
> > > > +	unsigned int psf_points;
> > > > +
> > > > +	qgv_points = BIT(max_bw_qgv_point);
> > > > +
> > > > +	/*
> > > > +	 * We don't restrict PSF GV points, when disabling SAGV
> > > > +	 */
> > > > +	psf_points = 0;
> > > 
> > > Using 0 looks very wrong here. Since we have no idea how much
> > > bandwidth the display is consuming at this time we should
> > > restrict this to the max psf gv point as well.
> > 
> > Didn't we just agree that we are not restricting to max PSF GV
> > point, in the last revision?..
> 
> That was about restricting PSF GV points during normal SAGV disable,
> which is all about the SAGV latency and nothing to do with bandwidth.
> 
> > 
> > "
> > > Yep, but I really suspect we should. BSpec states that we should restrict all the GV points
> > > except highest one, also that some PSF GV points aren't same or usable, depending on BW reqs.
> > > So I would restrict that as well, in case if SAGV is off, just to be on safe side.
> > 
> > Pretty sure it's explicitly noted that PSF doesn't cause issues with
> > latency and hence doesn't need this.
> > 
> > In any case, a change like this has no business being in a patch
> > that's just supposed to refactor code.
> > "
> > 
> > 
> > 
> > > 
> > > > +
> > > > +	bw_state->qgv_points_mask = ~(ICL_PCODE_REQ_QGV_PT(qgv_points) |
> > > > +				      ADLS_PCODE_REQ_PSF_PT(psf_points)) &
> > > > +				      icl_qgv_points_mask(i915);
> > > > +
> > > > +	drm_dbg_kms(&i915->drm, "Forcing SAGV disable: leaving QGV point %d\n",
> > > > +				max_bw_qgv_point);
> > > 
> > > You didn't actually poke the hardware to disable anything.
> > 
> > I know, problem is that PCode request doesn't work at this stage.
> 
> Probably because you passed in garbage in the PSF mask. Please
> check what pcode is reporting back to you.


[   34.910602] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] QGV 0: DCLK=2134 tRP=15 tRDPRE=8 tRAS=35 tRCD=15 tRC=50
[   34.911288] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] QGV 1: DCLK=2934 tRP=21 tRDPRE=12 tRAS=47 tRCD=21 tRC=68
[   34.911996] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] QGV 2: DCLK=3201 tRP=22 tRDPRE=12 tRAS=52 tRCD=22 tRC=74
[   34.912699] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] QGV 3: DCLK=2668 tRP=19 tRDPRE=10 tRAS=43 tRCD=19 tRC=62
[   34.913434] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] PSF GV 0: CLK=32
[   34.914133] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] PSF GV 1: CLK=48
[   34.914914] i915 0000:00:02.0: [drm:icl_get_qgv_points.constprop.0 [i915]] PSF GV 2: CLK=48
[   34.915646] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0 / QGV 0: num_planes=0 deratedbw=5532 peakbw: 17072
[   34.916343] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0 / QGV 1: num_planes=0 deratedbw=6907 peakbw: 23472
[   34.917042] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0 / QGV 2: num_planes=0 deratedbw=7449 peakbw: 25608
[   34.917739] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW0 / QGV 3: num_planes=0 deratedbw=6505 peakbw: 21344
[   34.920646] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1 / QGV 0: num_planes=1 deratedbw=6112 peakbw: 17072
[   34.921342] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1 / QGV 1: num_planes=1 deratedbw=7959 peakbw: 23472
[   34.922058] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1 / QGV 2: num_planes=1 deratedbw=8626 peakbw: 25608
[   34.922767] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW1 / QGV 3: num_planes=1 deratedbw=7384 peakbw: 21344
[   34.925604] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2 / QGV 0: num_planes=0 deratedbw=6451 peakbw: 17072
[   34.926314] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2 / QGV 1: num_planes=0 deratedbw=8615 peakbw: 23472
[   34.927033] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2 / QGV 2: num_planes=0 deratedbw=9365 peakbw: 25608
[   34.927834] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW2 / QGV 3: num_planes=0 deratedbw=7919 peakbw: 21344
[   34.930874] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3 / QGV 0: num_planes=0 deratedbw=6635 peakbw: 17072
[   34.931653] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3 / QGV 1: num_planes=0 deratedbw=8985 peakbw: 23472
[   34.932385] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3 / QGV 2: num_planes=0 deratedbw=9784 peakbw: 25608
[   34.933095] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW3 / QGV 3: num_planes=0 deratedbw=8216 peakbw: 21344
[   34.935904] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4 / QGV 0: num_planes=0 deratedbw=6730 peakbw: 17072
[   34.936635] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4 / QGV 1: num_planes=0 deratedbw=9183 peakbw: 23472
[   34.937327] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4 / QGV 2: num_planes=0 deratedbw=10008 peakbw: 25608
[   34.938038] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW4 / QGV 3: num_planes=0 deratedbw=8374 peakbw: 21344
[   34.940977] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5 / QGV 0: num_planes=0 deratedbw=6779 peakbw: 17072
[   34.941700] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5 / QGV 1: num_planes=0 deratedbw=9284 peakbw: 23472
[   34.942409] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5 / QGV 2: num_planes=0 deratedbw=10124 peakbw: 25608
[   34.943148] i915 0000:00:02.0: [drm:tgl_get_bw_info.isra.0 [i915]] BW5 / QGV 3: num_planes=0 deratedbw=8455 peakbw: 21344
[   35.009240] i915 0000:00:02.0: [drm:intel_bw_init [i915]] Forcing SAGV disable: leaving QGV point 2 PSF GV point 1
[   35.011574] i915 0000:00:02.0: [drm:skl_pcode_request [i915]] PCODE timeout, retrying with preemption disabled
[   35.063185] i915 0000:00:02.0: [drm] *ERROR* Failed to disable qgv points (ffffff92) points: 0x50b
[   35.066268] i915 0000:00:02.0: [drm:intel_bw_init [i915]] Restricting QGV points failed: ffffff92

Got the traces, finally apparently both PSF/QGV masks look correct:

For SAGV we leave only QGV point 2 which provides the highest BW.
For PSF we leave point 1, which seems legitimate, however seems like PCode rejects it(0x02, bits 0..1 mean request rejected).

I have still a suspicion that PCode might be not ready at that stage when intel_bw_init is called.
Wondering why..

Stan


> 
> > Need to figure out why, but apparently it seems a bit too early.
> > PCode just rejects that request.
> > 
> > However that still works, because if more QGV points are available, driver
> > will send a new request anyway on next modeset.
> 
> And what happens if the first commit needs to disable SAGV?
> 
> > 
> > Stan
> > 
> > > 
> > > > +}
> > > > +
> > > >  static int mtl_find_qgv_points(struct drm_i915_private *i915,
> > > >  			       unsigned int data_rate,
> > > >  			       unsigned int num_active_planes,
> > > > @@ -1351,5 +1372,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
> > > >  	intel_atomic_global_obj_init(dev_priv, &dev_priv->display.bw.obj,
> > > >  				     &state->base, &intel_bw_funcs);
> > > >  
> > > > +	if (DISPLAY_VER(dev_priv) < 14)
> > > 
> > > Should be some kind of range check to avoid putting garbage in there on
> > > old platforms that don't support QGV.
> > > 
> > > > +		icl_force_disable_sagv(dev_priv, state);
> > > > +
> > > >  	return 0;
> > > >  }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > index 59cb4fc5db76..243192fd4cae 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_bw.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> > > > @@ -74,5 +74,7 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
> > > >  			    bool *need_cdclk_calc);
> > > >  int intel_bw_min_cdclk(struct drm_i915_private *i915,
> > > >  		       const struct intel_bw_state *bw_state);
> > > > +void icl_force_disable_sagv(struct drm_i915_private *dev_priv,
> > > > +			    struct intel_bw_state *bw_state);
> > > 
> > > Why?
> > > 
> > > >  
> > > >  #endif /* __INTEL_BW_H__ */
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
