Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4367DA7FEC0
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE65910E66C;
	Tue,  8 Apr 2025 11:15:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TwVFoKjc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C7A10E645;
 Tue,  8 Apr 2025 11:15:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110947; x=1775646947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rI9WSp63GpIxWAv6w5QbeD+AptNcdQ5QAd9S9I7IQw4=;
 b=TwVFoKjcmS2W+F4J6KRJyKzArKi1UB90+jQy3LZFdHsl9g/rL8lZKIok
 1EwLQW4jf/yly5WqOL+FBqh3PkacHmYY9rJ/zwqZwb1D0Jv/tsjJVglRV
 /0MXOWg3TE99VAW03/g9gItZEh3p1A2JN5mVsO+z9xqnlCrmiI16EUbEF
 Pt/SD82dAZZMPxiykJl0kTjQucZ0vwEuHvtih48sL5IdvYr4YAaCv2e/A
 Ex9FwlnZMKdOvtw14n+hn55mGXeehYDEt1LqpUHTH3RNJ1AWrpFG+XbDo
 P8p4JdBINTEv34yXGPGO5K9uRgEk1kem+taG7A5AhY9jf2sK5pw1df0H7 g==;
X-CSE-ConnectionGUID: hPSzaZRMRVyZyPm3HaxOXQ==
X-CSE-MsgGUID: p7V86wPSQb6qnmrJ2gf4Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655923"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655923"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:47 -0700
X-CSE-ConnectionGUID: tpYD3ELmQ7CCERsfsDiIXg==
X-CSE-MsgGUID: Xh7CjOawQSeTC9n/S99mtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133209996"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:45 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH v2 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Date: Tue,  8 Apr 2025 16:30:17 +0530
Message-Id: <20250408110022.1907802-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

DSB raises an interrupt when there is a nested GOSUB command or
illegal Head/Tail. Add support to log such errors in the DSB
interrupt handler.

v2: Enable support only in platforms that support this (Ville)

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 97ea3c655590..5ddc3e340a79 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -634,6 +634,9 @@ static u32 dsb_error_int_status(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_STATUS;
 
+	if (DISPLAY_VER(display) >= 30)
+		errors |= DSB_GOSUB_INT_STATUS;
+
 	return errors;
 }
 
@@ -648,6 +651,9 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_EN;
 
+	if (DISPLAY_VER(display) >= 30)
+		errors |= DSB_GOSUB_INT_EN;
+
 	return errors;
 }
 
@@ -986,4 +992,7 @@ void intel_dsb_irq_handler(struct intel_display *display,
 	if (errors & DSB_POLL_ERR_INT_STATUS)
 		drm_err(display->drm, "[CRTC:%d:%s] DSB %d poll error\n",
 			crtc->base.base.id, crtc->base.name, dsb_id);
+	if (errors & DSB_GOSUB_INT_STATUS)
+		drm_err(display->drm, "[CRTC:%d:%s] DSB %d GOSUB programming error\n",
+			crtc->base.base.id, crtc->base.name, dsb_id);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dsb_regs.h b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
index cb6e0e5624a6..230104f36145 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb_regs.h
@@ -51,11 +51,13 @@
 #define   DSB_RESET_SM_STATE_MASK	REG_GENMASK(5, 4)
 #define   DSB_RUN_SM_STATE_MASK		REG_GENMASK(2, 0)
 #define DSB_INTERRUPT(pipe, id)		_MMIO(DSBSL_INSTANCE(pipe, id) + 0x28)
+#define   DSB_GOSUB_INT_EN		REG_BIT(21) /* ptl+ */
 #define   DSB_ATS_FAULT_INT_EN		REG_BIT(20) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_EN		REG_BIT(19)
 #define   DSB_RSPTIMEOUT_INT_EN		REG_BIT(18)
 #define   DSB_POLL_ERR_INT_EN		REG_BIT(17)
 #define   DSB_PROG_INT_EN		REG_BIT(16)
+#define   DSB_GOSUB_INT_STATUS		REG_BIT(5) /* ptl+ */
 #define   DSB_ATS_FAULT_INT_STATUS	REG_BIT(4) /* mtl+ */
 #define   DSB_GTT_FAULT_INT_STATUS	REG_BIT(3)
 #define   DSB_RSPTIMEOUT_INT_STATUS	REG_BIT(2)
-- 
2.25.1

