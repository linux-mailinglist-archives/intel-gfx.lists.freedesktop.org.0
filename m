Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A9911A99F
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 12:04:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718746EB0D;
	Wed, 11 Dec 2019 11:04:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 500456EB0C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:42 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19539185-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 11:04:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 11:04:35 +0000
Message-Id: <20191211110437.4082687-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
References: <20191211110437.4082687-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/5] drm/i915: Simplify error escape from cmdparser
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

We need to flush the destination buffer, even on error, to maintain
consistent cache state. Thereby removing the jump on error past the
clear, and reducing the loop-escape mechanism to a mere break.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_cmd_parser.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_cmd_parser.c b/drivers/gpu/drm/i915/i915_cmd_parser.c
index 2f5811d3707e..b692c40348a1 100644
--- a/drivers/gpu/drm/i915/i915_cmd_parser.c
+++ b/drivers/gpu/drm/i915/i915_cmd_parser.c
@@ -1453,7 +1453,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		if (!desc) {
 			DRM_DEBUG("CMD: Unrecognized command: 0x%08X\n", *cmd);
 			ret = -EINVAL;
-			goto err;
+			break;
 		}
 
 		if (desc->flags & CMD_DESC_FIXED)
@@ -1467,21 +1467,18 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 				  length,
 				  batch_end - cmd);
 			ret = -EINVAL;
-			goto err;
+			break;
 		}
 
 		if (!check_cmd(engine, desc, cmd, length)) {
 			ret = -EACCES;
-			goto err;
+			break;
 		}
 
 		if (desc->cmd.value == MI_BATCH_BUFFER_START) {
 			ret = check_bbstart(cmd, offset, length, batch_length,
 					    batch_addr, shadow_addr,
 					    jump_whitelist);
-
-			if (ret)
-				goto err;
 			break;
 		}
 
@@ -1493,7 +1490,7 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		if  (cmd >= batch_end) {
 			DRM_DEBUG("CMD: Got to the end of the buffer w/o a BBE cmd!\n");
 			ret = -EINVAL;
-			goto err;
+			break;
 		}
 	} while (1);
 
@@ -1503,7 +1500,6 @@ int intel_engine_cmd_parser(struct intel_engine_cs *engine,
 		drm_clflush_virt_range(ptr, (void *)(cmd + 1) - ptr);
 	}
 
-err:
 	if (!IS_ERR_OR_NULL(jump_whitelist))
 		kfree(jump_whitelist);
 	i915_gem_object_unpin_map(shadow->obj);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
