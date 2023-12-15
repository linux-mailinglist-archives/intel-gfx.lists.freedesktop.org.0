Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5BC81460B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 11:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BD510E9A9;
	Fri, 15 Dec 2023 10:59:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8A1F10E9A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 10:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702637973; x=1734173973;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oQCr7ATWnli2fnDUapF72OFzTsOkyWk/6OghDK559fk=;
 b=G63t8y4eOyQSsdQVOxn6a2Kaz2WzT7iaY35SGWgvow42pZB/p0Q/2mBV
 0T9xlXLWff6EVCZ3daui0KIeqM+Qt2aYoX/6IconlNHDBrqalRtvb5xLM
 nhoio65DruqJALrWahjmh0knCrjZnDm8TT5S1Z/s8fb9VSnEAyVyUebVz
 lZuhRcM8Je28xIZcF6qW2L9h2+Yv13sg4CpOe7rPblK6/qHvqlOHnaUbE
 P/y4fcup5r4tto+4h++tuCuPGJhlpEq8oYN0eovlyAgFooZ13HlGbJLk2
 4tl7RYELNdrU8jx6gcCoPCk7hgdmfyr+i7JKd0qRoALFp9oOKBHoMEYrw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394136722"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394136722"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 02:59:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767935142"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767935142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 02:59:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 12:59:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 00/15] drm/i915: (stolen) memory region related fixes
Date: Fri, 15 Dec 2023 12:59:14 +0200
Message-ID: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Attempt to fix the mess around stolen memory, especially on MTL
with it's special (and apparenly broken) not-actually-lmem stolen.

The series is made up of roughtly three parts:
1. General refactoring/debug improvement for mem regions
2. Deal with the broken BAR stuff on MTL
3. Fix initial display plane readout for MTL

v2: Try to relocate the BIOS fb to start of ggtt to make
    space for the GuC stuff at the top end of ggtt

Cc: Paz Zcharya <pazz@chromium.org>

Ville Syrjälä (15):
  drm/i915: Use struct resource for memory region IO as well
  drm/i915: Print memory region info during probe
  drm/i915: Remove ad-hoc lmem/stolen debugs
  drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen memory access
  drm/i915: Disable the "binder"
  drm/i915: Rename the DSM/GSM registers
  drm/i915: Fix PTE decode during initial plane readout
  drm/i915: Fix region start during initial plane readout
  drm/i915: Fix MTL initial plane readout
  drm/i915: s/phys_base/dma_addr/
  drm/i915: Split the smem and lmem plane readout apart
  drm/i915: Simplify intel_initial_plane_config() calling convention
  drm/i915/fbdev: Fix smem_start for LMEMBAR stolen objects
  drm/i915: Tweak BIOS fb reuse check
  drm/i915: Try to relocate the BIOS fb to the start of ggtt

 drivers/gpu/drm/i915/display/i9xx_plane.c     |  30 +++
 drivers/gpu/drm/i915/display/i9xx_plane.h     |   7 +
 drivers/gpu/drm/i915/display/intel_display.c  |   5 +
 .../gpu/drm/i915/display/intel_display_core.h |   2 +
 .../drm/i915/display/intel_display_driver.c   |   7 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |   5 +-
 .../drm/i915/display/intel_plane_initial.c    | 252 +++++++++++++-----
 .../drm/i915/display/intel_plane_initial.h    |   4 +-
 .../drm/i915/display/skl_universal_plane.c    |  28 ++
 .../drm/i915/display/skl_universal_plane.h    |   2 +
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  30 ++-
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   8 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  18 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  13 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  14 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |   4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_query.c             |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |  33 ++-
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |   8 +-
 .../drm/i915/selftests/intel_memory_region.c  |   4 +-
 26 files changed, 354 insertions(+), 140 deletions(-)

-- 
2.41.0

