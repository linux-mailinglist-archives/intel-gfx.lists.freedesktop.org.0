Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1D43131F3
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Feb 2021 13:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E5F6E8A8;
	Mon,  8 Feb 2021 12:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852B06E8AF
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Feb 2021 12:15:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from build.alporthouse.com (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23810320-1500050 
 for multiple; Mon, 08 Feb 2021 12:15:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Feb 2021 12:15:23 +0000
Message-Id: <20210208121523.21716-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Allow the module to load
 even if live selftests fail
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

i915.live_selftests takes 3 options:
  0: do nothing
 -1: run selftests and prevent continuation of device probing
  1: run selftests, and allow continuation of device probing

Currently, we prevent the device from being loaded if the live selftests
fail. This seems reasonable, since the selftests indicate something is
amiss with the driver. But it does prevent the driver being used
even with a minor fault, and so prevent further inspection of the driver
state afterwards.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_selftest.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 1bc11c09faef..6d1fa2b25cbf 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -200,23 +200,23 @@ int i915_mock_selftests(void)
 
 int i915_live_selftests(struct pci_dev *pdev)
 {
-	int err;
+	int err = 0;
 
 	if (!i915_selftest.live)
 		return 0;
 
 	err = run_selftests(live, pdev_to_i915(pdev));
-	if (err) {
-		i915_selftest.live = err;
-		return err;
-	}
-
 	if (i915_selftest.live < 0) {
-		i915_selftest.live = -ENOTTY;
-		return 1;
+		/* Abort module probe in case we destablised the system */
+		if (err == 0) {
+			i915_selftest.live = -ENOTTY;
+			err = 1;
+		} else {
+			i915_selftest.live = err;
+		}
 	}
 
-	return 0;
+	return err;
 }
 
 int i915_perf_selftests(struct pci_dev *pdev)
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
