Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CED590E80
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 11:54:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB675905EF;
	Fri, 12 Aug 2022 09:54:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97093905EF;
 Fri, 12 Aug 2022 09:54:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660298044; x=1691834044;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h1Lv1FkCTrVQ5bAD+XXqpaazyTn8gMGQvZSV42JgBYA=;
 b=N1YVU1Qt5f49B8rtedOXjAgbWJJzmvsVGO5L7hg40yDVDaLZp7DX2qlA
 s9qYUQH1RqHYV0IhhSVVCQ2r0gtB6zlQFqwVNO1JwIG7zW+3v2J3Hl+5z
 rr2Vbmu6sScuuzveYQUpwugWmCe8u254O8JEgsXow5Y0J6KTFVIMK6WUA
 PQfqonwDAnDDPdztaKzcLpZesGausPX6lTb3zk9U5iu+m0i9PSibBpukY
 cUOUxnP7eF40Si8P411J/Iug7ff4a2FC6eM+SxQUplOw7FGM2BkBjkcYC
 P0Onvyd0M/9zzU79PE457wHmYO4M9djf2b8A0fbg55sLiuEUa1Ro3ZWk8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="292359342"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="292359342"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:03 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634588833"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO jkrzyszt-mobl1.lan)
 ([10.213.22.182])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2022 02:54:00 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri, 12 Aug 2022 11:53:44 +0200
Message-Id: <20220812095346.45379-1-janusz.krzysztofik@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Mauro Carvalho Chehab <mauro.carvalho.chehab@intel.com>
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
Cc: Mauro Carvalho Chehab <mauro.chehab@linux.intel.com>
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

