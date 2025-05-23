Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1EFAC1D29
	for <lists+intel-gfx@lfdr.de>; Fri, 23 May 2025 08:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76EF410E762;
	Fri, 23 May 2025 06:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ju4JueQL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99E7E10E762;
 Fri, 23 May 2025 06:39:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747982355; x=1779518355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+gMDbiZ3/EPT+KwamuGAEsJjykAuY2UOd8b2wjRYWvs=;
 b=ju4JueQLnzTYNaVwaCpka5/pPAJXaZYCGCy54Hk091UcTqrX3jfbl5ph
 Ed+ZTxYWPGuGMGwm64AENH1a0BtxHx13iq4qofjKFzo3kCey+n8M4V/U2
 H0nkQ+7PLEzcInoprim+n/3jZjpXEYpLAh8Cmo/saTIX6UkjDxoVjMYin
 lQ+AcqIL3dmgTODJs5QBLyCM0/crIe11ORWTFixWj1DSijLtg/QEJrTrm
 TK42GJKcaTfBmSAODFE+XKSrkJRNA5GDYxOBmJu82crQjt+B6Rb2vs4k6
 FjGTv2l9HYRxX9l74LHnXeYKbd4EkcqaEq3Bz4/Yooz5ZMYLddl5DhIoT A==;
X-CSE-ConnectionGUID: /gNlGZXXTsGgpiSRX5s1Jg==
X-CSE-MsgGUID: TbLrYZTzRHaitiDQDu2jmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11441"; a="67592262"
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="67592262"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 23:39:15 -0700
X-CSE-ConnectionGUID: Zbj8KyVQTaGCvzV3nndL5Q==
X-CSE-MsgGUID: Yt7EwiG3TKeuQHqIWVGLcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,308,1739865600"; d="scan'208";a="171985326"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 22 May 2025 23:39:13 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 animesh.manna@intel.com, chaitanya.kumar.borah@intel.com
Subject: [v8 06/11] drm/i915/dsb: Add support for GOSUB interrupt
Date: Fri, 23 May 2025 11:50:36 +0530
Message-Id: <20250523062041.166468-7-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
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
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c      | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_dsb_regs.h | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 04c2096df2dc..a4a996018a82 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -655,6 +655,9 @@ static u32 dsb_error_int_status(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_STATUS;
 
+	if (DISPLAY_VER(display) >= 30)
+		errors |= DSB_GOSUB_INT_STATUS;
+
 	return errors;
 }
 
@@ -669,6 +672,9 @@ static u32 dsb_error_int_en(struct intel_display *display)
 	if (DISPLAY_VER(display) >= 14)
 		errors |= DSB_ATS_FAULT_INT_EN;
 
+	if (DISPLAY_VER(display) >= 30)
+		errors |= DSB_GOSUB_INT_EN;
+
 	return errors;
 }
 
@@ -1007,4 +1013,7 @@ void intel_dsb_irq_handler(struct intel_display *display,
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

