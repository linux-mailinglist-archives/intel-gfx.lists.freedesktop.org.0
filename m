Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AA31E22E2
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2020 15:26:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2436E1BB;
	Tue, 26 May 2020 13:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018B26E1BB;
 Tue, 26 May 2020 13:25:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21297534-1500050 
 for multiple; Tue, 26 May 2020 14:25:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 May 2020 14:25:48 +0100
Message-Id: <20200526132548.76656-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.27.0.rc0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib/i915: Restore hangcheck modparams
 between tests
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
Cc: igt-dev@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The hangcheck/reset modparam has far reaching effects and disables
functionality if switch off. This can surprise a few tests causing them
to skip.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/1929
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 lib/i915/gem.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/lib/i915/gem.c b/lib/i915/gem.c
index 3ef31ed33..45db8a0fd 100644
--- a/lib/i915/gem.c
+++ b/lib/i915/gem.c
@@ -130,6 +130,13 @@ static void reset_device(int i915)
 	close(dir);
 }
 
+static void restore_params(int i915)
+{
+	/* Re-enable modparams if left clobbered */
+	igt_params_set(i915, "reset", "%u", -1);
+	igt_params_set(i915, "enable_hangcheck", "%u", 1);
+}
+
 void igt_require_gem(int i915)
 {
 	int err;
@@ -150,6 +157,7 @@ void igt_require_gem(int i915)
 	 * sequences of batches.
 	 */
 	reset_device(i915);
+	restore_params(i915);
 	restore_defaults(i915);
 
 	err = 0;
-- 
2.27.0.rc0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
