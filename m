Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC62E36B4EE
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Apr 2021 16:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0CDB6E201;
	Mon, 26 Apr 2021 14:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 1223 seconds by postgrey-1.36 at gabe;
 Mon, 26 Apr 2021 14:31:51 UTC
Received: from smtp2.uni-freiburg.de (smtpi.uni-freiburg.de [132.230.2.212])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A7FC6E15F
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Apr 2021 14:31:51 +0000 (UTC)
Delivery-date: Mon, 26 Apr 2021 16:31:51 +0200
Received: from fe2.uni-freiburg.de ([132.230.2.222] helo=uni-freiburg.de) port
 37808 by smtp2.uni-freiburg.de with esmtp ( Exim )
 id 1lb1xO-0001HC-39
 for intel-gfx@lists.freedesktop.org; Mon, 26 Apr 2021 16:11:26 +0200
Received: from [132.230.8.113] (account simon.rettberg@rz.uni-freiburg.de HELO
 dellnichtsogutkiste)
 by mail.uni-freiburg.de (CommuniGate Pro SMTP 6.3.6f)
 with ESMTPSA id 68592614; Mon, 26 Apr 2021 16:11:25 +0200
Date: Mon, 26 Apr 2021 16:11:24 +0200
From: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210426161124.2b7fd708@dellnichtsogutkiste>
Organization: Rechenzentrum Uni Freiburg
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Disable HiZ Raw Stall Optimization
 on broken gen7
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
Cc: development@manuel-bentele.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When resetting CACHE_MODE registers, don't enable HiZ Raw Stall
Optimization on Ivybridge GT1 and Baytrail, as it causes severe glitches
when rendering any kind of 3D accelerated content.
This optimization is disabled on these platforms by default according to
official documentation from 01.org.

Fixes: ef99a60ffd9b ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
Fixes: 520d05a77b28 ("drm/i915/gt: Clear CACHE_MODE prior to clearing residuals")
BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3081
BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3404
BugLink: https://gitlab.freedesktop.org/drm/intel/-/issues/3071
Reviewed-By: Manuel Bentele <development@manuel-bentele.de>
Signed-off-by: Simon Rettberg <simon.rettberg@rz.uni-freiburg.de>
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index de575fdb0..21f08e538 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -397,7 +397,10 @@ static void emit_batch(struct i915_vma * const vma,
 	gen7_emit_pipeline_invalidate(&cmds);
 	batch_add(&cmds, MI_LOAD_REGISTER_IMM(2));
 	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_0_GEN7));
-	batch_add(&cmds, 0xffff0000);
+	batch_add(&cmds, 0xffff0000 |
+			((IS_IVB_GT1(i915) || IS_VALLEYVIEW(i915)) ?
+			 HIZ_RAW_STALL_OPT_DISABLE :
+			 0));
 	batch_add(&cmds, i915_mmio_reg_offset(CACHE_MODE_1));
 	batch_add(&cmds, 0xffff0000 | PIXEL_SUBSPAN_COLLECT_OPT_DISABLE);
 	gen7_emit_pipeline_invalidate(&cmds);
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
