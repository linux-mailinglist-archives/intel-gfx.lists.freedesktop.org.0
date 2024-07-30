Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 124379414A9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 16:45:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D4410E073;
	Tue, 30 Jul 2024 14:45:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="golWTk5r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65C9210E073
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 14:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722350752; x=1753886752;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QuXKk2QiX0vXzXn5fWr7hIt2odAd9+PfoN7VDyYQ/qc=;
 b=golWTk5rYgcvKsUvLrLCnqSM+45Y2rj7u7RIPeC7ImnV4TwLhujVImo8
 xaIZg61O63AUjIG/BccrzBAP95QPsq4yb8iqcFL+HGlaSXOpwkV4fp3PX
 NPxIpXhn8opZ/MUXD8qfMdFOjOmJ9FiMU50cBdMA9iWt+PNZkgAoBscFa
 b+uPGrWjVoXkUILG8njN6jxMV6ctpD9Hv5UXDR3Wfd7BGlft1lf9cU31d
 jtIJP0AVX0CZrClmFJ+d+uqlMmaM1Ia2X9GFbO2yDY9Stjb0U3a7bgSy9
 mxxxwPLJTybA3UvegIrDyLWp5RokMIGnj5eUZkgdLyZowcBmmA1kmHvFd w==;
X-CSE-ConnectionGUID: rRnwPJ9iSBO7Uhe9/oR3GA==
X-CSE-MsgGUID: K4CFJZ8vQ2Kmati6aJfkqw==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20326890"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20326890"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 07:45:52 -0700
X-CSE-ConnectionGUID: YwvMOIP4Ti6oonrvEUf2Kw==
X-CSE-MsgGUID: AGOr/TbNQ/OfSHKCrTbbAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54613725"
Received: from nitin-super-server.iind.intel.com ([10.145.169.70])
 by orviesa006.jf.intel.com with ESMTP; 30 Jul 2024 07:45:50 -0700
From: Nitin Gote <nitin.r.gote@intel.com>
To: intel-gfx@lists.freedesktop.org, tejas.upadhyay@intel.com,
 jani.nikula@linux.intel.com, matthew.d.roper@intel.com
Cc: andi.shyti@intel.com, chris.p.wilson@intel.com,
 Nitin Gote <nitin.r.gote@intel.com>
Subject: [PATCH v3] drm/i915: Add Wa_14019789679
Date: Tue, 30 Jul 2024 20:33:13 +0530
Message-Id: <20240730150313.3227948-1-nitin.r.gote@intel.com>
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

Bspec: 47083

Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
 drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
index 2bd8d98d2110..7eaf7eddd25b 100644
--- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
+++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
@@ -220,6 +220,7 @@
 #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
 #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
 #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
+#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 << 24) | (0x77 << 16) | (0x1))
 
 #define XY_CTRL_SURF_INSTR_SIZE		5
 #define MI_FLUSH_DW_SIZE		3
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 09a287c1aedd..d942707381be 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
 	if (ret)
 		return ret;
 
-	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
+	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
+	    IS_DG2(rq->i915))
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
+	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
+	    IS_DG2(rq->i915)) {
+		*cs++ = CMD_3DSTATE_MESH_CONTROL;
+		*cs++ = 0;
+	}
+
 	intel_uncore_forcewake_put__locked(uncore, fw);
 	spin_unlock(&uncore->lock);
 	intel_gt_mcr_unlock(wal->gt, flags);
-- 
2.25.1

