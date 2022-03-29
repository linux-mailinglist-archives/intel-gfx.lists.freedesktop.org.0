Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D174EA3FA
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 02:08:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A6BF10E1A9;
	Tue, 29 Mar 2022 00:08:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2986010E1A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 00:08:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648512535; x=1680048535;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=XHzKbXrpjFmtGrBfLysx95kh6LcHmBYNqP5NyZ8PwZo=;
 b=SZp1yYvxiXSnTJDHEve2EX9VYW5jnQucg8w2AQ7k2Jcc9sxbG+zWEcdm
 0FlwfL8Q3BNZNfbicfUzI9A9CsTJhT9z3L1ro3oIffiFOeYRdF58H86LZ
 ZF/oZJUohwu7YMS4M5axd8ZtxfVekQHmcDD7NYwpOqBBFORPzIgSCGcdV
 bzavqZpq9aMccdphTxON1Ld5Q/wUh+9kNTO6v3Md3nJ7owjj6sHseIJNJ
 WFJF2UBV3mXP1/AXWrHeqoqVwk5YzO0I5o/HbmbiJ+0D8a4p2BxVKK2ip
 jCz5F5KuEhpU5NGIcQqg5ufR75RttTBGc8JhvW1ETcviGkkB1Y0jUne27 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="322314576"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="322314576"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 17:08:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="649250673"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 17:08:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Mar 2022 17:08:21 -0700
Message-Id: <20220329000822.1323195-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/ats-m: add ATS-M platform info
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

ATS-M is a server platform based on Xe_HPG and Xe_HPM, but without
display support.  From a driver point of view, it's easiest to just
handle it as DG2 (including identifying as PLATFORM_DG2), but with the
display disabled in the device info.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 40 ++++++++++++++++++++-------------
 1 file changed, 25 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 67b89769f577..2025e1114927 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1040,25 +1040,35 @@ static const struct intel_device_info xehpsdv_info = {
 	.require_force_probe = 1,
 };
 
+#define DG2_FEATURES \
+	XE_HP_FEATURES, \
+	XE_HPM_FEATURES, \
+	DGFX_FEATURES, \
+	.graphics.rel = 55, \
+	.media.rel = 55, \
+	PLATFORM(INTEL_DG2), \
+	.has_4tile = 1, \
+	.has_64k_pages = 1, \
+	.has_guc_deprivilege = 1, \
+	.needs_compact_pt = 1, \
+	.platform_engine_mask = \
+		BIT(RCS0) | BIT(BCS0) | \
+		BIT(VECS0) | BIT(VECS1) | \
+		BIT(VCS0) | BIT(VCS2)
+
 static const struct intel_device_info dg2_info = {
-	XE_HP_FEATURES,
-	XE_HPM_FEATURES,
+	DG2_FEATURES,
 	XE_LPD_FEATURES,
-	DGFX_FEATURES,
-	.graphics.rel = 55,
-	.media.rel = 55,
-	.has_4tile = 1,
-	PLATFORM(INTEL_DG2),
-	.has_guc_deprivilege = 1,
-	.has_64k_pages = 1,
-	.needs_compact_pt = 1,
-	.platform_engine_mask =
-		BIT(RCS0) | BIT(BCS0) |
-		BIT(VECS0) | BIT(VECS1) |
-		BIT(VCS0) | BIT(VCS2),
-	.require_force_probe = 1,
 	.display.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
 			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.require_force_probe = 1,
+};
+
+__maybe_unused
+static const struct intel_device_info ats_m_info = {
+	DG2_FEATURES,
+	.display = { 0 },
+	.require_force_probe = 1,
 };
 
 #undef PLATFORM
-- 
2.34.1

