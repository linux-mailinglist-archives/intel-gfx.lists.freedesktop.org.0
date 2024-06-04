Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED738FB742
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:30:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A07B10E50E;
	Tue,  4 Jun 2024 15:30:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hulwJkmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77ECE10E50E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717515033; x=1749051033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s5b0Bvq8AbLtjGr4/N20uoHWbFYhvFFEUrPOfTWMFoM=;
 b=hulwJkmXkRexYXQd9mBQ/gI+mt1SygJRKkBax0enx7C+36eLCDcHBLti
 HDrdUSwQQ2O4Q8aHVD6IbgbCvnC8Y4Cd58KavlJ9N1rElozJZIvp84lY+
 zJy7Am5d8j1jJ38Z85GWm+XOFblfvXXfb0atPKJgVZHQSogV3YNNvxbch
 Wehh68HAdaKbm2yLhKDq9hiaGLSaKPkhvlYhLV3UDrFPRYzGNN8gfeSK4
 ehY2htE8s67aSmgk/OgIOlQTOu0wtXIOHt8Rcx41kClLwPhgExZG+nPgv
 3vSzqnOYhqmjVVFgK6pbizM6UfjvFroqfzumNWAxbuaPDm1x+K5fOPCzj w==;
X-CSE-ConnectionGUID: QTOlJhSSRr2D7ijSQCzT8A==
X-CSE-MsgGUID: WO9Ifk1qRR6g2cP6UxwIKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31605447"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31605447"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:33 -0700
X-CSE-ConnectionGUID: 7+ynB85FQLeMeGJB8dbLfA==
X-CSE-MsgGUID: 6+QVlaBARfGHewwFRccQeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37145117"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:30:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 51/65] drm/i915: pass dev_priv explicitly to PIPE_DATA_N1
Date: Tue,  4 Jun 2024 18:26:09 +0300
Message-Id: <80759c6efdfdb59c4bd624af85b9db38ebe06f65.1717514638.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1717514638.git.jani.nikula@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_DATA_N1 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
 drivers/gpu/drm/i915/gvt/display.c           | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 8 ++++----
 4 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7fd65e3b018d..5eb4ad261c21 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2642,7 +2642,7 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_set_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(dev_priv, transcoder),
-			      PIPE_DATA_N1(transcoder),
+			      PIPE_DATA_N1(dev_priv, transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 	else
 		intel_set_m_n(dev_priv, m_n,
@@ -3339,7 +3339,7 @@ void intel_cpu_transcoder_get_m1_n1(struct intel_crtc *crtc,
 	if (DISPLAY_VER(dev_priv) >= 5)
 		intel_get_m_n(dev_priv, m_n,
 			      PIPE_DATA_M1(dev_priv, transcoder),
-			      PIPE_DATA_N1(transcoder),
+			      PIPE_DATA_N1(dev_priv, transcoder),
 			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
 	else
 		intel_get_m_n(dev_priv, m_n,
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index ce6f20b1dabc..5f3ee57b5982 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -263,7 +263,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 */
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
-		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
+		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
 
@@ -397,7 +397,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 */
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(dev_priv, TRANSCODER_A)) |= 0x5b425e;
-		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
+		vgpu_vreg_t(vgpu, PIPE_DATA_N1(dev_priv, TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
 		vgpu_vreg_t(vgpu, PIPE_LINK_N1(TRANSCODER_A)) = 0x80000;
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 96bfa5620989..70c5fe687254 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2380,7 +2380,7 @@
 #define _PIPEB_LINK_N2		0x6104c
 
 #define PIPE_DATA_M1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M1)
-#define PIPE_DATA_N1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
+#define PIPE_DATA_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N1)
 #define PIPE_DATA_M2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_M2)
 #define PIPE_DATA_N2(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_DATA_N2)
 #define PIPE_LINK_M1(tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_M1)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 977d695fbdff..b9ad4eec4740 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -267,7 +267,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_A));
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
+	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_A));
@@ -275,7 +275,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_A));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_A));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_B));
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_B));
+	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_B));
@@ -283,7 +283,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_B));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_B));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_C));
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_C));
+	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_C));
@@ -291,7 +291,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPE_LINK_M2(TRANSCODER_C));
 	MMIO_D(PIPE_LINK_N2(TRANSCODER_C));
 	MMIO_D(PIPE_DATA_M1(dev_priv, TRANSCODER_EDP));
-	MMIO_D(PIPE_DATA_N1(TRANSCODER_EDP));
+	MMIO_D(PIPE_DATA_N1(dev_priv, TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_M2(TRANSCODER_EDP));
 	MMIO_D(PIPE_DATA_N2(TRANSCODER_EDP));
 	MMIO_D(PIPE_LINK_M1(TRANSCODER_EDP));
-- 
2.39.2

