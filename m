Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D039409FB
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 09:35:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3BD10E40B;
	Tue, 30 Jul 2024 07:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lIOflPpS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA02310E40B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 07:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722324898; x=1753860898;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2AIiL46W/jXVXcrZris2N0Mui1prDU5G7cVDkEmzyYI=;
 b=lIOflPpSUw/w8oszzZCr0MYJaVLW1wBgESjVKbtVDJfcVQaP10aqzU/4
 0Nly7yjts7tI2NnFRz1PaI3EhMu0OTN4G7I3Tq9YEigdsJt7GVEvRI/9k
 uuZr0jGrw3iFlt+uyR18VASEGWHt6fXvw33S8H8sxNPQ7PFRbGm63zCVt
 0K07XsPNDoyUGXj1aeK1WSp1hgJy9hjSQzX+1486daGfWGSVpFY+nJSmM
 grW4Yxp0sTUTLaln5QEBoabZ4Eb+KM53BCfG+YbNZ8tUxTTndD/XFsGBj
 XwWNF6qxY8KYzpRUuYOAvnoDA1WzgNern1T7cTcMquMKSKvKXUJutRe2U Q==;
X-CSE-ConnectionGUID: aLkS102rTpS2nD0sSJMgag==
X-CSE-MsgGUID: GrAIXrkBSg2Ou0+GdlqMFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="19964356"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="19964356"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 00:34:58 -0700
X-CSE-ConnectionGUID: 9HGdyj/xQaqhblkiLaW7qQ==
X-CSE-MsgGUID: kGMxFPRySfypV7fcCfffiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58389196"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa003.fm.intel.com with ESMTP; 30 Jul 2024 00:34:55 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 matthew.d.roper@intel.com
Cc: andi.shyti@intel.com,
	chris.p.wilson@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH v2] drm/i915: Add Wa_14019789679
Date: Tue, 30 Jul 2024 13:22:20 +0530
Message-Id: <20240730075220.3087411-1-nitin.r.gote@intel.com>
X-Mailer: git-send-email 2.25.1
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

Wa_14019789679 implementation for MTL, ARL and DG2.

v2: Corrected condition

Bspec: 47083

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 2bd8d98d2110..c143d8133a28 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -220,6 +220,7 @@
 #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
 #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
 #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
+#define CMD_3DSTATE_MESH_CONTROL ((0x3<<29)|(0x3<<27)|(0x0<<24)|(0x77<<16)|(0x3))
 
 #define XY_CTRL_SURF_INSTR_SIZE		5
 #define MI_FLUSH_DW_SIZE		3
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 09a287c1aedd..cbc2003886d5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	if (ret)
 		return ret;
 
-	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+	if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) &&
+			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(rq->i915))
+		cs = intel_ring_begin(rq, (wal->count * 2 + 4));
+	else
+		cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	}
 	*cs++ = MI_NOOP;
 
+	/* Wa_14019789679 */
+	if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) &&
+			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(rq->i915)) {
+		*cs++ = CMD_3DSTATE_MESH_CONTROL;
+		*cs++ = MI_NOOP;
+	}
+
 	intel_uncore_forcewake_put__locked(uncore, fw);
 	spin_unlock(&uncore->lock);
 	intel_gt_mcr_unlock(wal->gt, flags);
-- 
2.25.1

