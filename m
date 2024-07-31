Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3013C943380
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 17:38:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D10B410E664;
	Wed, 31 Jul 2024 15:38:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UKDa/n2p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF6FE10E664
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 15:38:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722440331; x=1753976331;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nLVPTWmH6CT8K2zIBPhV24baO76ObyeiX4BptfPxVVg=;
 b=UKDa/n2pCplSvuXLaAXsPGVOSMGR5x11jaXgxEZpTFU8UPMZ+KrCNF4F
 HLh+buxGLIEWFzphHWSRO50NVjc3SekDv3TCZiEbWaVFdakBaCOtHRSDC
 e5rV6sPBFeG+8knfFB1w3G9aAQ3E7f2h3RRbhaTPzIfq64L9wqxC79WnP
 1SWvDdmwlDNTaE9oTCW88wwcsFUJc+tpNAZQ1PSmGMMW8aOcBICqBtYt1
 mLfNJOcE9NO1wLD8rGwsbLRW9uCH5/pNJ5b7ZDWjQUGW3QPOeXSk0WtBp
 rgC5H601bHyI8bBCj3rhghllnfTZcUmoq72Uypvc6EqTOdM/uoNw9IntD A==;
X-CSE-ConnectionGUID: E65ODq1aRKuEBPhmE0Cl7A==
X-CSE-MsgGUID: EL/4BCc2TVefteNn1EFBoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20213417"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20213417"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 08:38:50 -0700
X-CSE-ConnectionGUID: jpcr5n6wRr2OB7JvAFIb0Q==
X-CSE-MsgGUID: FBcLspW9Tvup96Ms+xa9yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54409371"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa006.fm.intel.com with ESMTP; 31 Jul 2024 08:38:48 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 matthew.d.roper@intel.com
Cc: andi.shyti@intel.com, chris.p.wilson@intel.com,
 Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v4] drm/i915: Add Wa_14019789679
Date: Wed, 31 Jul 2024 21:26:14 +0530
Message-Id: <20240731155614.3460645-1-nitin.r.gote@intel.com>
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

v3:
   - Fix indentation (Jani Nikula)
   - dword size should be 0x1 and
     initialize dword to 0 instead of MI_NOOP (Tejas)
   - Use IS_GFX_GT_IP_RANGE() (Tejas)

v4:
   - 3DSTATE_MESH_CONTROL instruction is 3 dwords long
     Align with dword size. (Roper, Matthew D)
   - Add RCS engine check. (Tejas)

Bspec: 47083

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c  | 16 +++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 2bd8d98d2110..5394bc7d4daf 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -220,6 +220,7 @@
 #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
 #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
 #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
+#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 << 24) | (0x77 << 16) | (0x3))
 
 #define XY_CTRL_SURF_INSTR_SIZE		5
 #define MI_FLUSH_DW_SIZE		3
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 09a287c1aedd..bfe6d8fc820f 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	if (ret)
 		return ret;
 
-	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
+	     IS_DG2(rq->i915)) && rq->engine->class == RENDER_CLASS)
+		cs = intel_ring_begin(rq, (wal->count * 2 + 6));
+	else
+		cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
@@ -1004,6 +1009,15 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	}
 	*cs++ = MI_NOOP;
 
+	/* Wa_14019789679 */
+	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
+	     IS_DG2(rq->i915)) && rq->engine->class == RENDER_CLASS) {
+		*cs++ = CMD_3DSTATE_MESH_CONTROL;
+		*cs++ = 0;
+		*cs++ = 0;
+		*cs++ = MI_NOOP;
+	}
+
 	intel_uncore_forcewake_put__locked(uncore, fw);
 	spin_unlock(&uncore->lock);
 	intel_gt_mcr_unlock(wal->gt, flags);
-- 
2.25.1

