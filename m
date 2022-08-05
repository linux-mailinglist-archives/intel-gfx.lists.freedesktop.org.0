Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4F358A7C9
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 10:10:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 656139FF6D;
	Fri,  5 Aug 2022 08:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 848831127F3;
 Fri,  5 Aug 2022 08:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659686987; x=1691222987;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6GEOCn/sZYHJkejV3tFNB7GfcnQMEHdpX5Y27y0A0dU=;
 b=lHRUrj9SVHfWOcwLQjDQUMEEGEbvdM90/krnbiIw0ed4mzYmRJlkhqO5
 mfCkQprMQ7rrbEz9tBgecQ05KKcDMM2e5w5b1jSMKHo2FvHnQxG8SsVfb
 2FTAMxIdFymb88wWy7J6d4gEZqa4XNemZp55jN4CUGjwyHTuXkMjFVBZH
 dilSyRwCbg3I+LYFez5HKcHV0EPuXxY5akMPPh0P1jdpv7eYRqLlRE3t1
 Hyi7uIBHHUwjc/GomcmxZKMxeWSmpHdkst9usvonw4Qlgbo/8sjCb9T8+
 6x/SB0is8F7Snkqs2mBKQeQE2xfFBZ2IbjQxSduCKpDJHI0/9ClRV2Xlp w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="291371336"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="291371336"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:46 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="662897974"
Received: from szawadzk-mobl.ger.corp.intel.com (HELO jkrzyszt-mobl1.intranet)
 ([10.213.19.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 01:09:44 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 10:09:26 +0200
Message-Id: <20220805080928.169952-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 1/3] tests/gem_exec_fence: Fix wrong
 engine checked for store_dword capability
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit ed7c8cfb67e3 ("tests/i915/gem_exec_fence: Add
__for_each_physical_engine to utilize all engines."), while replacing
depraciated for_each_physical_engine(e, fd) loop with
__for_each_physical_engine(fd, e2) and gem_can_store_dword() inside that
loop with gem_class_can_store_dword(), didn't switch to e2 consequently --
eb_ring(e) argument of gem_can_store_dword() was replaced with e->class
passed to gem_class_can_store_dword() instead of e2->class.  As a result,
a batch that stores dword is now submitted to all engines, also those that
don't support that operation.  Fix it.

Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
---
 tests/i915/gem_exec_fence.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/tests/i915/gem_exec_fence.c b/tests/i915/gem_exec_fence.c
index 7ff7614dad..048870053a 100644
--- a/tests/i915/gem_exec_fence.c
+++ b/tests/i915/gem_exec_fence.c
@@ -331,7 +331,7 @@ static void test_fence_await(int fd, const intel_ctx_t *ctx,
 
 	i = 0;
 	for_each_ctx_engine(fd, ctx, e2) {
-		if (!gem_class_can_store_dword(fd, e->class))
+		if (!gem_class_can_store_dword(fd, e2->class))
 			continue;
 
 		if (flags & NONBLOCK) {
-- 
2.25.1

