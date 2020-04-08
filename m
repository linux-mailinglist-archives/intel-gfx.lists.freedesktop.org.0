Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D2A1A23EE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 16:19:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152E289F43;
	Wed,  8 Apr 2020 14:19:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19B289F0A;
 Wed,  8 Apr 2020 14:19:55 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20840221-1500050 
 for multiple; Wed, 08 Apr 2020 15:19:23 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 Apr 2020 15:19:21 +0100
Message-Id: <20200408141921.2057263-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] intel-ci: Drop
 gem_exec_suspend@basic-S4-device from BAT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

S4-devices is a debug only path, and while it can prove informative as
to the nature of suspend issues, being a debug only path it is not so
relevant towards the driver health. Relegate it to the shards and idle
runs, so we can shave 20s off BAT.

gem_exec_suspend@basic itself is just a test suspend, a sanitycheck to
ensure the test is functional, for manual debugging of the tests.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Martin Peres <martin.peres@linux.intel.com>
Cc: Petri Latvala <petri.latvala@intel.com>
---
 tests/intel-ci/fast-feedback.testlist | 2 --
 1 file changed, 2 deletions(-)

diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index 620d5f3a7..2ccad4386 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -23,10 +23,8 @@ igt@gem_exec_fence@nb-await
 igt@gem_exec_gttfill@basic
 igt@gem_exec_parallel@engines
 igt@gem_exec_store@basic
-igt@gem_exec_suspend@basic
 igt@gem_exec_suspend@basic-s0
 igt@gem_exec_suspend@basic-s3
-igt@gem_exec_suspend@basic-s4-devices
 igt@gem_flink_basic@bad-flink
 igt@gem_flink_basic@bad-open
 igt@gem_flink_basic@basic
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
