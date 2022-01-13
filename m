Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BE848DE70
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 20:59:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6BE10E2CA;
	Thu, 13 Jan 2022 19:59:50 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 035B910E2CA;
 Thu, 13 Jan 2022 19:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642103989; x=1673639989;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=L9Q2+vWRQ5bM0rzJANbAczcHdWkpr58luSmBql9Z29E=;
 b=ZlmQmFNt1gESdIsO6yo1BiUGzvB0d5nXuAM1ps3GBBdvUwO4VWmKm1YY
 GJfY9eMU/WnbKjswq+GVhHAGwIygzZ48mBDRMDHxE6YnzOEQH6I5AesEr
 Df554psI2XTjXYAZPcZ1ijXZqS3xerM1Yz/PpOHZOxR5/IsJrMaKhot4F
 eyz6DIOSclGY6Bvs5IT0Yr4yb31LnInw5wU/Hu+kJOvNufRiBN63cGAiD
 dHMpOdEDageJpd1aD2KeF2zybQ+yTvzBiOQ/vTruuaiyAklR0/6xtv0MU
 MIlkxrpFFcqa5CH6I7spT8gHak50dt+MMm9m1x0ZNFeLB63rFn4WMxKSs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="241663858"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="241663858"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 11:59:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="475477455"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga006.jf.intel.com with ESMTP; 13 Jan 2022 11:59:47 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 11:59:32 -0800
Message-Id: <20220113195947.1536897-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 i-g-t 00/15] Fixes for i915_hangman and
 gem_exec_capture
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
Cc: Intel-GFX@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Fix a bunch of issues with i915_hangman and gem_exec_capture with the
ultimate aim of making them pass on GuC enabled platforms.

v2: Fixes to the store code. Add engine properties management.
v3: Fix for platforms without pre-emption.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (15):
  tests/i915/i915_hangman: Add descriptions
  lib/hang: Fix igt_require_hang_ring to work with all engines
  tests/i915/i915_hangman: Update capture test to use engine structure
  tests/i915/i915_hangman: Explicitly test per engine reset vs full GPU
    reset
  tests/i915/i915_hangman: Add uevent test & fix detector
  tests/i915/i915_hangman: Use the correct context in
    hangcheck_unterminated
  lib/store: Refactor common store code into helper function
  tests/i915/i915_hangman: Add alive-ness test after error capture
  tests/i915/i915_hangman: Remove reliance on context persistance
  tests/i915/i915_hangman: Run background task on all engines
  tests/i915/i915_hangman: Don't let background contexts cause a ban
  tests/i915/gem_exec_fence: Configure correct context
  lib/i915: Add helper for non-destructive engine property updates
  tests/i915/i915_hangman: Configure engine properties for quicker hangs
  tests/i915/gem_exec_capture: Restore engines

 lib/i915/gem_engine_topology.c |  46 ++++++
 lib/i915/gem_engine_topology.h |   9 ++
 lib/igt_aux.c                  |   7 +
 lib/igt_gt.c                   |   6 +-
 lib/igt_gt.h                   |   2 +-
 lib/igt_store.c                |  96 +++++++++++++
 lib/igt_store.h                |  12 ++
 lib/meson.build                |   1 +
 tests/i915/gem_exec_capture.c  |  37 +++--
 tests/i915/gem_exec_fence.c    |  79 +---------
 tests/i915/i915_hangman.c      | 256 +++++++++++++++++++++++++++------
 11 files changed, 423 insertions(+), 128 deletions(-)
 create mode 100644 lib/igt_store.c
 create mode 100644 lib/igt_store.h

-- 
2.25.1

