Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237DE42E21D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Oct 2021 21:42:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AD436EC3C;
	Thu, 14 Oct 2021 19:42:41 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36DF6EC3A;
 Thu, 14 Oct 2021 19:42:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10137"; a="214712778"
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="214712778"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2021 12:42:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,373,1624345200"; d="scan'208";a="525190968"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga001.jf.intel.com with ESMTP; 14 Oct 2021 12:42:38 -0700
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Cc: Intel-GFX@Lists.FreeDesktop.Org, John Harrison <John.C.Harrison@Intel.com>
Date: Thu, 14 Oct 2021 12:42:38 -0700
Message-Id: <20211014194238.1078854-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 i-g-t] tests/i915: Skip gem_exec_fair on GuC
 based platforms
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

The gem_exec_fair test is specifically testing scheduler algorithm
performance. However, GuC does not implement the same algorithm as
execlist mode and this test is not applicable. So, until sw arch
approves a new algorithm and it is implemented in GuC, stop running
the test.

v2: Add exceptions for TGL/RKL/ADL-S - review feedback from Tvrtko.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/gem_exec_fair.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/tests/i915/gem_exec_fair.c b/tests/i915/gem_exec_fair.c
index ef5a450f6..fc690f438 100644
--- a/tests/i915/gem_exec_fair.c
+++ b/tests/i915/gem_exec_fair.c
@@ -1302,6 +1302,8 @@ igt_main
 	int i915 = -1;
 
 	igt_fixture {
+		uint32_t devid;
+
 		igt_require_sw_sync();
 
 		i915 = drm_open_driver_master(DRIVER_INTEL);
@@ -1314,6 +1316,14 @@ igt_main
 		igt_require(gem_scheduler_enabled(i915));
 		igt_require(gem_scheduler_has_ctx_priority(i915));
 
+		/*
+		 * These tests are for a specific scheduling model which is
+		 * not currently implemented by GuC. So skip on GuC platforms.
+		 */
+		devid = intel_get_drm_devid(i915);
+		igt_require((intel_gen(devid) < 12) || IS_TIGERLAKE(devid) ||
+			    IS_ROCKETLAKE(devid) || IS_ALDERLAKE_S(devid));
+
 		cfg = intel_ctx_cfg_all_physical(i915);
 
 		igt_info("CS timestamp frequency: %d\n",
-- 
2.25.1

