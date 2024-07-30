Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A62D19408FE
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 08:57:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6410610E4AA;
	Tue, 30 Jul 2024 06:57:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qjv6RXhS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32C6A10E4AA
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 06:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722322659; x=1753858659;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Hdi14Dq5Kf1IaoObqaiDpxMh0yXz0Y9eQhl2w2Zpcxc=;
 b=Qjv6RXhSg2F7sv3UEUBZdqNP44XUJGYmlaNPSpyVIrKhhv9QKkLKutmE
 Eh4QCUDUIWVSR4CHqD768Bwegzf8tzN8HWkER8S+fxK8T7b319ajKK/th
 YoyHkh8OLK85tbvqivwbk2W8ZRYAdZpMfgmbYy4cvgu/cLvf/TMxylfDC
 zhnBkNbJAE4CjzZ87AkIwqC1X9ONdnaxSpyMVnNJKDPjf0ebT4SfgVSWh
 aXJSWf9Bh8YjkOj0LMehCQu2Vj+PyI2/OVSEl+gF6TOBQo9XRymayZPZF
 n05Hyw/YfGJqKGBb85Pq6G9yVQGIOkhQxB/hMF7bYNLwfhY4GIDLOnUwI w==;
X-CSE-ConnectionGUID: vdlIdem/TquT4xczA1Bxkg==
X-CSE-MsgGUID: O6lgmkRNR4OJK/jcU12MEQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="31267336"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="31267336"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 23:57:38 -0700
X-CSE-ConnectionGUID: h7l5m/AbR16C9EfoHg7oaw==
X-CSE-MsgGUID: EmzEvyoiRIGzsJBojLT5iQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="58371464"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by fmviesa003.fm.intel.com with ESMTP; 29 Jul 2024 23:57:35 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 matthew.d.roper@intel.com
Cc: andi.shyti@intel.com,
	chris.p.wilson@intel.com,
	nitin.r.gote@intel.com
Subject: [PATCH] drm/i915: Add Wa_14019789679
Date: Tue, 30 Jul 2024 12:44:57 +0530
Message-Id: <20240730071457.3015608-1-nitin.r.gote@intel.com>
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
index 09a287c1aedd..c685fb95d1f5 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	if (ret)
 		return ret;
 
-	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+	if ((GRAPHICS_VER_FULL(rq->i915) >= IP_VER(12, 70) &&
+			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(i915))
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
+			GRAPHICS_VER_FULL(rq->i915) <= IP_VER(12, 74)) || IS_DG2(i915))
+		*cs++ = CMD_3DSTATE_MESH_CONTROL;
+		*cs++ = MI_NOOP;
+	}
+
 	intel_uncore_forcewake_put__locked(uncore, fw);
 	spin_unlock(&uncore->lock);
 	intel_gt_mcr_unlock(wal->gt, flags);
-- 
2.25.1

