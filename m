Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F3747387D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 00:29:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A416B10E8EA;
	Mon, 13 Dec 2021 23:29:16 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81FD10E8E5;
 Mon, 13 Dec 2021 23:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639438155; x=1670974155;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dyAu0I9ixzdJiDqGcEeOUbfxLGmk9hfBK1GQfqqRrk4=;
 b=ImdbLIe45kV7fAvv8KR9r2dWOxPCF31mB5UAe0VM0QLzpMJTJuKrkJxQ
 syGv8XtuGCbsqbhPK4cz7xfPmlqHM3nZfv/rp+8vungpzCOCzYvfcS5VZ
 qOyGc8xgQ3AD83gssOXSbgIrUP9HTqXHn/0qMnkOVVFg24LBMkYGu671v
 8aNVGxC11ZkoAaktRvXlMN7XAmcjkLRw/iFcmKIiuTLq0bZY8MZ24Dj16
 9ijdHpyaJUe0NzTK4mNhyZLvLTxPrDwXI/08QDm7122gatm2RhgOmdUcq
 26icERcxf1tlZ+lSehmxgHEsp0zK9+2D5CqylIdz5A4Oclp8H92doUVmh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10197"; a="236385940"
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="236385940"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 15:29:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,203,1635231600"; d="scan'208";a="517975908"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga008.jf.intel.com with ESMTP; 13 Dec 2021 15:29:14 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Mon, 13 Dec 2021 15:29:03 -0800
Message-Id: <20211213232914.2523139-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 00/11] Fixes for i915_hangman and
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

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (11):
  tests/i915/i915_hangman: Add descriptions
  lib/hang: Fix igt_require_hang_ring to work with all engines
  tests/i915/i915_hangman: Update capture test to use engine structure
  tests/i915/i915_hangman: Explicitly test per engine reset vs full GPU
    reset
  tests/i915/i915_hangman: Add uevent test & fix detector
  tests/i915/i915_hangman: Use the correct context in
    hangcheck_unterminated
  tests/i915/i915_hangman: Add alive-ness test after error capture
  lib/store: Refactor common store code into helper function
  tests/i915/i915_hangman: Remove reliance on context persistance
  tests/i915/i915_hangman: Run background task on all engines
  tests/i915/gem_exec_fence: Configure correct context

 lib/igt_aux.c               |   7 ++
 lib/igt_gt.c                |   6 +-
 lib/igt_gt.h                |   2 +-
 lib/igt_store.c             | 114 ++++++++++++++++++
 lib/igt_store.h             |  30 +++++
 lib/meson.build             |   1 +
 tests/i915/gem_exec_fence.c |  79 +------------
 tests/i915/i915_hangman.c   | 223 +++++++++++++++++++++++++++++-------
 8 files changed, 343 insertions(+), 119 deletions(-)
 create mode 100644 lib/igt_store.c
 create mode 100644 lib/igt_store.h

-- 
2.25.1

