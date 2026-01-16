Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69FA3D30869
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 12:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F291510E862;
	Fri, 16 Jan 2026 11:39:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mJ/3fUKy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130EB10E862;
 Fri, 16 Jan 2026 11:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768563600; x=1800099600;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lf8yPHo+2XxI7kjmm9rP3r71ZkhhAPKmC6o0bVs4PdA=;
 b=mJ/3fUKy1HDliGVzqV+eu1YorPoQE9wAil785kk8iUUm53rTKQcIouiw
 9mCkv3kkdU3f6tko2fpEy5C09Gb0hkzTSiOgrGn2FCe49JVFOZzFx97Ey
 Hnp/gdPEKDZn/V8eAekC34M9397J2AZ8iwNzsTpR3zBHzZFPGKZ4S8Vnz
 CfVLbPngOT2XJysZp4pzHv//Cf3zpfliU/O6MbJmyFYfNnuS3yXGG3Mwr
 wudoSi97oeE3H6AQCCXu9ct/PS9woIA/t3IpO0JnawM4TCqogYN1eymOP
 jP6r0XDJGuQKfk31viF7OBmTt/13Ws4tzSUgIJMq8jV1t5nvg8HBKOYFV w==;
X-CSE-ConnectionGUID: +z4bMbq/RQKctt3n5MQeCg==
X-CSE-MsgGUID: SI5Q7wO6Q46MO8ndKzwZAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="92540303"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="92540303"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 03:39:59 -0800
X-CSE-ConnectionGUID: BmnevpQhQca2B/C16KO67w==
X-CSE-MsgGUID: gECwUeb9RieS1ViMUH//oQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="205276886"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 03:39:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Juasheem Sultan <jdsultan@google.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Sean Paul <seanpaul@google.com>,
 Manasi Navare <navaremanasi@google.com>, Drew Davenport
 <ddavenport@google.com>, Juasheem Sultan <jdsultan@google.com>
Subject: Re: [RFC PATCH 00/10] Enable seamless boot (fastboot) for PTL
In-Reply-To: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260115-upstream-prep-v1-0-001d5b38fc11@google.com>
Date: Fri, 16 Jan 2026 13:39:52 +0200
Message-ID: <2015894f4f7351c6a2ac77f32348877ed110d95c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 15 Jan 2026, Juasheem Sultan <jdsultan@google.com> wrote:
> This RFC patch series proposes an implementation of seamless boot (fastboot)
> support for Panther Lake (PTL) platforms within the Xe driver, mirroring
> functionality already present in i915. The primary focus is on devices using
> MSO (Multi-Segment Operation) panels and EDP panels.
>
> The goal of this series is to achieve a flicker-free transition from the
> bootloader (BIOS/UEFI) to the kernel driver by strictly adhering to the
> hardware state established by the firmware.

The goal is something we obviously share.

> Key areas addressed in this revision:
> 1.  **Boot State Preservation**: Where necessary, make amendments to initial
> 	hardware readouts and ensure that the framebuffer state as established
> 	by firmware is correctly passed into the driver as a memory object.
> 2.  **Atomic State Handoff**: Adjusting the atomic commit path to prevent
>     unnecessary pipe disables or power well toggles when inheriting a valid
>     boot state.
> 3.  **Passive Probing**: Introducing a "passive" initialization path that
>     builds the DRM software state without triggering hardware resets.
>
> This is an initial implementation subject to discussion. 

- There's just way, *way* too much code duplication. I can't even make
  myself read through the entire thing because it's all familiar
  existing stuff, just subtly different. I can't stress this
  enough. There's so much duplication that I won't take on telling you
  what needs to be done. It's on you to figure out how to deduplicate.

- There's way too much magic values and hacking for a specific
  configuration.

- There's way too much code being added in xe_display.c when the goal is
  to unify and deduplicate everything under i915/display. All of this
  needs to happen in the i915/display directory, shared between i915 and
  xe drivers.

- There's way too many random unrelated unexplained things going on
  here. Things like unused struct members being added, commented out
  code being added, stuff being first added and then removed later in
  the series.

