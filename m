Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BEEA9175C
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Apr 2025 11:11:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B908710EA6A;
	Thu, 17 Apr 2025 09:10:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZZEeZNCl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C99ED10EA6A;
 Thu, 17 Apr 2025 09:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744881058; x=1776417058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LT5PoLBy1nKQPSlnTCt2kkh9xoOP1gjQsiviCp6yTUM=;
 b=ZZEeZNClfO+3p8aGHELwz7rFNhD+LjlbDUXNjSpeEgJ/Whxllrgui9fR
 9xjLtl4gTai+0LXVK1JNJ0NlqiX2LBVNt/m2KrHmsThw1mAHCpXZqoQxT
 pgbIfjTaQ4ECeDx3IJw6yaLAr39wjVac3pcg865wFeSI1Yoef5TreU78R
 b7RwxYUBAsoWSVg8KS4d70P7jD53EvGmyAhpov7GdBImyEns8Emcr+41r
 CiZhntmL19KVp+VcqpOjDUUp1gljl1j6dW3IzOmYKsZObQtwh2NRSXtNG
 b2XLdXzk5Od1nEfEU3TQHU1tPEVBYiaDfJyK0EmyOecJtc5vEs0Lls6+l A==;
X-CSE-ConnectionGUID: mDgrGTaxQjiQPOfZpecIPw==
X-CSE-MsgGUID: edrCHAI/RRyfzOJKh1/r0w==
X-IronPort-AV: E=McAfee;i="6700,10204,11405"; a="57829494"
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="57829494"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:57 -0700
X-CSE-ConnectionGUID: bVy0bVNXSNqHh6eEg3u3MQ==
X-CSE-MsgGUID: zFkzgLHbQSmXd+6M53ioSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,218,1739865600"; d="scan'208";a="161694790"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.178])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2025 02:10:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/3] drm/i915/pch: abstract fake PCH detection better
Date: Thu, 17 Apr 2025 12:10:38 +0300
Message-Id: <95cd619b63a81a0a7f8c73a64694da9d41e3a575.1744880985.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744880985.git.jani.nikula@intel.com>
References: <cover.1744880985.git.jani.nikula@intel.com>
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

Abstract detection of platforms with south display on the same PCI
device or SoC die as north display, and all around clarify what this
means. Debug log about it for good measure.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c | 47 ++++++++++++++----------
 1 file changed, 28 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index fec1919e5386..5035b63a4889 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -39,6 +39,28 @@
 #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
 #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
 
+/*
+ * Check for platforms where the south display is on the same PCI device or SoC
+ * die as the north display. The PCH (if it even exists) is not involved in
+ * display. Return a fake PCH type for south display handling on these
+ * platforms, without actually detecting the PCH, and PCH_NONE otherwise.
+ */
+static enum intel_pch intel_pch_fake_for_south_display(struct intel_display *display)
+{
+	enum intel_pch pch_type = PCH_NONE;
+
+	if (DISPLAY_VER(display) >= 20)
+		pch_type = PCH_LNL;
+	else if (display->platform.battlemage || display->platform.meteorlake)
+		pch_type = PCH_MTL;
+	else if (display->platform.dg2)
+		pch_type = PCH_DG2;
+	else if (display->platform.dg1)
+		pch_type = PCH_DG1;
+
+	return pch_type;
+}
+
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
 intel_pch_type(const struct intel_display *display, unsigned short id)
@@ -258,25 +280,12 @@ void intel_pch_detect(struct intel_display *display)
 	unsigned short id;
 	enum intel_pch pch_type;
 
-	/*
-	 * South display engine on the same PCI device: just assign the fake
-	 * PCH.
-	 */
-	if (DISPLAY_VER(display) >= 20) {
-		display->pch_type = PCH_LNL;
-		return;
-	} else if (display->platform.battlemage || display->platform.meteorlake) {
-		/*
-		 * Both north display and south display are on the SoC die.
-		 * The real PCH (if it even exists) is uninvolved in display.
-		 */
-		display->pch_type = PCH_MTL;
-		return;
-	} else if (display->platform.dg2) {
-		display->pch_type = PCH_DG2;
-		return;
-	} else if (display->platform.dg1) {
-		display->pch_type = PCH_DG1;
+	pch_type = intel_pch_fake_for_south_display(display);
+	if (pch_type != PCH_NONE) {
+		display->pch_type = pch_type;
+		drm_dbg_kms(display->drm,
+			    "PCH not involved in display, using fake PCH type %d for south display\n",
+			    pch_type);
 		return;
 	}
 
-- 
2.39.5

