Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E149158AC64
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Aug 2022 16:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EECC1B62E0;
	Fri,  5 Aug 2022 14:27:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70B5C90F3D;
 Fri,  5 Aug 2022 14:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659709661; x=1691245661;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6GEOCn/sZYHJkejV3tFNB7GfcnQMEHdpX5Y27y0A0dU=;
 b=oBUEgtZgVHn5Z6jgsLYPWTXV7nwYh3aD2o6c1+JawQz70vEnDOirhk9h
 xsDHdtmu47vgjJUcwr/yJlI7HZ5q19WjmlRPDUkmzNOK/bGz7sLLenn2H
 2jPDp7pcdxoM+IDGWeG1+/GM+MxF1Hdlfnga2juuUfS2ZzSvDNhqdup3+
 UJlOkIh1iD3ASJifyknS9sNgvenJKSuZ/2O/eGw0B36SnHXFMiDBR5Kp7
 SoPzT8njiYVMG153x/tML27yKLxZLDUyY8gAvD4HePhpr9oh9o2hQzEmR
 76s/gjau6Scbw9cv0CNB19QZnuR+UIYFZpqnt8OEHiDHNB3W1M2rmruMZ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="277131195"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="277131195"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 07:27:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="600375524"
Received: from jkrzyszt-mobl1.ger.corp.intel.com (HELO
 jkrzyszt-mobl1.intranet) ([10.213.19.138])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 07:27:37 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  5 Aug 2022 16:27:14 +0200
Message-Id: <20220805142716.185077-1-janusz.krzysztofik@linux.intel.com>
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

