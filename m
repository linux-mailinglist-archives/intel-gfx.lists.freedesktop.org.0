Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC334A91B26
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 13:45:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25E5710EAD8;
	Thu, 17 Apr 2025 11:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UC7PfEyl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADFE710EAD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Apr 2025 11:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744890304; x=1776426304;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=y1IeOO8iqF3GtF2oDGtOhboWVHyldF9LCOWBffadmvQ=;
 b=UC7PfEylcflvlQvOOvZCwuZ3j9Gu6VPEOI1Uqmt8Rhbf/XCoCF1gjXY/
 rue8dNOYv3Ro35Sn9p35uTf8LT+91QQNmkY7o8oq37EjmKWci7n/HV+MM
 zbTMDg1MNOBj+OLTBb8FhGqt7dmnJDBhfYyRp+Fo8UzQb2X2U8y/kFg3j
 o8DvKQu31mAakH2x9ZxZgiHXz60RzmB2hOzlYIWQLSlSZvas0FWBEo0f8
 K7JpMue6xBCmmILPJntOjKi8yruku4KohZQLdruflUIwXZxFOlVVxDnqm
 hfnv1itkhoWp09K33OaEiHhSso6WjPc0axCOO2ML5QEpx+EsAa5R3ONHf A==;
X-CSE-ConnectionGUID: PNyzydrLRzGfyy1A7iEDbw==
X-CSE-MsgGUID: TPMDCg2kQXK6uCe7N1QIKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="46638246"
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="46638246"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 04:45:04 -0700
X-CSE-ConnectionGUID: jBH8fIWATNusYdGytG8zPA==
X-CSE-MsgGUID: iHJXtCmtTPC7s3kcZW//bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,219,1739865600"; d="scan'208";a="135943596"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 17 Apr 2025 04:45:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 17 Apr 2025 14:45:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/6] drm/i915/vga: Add more VGACNTRL bits
Date: Thu, 17 Apr 2025 14:44:50 +0300
Message-ID: <20250417114454.12836-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
References: <20250417114454.12836-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Define a pile of extra VGACNTRL bits. We don't really have
any real use for most of these but nicer to have them all
in one place rather than trawling the specs when one wants
to know what's in there.

I will have some real use for the CHV pipe select bits later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 81765f27b258..a533889c2793 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1815,9 +1815,26 @@
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
 #define   VGA_DISP_DISABLE			REG_BIT(31)
-#define   VGA_2X_MODE				REG_BIT(30)
-#define   VGA_PIPE_SEL_MASK			REG_BIT(29)
+#define   VGA_2X_MODE				REG_BIT(30) /* pre-ilk */
+#define   VGA_PIPE_SEL_MASK			REG_BIT(29) /* pre-ivb */
 #define   VGA_PIPE_SEL(pipe)			REG_FIELD_PREP(VGA_PIPE_SEL_MASK, (pipe))
+#define   VGA_PIPE_SEL_MASK_CHV			REG_GENMASK(29, 28) /* chv */
+#define   VGA_PIPE_SEL_CHV(pipe)		REG_FIELD_PREP(VGA_PIPE_SEL_MASK_CHV, (pipe))
+#define   VGA_BORDER_ENABLE			REG_BIT(26)
+#define   VGA_PIPE_CSC_ENABLE			REG_BIT(24) /* ilk+ */
+#define   VGA_CENTERING_ENABLE_MASK		REG_GENMASK(25, 24) /* pre-ilk */
+#define   VGA_PALETTE_READ_SEL			REG_BIT(23) /* pre-ivb */
+#define   VGA_PALETTE_A_WRITE_DISABLE		REG_BIT(22) /* pre-ivb */
+#define   VGA_PALETTE_B_WRITE_DISABLE		REG_BIT(21) /* pre-ivb */
+#define   VGA_LEGACY_8BIT_PALETTE_ENABLE	REG_BIT(20)
+#define   VGA_PALETTE_BYPASS			REG_BIT(19)
+#define   VGA_NINE_DOT_DISABLE			REG_BIT(18)
+#define   VGA_PALETTE_READ_SEL_HI_CHV		REG_BIT(15) /* chv */
+#define   VGA_PALETTE_C_WRITE_DISABLE_CHV	REG_BIT(14) /* chv */
+#define   VGA_ACTIVE_THROTTLING_MASK		REG_GENMASK(15, 12) /* ilk+ */
+#define   VGA_BLANK_THROTTLING_MASK		REG_GENMASK(11, 8) /* ilk+ */
+#define   VGA_BLINK_DUTY_CYCLE_MASK		REG_GENMASK(7, 6)
+#define   VGA_VSYNC_BLINK_RATE_MASK		REG_GENMASK(5, 0)
 
 #define VLV_VGACNTRL		_MMIO(VLV_DISPLAY_BASE + 0x71400)
 
-- 
2.49.0

