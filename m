Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F360867F70
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 18:59:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08A210E7B8;
	Mon, 26 Feb 2024 17:59:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YU5WlWFx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF97B10E7B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 17:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708970346; x=1740506346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vJe492xYuLZzZmfzw+gLT8T/jL0ysjDdzjqEjaArfK8=;
 b=YU5WlWFx7EBXQGNGcOOP7V1QkLaoItumIzjyYddvbeLrkrMTBr6d0tc+
 XcSwRcCxaV2ngjTaWuio7NehFqz3dTysBDhENxo53VdR92PzZMSHxx/Mb
 yBk7nx7M9XT2ng7oMCgtpZ0I4FDkntobcpzPODkqjugzdKVjb9t/KfTI/
 BqqkIUm9JNuAQbh99dnuxofYRSVmYlI1Rv1u8wL09kGH5av9T2zehEPOc
 t94p0hlkpMnsE9KC7fOjwQ1qohERzODv1JkhhQ35LJLqE6ldOrElKAs2r
 Pd8gxA7fNBXTNPaJQ66zKRrPckRFRHPx5of7UWBC04z54htgB2enRIzuN w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14417100"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="14417100"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:59:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="6898232"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:59:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 3/3] drm/i915/bios: abstract child device expected size
Date: Mon, 26 Feb 2024 19:58:54 +0200
Message-Id: <20240226175854.287871-3-jani.nikula@intel.com>
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

Add a function to return the expected child device size. Flip the if
ladder around and use the same versions as in documentation to make it
easier to verify. Return an error for unknown versions. No functional
changes.

v2: Move BUILD_BUG_ON() next to the expected sizes

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 40 ++++++++++++++---------
 1 file changed, 24 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c0f41bd1f946..343726de9aa7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2699,27 +2699,35 @@ static void parse_ddi_ports(struct drm_i915_private *i915)
 		print_ddi_port(devdata);
 }
 
+static int child_device_expected_size(u16 version)
+{
+	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
+
+	if (version > 256)
+		return -ENOENT;
+	else if (version >= 256)
+		return 40;
+	else if (version >= 216)
+		return 39;
+	else if (version >= 196)
+		return 38;
+	else if (version >= 195)
+		return 37;
+	else if (version >= 111)
+		return LEGACY_CHILD_DEVICE_CONFIG_SIZE;
+	else if (version >= 106)
+		return 27;
+	else
+		return 22;
+}
+
 static bool child_device_size_valid(struct drm_i915_private *i915, int size)
 {
 	int expected_size;
 
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
+	expected_size = child_device_expected_size(i915->display.vbt.version);
+	if (expected_size < 0) {
 		expected_size = sizeof(struct child_device_config);
-		BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
 		drm_dbg(&i915->drm,
 			"Expected child device config size for VBT version %u not known; assuming %d\n",
 			i915->display.vbt.version, expected_size);
-- 
2.39.2

