Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D416A48EFBA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jan 2022 19:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DC310E1B5;
	Fri, 14 Jan 2022 18:17:15 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F169E10E1A2;
 Fri, 14 Jan 2022 18:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642184234; x=1673720234;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oB1icNmMdJ3ThkrnZ76TM/uwjgbwsPJBogZSNXqO9gY=;
 b=dGFOB4fFFkR92FtTxCj6DEhQiftw3+2uiDmcIjh85iY86tRsOsQe3LcG
 If/THRbXDG+BSIoluMX4UUIdSj+NKE9EixMkvdR+jGxEprbOecn70OGjp
 DbYulrBMdF1sXFA7NZklzoH0K4vZcj0u59DYG5zm00a3kiz69CLO71oJj
 DLT5/YnfJTOU1roPBiV13wqZ3YBAqeo6lOY7vnOXAfP73e9RcELjvAD3w
 elaq7po7xbh6gLgEV18L8mWi8wxm7NSZ+G0aWrL5864pymE+tHqSh+mEW
 LzQ5j+EHSPP4YhoaP336lnZOMCtnVynP2di39gr+cq4erlHeLsZfEB1wn g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10227"; a="224988551"
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="224988551"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2022 10:17:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,289,1635231600"; d="scan'208";a="491601986"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2022 10:17:13 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Fri, 14 Jan 2022 10:16:58 -0800
Message-Id: <20220114181713.1798514-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 i-g-t 00/15] Fixes for i915_hangman,
 gem_exec_capture and gem_exec_fence
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
v4: Simplify anti-ban code, support >32bit store offsets and fix
memory mapping on discrete platforms.
v5: Fix for failure on 'pi' test. Update patch set subject.

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
 lib/igt_store.c                | 100 +++++++++++++
 lib/igt_store.h                |  12 ++
 lib/meson.build                |   1 +
 tests/i915/gem_exec_capture.c  |  42 ++++--
 tests/i915/gem_exec_fence.c    |  79 +----------
 tests/i915/i915_hangman.c      | 252 +++++++++++++++++++++++++++------
 11 files changed, 428 insertions(+), 128 deletions(-)
 create mode 100644 lib/igt_store.c
 create mode 100644 lib/igt_store.h

-- 
2.25.1

