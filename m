Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AACED94F642
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 20:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64BB210E263;
	Mon, 12 Aug 2024 18:07:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TK5kM8uL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6566A10E263
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 18:07:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723486061; x=1755022061;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CE6AcgIsg9GtMC0Xj66KLrEL5UyMoVUM0iN7uDaC1h8=;
 b=TK5kM8uLHn4+a4uH2yssFQvnDKGLfk9jUTPx3hQjrkpyicOYxL0XB9tM
 CDl/vAX7xN1eupYQsNzo01LtUuSCVa0oJpEGzdXrb6C3k36n1gfUg5sGR
 TK7/v8rvzfZc8shM7pRqQosUy6R6cSWwn543k2G5XT9l5s6Umcg5PENE5
 5cb73O0zLBrJH2u43XbGQS+z4JN8HQWWPHRgW0ky3gO8Q+OdGWNpmqMiG
 +lUXjGnkp/ThQDho0JPm/CZI0o1pFRIaTN416hnix4qsLEK/tSF8u/d7v
 ItZbO5XmBE2cLV2lExctheezeSK+Ba3rLs/zHfFuHLL0mq1kiESG0Mgu0 A==;
X-CSE-ConnectionGUID: OZpTjA9VT3mRNYSlA2SsvQ==
X-CSE-MsgGUID: 86lKPVxmSR2yMAqyhXP9fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="21757121"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="21757121"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 11:07:40 -0700
X-CSE-ConnectionGUID: zUqtvXeEQ7SAgT9YGn7JVg==
X-CSE-MsgGUID: TgH2a+/TQqKTiDX4eOQi+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="58290347"
Received: from mdroper-desk1.fm.intel.com ([10.1.39.133])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 11:07:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com
Subject: [PATCH] drm/xe: Name and document Wa_14019789679
Date: Mon, 12 Aug 2024 11:07:37 -0700
Message-ID: <20240812180736.2013233-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Early in the development of Xe we identified an issue with SVG state
handling on DG2 and MTL (and later on Xe2 as well).  In
commit 72ac304769dd ("drm/xe: Emit SVG state on RCS during driver load
on DG2 and MTL") and commit fb24b858a20d ("drm/xe/xe2: Update SVG state
handling") we implemented our own workaround to prevent SVG state from
leaking from context A to context B in cases where context B never
issues a specific state setting.

The hardware teams have now created official workaround Wa_14019789679
to cover this issue.  The workaround description only requires emitting
3DSTATE_MESH_CONTROL, since they believe that's the only SVG instruction
that would potentially remain unset by a context B, but still cause
notable issues if unwanted values were inherited from context A.
However since we already have a more extensive implementation that emits
the entire SVG state and prevents _any_ SVG state from unintentionally
leaking, we'll stick with our existing implementation just to be safe.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/xe_lrc.c        | 35 +++++++++++++++++++++---------
 drivers/gpu/drm/xe/xe_wa_oob.rules |  2 ++
 2 files changed, 27 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index 58121821f081..974a9cd8c379 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -5,6 +5,8 @@
 
 #include "xe_lrc.h"
 
+#include <generated/xe_wa_oob.h>
+
 #include <linux/ascii85.h>
 
 #include "instructions/xe_mi_commands.h"
@@ -24,6 +26,7 @@
 #include "xe_memirq.h"
 #include "xe_sriov.h"
 #include "xe_vm.h"
+#include "xe_wa.h"
 
 #define LRC_VALID				BIT_ULL(0)
 #define LRC_PRIVILEGE				BIT_ULL(8)
@@ -1581,19 +1584,31 @@ void xe_lrc_emit_hwe_state_instructions(struct xe_exec_queue *q, struct xe_bb *b
 	int state_table_size = 0;
 
 	/*
-	 * At the moment we only need to emit non-register state for the RCS
-	 * engine.
+	 * Wa_14019789679
+	 *
+	 * If the driver doesn't explicitly emit the SVG instructions while
+	 * setting up the default LRC, the context switch will write 0's
+	 * (noops) into the LRC memory rather than the expected instruction
+	 * headers.  Application contexts start out as a copy of the default
+	 * LRC, and if they also do not emit specific settings for some SVG
+	 * state, then on context restore they'll unintentionally inherit
+	 * whatever state setting the previous context had programmed into the
+	 * hardware (i.e., the lack of a 3DSTATE_* instruction in the LRC will
+	 * prevent the hardware from resetting that state back to any specific
+	 * value).
+	 *
+	 * The official workaround only requires emitting 3DSTATE_MESH_CONTROL
+	 * since that's a specific state setting that can easily cause GPU
+	 * hangs if unintentionally inherited.  However to be safe we'll
+	 * continue to emit all of the SVG state since it's best not to leak
+	 * any of the state between contexts, even if that leakage is harmless.
 	 */
-	if (q->hwe->class != XE_ENGINE_CLASS_RENDER)
-		return;
-
-	switch (GRAPHICS_VERx100(xe)) {
-	case 1255:
-	case 1270 ... 2004:
+	if (XE_WA(gt, 14019789679) && q->hwe->class == XE_ENGINE_CLASS_RENDER) {
 		state_table = xe_hpg_svg_state;
 		state_table_size = ARRAY_SIZE(xe_hpg_svg_state);
-		break;
-	default:
+	}
+
+	if (!state_table) {
 		xe_gt_dbg(gt, "No non-register state to emit on graphics ver %d.%02d\n",
 			  GRAPHICS_VER(xe), GRAPHICS_VERx100(xe) % 100);
 		return;
diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules b/drivers/gpu/drm/xe/xe_wa_oob.rules
index 5cf27ff27ce6..920ca5060146 100644
--- a/drivers/gpu/drm/xe/xe_wa_oob.rules
+++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
@@ -35,3 +35,5 @@
 		GRAPHICS_VERSION(2001)
 22019338487_display	PLATFORM(LUNARLAKE)
 16023588340	GRAPHICS_VERSION(2001)
+14019789679	GRAPHICS_VERSION(1255)
+		GRAPHICS_VERSION_RANGE(1270, 2004)
-- 
2.45.2

