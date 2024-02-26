Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D94F8867F6F
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 18:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1222210E7AE;
	Mon, 26 Feb 2024 17:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DRpZUHnq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D52EA10E7AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 17:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708970341; x=1740506341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e1zqURJctz5kVkir8k3Jcw/uNTZP56HbKGYHfq4gVq0=;
 b=DRpZUHnq8wJbW0G04jPWF0zk7GTHtQdAqYFoqbS1D+KZjvMbLSliAK1r
 5j8MKIQw5ErwhJkE2f0jOr6nIzrYHiLUkDPxsfPBg+LXKG1oo+b3Ndq3X
 FR8sHeGZVH3Q6qwQd7AzVW4Lwv5lpWBuZvAfJyZqC6VfdhL1Bc0viJN1X
 gh8Oc4e4RqO6/PD9SnPcqYfLaxdxk/vRHqEnwWBiGBAbevlUU3diNbP53
 2F14okeRGaoNo9JB+jVGcilYjwG6daIrqLKlx2ATevoLwLQJ75X4faL2M
 p0N4/1zdAfH+Y5lLMfo4+ywEBXCF4ex0SzdHthPLScbb4IN+7oUnl7LQm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3121022"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3121022"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:59:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11487573"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:58:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 2/3] drm/i915/bios: abstract child device size check
Date: Mon, 26 Feb 2024 19:58:53 +0200
Message-Id: <20240226175854.287871-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240226175854.287871-1-jani.nikula@intel.com>
References: <20240226175854.287871-1-jani.nikula@intel.com>
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

Separate the child device size check to a separate function for
clarity. No functional changes.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 79 +++++++++++++----------
 1 file changed, 44 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f967ab406e35..c0f41bd1f946 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2699,6 +2699,49 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
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
+		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
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
@@ -2706,7 +2749,6 @@ parse_general_definitions(struct drm_i915_private *i915)
 	struct intel_bios_encoder_data *devdata;
 	const struct child_device_config *child;
 	int i, child_device_num;
-	u8 expected_size;
 	u16 block_size;
 	int bus_pin;
 
@@ -2730,41 +2772,8 @@ parse_general_definitions(struct drm_i915_private *i915)
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
-		BUILD_BUG_ON(sizeof(*child) < 40);
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

