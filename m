Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C84C4623C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 12:10:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 881BE10E354;
	Mon, 10 Nov 2025 11:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HjSy1X+A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E270F10E2BD;
 Mon, 10 Nov 2025 11:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762773009; x=1794309009;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4zlRzV7V69JFSqJi2M3v8Ha/Tg/XYafg2Mkb6x7qWUc=;
 b=HjSy1X+AJo8tKDeMLlSb7voRFb30WIxOWiVk1Bqc+0Wnhim0SmKmxidU
 CdOb9fEwuIf/1/KiA0/s91tO1mUgYkkwMjf4TT5BcLRkM8bHUUizTDMRU
 TruMzekMmf6wEhBSlW1+q9CV5cQrdEYxuBQcFQkDA0mJHJ3g0kY4/cH6X
 19r9/9qKZeZ9YlUIldF+T0GoeoXSWve1goQHYvourXK3C9QVTOcwML8jr
 BeYnQq44NL/f5HsCR5U6VmayNzj+GnH4fuKMOhY7od+YTCgA7WTdAtkK9
 rlg/Oh8/YpdVcDfS1zVrpxaY7Gq7WW9TPLJKTVhUWbNXM97ZAGB0bj1fR Q==;
X-CSE-ConnectionGUID: u4/Dl3DOR3an6Bdbx2BKAw==
X-CSE-MsgGUID: XYZeUHz7RVeYk7PuEpYr3w==
X-IronPort-AV: E=McAfee;i="6800,10657,11608"; a="64520906"
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="64520906"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:10:09 -0800
X-CSE-ConnectionGUID: ZcqBtdCsShSbtu9K6tLjqA==
X-CSE-MsgGUID: N4S0CTq+Qvql8SkTLYAAWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; d="scan'208";a="188897337"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 03:10:06 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 0/9] drm/i915: Further drm_get_format_info() stuff
In-Reply-To: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251107181126.5743-1-ville.syrjala@linux.intel.com>
Date: Mon, 10 Nov 2025 13:10:02 +0200
Message-ID: <0fd8d5f5b4dbadcaf99b9395d248acbca35e927f@intel.com>
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

On Fri, 07 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Finish eliminating the expensive extra format info lookups.
>
> And since I ended up strafing the cursor code in the end I included
> a few additional claenups there.

Some typo nitpicks in commit messages, otherwise series is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Ville Syrj=C3=A4l=C3=A4 (9):
>   drm/i915: Introduce intel_dumb_fb_max_stride()
>   drm/i915: Pass drm_format_info into plane->max_stride()
>   drm/i915: Populate fb->format accurately in BIOS FB readout
>   drm/i915: Nuke intel_plane_config.tiling
>   drm/i915/fb: Init 'ret' in each error branch in
>     intel_framebuffer_init()
>   drm/i915/wm: Use drm_get_format_info() in SKL+ cursor DDB allocation
>   drm/i915: Use mode_config->cursor_width for cursor DDB allocation
>   drm/i915/cursor: Extract intel_cursor_mode_config_init()
>   drm/i915/cursor: Initialize 845 vs 865 cursor size separately
>
>  drivers/gpu/drm/i915/display/i9xx_plane.c     | 32 ++++++++-----------
>  drivers/gpu/drm/i915/display/i9xx_plane.h     |  5 +--
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 28 +++++++++++++---
>  drivers/gpu/drm/i915/display/intel_cursor.h   |  2 ++
>  drivers/gpu/drm/i915/display/intel_display.c  | 24 ++++++++++----
>  drivers/gpu/drm/i915/display/intel_display.h  |  8 +++--
>  .../drm/i915/display/intel_display_driver.c   | 13 ++------
>  .../drm/i915/display/intel_display_types.h    |  5 ++-
>  drivers/gpu/drm/i915/display/intel_fb.c       | 23 +++++++------
>  .../drm/i915/display/intel_plane_initial.c    | 11 ++++---
>  drivers/gpu/drm/i915/display/intel_sprite.c   | 10 +++---
>  .../drm/i915/display/skl_universal_plane.c    | 22 ++++++-------
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 15 ++++++---
>  drivers/gpu/drm/i915/gem/i915_gem_create.c    |  4 +--
>  14 files changed, 118 insertions(+), 84 deletions(-)

--=20
Jani Nikula, Intel
