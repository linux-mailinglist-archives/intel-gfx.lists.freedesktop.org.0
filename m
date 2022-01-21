Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1734957A2
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 02:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71CC010E2C9;
	Fri, 21 Jan 2022 01:09:30 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F8C10E2C9;
 Fri, 21 Jan 2022 01:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642727369; x=1674263369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QaGKa5bWTzZU8pt3qi18tqFSQaRv+Ij+HEcTyY6caVA=;
 b=doScpmFX+jvurrDKhQ+IPZwWGtwwNvrz10JbN7XqBy2K3I9WoGj+5B2J
 9m3s1k+VaR27egHwCLaatWtbYsu71Y95or9L8XAJpSxjwTC48UOXLsN8J
 GfyEvTuISYOI/gLPikguJ3LXBngAoKqSsRB/4+e03wMXmJAHuAZjgRGDT
 Sn4FwY+901r9bITPNECy8l0lb975VEVI9sHMPRJaAabrWDv75HRk4qtkv
 IvdnF3svMf2CKOXMgD8s9/CouWpLJ+GZ6URGPwcfHbDJ9nvamGN//e226
 roMpDbfQM10WudlziTOtkpPuiMoLmTlxtuBoOpo50cLsIrbbDGHws+A5r Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="331880614"
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="331880614"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 17:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,303,1635231600"; d="scan'208";a="672770990"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jan 2022 17:09:28 -0800
From: John.C.Harrison@Intel.com
To: IGT-Dev@Lists.FreeDesktop.Org
Date: Thu, 20 Jan 2022 17:09:28 -0800
Message-Id: <20220121010928.3021085-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t] tests/i915/gem_exec_capture: Fix memory
 object size in gem_exec_capture
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

The capture tests require knowing exactly how big the test allocation
is. Part of the test is to compare the captured size against the
allocated size to make sure they match. That doesn't work if the
allocator creates an object of a different size than was requested
without reporting the larger size.

Fixes: 85a593809 ("tests/i915/gem_exec_capture: Add support for local memory")
Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
---
 tests/i915/gem_exec_capture.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/tests/i915/gem_exec_capture.c b/tests/i915/gem_exec_capture.c
index 5b2482518..60f8df04c 100644
--- a/tests/i915/gem_exec_capture.c
+++ b/tests/i915/gem_exec_capture.c
@@ -387,10 +387,9 @@ static void capture(int fd, int dir, const intel_ctx_t *ctx,
 		    const struct intel_execution_engine2 *e, uint32_t region)
 {
 	uint32_t handle;
-	uint64_t ahnd;
-	int obj_size = 4096;
+	uint64_t ahnd, obj_size = 4096;
 
-	handle = gem_create_in_memory_regions(fd, obj_size, region);
+	igt_assert_eq(__gem_create_in_memory_regions(fd, &handle, &obj_size, region), 0);
 	ahnd = get_reloc_ahnd(fd, ctx->id);
 
 	__capture1(fd, dir, ahnd, ctx, e, handle, obj_size, region);
-- 
2.25.1

