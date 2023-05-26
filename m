Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BEC712AC1
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 18:38:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B3C710E820;
	Fri, 26 May 2023 16:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2562010E812
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 16:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685119093; x=1716655093;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=db0+qDwDFFhgFOoNUnERjk0PPDcbl0Uldx40/snkH/M=;
 b=XCs5OfWeDfoJbSBaqDHsLW2wTDVC4VsbaQsgziOJgt8gMD7C4AL69exd
 fyU5JaFYpxiQFMSlmpwtaYH9Oj6yCdBfRWawPxHJyI5XRayhaxePUpY9a
 HSZ7TDg78UdIPrUBWPW6ZC4sp4q4Ihxkf48qT+neOqTtdTsumXXCPTlI2
 Hki9F+28BHRr1P3rXMKZ8e3zjYGf1HO2EgEYClURNli27nPEm7cujh6EA
 LijgpZSETJCVZx5arUjMgBUyauuIqOBZw/z5LUU6pyK2TGFlDEP7mB2CI
 DR3ZYYHG2F/sPXmd5YNsETD1E2LN81e53Bu6kfgU8zQ97MYhjrOJGHbn2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="417730871"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="417730871"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="682770115"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="682770115"
Received: from akervine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.55.216])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 09:38:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 26 May 2023 19:37:53 +0300
Message-Id: <cover.1685119006.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 00/15] drm/i915: re-enable
 -Wunused-but-set-variable
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Bring back -Wunused-but-set-variable both in W=1 build as well as
locally for CI and development. This already found dubious code.

Jani Nikula (15):
  drm/i915/plane: warn on non-zero plane offset
  drm/i915/ddi: drop unused but set variable intel_dp
  drm/i915/dsi: drop unused but set variable data
  drm/i915/dsi: drop unused but set variable vbp
  drm/i915/dpll: drop unused but set variables bestn and bestm1
  drm/i915/fb: drop unused but set variable cpp
  drm/i915/irq: drop unused but set variable tmp
  drm/i915/gt/uc: drop unused but set variable sseu
  drm/i915/gem: drop unused but set variable unpinned
  drm/i915/gem: annotate maybe unused but set variable c
  drm/i915/selftest: annotate maybe unused but set variable unused
  drm/i915: annotate maybe unused but set intel_plane_state variables
  drm/i915: annotate maybe unused but set intel_crtc_state variables
  drm/i915/gvt: annotate maybe unused gma_bottom variables
  drm/i915: re-enable -Wunused-but-set-variable

 drivers/gpu/drm/i915/Makefile                      |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c          |  2 ++
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c         |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  4 ----
 drivers/gpu/drm/i915/display/intel_display.c       | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display_irq.c   |  4 ++--
 drivers/gpu/drm/i915/display/intel_dpll.c          |  4 +---
 drivers/gpu/drm/i915/display/intel_fb.c            |  3 +--
 drivers/gpu/drm/i915/display/intel_fbc.c           |  6 +++---
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c       |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  6 ++----
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c     |  3 +--
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c          |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c     |  2 --
 drivers/gpu/drm/i915/gvt/cmd_parser.c              |  4 ++--
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  2 +-
 18 files changed, 26 insertions(+), 35 deletions(-)

-- 
2.39.2

