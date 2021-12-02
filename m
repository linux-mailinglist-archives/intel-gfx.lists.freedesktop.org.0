Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B17465F9B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 09:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A0366E9C0;
	Thu,  2 Dec 2021 08:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5FE26E9D5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 08:38:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236600049"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="236600049"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 00:37:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="500642633"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 02 Dec 2021 00:37:04 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Dec 2021 14:01:22 +0530
Message-Id: <20211202083125.3999668-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 0/3] Replace VT-d workaround with guard pages
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

Replace filling the GGTT entirely with scratch pages to avoid invalid
accesses from VT-d overfetch of scanout by only surrounding scanout vma
with guard pages. This eliminates the 100+ms delay in resume where we
have to repopulate the GGTT with scratch.

This should also help in avoiding slow suspend/resume on GEN11/12
platforms. Which will also resolve issues with following reported 
errors : "slow framebuffer consoles issue impacts Linux S3"

Chris Wilson (3):
  drm/i915: Wrap all access to i915_vma.node.start|size
  drm/i915: Introduce guard pages to i915_vma
  drm/i915: Refine VT-d scanout workaround

 drivers/gpu/drm/i915/display/intel_dpt.c      |  4 +-
 drivers/gpu/drm/i915/display/intel_fbdev.c    |  6 +-
 drivers/gpu/drm/i915/gem/i915_gem_domain.c    | 13 +++++
 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 34 ++++++------
 drivers/gpu/drm/i915/gem/i915_gem_mman.c      |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_tiling.c    |  4 +-
 .../gpu/drm/i915/gem/selftests/huge_pages.c   |  2 +-
 .../i915/gem/selftests/i915_gem_client_blt.c  | 15 ++---
 .../drm/i915/gem/selftests/i915_gem_context.c | 19 +++++--
 .../drm/i915/gem/selftests/i915_gem_mman.c    |  2 +-
 .../drm/i915/gem/selftests/igt_gem_utils.c    |  6 +-
 drivers/gpu/drm/i915/gt/gen6_ppgtt.c          |  2 +-
 drivers/gpu/drm/i915/gt/gen7_renderclear.c    |  2 +-
 drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  8 +--
 drivers/gpu/drm/i915/gt/intel_ggtt.c          | 42 +++++---------
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c  |  3 +-
 drivers/gpu/drm/i915/gt/intel_ppgtt.c         |  5 +-
 drivers/gpu/drm/i915/gt/intel_renderstate.c   |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +-
 drivers/gpu/drm/i915/gt/selftest_engine_cs.c  |  8 +--
 drivers/gpu/drm/i915/gt/selftest_execlists.c  | 18 +++---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c  | 15 ++---
 drivers/gpu/drm/i915/gt/selftest_lrc.c        | 16 +++---
 .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
 drivers/gpu/drm/i915/gt/selftest_rps.c        | 12 ++--
 .../gpu/drm/i915/gt/selftest_workarounds.c    |  8 +--
 drivers/gpu/drm/i915/i915_cmd_parser.c        |  4 +-
 drivers/gpu/drm/i915/i915_debugfs.c           |  2 +-
 drivers/gpu/drm/i915/i915_gem_gtt.h           |  1 +
 drivers/gpu/drm/i915/i915_perf.c              |  2 +-
 drivers/gpu/drm/i915/i915_vma.c               | 55 ++++++++++++++-----
 drivers/gpu/drm/i915/i915_vma.h               | 24 +++++++-
 drivers/gpu/drm/i915/i915_vma_types.h         |  3 +-
 drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 12 +++-
 drivers/gpu/drm/i915/selftests/i915_request.c | 20 +++----
 drivers/gpu/drm/i915/selftests/igt_spinner.c  |  8 +--
 37 files changed, 226 insertions(+), 159 deletions(-)

-- 
2.31.1

