Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC2F35F2BB
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 13:50:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8E56E2B4;
	Wed, 14 Apr 2021 11:50:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FF76E2B4
 for <Intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 11:50:42 +0000 (UTC)
IronPort-SDR: SpD4R4nGhpjcnAD+fF2sjdF+IGVz4YMJch+Xhn5TwXexMu7BIEr3SEmFN470yjxojx/5Lf/fnS
 AosWjkUh0HyQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194732236"
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="194732236"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:41 -0700
IronPort-SDR: iY81zaTDraF6lioVA3eF/oSlvVqQiiM3h4i2+hLu1AWX7wz7mKgJ3PwHoZHw+/deeUVbmCztID
 xmkCL24XfLsA==
X-IronPort-AV: E=Sophos;i="5.82,222,1613462400"; d="scan'208";a="521965083"
Received: from bdebhal-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.119])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 04:50:39 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 14 Apr 2021 12:50:00 +0100
Message-Id: <20210414115028.168504-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 00/28] Old platform/gen kconfig options series
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Triggered by the recent work around INTEL_GEN etc and probably just for
historical reference since I can't remember if I ever sent it out. So sending
now but unrebased.

This series from early 2018 is the reason why I was converting to mask based
check everywhere. There was as feature request to enable compiling out parts of
the driver for embedded deployments. Or inversely, to build for a single
platform only.

With the mask approach and this series I was able to demonstrate substantial
savings in binary size. If only I could remember if I was building for Gen9
only or Gen9+.. But memory says savings around 30-40% were easy to get.

Then the experiment was dropped, don't remember why. I also tried LTO on top of
this but kernel support for it was immature back then (maybe still is, no idea).

