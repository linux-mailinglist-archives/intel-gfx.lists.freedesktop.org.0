Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99E6C844775
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 19:49:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2198D10FC23;
	Wed, 31 Jan 2024 18:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F94110FC23
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 18:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706726928; x=1738262928;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RgTYwEnI5CavQeIvAkCCfpSKVStr20pMFA024X67alo=;
 b=IGnxubn5ygrexoFZXgrJyXh/E/tBKfn4P548+qF0BT2E3U1+vM4zSj3/
 oGkIKE2UW0n3/xv5eaKLfPh8zaNcmEbMCXSBI9pQve+k5m7Dym2KxvnX3
 z6trileerxdhbIvQWG3GZtj7iT/gWwKxgJ/DI5xFI1ni08XVBNSY0KNVT
 KkNSePkqrzdNOk610c5El4fl/vEkKvuAoZgxHggh6eWSH7VrgI7tRps64
 ieGRcPv1ghjf7Fr77OpYpNKAMXzr0AK/FKO0hU/g60AKBcmkFWS9BzlBW
 aSSGB7tUxfmSPTs3zzyxDBrq5njR6+FdOCCVfRI492iTzielba3+OEUDA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22191520"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="22191520"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="907980795"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="907980795"
Received: from abarrete-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.59.174])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2024 10:48:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915/bios: bump expected child device size
Date: Wed, 31 Jan 2024 20:48:39 +0200
Message-Id: <20240131184841.872487-1-jani.nikula@intel.com>
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VBT versions since 256 have an extra byte for EFP index.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c     | 4 +++-
 drivers/gpu/drm/i915/display/intel_vbt_defs.h | 1 +
 2 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 5f04e495fd27..2805ad701fe4 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2736,8 +2736,10 @@ parse_general_definitions(struct drm_i915_private *i915)
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
 		BUILD_BUG_ON(sizeof(*child) < 39);
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

