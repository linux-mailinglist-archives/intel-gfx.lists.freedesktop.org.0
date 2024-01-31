Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA50844772
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 19:48:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBF8C10FC2D;
	Wed, 31 Jan 2024 18:48:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A989B10FC26
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706726934; x=1738262934;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ujEMxeVTwXcIlMHu34LmneAp6QBl5QmAcAmQ17HLewc=;
 b=HRfK42DTPqzzVcjokWX6govCy4j4TnoNGJhkO0ejssLOuOcpfJq+yRvl
 qq8VtBMmhXbc9XInDYQUgJrWUkwb0wvQpxNuHOczfbkqw2bdoBRcuw2Tj
 AljWBk8laMjXYZQcxQ69e+Vkx3lfKkEc4XMJY0MPfi3AA8BbfRV+BWQ0V
 U1NDLccpd+ii8+zLXNjGHTgc9HujXsZdDWTBmsFiTMlVTc7/K8h1AkBPQ
 Z4ll8K6Yop3Qky3fsDCUK17M7kOL2V+t3Ylt1KtgvK/eFtaaCDI48YoTv
 XtVn3e7Z4S6PHwWzRAQOm+bitGHSXBZkxKBC3KnZS6+iHH3bguXBQ8vCc A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="11072295"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="11072295"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; 
   d="scan'208";a="4257976"
Received: from abarrete-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.174])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/bios: abstract child device size check
Date: Wed, 31 Jan 2024 20:48:40 +0200
Message-Id: <20240131184841.872487-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240131184841.872487-1-jani.nikula@intel.com>
References: <20240131184841.872487-1-jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Separate the child device size check to a separate function for
clarity. No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 79 +++++++++++++----------
 1 file changed, 44 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 2805ad701fe4..9a51ab0d244e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2695,6 +2695,49 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 		print_ddi_port(devdata);
 }
 
+static bool child_device_size_valid(struct drm_i915_private *i915, int size)
+{
+	int expected_size;
+
+	if (i915->display.vbt.version < 106) {
+		expected_size = 22;
+	} else if (i915->display.vbt.version < 111) {
+		expected_size = 27;
+	} else if (i915->display.vbt.version < 195) {
+		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
+	} else if (i915->display.vbt.version == 195) {
+		expected_size = 37;
+	} else if (i915->display.vbt.version <= 215) {
+		expected_size = 38;
+	} else if (i915->display.vbt.version <= 255) {
+		expected_size = 39;
+	} else if (i915->display.vbt.version <= 256) {
+		expected_size = 40;
+	} else {
+		expected_size = sizeof(struct child_device_config);
+		BUILD_BUG_ON(sizeof(struct child_device_config) < 39);
+		drm_dbg(&i915->drm,
+			"Expected child device config size for VBT version %u not known; assuming %d\n",
+			i915->display.vbt.version, expected_size);
+	}
+
+	/* Flag an error for unexpected size, but continue anyway. */
+	if (size != expected_size)
+		drm_err(&i915->drm,
+			"Unexpected child device config size %d (expected %d for VBT version %u)\n",
+			size, expected_size, i915->display.vbt.version);
+
+	/* The legacy sized child device config is the minimum we need. */
+	if (size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
+		drm_dbg_kms(&i915->drm,
+			    "Child device config size %d is too small.\n",
+			    size);
+		return false;
+	}
+
+	return true;
+}
+
 static void
 parse_general_definitions(struct drm_i915_private *i915)
 {
@@ -2702,7 +2745,6 @@ parse_general_definitions(struct drm_i915_private *i915)
 	struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
 	int i, child_device_num;
-	u8 expected_size;
 	u16 block_size;
 	int bus_pin;
 
@@ -2726,41 +2768,8 @@ parse_general_definitions(struct drm_i915_private *i915)
 	if (intel_gmbus_is_valid_pin(i915, bus_pin))
 		i915->display.vbt.crt_ddc_pin = bus_pin;
 
-	if (i915->display.vbt.version < 106) {
-		expected_size = 22;
-	} else if (i915->display.vbt.version < 111) {
-		expected_size = 27;
-	} else if (i915->display.vbt.version < 195) {
-		expected_size = LEGACY_CHILD_DEVICE_CONFIG_SIZE;
-	} else if (i915->display.vbt.version == 195) {
-		expected_size = 37;
-	} else if (i915->display.vbt.version <= 215) {
-		expected_size = 38;
-	} else if (i915->display.vbt.version <= 255) {
-		expected_size = 39;
-	} else if (i915->display.vbt.version <= 256) {
-		expected_size = 40;
-	} else {
-		expected_size = sizeof(*child);
-		BUILD_BUG_ON(sizeof(*child) < 39);
-		drm_dbg(&i915->drm,
-			"Expected child device config size for VBT version %u not known; assuming %u\n",
-			i915->display.vbt.version, expected_size);
-	}
-
-	/* Flag an error for unexpected size, but continue anyway. */
-	if (defs->child_dev_size != expected_size)
-		drm_err(&i915->drm,
-			"Unexpected child device config size %u (expected %u for VBT version %u)\n",
-			defs->child_dev_size, expected_size, i915->display.vbt.version);
-
-	/* The legacy sized child device config is the minimum we need. */
-	if (defs->child_dev_size < LEGACY_CHILD_DEVICE_CONFIG_SIZE) {
-		drm_dbg_kms(&i915->drm,
-			    "Child device config size %u is too small.\n",
-			    defs->child_dev_size);
+	if (!child_device_size_valid(i915, defs->child_dev_size))
 		return;
-	}
 
 	/* get the number of child device */
 	child_device_num = (block_size - sizeof(*defs)) / defs->child_dev_size;
-- 
2.39.2

