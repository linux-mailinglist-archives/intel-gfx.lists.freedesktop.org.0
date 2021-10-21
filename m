Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF76A436E69
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 01:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5457B6E505;
	Thu, 21 Oct 2021 23:40:46 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A91A6E503;
 Thu, 21 Oct 2021 23:40:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="252684523"
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="252684523"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2021 16:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,170,1631602800"; d="scan'208";a="484446149"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga007.jf.intel.com with ESMTP; 21 Oct 2021 16:40:44 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>
Date: Thu, 21 Oct 2021 16:40:36 -0700
Message-Id: <20211021234044.3071069-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 0/8] Fixes for gem_exec_capture
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

From: John Harrison <John.C.Harrison@Intel.com>

Fix a bunch of issues with gem_exec_capture with the ultimate aim of
making it pass on GuC enabled platforms.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>


John Harrison (8):
  tests/i915/gem_exec_capture: Remove pointless assert
  tests/i915/gem_exec_capture: Cope with larger page sizes
  tests/i915/gem_exec_capture: Make the error decode a common helper
  tests/i915/gem_exec_capture: Use contexts and engines properly
  tests/i915/gem_exec_capture: Check for memory allocation failure
  lib/igt_sysfs: Support large files
  lib/igt_gt: Allow per engine reset testing
  tests/i915/gem_exec_capture: Update to support GuC based resets

 lib/igt_gt.c                  |  44 ++--
 lib/igt_gt.h                  |   1 +
 lib/igt_sysfs.c               |  17 +-
 tests/i915/gem_exec_capture.c | 472 ++++++++++++++++++++--------------
 4 files changed, 317 insertions(+), 217 deletions(-)

-- 
2.25.1

