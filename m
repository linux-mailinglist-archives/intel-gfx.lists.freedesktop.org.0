Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AEC30892C
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Jan 2021 13:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A7C6EB17;
	Fri, 29 Jan 2021 12:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2E5689BF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Jan 2021 12:46:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23736261-1500050 
 for multiple; Fri, 29 Jan 2021 12:46:41 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Jan 2021 12:46:40 +0000
Message-Id: <20210129124640.15048-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Only trust sseu subslice fuse if
 it is set
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

Since userspace cannot run without any subslices, it seems remarkable
that any system would be configured with all fused off. Ignore the fuse
register if it says 0.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/3022
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_sseu.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
index 0d9f74aec8fe..99c992db2ce7 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
@@ -341,9 +341,10 @@ static void gen9_sseu_info_init(struct intel_gt *gt)
 	 * The subslice disable field is global, i.e. it applies
 	 * to each of the enabled slices.
 	 */
-	subslice_mask = (1 << sseu->max_subslices) - 1;
-	subslice_mask &= ~((fuse2 & GEN9_F2_SS_DIS_MASK) >>
-			   GEN9_F2_SS_DIS_SHIFT);
+	subslice_mask = (fuse2 & GEN9_F2_SS_DIS_MASK) >> GEN9_F2_SS_DIS_SHIFT;
+	if (!subslice_mask) /* Ignore the fuse if it says there is no HW */
+		subslice_mask = ~0u;
+	subslice_mask &= GENMASK(sseu->max_subslices - 1, 0);
 
 	/*
 	 * Iterate through enabled slices and subslices to
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
