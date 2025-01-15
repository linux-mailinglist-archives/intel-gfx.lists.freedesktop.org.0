Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 41782A12A8D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 19:11:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660E610E7BC;
	Wed, 15 Jan 2025 18:11:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iSL1Lo9+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E94610E7B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 18:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736964702; x=1768500702;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=Ovkd3LEjSU6BZPM1l4PJ/CqVKSWiNzMd3Iou9xBtfuU=;
 b=iSL1Lo9+uN/ZFOZKvtKGSmJ59PWP8FhEwrMHECBZXj8O3o5VUDbZrwfs
 mg0AWfP4Gx8XPASzPfqcSzhFLVRgbL3Z9HtxOZpxeplKNCcpMSVSnjGi6
 5ytpX0FDrqxcC7myKv58E5wM3RFKgEB0p65tnQDcOo4DtM+yh0iHOE6eQ
 dhoFyaNta6X+ef2OuqJZ3XFrOiGUOL49dQY+s+dVDLGMP0ndliPZpyvvw
 rhoTGHG1g5bWbgO3/X9iARTq5MWKvz7LFwI8qZjKIs8ejVIWKobDTVA96
 4yt/medetD0qAMmGSEQj1DoW2EdPZUK2q6ASULma2RGf5l2pNV4nbS89e Q==;
X-CSE-ConnectionGUID: 1KlnLQtjQG+q0b3sw+Ts/A==
X-CSE-MsgGUID: q+d3Glc9SNq6DOdfL/PGgw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="62683594"
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="62683594"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 10:11:42 -0800
X-CSE-ConnectionGUID: 0yjg9D3RRgq2lgZ64QO0Iw==
X-CSE-MsgGUID: ty2vZ9+eSQSRl+Aqn8svrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,207,1732608000"; d="scan'208";a="105398581"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 15 Jan 2025 10:11:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Jan 2025 20:11:39 +0200
Date: Wed, 15 Jan 2025 20:11:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 00/18] drm/i915: DSB+VRR
Message-ID: <Z4f6W_0j498xGHAH@intel.com>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
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

On Tue, Dec 10, 2024 at 11:09:49PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> bunch of DSB and VRR Stuff:
> - enable DSB based commits when VRR is active
> - fix TGL delayed vblank handling with VRR
> - some tweaks to VRR programming for ADL+
> - bunch of state dump improvements/etc.
> 
> Ville Syrjälä (18):
>   drm/i915: Extract intel_crtc_vblank_delay()
>   drm/i915: Check vblank delay validity
>   drm/i915: Fix include order
>   drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
>   drm/i915: Move framestart/etc. state dump to a better spot
>   drm/i915: Include the vblank delay in the state dump
>   drm/i915/vrr: Improve VRR state dump
>   drm/i915: Include the scanline offset in the state dump
>   drm/i915: Extract intel_mode_vblank_delay()
>   drm/i915: Consolidate intel_pre_commit_crtc_state()
>   drm/i915: Extract intel_crtc_active_timings()
>   drm/i915/vrr: Introduce intel_vrr_vblank_delay()
>   drm/i915/vrr: Drop the extra vmin adjustment for ADL+
>   drm/i915/vrr: Fix vmin/vmax/flipline on TGL when using vblank delay
>   drm/i915/vrr: Add extra vblank delay to estimates
>   drm/i915/vrr: Plumb the DSB into intel_vrr_send_push()

Pushed everyyhing up to here to drm-intel-next. Thanks
for the reviews.

I stopped here for now becaue I suppose I need to go and
ponder about that vblank_start vs. fastboot issue that just
got reported...

>   drm/i915/dsb: Add support for triggering VRR push with DSB
>   drm/i915/dsb: Allow DSB to perform commits when VRR is enabled
> 
>  drivers/gpu/drm/i915/display/intel_crtc.c     |   2 +-
>  .../drm/i915/display/intel_crtc_state_dump.c  |  25 ++--
>  drivers/gpu/drm/i915/display/intel_display.c  |  68 +++++++++--
>  drivers/gpu/drm/i915/display/intel_dsb.c      |  54 ++++-----
>  drivers/gpu/drm/i915/display/intel_vblank.c   |  84 +++++++++----
>  drivers/gpu/drm/i915/display/intel_vblank.h   |   6 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 113 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_vrr.h      |   7 +-
>  8 files changed, 268 insertions(+), 91 deletions(-)
> 
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
