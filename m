Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B3E248DC59
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jan 2022 17:59:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0E9F10E4B0;
	Thu, 13 Jan 2022 16:59:46 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E28010E233;
 Thu, 13 Jan 2022 16:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642093185; x=1673629185;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=JwafM6bx5GwVab4QY4CimAe73/EEXwloWPOLHBGgwOY=;
 b=VO3SirisP5yHZzFuwe8V8WVHeP8gtmzhOX5Wx+N75AEoAhLxJnZe4noi
 QlrRQJYF4tWuCJ5+41ZBpRo978abHD+7N1aR6bOWYpTJZKkO85PtLpOYz
 fEPDrDOUnbY4lq155NBwML5pX/ZsZnGUIdB47vj1dYWgb1eaa6Iiqqpx5
 goa2OkYxqy28Vd1Y61lGqcAzyyfoSiJ2VcW1rnmt06aG1ff8frS8nX1pq
 u/c/2oTx20OfQwrZ3CfswV9MeGJSsQIehcl3aZyWY9JzPCLjjoEtj/Qj5
 DHbpXYn2qhTseUUlYRXL44XTB01YKr7HFP3u1sYbqblkEX+hU/uiKAltI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10225"; a="268409165"
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="268409165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 08:59:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,286,1635231600"; d="scan'208";a="515999142"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 13 Jan 2022 08:59:44 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 13 Jan 2022 08:59:29 -0800
Message-Id: <20220113165944.1414015-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t 00/15] Fixes for i915_hangman and
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

 lib/i915/gem_engine_topology.c |  39 +++++
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
 11 files changed, 416 insertions(+), 128 deletions(-)
 create mode 100644 lib/igt_store.c
 create mode 100644 lib/igt_store.h

-- 
2.25.1

