Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC8511A99D
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:04:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0DC56EB0B;
	Wed, 11 Dec 2019 11:04:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62DA36EB0B
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19539182-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 11:04:33 +0000
Message-Id: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/5] drm/i915: Fix cmdparser drm.debug
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

The cmdparser rejection debug is not for driver development, but for the
user, for which we use a plain DRM_DEBUG().

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 55 +++++++++++++-------------
 1 file changed, 27 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 2ed497e7c9fd..7b7061973c5e 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -731,7 +731,7 @@ static u32 gen7_render_get_cmd_length_mask(u32 cmd_header)
 			return 0xFF;
 	}
 
-	DRM_DEBUG_DRIVER("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
+	DRM_DEBUG("CMD: Abnormal rcs cmd length! 0x%08X\n", cmd_header);
 	return 0;
 }
 
@@ -754,7 +754,7 @@ static u32 gen7_bsd_get_cmd_length_mask(u32 cmd_header)
 			return 0xFF;
 	}
 
-	DRM_DEBUG_DRIVER("CMD: Abnormal bsd cmd length! 0x%08X\n", cmd_header);
+	DRM_DEBUG("CMD: Abnormal bsd cmd length! 0x%08X\n", cmd_header);
 	return 0;
 }
 
@@ -767,7 +767,7 @@ static u32 gen7_blt_get_cmd_length_mask(u32 cmd_header)
 	else if (client == INSTR_BC_CLIENT)
 		return 0xFF;
 
-	DRM_DEBUG_DRIVER("CMD: Abnormal blt cmd length! 0x%08X\n", cmd_header);
+	DRM_DEBUG("CMD: Abnormal blt cmd length! 0x%08X\n", cmd_header);
 	return 0;
 }
 
@@ -778,7 +778,7 @@ static u32 gen9_blt_get_cmd_length_mask(u32 cmd_header)
 	if (client == INSTR_MI_CLIENT || client == INSTR_BC_CLIENT)
 		return 0xFF;
 
-	DRM_DEBUG_DRIVER("CMD: Abnormal blt cmd length! 0x%08X\n", cmd_header);
+	DRM_DEBUG("CMD: Abnormal blt cmd length! 0x%08X\n", cmd_header);
 	return 0;
 }
 
@@ -1211,7 +1211,7 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 		return true;
 
 	if (desc->flags & CMD_DESC_REJECT) {
-		DRM_DEBUG_DRIVER("CMD: Rejected command: 0x%08X\n", *cmd);
+		DRM_DEBUG("CMD: Rejected command: 0x%08X\n", *cmd);
 		return false;
 	}
 
@@ -1231,8 +1231,8 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 				find_reg(engine, reg_addr);
 
 			if (!reg) {
-				DRM_DEBUG_DRIVER("CMD: Rejected register 0x%08X in command: 0x%08X (%s)\n",
-						 reg_addr, *cmd, engine->name);
+				DRM_DEBUG("CMD: Rejected register 0x%08X in command: 0x%08X (%s)\n",
+					  reg_addr, *cmd, engine->name);
 				return false;
 			}
 
@@ -1242,22 +1242,22 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 			 */
 			if (reg->mask) {
 				if (desc->cmd.value == MI_LOAD_REGISTER_MEM) {
-					DRM_DEBUG_DRIVER("CMD: Rejected LRM to masked register 0x%08X\n",
-							 reg_addr);
+					DRM_DEBUG("CMD: Rejected LRM to masked register 0x%08X\n",
+						  reg_addr);
 					return false;
 				}
 
 				if (desc->cmd.value == MI_LOAD_REGISTER_REG) {
-					DRM_DEBUG_DRIVER("CMD: Rejected LRR to masked register 0x%08X\n",
-							 reg_addr);
+					DRM_DEBUG("CMD: Rejected LRR to masked register 0x%08X\n",
+						  reg_addr);
 					return false;
 				}
 
 				if (desc->cmd.value == MI_LOAD_REGISTER_IMM(1) &&
 				    (offset + 2 > length ||
 				     (cmd[offset + 1] & reg->mask) != reg->value)) {
-					DRM_DEBUG_DRIVER("CMD: Rejected LRI to masked register 0x%08X\n",
-							 reg_addr);
+					DRM_DEBUG("CMD: Rejected LRI to masked register 0x%08X\n",
+						  reg_addr);
 					return false;
 				}
 			}
@@ -1284,8 +1284,8 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 			}
 
 			if (desc->bits[i].offset >= length) {
-				DRM_DEBUG_DRIVER("CMD: Rejected command 0x%08X, too short to check bitmask (%s)\n",
-						 *cmd, engine->name);
+				DRM_DEBUG("CMD: Rejected command 0x%08X, too short to check bitmask (%s)\n",
+					  *cmd, engine->name);
 				return false;
 			}
 
@@ -1293,11 +1293,11 @@ static bool check_cmd(const struct intel_engine_cs *engine,
 				desc->bits[i].mask;
 
 			if (dword != desc->bits[i].expected) {
-				DRM_DEBUG_DRIVER("CMD: Rejected command 0x%08X for bitmask 0x%08X (exp=0x%08X act=0x%08X) (%s)\n",
-						 *cmd,
-						 desc->bits[i].mask,
-						 desc->bits[i].expected,
-						 dword, engine->name);
+				DRM_DEBUG("CMD: Rejected command 0x%08X for bitmask 0x%08X (exp=0x%08X act=0x%08X) (%s)\n",
+					  *cmd,
+					  desc->bits[i].mask,
+					  desc->bits[i].expected,
+					  dword, engine->name);
 				return false;
 			}
 		}
@@ -1425,7 +1425,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			 batch_start_offset, batch_len,
 			 &needs_clflush_after);
 	if (IS_ERR(cmd)) {
-		DRM_DEBUG_DRIVER("CMD: Failed to copy batch\n");
+		DRM_DEBUG("CMD: Failed to copy batch\n");
 		return PTR_ERR(cmd);
 	}
 
@@ -1446,8 +1446,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 
 		desc = find_cmd(engine, *cmd, desc, &default_desc);
 		if (!desc) {
-			DRM_DEBUG_DRIVER("CMD: Unrecognized command: 0x%08X\n",
-					 *cmd);
+			DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
 			ret = -EINVAL;
 			goto err;
 		}
@@ -1458,10 +1457,10 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 			length = ((*cmd & desc->length.mask) + LENGTH_BIAS);
 
 		if ((batch_end - cmd) < length) {
-			DRM_DEBUG_DRIVER("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
-					 *cmd,
-					 length,
-					 batch_end - cmd);
+			DRM_DEBUG("CMD: Command length exceeds batch length: 0x%08X length=%u batchlen=%td\n",
+				  *cmd,
+				  length,
+				  batch_end - cmd);
 			ret = -EINVAL;
 			goto err;
 		}
@@ -1488,7 +1487,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		cmd += length;
 		offset += length;
 		if  (cmd >= batch_end) {
-			DRM_DEBUG_DRIVER("CMD: Got to the end of the buffer w/o a BBE cmd!\n");
+			DRM_DEBUG("CMD: Got to the end of the buffer w/o a BBE cmd!\n");
 			ret = -EINVAL;
 			goto err;
 		}
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
