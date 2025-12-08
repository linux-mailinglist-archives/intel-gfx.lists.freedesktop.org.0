Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB1ECADFD6
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Dec 2025 19:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E11E10E4C2;
	Mon,  8 Dec 2025 18:27:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FRc1F355";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42BA210E4C0;
 Mon,  8 Dec 2025 18:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765218450; x=1796754450;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=b/0ao8tHE3EIdf/PgxAiq/21szK5PF1aJnfOR9mabwY=;
 b=FRc1F3559UgGiUloVEII5fKeD+GKfHKJqfXvxnlbigXcKwTwoTHOaA/A
 KA5emaCZ5AGjYhmaovJVJllshpjqfcH3iQpX6zmYXoCCWU8rqsxr0RvVy
 uwkeRkjCu5LUkks3DUCSM5Q4Sol0FoBvnvWfzsPSZQ3RvHjbep1BlJXVU
 HgZi8E9O6dCyAe6FaWffMEYq3n4dWBZNlex8cmRtyUDKIhpsKE6JpIOwx
 4NUGfFlOIZemggAYNrWep8e2ZXyzAD/4JKK+RcYShpv2ChD7wYu9Oq+So
 q1+u8xQ3F3Yo8D8orFwq/HqngKv73xBYUGeOzrqL5cbv4sbCzO1Hoimf8 A==;
X-CSE-ConnectionGUID: kCBMnGbMRW+44WUjOthjMA==
X-CSE-MsgGUID: 79jfP71uSgqWpNifCkKH2A==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67129548"
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="67129548"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:25 -0800
X-CSE-ConnectionGUID: FNRRPa94TFyZhtITr4Easw==
X-CSE-MsgGUID: E2ZqgXoWS7SAQ+dQ55J0Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,259,1758610800"; d="scan'208";a="196014470"
Received: from rvuia-mobl.ger.corp.intel.com (HELO localhost) ([10.245.245.89])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2025 10:27:24 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/19] drm/i915/de: Add intel_de_write8()
Date: Mon,  8 Dec 2025 20:26:29 +0200
Message-ID: <20251208182637.334-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251208182637.334-1-ville.syrjala@linux.intel.com>
References: <20251208182637.334-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Add a write counterpart to intel_de_read8(). Will be used for
MMIO access to VGA registers on pre-g4x.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h               | 8 ++++++++
 drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 8 ++++++++
 drivers/gpu/drm/xe/xe_mmio.c                          | 9 +++++++++
 drivers/gpu/drm/xe/xe_mmio.h                          | 1 +
 4 files changed, 26 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 5c1b37d30045..f30f3f8ebee1 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -42,6 +42,14 @@ intel_de_read8(struct intel_display *display, i915_reg_t reg)
 	return intel_uncore_read8(__to_uncore(display), reg);
 }
 
+static inline void
+intel_de_write8(struct intel_display *display, i915_reg_t reg, u8 val)
+{
+	drm_WARN_ON(display->drm, DISPLAY_VER(display) >= 5 || display->platform.g4x);
+
+	intel_uncore_write8(__to_uncore(display), reg, val);
+}
+
 static inline u64
 intel_de_read64_2x32(struct intel_display *display,
 		     i915_reg_t lower_reg, i915_reg_t upper_reg)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
index d93ddacdf743..02b096bd7a4c 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
@@ -40,6 +40,14 @@ static inline u8 intel_uncore_read8(struct intel_uncore *uncore,
 	return xe_mmio_read8(__compat_uncore_to_mmio(uncore), reg);
 }
 
+static inline void intel_uncore_write8(struct intel_uncore *uncore,
+				       i915_reg_t i915_reg, u8 val)
+{
+	struct xe_reg reg = XE_REG(i915_mmio_reg_offset(i915_reg));
+
+	xe_mmio_write8(__compat_uncore_to_mmio(uncore), reg, val);
+}
+
 static inline u16 intel_uncore_read16(struct intel_uncore *uncore,
 				      i915_reg_t i915_reg)
 {
diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.c
index 350dca1f0925..6bdaedc1da73 100644
--- a/drivers/gpu/drm/xe/xe_mmio.c
+++ b/drivers/gpu/drm/xe/xe_mmio.c
@@ -158,6 +158,15 @@ u8 xe_mmio_read8(struct xe_mmio *mmio, struct xe_reg reg)
 	return val;
 }
 
+void xe_mmio_write8(struct xe_mmio *mmio, struct xe_reg reg, u8 val)
+{
+	u32 addr = xe_mmio_adjusted_addr(mmio, reg.addr);
+
+	trace_xe_reg_rw(mmio, true, addr, val, sizeof(val));
+
+	writeb(val, mmio->regs + addr);
+}
+
 u16 xe_mmio_read16(struct xe_mmio *mmio, struct xe_reg reg)
 {
 	u32 addr = xe_mmio_adjusted_addr(mmio, reg.addr);
diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.h
index 15362789ab99..cd355a43af3d 100644
--- a/drivers/gpu/drm/xe/xe_mmio.h
+++ b/drivers/gpu/drm/xe/xe_mmio.h
@@ -17,6 +17,7 @@ int xe_mmio_probe_tiles(struct xe_device *xe);
 void xe_mmio_init(struct xe_mmio *mmio, struct xe_tile *tile, void __iomem *ptr, u32 size);
 
 u8 xe_mmio_read8(struct xe_mmio *mmio, struct xe_reg reg);
+void xe_mmio_write8(struct xe_mmio *mmio, struct xe_reg reg, u8 val);
 u16 xe_mmio_read16(struct xe_mmio *mmio, struct xe_reg reg);
 void xe_mmio_write32(struct xe_mmio *mmio, struct xe_reg reg, u32 val);
 u32 xe_mmio_read32(struct xe_mmio *mmio, struct xe_reg reg);
-- 
2.51.2