Anyway, sending for historical reference why masks for everything were doubly
good. I mean they are good for all the range check in my opinion.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Tvrtko Ursulin (28):
  drm/i915: Make I830 platform support optional
  drm/i915: Make I845G platform support optional
  drm/i915: Make I85X platform support optional
  drm/i915: Make I865G platform support optional
  drm/i915: Make GEN2 support optional
  drm/i915: Make Gen3 platforms support optional
  drm/i915: Make Gen4 platforms support optional
  drm/i915: Make Ironlake/Gen5 platforms support optional
  drm/i915: Make Sandybridge/Gen6 platforms support optional
  drm/i915: Make Gen7/7.5 platform support optional
  drm/i915: Make Gen8 platform support optional
  drm/i915: Make Gen9 platform support optional
  drm/i915: Make Gen10 platform support optional
  drm/i915: Make Gen11 platform support optional
  drm/i915: Simplify IS_GEN macros
  drm/i915: Use INTEL_GEN everywhere
  drm/i915: Favour IS_GENx
  drm/i915: Use Gen Kconfig items in IS_GEN macro
  drm/i915: Replace arithmetic INTEL_GEN checks with the IS_GEN macro
  drm/i915: Use IS_GEN in execbuffer
  drm/i915: Allow render state to be compiled out
  drm/i915: Use IS_GEN in stolen
  drm/i915: Use IS_GEN in intel_bios.c
  drm/i915: Use IS_GEN in intel_fb_pitch_limit
  drm/i915: Use IS_GEN in intel_engine_cs.c
  drm/i915: Use IS_GEN in intel_guc.c
  drm/i915: Use IS_GEN in intel_lrc.c
  drm/i915: Enable dropping small cores when not enabled

 drivers/gpu/drm/i915/Kconfig                  |   5 +
 drivers/gpu/drm/i915/Kconfig.platforms        | 261 ++++++++++++++++++
 drivers/gpu/drm/i915/Makefile                 |   8 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  86 +++---
 drivers/gpu/drm/i915/i915_drv.c               |  16 +-
 drivers/gpu/drm/i915/i915_drv.h               | 187 ++++++++-----
 drivers/gpu/drm/i915/i915_gem.c               |  18 +-
 drivers/gpu/drm/i915/i915_gem_execbuffer.c    |  16 +-
 drivers/gpu/drm/i915/i915_gem_fence_reg.c     |   4 +-
 drivers/gpu/drm/i915/i915_gem_gtt.c           |  30 +-
 drivers/gpu/drm/i915/i915_gem_render_state.c  |  10 +-
 drivers/gpu/drm/i915/i915_gem_request.c       |   2 +-
 drivers/gpu/drm/i915/i915_gem_stolen.c        |  42 ++-
 drivers/gpu/drm/i915/i915_gem_tiling.c        |   8 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |  40 +--
 drivers/gpu/drm/i915/i915_irq.c               |  58 ++--
 drivers/gpu/drm/i915/i915_pci.c               | 120 +++++++-
 drivers/gpu/drm/i915/i915_perf.c              |   2 +-
 drivers/gpu/drm/i915/i915_pmu.c               |   6 +-
 drivers/gpu/drm/i915/i915_reg.h               |   4 +-
 drivers/gpu/drm/i915/i915_suspend.c           |  12 +-
 drivers/gpu/drm/i915/i915_sysfs.c             |   2 +-
 drivers/gpu/drm/i915/intel_atomic_plane.c     |   2 +-
 drivers/gpu/drm/i915/intel_audio.c            |   2 +-
 drivers/gpu/drm/i915/intel_bios.c             |   9 +-
 drivers/gpu/drm/i915/intel_cdclk.c            |   8 +-
 drivers/gpu/drm/i915/intel_color.c            |   2 +-
 drivers/gpu/drm/i915/intel_crt.c              |   6 +-
 drivers/gpu/drm/i915/intel_ddi.c              |  10 +-
 drivers/gpu/drm/i915/intel_device_info.c      |  18 +-
 drivers/gpu/drm/i915/intel_display.c          | 205 +++++++-------
 drivers/gpu/drm/i915/intel_dp.c               |  28 +-
 drivers/gpu/drm/i915/intel_dpll_mgr.c         |   4 +-
 drivers/gpu/drm/i915/intel_engine_cs.c        | 114 ++++----
 drivers/gpu/drm/i915/intel_fbc.c              |  32 +--
 drivers/gpu/drm/i915/intel_fifo_underrun.c    |   2 +-
 drivers/gpu/drm/i915/intel_guc.c              |  10 +-
 drivers/gpu/drm/i915/intel_hangcheck.c        |   2 +-
 drivers/gpu/drm/i915/intel_hdcp.c             |   2 +-
 drivers/gpu/drm/i915/intel_hdmi.c             |  10 +-
 drivers/gpu/drm/i915/intel_lrc.c              |  35 +--
 drivers/gpu/drm/i915/intel_lvds.c             |  10 +-
 drivers/gpu/drm/i915/intel_mocs.c             |   2 +-
 drivers/gpu/drm/i915/intel_overlay.c          |   2 +-
 drivers/gpu/drm/i915/intel_panel.c            |  10 +-
 drivers/gpu/drm/i915/intel_pipe_crc.c         |   2 +-
 drivers/gpu/drm/i915/intel_pm.c               | 106 +++----
 drivers/gpu/drm/i915/intel_psr.c              |   6 +-
 drivers/gpu/drm/i915/intel_ringbuffer.c       |  34 +--
 drivers/gpu/drm/i915/intel_ringbuffer.h       |   4 +-
 drivers/gpu/drm/i915/intel_sdvo.c             |  14 +-
 drivers/gpu/drm/i915/intel_sprite.c           |  30 +-
 drivers/gpu/drm/i915/intel_tv.c               |   2 +-
 drivers/gpu/drm/i915/intel_uncore.c           |  20 +-
 .../drm/i915/selftests/i915_gem_coherency.c   |   4 +-
 .../gpu/drm/i915/selftests/i915_gem_context.c |   2 +-
 .../gpu/drm/i915/selftests/i915_gem_object.c  |  12 +-
 .../gpu/drm/i915/selftests/intel_hangcheck.c  |   8 +-
 drivers/gpu/drm/i915/selftests/intel_uncore.c |   2 +-
 59 files changed, 1048 insertions(+), 660 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/Kconfig.platforms

-- 
2.27.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
