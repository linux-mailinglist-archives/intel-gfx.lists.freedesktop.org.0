Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C83D5A27018
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:18:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D86810E5F3;
	Tue,  4 Feb 2025 11:18:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ApWV5CgD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B448B10E09A;
 Tue,  4 Feb 2025 11:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738667676; x=1770203676;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qoH6UCB4p3/uIwGpMKAkeCONASI/glkTQ5cXVb4il0o=;
 b=ApWV5CgDtt8QvLO040FU3q1myqhLuHkDreHfIUZSw7+oOLFwXZpaOQK/
 NjQ3ELpj5+rkv5r4rRDX/D//gIXj3yEgvpKuFAFCfWsbKO7P2wMX2aYJr
 9elww7XEEU8jrpDXOYUajazkMmGh0EfPFxavI0GTZnvEVDBLedU3DSvWs
 zSiSImNqQ+sJXa0jhbuUiN/Ege8foBCfdhA4Wx91T7+1I8K/M2qUBzyfB
 sB4yzNg+5aPl2J9EWorTAbIJP5A4ZbjdyVGFTN4Ow/bratKlXOhimj7Xd
 yLKn1gUelrTNTdwAXv0IpfrQO5ULujbU2Zyra5jCI7s/W/XRDBxIXKdmv Q==;
X-CSE-ConnectionGUID: au7/UcQ/T6qtUGvaXs1c0w==
X-CSE-MsgGUID: 0e2jLtJwSi6suoZFUM0GSQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="38891477"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="38891477"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:14:36 -0800
X-CSE-ConnectionGUID: +N/ZpQY7RMG8wLwmayM7BQ==
X-CSE-MsgGUID: cCUww8HJTnCaFI/2Vy2aRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115561019"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.139])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:14:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 00/11] drm/i915: intel_display conversions and some
 debug improvements
In-Reply-To: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250124163040.8886-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Feb 2025 13:14:30 +0200
Message-ID: <87v7tq55d5.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 24 Jan 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Convert a bunch of stuff over to struct intel_display, and
> finish off with a few debug print improvements.

Good stuff. Series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> Ville Syrj=C3=A4l=C3=A4 (11):
>   drm/i915: Decouple i915_gem_dumb_create() from the display a bit
>   drm/i915: Decouple intel_fb_bo.h interfaces from driver specific types
>   drm/i915: Convert intel_crtc.c to struct intel_display
>   drm/i915: Convert intel_fb.c to struct intel_display
>   drm/i915: Convert intel_display_power_{get,put}*() to intel_display
>   drm/i915: Convert i9xx_plane.c to struct intel_display
>   drm/i915: Finish intel_sprite.c struct intel_display conversion
>   drm/i915: Convert intel_cursor.c to struct intel_display
>   drm/i915: Convert skl_univeral_plane.c to struct intel_display
>   drm/i915: Use DRM_RECT_FMT & co. for plane debugs
>   drm/i915: Pimp plane debugs
>
>  drivers/gpu/drm/i915/display/g4x_dp.c         |   9 +-
>  drivers/gpu/drm/i915/display/g4x_hdmi.c       |   8 +-
>  drivers/gpu/drm/i915/display/i9xx_plane.c     | 262 +++++------
>  drivers/gpu/drm/i915/display/i9xx_plane.h     |   6 +-
>  drivers/gpu/drm/i915/display/icl_dsi.c        |  11 +-
>  .../gpu/drm/i915/display/intel_atomic_plane.c |  24 +-
>  drivers/gpu/drm/i915/display/intel_audio.c    |   9 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
>  drivers/gpu/drm/i915/display/intel_crt.c      |  16 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c     |  65 +--
>  drivers/gpu/drm/i915/display/intel_crtc.h     |   7 +-
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 174 ++++----
>  drivers/gpu/drm/i915/display/intel_cursor.h   |   4 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  13 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  63 +--
>  drivers/gpu/drm/i915/display/intel_display.c  |  74 +--
>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>  .../drm/i915/display/intel_display_debugfs.c  |   5 +-
>  .../drm/i915/display/intel_display_driver.c   |   2 +-
>  .../gpu/drm/i915/display/intel_display_irq.c  |  10 +-
>  .../drm/i915/display/intel_display_power.c    |  85 ++--
>  .../drm/i915/display/intel_display_power.h    |  54 +--
>  drivers/gpu/drm/i915/display/intel_dmc.c      |   7 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   5 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  55 ++-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 249 ++++++-----
>  drivers/gpu/drm/i915/display/intel_fb.h       |  11 +-
>  drivers/gpu/drm/i915/display/intel_fb_bo.c    |  18 +-
>  drivers/gpu/drm/i915/display/intel_fb_bo.h    |   8 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c    |  10 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  10 +-
>  drivers/gpu/drm/i915/display/intel_hotplug.c  |   5 +-
>  drivers/gpu/drm/i915/display/intel_lvds.c     |   5 +-
>  .../drm/i915/display/intel_modeset_setup.c    |   6 +-
>  drivers/gpu/drm/i915/display/intel_pipe_crc.c |   5 +-
>  drivers/gpu/drm/i915/display/intel_pps.c      |  18 +-
>  drivers/gpu/drm/i915/display/intel_sdvo.c     |   3 +-
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 110 ++---
>  drivers/gpu/drm/i915/display/intel_sprite.h   |   6 +-
>  drivers/gpu/drm/i915/display/intel_tc.c       |  78 ++--
>   drivers/gpu/drm/i915/display/intel_vdsc.c     |   5 +-
>  drivers/gpu/drm/i915/display/intel_vga.c      |   5 +-
>  drivers/gpu/drm/i915/display/skl_scaler.c     |  13 +-
>  .../drm/i915/display/skl_universal_plane.c    | 422 +++++++++---------
>  .../drm/i915/display/skl_universal_plane.h    |   8 +-
>  drivers/gpu/drm/i915/display/skl_watermark.c  |   5 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c        |   4 +-
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |   2 +-
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c         |   6 +-
>  drivers/gpu/drm/xe/display/intel_fb_bo.c      |   7 +-
>  51 files changed, 1019 insertions(+), 985 deletions(-)

--=20
Jani Nikula, Intel
