Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67880867F6E
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 18:59:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9923F10E6F9;
	Mon, 26 Feb 2024 17:58:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWhK8I+6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3893B10E6F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Feb 2024 17:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708970337; x=1740506337;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=atgpk9arliI6jUMoHAWaD80qLvuB19AJjGANUTms+ns=;
 b=kWhK8I+6WE9+rKHUSOrDOJ0NZn/oSk5jCtKY/vPJPtx2r6AO/WeCHOtd
 CE3uxAh5jqNuxalO+Y3PNBo+pZUgmEN4WoPD8VgArgJrgdtI1PVTbuUaZ
 wmnszbuLimDRHy+1E+ln2AuIHJfTnR8Rke3Z7D3+OHx0OHi43Q9zF8v+m
 yEJRyJHEidaTuz2V+HszAu05N+IwxBC45JE3PQ4PDmiX5+5kChSc/bqPb
 HA/pRnyqnnlNoasNc1Ir8WVp+s8ByZQ7Pte9bpt+33Wj8+3N6pqwB/u87
 rYC2H9i/5AEWTIyTBuGFHCFvFBY6IMGGQv6m2fO34tZ2tNEzwtPIIY9P+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="3121000"
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; 
   d="scan'208";a="3121000"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,186,1705392000"; d="scan'208";a="11487553"
Received: from hibeid-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.46.254])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 09:58:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/3] drm/i915/bios: bump expected child device size
Date: Mon, 26 Feb 2024 19:58:52 +0200
Message-Id: <20240226175854.287871-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

VBT versions since 256 have an extra byte for EFP index.

v2: Update BUILD_BUG_ON() (Matt)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 6 ++++--
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index fe52c06271ef..f967ab406e35 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2740,11 +2740,13 @@ parse_general_definitions(struct drm_i915_private *i915)
 		expected_size = 37;
 	} else if (i915->display.vbt.version <= 215) {
 		expected_size = 38;
-	} else if (i915->display.vbt.version <= 250) {
+	} else if (i915->display.vbt.version <= 255) {
 		expected_size = 39;
+	} else if (i915->display.vbt.version <= 256) {
+		expected_size = 40;
 	} else {
 		expected_size = sizeof(*child);
-		BUILD_BUG_ON(sizeof(*child) < 39);
+		BUILD_BUG_ON(sizeof(*child) < 40);
 		drm_dbg(&i915->drm,
 			"Expected child device config size for VBT version %u not known; assuming %u\n",
 			i915->display.vbt.version, expected_size);
diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
index a9f44abfc9fc..648934fcd123 100644
--- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
+++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
@@ -485,6 +485,7 @@ struct child_device_config {
 	u8 hdmi_iboost_level:4;					/* 196+ */
 	u8 dp_max_link_rate:3;					/* 216+ */
 	u8 dp_max_link_rate_reserved:5;				/* 216+ */
+	u8 efp_index;						/* 256+ */
 } __packed;
 
 struct bdb_general_definitions {
-- 
2.39.2

