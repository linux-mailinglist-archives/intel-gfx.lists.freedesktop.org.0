Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F278C6600
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 13:57:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169A210E6CD;
	Wed, 15 May 2024 11:57:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J1yWGmof";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84EAD10E6CD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 11:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715774230; x=1747310230;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MBB9mUVlhhbcNVk0r4gq4Q2eRDCyYvDQsFgC8OUGaps=;
 b=J1yWGmofIDlN7JW3RdN0tEvDuXlCzyG3jr783FfW0S3htEhu4y/wTiNj
 2h4ffJuZ2OfTNxk/aNJ/WZqrJGLcE+wDvUQ+T3flLZPmnxK0p34w+XmgN
 3Azofy8rDM6aeDTmXnzKDxqIfWUb3WYc4+tF8WqZTw7tiEhsm1GCsV4mw
 JP0HVdPN7s9C6BjDgraEJLNl0s+HhCTw6XrgBxDvG4lsjg/buYFH37IG7
 qqleTpTxs8rXmuif6hNRgOiIVU6AVgsMpBfJkqTa9eRRHwRPFLFafjqP6
 UVrXZYjDugZdisuCqUtpd8nTP6A1iEDv/aTYo6+fjXA0j+kVjYoZZ/kPG w==;
X-CSE-ConnectionGUID: xC+feFhrSn2PqYlZZixaig==
X-CSE-MsgGUID: ESW11q2IRgazIlsP6Kao5w==
X-IronPort-AV: E=McAfee;i="6600,9927,11073"; a="15604784"
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="15604784"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:10 -0700
X-CSE-ConnectionGUID: J9GxeWQ0SYmjxvir84H+GQ==
X-CSE-MsgGUID: 1DoO4cgIRkGB5YBSYJPsDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,161,1712646000"; d="scan'208";a="30962301"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 04:57:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com,
	jani.nikula@intel.com
Subject: [PATCH 3/8] drm/i915: pass dev_priv explicitly to CURPOS
Date: Wed, 15 May 2024 14:56:43 +0300
Message-Id: <ca229a123cb8a5d6a2970649a47236b3da1b02ad.1715774156.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715774156.git.jani.nikula@intel.com>
References: <cover.1715774156.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the CURPOS register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c      | 8 ++++----
 drivers/gpu/drm/i915/display/intel_cursor_regs.h | 2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c            | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 6 +++---
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 573bbdec3e3d..17039d37dc91 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -298,14 +298,14 @@ static void i845_cursor_update_arm(struct intel_plane *plane,
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), 0);
 		intel_de_write_fw(dev_priv, CURBASE(dev_priv, PIPE_A), base);
 		intel_de_write_fw(dev_priv, CURSIZE(PIPE_A), size);
-		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURPOS(dev_priv, PIPE_A), pos);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, PIPE_A), cntl);
 
 		plane->cursor.base = base;
 		plane->cursor.size = size;
 		plane->cursor.cntl = cntl;
 	} else {
-		intel_de_write_fw(dev_priv, CURPOS(PIPE_A), pos);
+		intel_de_write_fw(dev_priv, CURPOS(dev_priv, PIPE_A), pos);
 	}
 }
 
@@ -647,14 +647,14 @@ static void i9xx_cursor_update_arm(struct intel_plane *plane,
 			intel_de_write_fw(dev_priv, CUR_FBC_CTL(pipe),
 					  fbc_ctl);
 		intel_de_write_fw(dev_priv, CURCNTR(dev_priv, pipe), cntl);
-		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURPOS(dev_priv, pipe), pos);
 		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
 
 		plane->cursor.base = base;
 		plane->cursor.size = fbc_ctl;
 		plane->cursor.cntl = cntl;
 	} else {
-		intel_de_write_fw(dev_priv, CURPOS(pipe), pos);
+		intel_de_write_fw(dev_priv, CURPOS(dev_priv, pipe), pos);
 		intel_de_write_fw(dev_priv, CURBASE(dev_priv, pipe), base);
 	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_cursor_regs.h b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
index 4a7e27f0c3c1..d0fa251ae8c4 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cursor_regs.h
@@ -68,7 +68,7 @@
 
 #define CURCNTR(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURACNTR)
 #define CURBASE(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURABASE)
-#define CURPOS(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
+#define CURPOS(dev_priv, pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS)
 #define CURPOS_ERLY_TPT(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURAPOS_ERLY_TPT)
 #define CURSIZE(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CURASIZE)
 #define CUR_FBC_CTL(pipe) _MMIO_CURSOR2(dev_priv, pipe, _CUR_FBC_CTL_A)
diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
index 60f368affb6c..e78de423a6c7 100644
--- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
+++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
@@ -384,7 +384,7 @@ int intel_vgpu_decode_cursor_plane(struct intel_vgpu *vgpu,
 		return  -EINVAL;
 	}
 
-	val = vgpu_vreg_t(vgpu, CURPOS(pipe));
+	val = vgpu_vreg_t(vgpu, CURPOS(dev_priv, pipe));
 	plane->x_pos = (val & _CURSOR_POS_X_MASK) >> _CURSOR_POS_X_SHIFT;
 	plane->x_sign = (val & _CURSOR_SIGN_X_MASK) >> _CURSOR_SIGN_X_SHIFT;
 	plane->y_pos = (val & _CURSOR_POS_Y_MASK) >> _CURSOR_POS_Y_SHIFT;
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index f562172995a6..5ea1fbc2e981 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -148,9 +148,9 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(CURCNTR(dev_priv, PIPE_A));
 	MMIO_D(CURCNTR(dev_priv, PIPE_B));
 	MMIO_D(CURCNTR(dev_priv, PIPE_C));
-	MMIO_D(CURPOS(PIPE_A));
-	MMIO_D(CURPOS(PIPE_B));
-	MMIO_D(CURPOS(PIPE_C));
+	MMIO_D(CURPOS(dev_priv, PIPE_A));
+	MMIO_D(CURPOS(dev_priv, PIPE_B));
+	MMIO_D(CURPOS(dev_priv, PIPE_C));
 	MMIO_D(CURBASE(dev_priv, PIPE_A));
 	MMIO_D(CURBASE(dev_priv, PIPE_B));
 	MMIO_D(CURBASE(dev_priv, PIPE_C));
-- 
2.39.2

