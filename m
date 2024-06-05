Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F309F8FC8C8
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 12:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060D710E209;
	Wed,  5 Jun 2024 10:18:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dl2cAu8w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87EA510E209;
 Wed,  5 Jun 2024 10:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717582730; x=1749118730;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YdYyP1EAnvM1Ed+3Z07/20Pa4bUkCTwRtMKmupYTDsY=;
 b=Dl2cAu8wTn/himAGeoBexH3YvKMmo+eB5CeLMgYGhYkOlvtuAhM8uIAN
 0dyG2pO/2GUDX5Ms+nD9tbec1e0bpuhUCLJKoMsIi/QIZO3i0TvYxfxlP
 sndzkwaTN3hNdnPahSj95qgHl+T3Uw8ZTQuordkdTMbLguAKfE4GG8MCd
 OEUZOfYo7bp5EIeHV2evRtSP6lmbPp/8B0xlP5gMwp2lSJ3dF+675rETq
 zJmGrKT7k/XcfhUg40vFYvEH+MyWTOcAdgWi9f/QaldICB/3/lUrJwGTv
 XyWPRRGtPxBbXzbX/enpeL6WoML16IwwqKlaT/8d2MvtTN6CAW+XYKlLw w==;
X-CSE-ConnectionGUID: XrfUp9j6Qaigk0EAcUY1ng==
X-CSE-MsgGUID: AD/ymVvGTh6I9ufY+ILU+A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25588220"
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="25588220"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2024 03:18:43 -0700
X-CSE-ConnectionGUID: 0nzpXhHwSVG/w81baru9cg==
X-CSE-MsgGUID: aCjl8H70RAq3T8ZIKYjMGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,216,1712646000"; d="scan'208";a="37555386"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jun 2024 03:18:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jun 2024 13:18:39 +0300
Date: Wed, 5 Jun 2024 13:18:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to
 more platforms
Message-ID: <ZmA7fyYwFfHNmO6M@intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
 <20240529213955.GV4990@mdroper-desk1.amr.corp.intel.com>
 <87cyp3ixek.fsf@intel.com> <87ed9dc4mt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87ed9dc4mt.fsf@intel.com>
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

On Tue, Jun 04, 2024 at 02:46:18PM +0300, Jani Nikula wrote:
> On Thu, 30 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> > On Wed, 29 May 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> >> On Tue, May 28, 2024 at 05:24:56PM +0300, Jani Nikula wrote:
> >>> Initialize fsb frequency for more platforms to be able to use it for GT
> >>> clock and rawclk frequency initialization.
> >>> 
> >>> Note: There's a discrepancy between existing pnv_fsb_freq() and
> >>> i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
> >>> mobile.
> >>
> >> Do you just mean we assume PNV always treats CLKCFG the same way mobile
> >> platforms do?  Because we have both mobile and non-mobile platforms
> >> defined in the driver (pnv_m_info vs pnv_g_info) and that matches
> >> https://ark.intel.com/content/www/us/en/ark/products/codename/32201/products-formerly-pineview.html
> >> that lists both desktop and mobile.
> >
> > Yeah. The problem is, current code in intel_dram.c and intel_cdclk.c
> > interpret the CLKCFG register differently for desktop PNV. At least one
> > of them is wrong. Basically I just picked one, and secretly hoped Ville
> > would tell me. ;)
> 
> Ville, do you have any idea about CLKCFG?

Acording to the datasheet PNV only really supports the 667MHz
option, so technically might not even matter. Maybe there's some
way to force it to use a different clock, but at least one "desktop"
PNV I looked at didn't have any knobs in the BIOS for this.

Anyways, based on past experience PNV always looks like a mobile
part, despite potentially being itself considered the "desktop"
variant. That interpretation also matches the existing
pnv_detect_mem_freq() implementation. So from that POV the
patch looks correct to me.

> 
> BR,
> Jani.
> 
> 
> >
> > BR,
> > Jani.
> >
> >
> >>
> >>
> >> Matt
> >>
> >>> 
> >>> FIXME: What should the default or failure mode be when the value is
> >>> unknown?
> >>> 
> >>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >>> ---
> >>>  drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
> >>>  1 file changed, 40 insertions(+), 14 deletions(-)
> >>> 
> >>> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> >>> index ace9372244a4..74b5b70e91f9 100644
> >>> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> >>> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> >>> @@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_private *i915)
> >>>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
> >>>  }
> >>>  
> >>> -static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
> >>> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
> >>>  {
> >>>  	u32 fsb;
> >>>  
> >>>  	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
> >>>  
> >>> -	switch (fsb) {
> >>> -	case CLKCFG_FSB_400:
> >>> -		return 400000;
> >>> -	case CLKCFG_FSB_533:
> >>> -		return 533333;
> >>> -	case CLKCFG_FSB_667:
> >>> -		return 666667;
> >>> -	case CLKCFG_FSB_800:
> >>> -		return 800000;
> >>> +	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
> >>> +		switch (fsb) {
> >>> +		case CLKCFG_FSB_400:
> >>> +			return 400000;
> >>> +		case CLKCFG_FSB_533:
> >>> +			return 533333;
> >>> +		case CLKCFG_FSB_667:
> >>> +			return 666667;
> >>> +		case CLKCFG_FSB_800:
> >>> +			return 800000;
> >>> +		case CLKCFG_FSB_1067:
> >>> +			return 1066667;
> >>> +		case CLKCFG_FSB_1333:
> >>> +			return 1333333;
> >>> +		default:
> >>> +			MISSING_CASE(fsb);
> >>> +			return 1333333;
> >>> +		}
> >>> +	} else {
> >>> +		switch (fsb) {
> >>> +		case CLKCFG_FSB_400_ALT:
> >>> +			return 400000;
> >>> +		case CLKCFG_FSB_533:
> >>> +			return 533333;
> >>> +		case CLKCFG_FSB_667:
> >>> +			return 666667;
> >>> +		case CLKCFG_FSB_800:
> >>> +			return 800000;
> >>> +		case CLKCFG_FSB_1067_ALT:
> >>> +			return 1066667;
> >>> +		case CLKCFG_FSB_1333_ALT:
> >>> +			return 1333333;
> >>> +		case CLKCFG_FSB_1600_ALT:
> >>> +			return 1600000;
> >>> +		default:
> >>> +			return 533333;
> >>> +		}
> >>>  	}
> >>> -
> >>> -	return 0;
> >>>  }
> >>>  
> >>>  static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
> >>> @@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
> >>>  {
> >>>  	if (GRAPHICS_VER(i915) == 5)
> >>>  		i915->fsb_freq = ilk_fsb_freq(i915);
> >>> -	else if (IS_PINEVIEW(i915))
> >>> -		i915->fsb_freq = pnv_fsb_freq(i915);
> >>> +	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
> >>> +		i915->fsb_freq = i9xx_fsb_freq(i915);
> >>>  
> >>>  	if (i915->fsb_freq)
> >>>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
> >>> -- 
> >>> 2.39.2
> >>> 
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