- There are way too many things being done in individual patches. The
  "key changes include" lists in commit messages are a pretty big
  clue. Each patch should do one thing, and one thing only. At times it
  feels like the changes in single patches aren't even related to each
  other.

All in all, I get the distinct feeling a lot of this is LLM generated,
which is something you'd do well to disclose if it's indeed the
case. Please see [1] for current discussion on the matter.

Again, the goal is something we share, but I honestly fear taking this
series as the starting point for that will be counter-productive.

I would love to see small, focused patch series tackling existing issues
one by one, instead of a giant hack attempting to fix everything at
once.


BR,
Jani.


[1] https://lore.kernel.org/r/20260113000612.1133427-1-dave.hansen@linux.intel.com


>
> Change-Id: I5cd3bdd4f6f687f007e91f6d0afbfeecfc06762b
> Signed-off-by: Juasheem Sultan <jdsultan@google.com>
> ---
> Juasheem Sultan (10):
>       drm/i915/display: Implement passive initialization for splash screen preservation
>       drm/xe/display: Implement seamless boot state reconstruction for PTL
>       drm/i915/display: Implement aggressive boot state preservation for PTL
>       drm/xe/display: Fix initial plane reconstruction and stolen memory handling
>       drm/i915/display: Enable early PLL readout and robustify modeset setup
>       drm/i915/display: Fix vblank timestamps and update logic for fastboot
>       drm/i915/display: Implement seamless fastboot for MSO panels on PTL
>       drm/i915/display: Robustify fastboot and power init for seamless boot
>       drm/i915/display: Fix initial plane config readout and MSO stride for PTL
>       drm/i915/display: Refactor initial plane readout and harden boot handover
>
>  drivers/gpu/drm/i915/display/intel_bios.c          |  40 +-
>  drivers/gpu/drm/i915/display/intel_cdclk.c         |  36 -
>  drivers/gpu/drm/i915/display/intel_cdclk.h         |  41 +-
>  drivers/gpu/drm/i915/display/intel_connector.c     |   9 +
>  drivers/gpu/drm/i915/display/intel_connector.h     |   1 +
>  drivers/gpu/drm/i915/display/intel_crtc.c          |  62 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c           | 205 +++++-
>  drivers/gpu/drm/i915/display/intel_ddi.h           |   2 +
>  drivers/gpu/drm/i915/display/intel_display.c       | 814 +++++++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_display.h       |   6 +
>  drivers/gpu/drm/i915/display/intel_display_core.h  |   2 +
>  .../gpu/drm/i915/display/intel_display_driver.c    | 329 ++++++++-
>  drivers/gpu/drm/i915/display/intel_display_power.c |  16 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |   8 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 372 ++++++++--
>  drivers/gpu/drm/i915/display/intel_dp.h            |   5 +
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  16 +-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h      |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c          |  39 +
>  drivers/gpu/drm/i915/display/intel_hdmi.h          |   2 +
>  drivers/gpu/drm/i915/display/intel_modeset_setup.c |   7 +
>  .../gpu/drm/i915/display/intel_modeset_verify.c    |  14 +-
>  drivers/gpu/drm/i915/display/intel_panel.c         |  41 +-
>  drivers/gpu/drm/i915/display/intel_panel.h         |   3 +
>  drivers/gpu/drm/i915/display/intel_plane_initial.c |  53 ++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c |  32 +-
>  drivers/gpu/drm/xe/display/xe_display.c            | 309 +++++++-
>  drivers/gpu/drm/xe/display/xe_display.h            |   2 +
>  drivers/gpu/drm/xe/display/xe_plane_initial.c      |  28 +-
>  drivers/gpu/drm/xe/xe_device.c                     |   2 +-
>  drivers/gpu/drm/xe/xe_ggtt.h                       |   3 +
>  drivers/gpu/drm/xe/xe_ttm_stolen_mgr.c             |   2 +
>  32 files changed, 2302 insertions(+), 200 deletions(-)
> ---
> base-commit: 812e4b8966d421afd4df8f794bf15f1a1a3ec7b6
> change-id: 20260115-upstream-prep-b29156970a75
>
> Best regards,

-- 
Jani Nikula, Intel
