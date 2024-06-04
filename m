Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4508FB71B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:28:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4DB10E4F5;
	Tue,  4 Jun 2024 15:28:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BVQhrmym";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE68A10E4FD
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 15:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717514933; x=1749050933;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FcAwUJYbw+6e3QE8zblMQqh4C+6kJGtlcYrfc4My39o=;
 b=BVQhrmymALIC6MRTqvrGmczW+jPHbvN3F4MEmw4AFJ3WQpRndrfpI4Ge
 WrjSyw/v+yfFgkPiDUAF7r8dx1mm4JmxjHQ++INA7e1jalA766wFl1q5G
 hZiPL/kVhH/6amEE1Ii4m85IIDfIfCE47VMnpplJgNnghtv5ksr0VDGH5
 Jmd94LnqccTQGiGzJokNtFrtXqHkJ16/d2qmWinyXwVK6Dmvbnq9MxmJ9
 2IPqMR/+MROYjsWhHKyXDEPIgsZgVTdKif668h6bvJkfHv4sZVT7X5Mju
 CQN9lM2x/ARMBiYc8w0nNYKDKYpmHPk9YYgEZPmLvTsFHA3uVmGvN9Lvp A==;
X-CSE-ConnectionGUID: abYQvfhSSVOI9558PEE+FA==
X-CSE-MsgGUID: ugGJzyP0RMSZQQvv/4EfxA==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="17009229"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="17009229"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:53 -0700
X-CSE-ConnectionGUID: gQXpxL3XTOOJqVRLDwpORQ==
X-CSE-MsgGUID: SeT6UWUcRLKc0IqLQ4DNug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37742230"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.123])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:28:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 30/65] drm/i915: pass dev_priv explicitly to PIPE_FLIPCOUNT_G4X
Date: Tue,  4 Jun 2024 18:25:48 +0300
Message-Id: <c53a6f5cd97976f43fbae442034074d2ea9aac42.1717514638.git.jani.nikula@intel.com>
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
explicitly to the PIPE_FLIPCOUNT_G4X register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c       | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c         | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h             | 2 +-
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c | 8 ++++----
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 9cdb53015d16..2f4c9c66b40b 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -1437,7 +1437,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 	}
 
 	if (info->plane == PLANE_PRIMARY)
-		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(info->pipe))++;
+		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, info->pipe))++;
 
 	if (info->async_flip)
 		intel_vgpu_trigger_virtual_event(vgpu, info->event);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 039d2cb273df..bb904266c3cd 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -1021,7 +1021,7 @@ static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 	write_vreg(vgpu, offset, p_data, bytes);
 	vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
 
-	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
+	vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
 
 	if (vgpu_vreg_t(vgpu, DSPCNTR(dev_priv, pipe)) & PLANE_CTL_ASYNC_FLIP)
 		intel_vgpu_trigger_virtual_event(vgpu, event);
@@ -1063,7 +1063,7 @@ static int reg50080_mmio_write(struct intel_vgpu *vgpu,
 	write_vreg(vgpu, offset, p_data, bytes);
 	if (plane == PLANE_PRIMARY) {
 		vgpu_vreg_t(vgpu, DSPSURFLIVE(dev_priv, pipe)) = vgpu_vreg(vgpu, offset);
-		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(pipe))++;
+		vgpu_vreg_t(vgpu, PIPE_FLIPCOUNT_G4X(dev_priv, pipe))++;
 	} else {
 		vgpu_vreg_t(vgpu, SPRSURFLIVE(pipe)) = vgpu_vreg(vgpu, offset);
 	}
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index d62da57afda7..5d9429bf17a8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2258,7 +2258,7 @@
 #define _PIPEA_FRMCOUNT_G4X	0x70040
 #define _PIPEA_FLIPCOUNT_G4X	0x70044
 #define PIPE_FRMCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FRMCOUNT_G4X)
-#define PIPE_FLIPCOUNT_G4X(pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
+#define PIPE_FLIPCOUNT_G4X(dev_priv, pipe) _MMIO_PIPE2(dev_priv, pipe, _PIPEA_FLIPCOUNT_G4X)
 
 /* CHV pipe B blender */
 #define _CHV_BLEND_A		0x60a00
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index 2e027f3ee750..ba3f734ced0b 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -138,10 +138,10 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
 	MMIO_D(PIPESTAT(dev_priv, PIPE_B));
 	MMIO_D(PIPESTAT(dev_priv, PIPE_C));
 	MMIO_D(PIPESTAT(dev_priv, _PIPE_EDP));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_A));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_B));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(PIPE_C));
-	MMIO_D(PIPE_FLIPCOUNT_G4X(_PIPE_EDP));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_A));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_B));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, PIPE_C));
+	MMIO_D(PIPE_FLIPCOUNT_G4X(dev_priv, _PIPE_EDP));
 	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_A));
 	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_B));
 	MMIO_D(PIPE_FRMCOUNT_G4X(dev_priv, PIPE_C));
-- 
2.39.2

