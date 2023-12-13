Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48578106CE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:42:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CF2910E226;
	Wed, 13 Dec 2023 00:42:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 372CF10E226
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:42:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428161; x=1733964161;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=71I/Ju7+D2pIicxs2CvSfXegJ9IYxV0/XN30A9z1Cpk=;
 b=FsSzCGa1Mve295fFW/69fxckuOyjuF3FlLT9owwM3S3GS++oO7POP2yb
 4DIkDdJQxnh7un38iJamdjYfVnu6Rz1tQJ+p222gQ2NqzYZAaRzW8bJms
 +40W9D0IXzmXAL5Q5/xUdWOC+VUlYTsyhr1r6pxgi1WbjlK+JxI8Pck8M
 1Q6AO+sLdn82y92IKi0i/jt00wTToJ+86LYgIx1ocqnAa/2FMz1FE88tX
 Ob4jYJwqCb8Gk0pTDFvTxmOKfzr0+gifyUMjD2bAVxri5QjUTemFmgwp0
 En3HW4xVCUesbnzqDD8TC6FJNAdlmoqSrxwqP0aCBg0o0r/xbNE8x+0o4 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309612"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309612"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:42:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011744"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011744"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:42:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:42:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/12] drm/i915: (stolen) memory region related fixes
Date: Wed, 13 Dec 2023 02:42:25 +0200
Message-ID: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

Ville Syrjälä (12):
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

 .../drm/i915/display/intel_display_driver.c   |   7 +-
 .../drm/i915/display/intel_display_types.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fbdev_fb.c |   2 +-
 .../drm/i915/display/intel_plane_initial.c    | 169 ++++++++++++------
 .../drm/i915/display/intel_plane_initial.h    |   4 +-
 drivers/gpu/drm/i915/gem/i915_gem_region.c    |   2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  30 ++--
 drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |   8 +-
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  18 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  13 +-
 drivers/gpu/drm/i915/gt/intel_gtt.c           |   2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c   |  14 +-
 drivers/gpu/drm/i915/gt/selftest_tlb.c        |   4 +-
 drivers/gpu/drm/i915/i915_gpu_error.c         |   2 +-
 drivers/gpu/drm/i915/i915_query.c             |   2 +-
 drivers/gpu/drm/i915/i915_reg.h               |   7 +-
 drivers/gpu/drm/i915/intel_memory_region.c    |  33 +++-
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +-
 drivers/gpu/drm/i915/intel_region_ttm.c       |   8 +-
 .../drm/i915/selftests/intel_memory_region.c  |   4 +-
 20 files changed, 209 insertions(+), 125 deletions(-)

-- 
2.41.0

