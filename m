Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D0D1429A1
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 12:37:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86C066E901;
	Mon, 20 Jan 2020 11:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB416E8FD
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 11:37:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19945107-1500050 
 for multiple; Mon, 20 Jan 2020 11:36:44 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jan 2020 11:36:41 +0000
Message-Id: <20200120113642.4121605-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] intel-ci: Reduce variety of gem_sync
 in BAT
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Historically, we've had many problems with missed interrupt/seqno
syndrome and so have focus on testing with gem_sync. However, these
tests rely on the kernel itself reporting the issue which it no longer
does. So why the extra variety may impose different timing of execution
on the HW (and so different interrupt timings which may or may not help
uncover issues), they do not have any variety in driver coverage. Reduce
the variety (halving the associated runtime) as they are no more likely
to spot an issue than multiple runs through BAT.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/intel-ci/fast-feedback.testlist | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/tests/intel-ci/fast-feedback.testlist b/tests/intel-ci/fast-feedback.testlist
index f697eb0cf..8c574d910 100644
--- a/tests/intel-ci/fast-feedback.testlist
+++ b/tests/intel-ci/fast-feedback.testlist
@@ -45,9 +45,6 @@ igt@gem_ringfill@basic-default-forked
 igt@gem_ringfill@basic-default-fd
 igt@gem_sync@basic-all
 igt@gem_sync@basic-each
-igt@gem_sync@basic-many-each
-igt@gem_sync@basic-store-all
-igt@gem_sync@basic-store-each
 igt@gem_tiled_blits@basic
 igt@gem_tiled_fence_blits@basic
 igt@gem_tiled_pread_basic
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
