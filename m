Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 514C627F081
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 19:28:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE0D76E7D5;
	Wed, 30 Sep 2020 17:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C11C16E7D5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 17:28:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22583181-1500050 
 for multiple; Wed, 30 Sep 2020 18:28:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 18:28:25 +0100
Message-Id: <20200930172825.30975-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Skip over MI_NOOP when parsing
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

Though less likely in practice, igt uses MI_NOOP frequently to pad out
its the batch buffers. The lookup and valiation of the MI_NOOP command
description is noticeable, though the side-effect of poisoning the
last-validate-command cache is more likely to impact upon real CS.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 58 +++++++++++++-------------
 1 file changed, 30 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index e88970256e8e..20014663cd5e 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1453,42 +1453,44 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 	 */
 	batch_end = cmd + batch_length / sizeof(*batch_end);
 	do {
-		u32 length;
+		u32 length = 1;
 
 		if (*cmd == MI_BATCH_BUFFER_END)
 			break;
 
-		desc = find_cmd(engine, *cmd, desc, &default_desc);
-		if (!desc) {
-			DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
-			ret = -EINVAL;
-			break;
-		}
+		if (*cmd) {
+			desc = find_cmd(engine, *cmd, desc, &default_desc);
+			if (!desc) {
+				DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
+				ret = -EINVAL;
+				break;
+			}
 
-		if (desc->flags & CMD_DESC_FIXED)
-			length = desc->length.fixed;
-		else
-			length = (*cmd & desc->length.mask) + LENGTH_BIAS;
+			if (desc->flags & CMD_DESC_FIXED)
+				length = desc->length.fixed;
+			else
+				length = (*cmd & desc->length.mask) + LENGTH_BIAS;
 
-		if ((batch_end - cmd) < length) {
-			DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
-				  *cmd,
-				  length,
-				  batch_end - cmd);
-			ret = -EINVAL;
-			break;
-		}
+			if ((batch_end - cmd) < length) {
+				DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
+					  *cmd,
+					  length,
+					  batch_end - cmd);
+				ret = -EINVAL;
+				break;
+			}
 
-		if (!check_cmd(engine, desc, cmd, length)) {
-			ret = -EACCES;
-			break;
-		}
+			if (!check_cmd(engine, desc, cmd, length)) {
+				ret = -EACCES;
+				break;
+			}
 
-		if (cmd_desc_is(desc, MI_BATCH_BUFFER_START)) {
-			ret = check_bbstart(cmd, offset, length, batch_length,
-					    batch_addr, shadow_addr,
-					    jump_whitelist);
-			break;
+			if (cmd_desc_is(desc, MI_BATCH_BUFFER_START)) {
+				ret = check_bbstart(cmd, offset, length, batch_length,
+						    batch_addr, shadow_addr,
+						    jump_whitelist);
+				break;
+			}
 		}
 
 		if (!IS_ERR_OR_NULL(jump_whitelist))
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
