Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D07785E1F
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFE310E489;
	Wed, 23 Aug 2023 17:09:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A08A10E479;
 Wed, 23 Aug 2023 17:09:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810557; x=1724346557;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n57d2N3BPiG7D8aEYD9UPVnfU0/qgSS9xOIqEgVeeEE=;
 b=blLQIwjNN7PA7aZlDU0xWHnSgvLr+9fbYhCKNyAfLziHnnQZKPnebZQ+
 ZqxaB4JkJptKptifGUQ02Anf2SjbEVJ8Bg4evqEeUiiZqlg/q+i/PDS74
 KMiHh93yckBhpu4jOxXmrEavyEXbtU3aZ7BKRdt77SOZXPEP6KJEgEfcV
 ZJMIO/nMyGeS0kXDReSDNzb8eJ4uJe+PDRHlX4QJey1n0pUmI6MtySP3U
 0Er9Re4hO9gVxuGrIPZgDfyNGTKUAhIC/xQ33ELIqSMNORz8kik0j7Fw7
 ndHEhqPjvq5E9vEZmJOoNCzr4HaSMJj+kbl0FyeJK4wVqNGKCvMFNIEvD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147474"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147474"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204795"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204795"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:10 -0700
Message-Id: <20230823170740.1180212-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/42] drm/i915/lnl: Add display definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Add Lunar Lake platform definitions for i915 display. The support for
LNL will be added to the xe driver, with i915 only driving the display
side. Therefore define IS_LUNARLAKE to 0 to disable it when building the
i915 module.

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 .../gpu/drm/i915/display/intel_display_device.c   | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_drv.h                   |  1 +
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index f87470da25d0..b853cd0c704a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -727,6 +727,20 @@ static const struct intel_display_device_info xe_lpdp_display = {
 		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
 };
 
+static const struct intel_display_device_info xe2_lpd_display = {
+	XE_LPD_FEATURES,
+	.has_cdclk_crawl = 1,
+	.has_cdclk_squash = 1,
+
+	.__runtime_defaults.ip.ver = 20,
+	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
+	.__runtime_defaults.cpu_transcoder_mask =
+		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
+		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
+	.__runtime_defaults.port_mask = BIT(PORT_A) | BIT(PORT_B) |
+		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
+};
+
 __diag_pop();
 
 #undef INTEL_VGA_DEVICE
@@ -795,6 +809,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 20,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 07f79b1028e1..96ac9a9cc155 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -574,6 +574,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 #define IS_DG2(i915)	IS_PLATFORM(i915, INTEL_DG2)
 #define IS_PONTEVECCHIO(i915) IS_PLATFORM(i915, INTEL_PONTEVECCHIO)
 #define IS_METEORLAKE(i915) IS_PLATFORM(i915, INTEL_METEORLAKE)
+#define IS_LUNARLAKE(dev_priv)  0
 
 #define IS_METEORLAKE_M(i915) \
 	IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_M)
-- 
2.40.1

