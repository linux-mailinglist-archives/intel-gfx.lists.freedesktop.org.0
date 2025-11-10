Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB9DC482CC
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:03:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3ED5010E2DB;
	Mon, 10 Nov 2025 17:03:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L3PHN4e1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295D410E095;
 Mon, 10 Nov 2025 17:03:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762794204; x=1794330204;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=i5S0NpA6EpZ9CUvt5TfzyCyKuC/u8Jua7rZ7TkdcgBw=;
 b=L3PHN4e1TiZmWEXNDxEBpg0dlYrSzXunBudAjVj5Nh4ZWdo7l0t5VJKc
 pZC3jEyR/63bOT2q18c01bETlUarZ4yDcbaI4NDWsBmLS/U7YrSFey+o3
 xhAscJw3TXdrHx6KnLGNn3mE/gPf5tup3Idd7PPF4BHRbcgLuFyj13D6h
 N/dEtJ90WeQ3LxVtukelDQqa0ODNzXSRclyIciqp1hirOftTaKCY9tFng
 LBJ7ul7LwyHKT1zZ0L7u5V8jNveMHF/39HAPBz3i57ECmC3EkgRR68/J/
 HtnRbCFPkn1YdLmzNt0GtLr4ITR7Cr9jel8MrSA+aPm/wuJaP6I7Xpqsi w==;
X-CSE-ConnectionGUID: oQILwEleQtCbvzFCP0od8w==
X-CSE-MsgGUID: P5teG9RqRe+Ib/2CaQayhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64756788"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="64756788"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:03:24 -0800
X-CSE-ConnectionGUID: xLIDsoFTTiiX1V8TfOjMpQ==
X-CSE-MsgGUID: HL2pQHacTzaj8vxUk3y81w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="192979834"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:03:06 -0800
Date: Mon, 10 Nov 2025 19:03:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH v4 05/11] drm/i915/fbc: Add intel_fbc_id_for_pipe()
Message-ID: <aRIax3ASIE6Zp6rJ@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-5-ab3367f65f15@intel.com>
 <20251110163503.GD4063759@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251110163503.GD4063759@mdroper-desk1.amr.corp.intel.com>
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

On Mon, Nov 10, 2025 at 08:35:03AM -0800, Matt Roper wrote:
> On Fri, Nov 07, 2025 at 09:05:38PM -0300, Gustavo Sousa wrote:
> > We will need to know the FBC id respective to the pipe in other parts of
> > the driver. Let's promote the static function skl_fbc_id_for_pipe() to a
> > public one named intel_fbc_id_for_pipe().
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c           | 5 +++++
> >  drivers/gpu/drm/i915/display/intel_fbc.h           | 2 ++
> >  drivers/gpu/drm/i915/display/skl_universal_plane.c | 9 ++-------
> >  3 files changed, 9 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index a1e3083022ee..435bfd05109c 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -129,6 +129,11 @@ struct intel_fbc {
> >  	const char *no_fbc_reason;
> >  };
> >  
> > +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe)
> > +{
> > +	return pipe - PIPE_A + INTEL_FBC_A;
> 
> The existing usage of skl_fbc_id_for_pipe() was to call this function to
> receive a (possibly bogus) FBC ID, and then follow up with a call to
> skl_plane_has_fbc() which had checks to make sure the returned FBC ID
> actually existed on the platform.  So, for example, calling
> skl_fbc_id_for_pipe(PIPE_B) on something like an ICL would return
> INTEL_FBC_B here, but then the subsequent call to skl_plane_has_fbc()
> would realize that there is no FBC_B on that platform and bail out.
> It's only relatively recently (MTL and beyond I think?) that FBC has
> become usable on pipes other than A.
> 
> Now that we're promoting this function to be more general, should we
> also adjust the logic so that this function either returns a *valid* FBC
> ID or and error?  Otherwise it may not be apparent to people writing new
> code that the result returned here can't be immediately trusted without
> additional checking.

The simples way to find the FBC instance for a pipe is to grab it from
the primary plane. That is already used elsewhere so won't make things
any less generic.

> 
> 
> Matt
> 
> > +}
> > +
> >  /* plane stride in pixels */
> >  static unsigned int intel_fbc_plane_stride(const struct intel_plane_state *plane_state)
> >  {
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
> > index 91424563206a..3d02f3fe5630 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> > @@ -9,6 +9,7 @@
> >  #include <linux/types.h>
> >  
> >  enum fb_op_origin;
> > +enum pipe;
> >  struct intel_atomic_state;
> >  struct intel_crtc;
> >  struct intel_crtc_state;
> > @@ -27,6 +28,7 @@ enum intel_fbc_id {
> >  	I915_MAX_FBCS,
> >  };
> >  
> > +enum intel_fbc_id intel_fbc_id_for_pipe(enum pipe pipe);
> >  int intel_fbc_atomic_check(struct intel_atomic_state *state);
> >  int intel_fbc_min_cdclk(const struct intel_crtc_state *crtc_state);
> >  bool intel_fbc_pre_update(struct intel_atomic_state *state,
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index bc55fafe9ce3..275ee2903219 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -439,11 +439,6 @@ static int skl_plane_max_height(const struct drm_framebuffer *fb,
> >  	return 4096;
> >  }
> >  
> > -static enum intel_fbc_id skl_fbc_id_for_pipe(enum pipe pipe)
> > -{
> > -	return pipe - PIPE_A + INTEL_FBC_A;
> > -}
> > -
> >  static bool skl_plane_has_fbc(struct intel_display *display,
> >  			      enum intel_fbc_id fbc_id, enum plane_id plane_id)
> >  {
> > @@ -896,7 +891,7 @@ static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *dsb,
> >  						  bool enable)
> >  {
> >  	struct intel_display *display = to_intel_display(plane);
> > -	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(plane->pipe);
> > +	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(plane->pipe);
> >  	u32 val;
> >  
> >  	/* Only HDR planes have pixel normalizer and don't matter if no FBC */
> > @@ -2442,7 +2437,7 @@ void icl_link_nv12_planes(struct intel_plane_state *uv_plane_state,
> >  static struct intel_fbc *skl_plane_fbc(struct intel_display *display,
> >  				       enum pipe pipe, enum plane_id plane_id)
> >  {
> > -	enum intel_fbc_id fbc_id = skl_fbc_id_for_pipe(pipe);
> > +	enum intel_fbc_id fbc_id = intel_fbc_id_for_pipe(pipe);
> >  
> >  	if (skl_plane_has_fbc(display, fbc_id, plane_id))
> >  		return display->fbc[fbc_id];
> > 
> > -- 
> > 2.51.0
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Ville Syrjälä
Intel
