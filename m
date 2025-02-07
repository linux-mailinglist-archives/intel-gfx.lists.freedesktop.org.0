Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EFEA2C069
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 11:19:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC59F10EA9A;
	Fri,  7 Feb 2025 10:19:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JtvBSHX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4777210EA97;
 Fri,  7 Feb 2025 10:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738923475; x=1770459475;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dt+7n1uHDVplF9BtUcjwC4R54eXaL6qoeliTGFIfIR0=;
 b=JtvBSHX6dT5nTALxAtpqN+rOoce1cLG1EnPFFyUqdrVRAh0XtVLQGGTx
 oQ+ZEzmptG1O6E2IeYLnV8L0KEPBO3N9jkGkv2YanamKsUDI20zaXMgpD
 TQFEXiyjx1eVW+7MxOJ5p3PhIS5O/aYgh53mi//pWpJDSnZvsPTYWZtpM
 4jZsCYfsHr3UORCsrd69vPXHJWr1YUDfgiWUt7oxp2gqjxCT1gI6Y4B28
 Q9dftT+4pho4/W9rlJi4rzZbPKe/98lOvf7ulp9+E1J4IoV4XMYTDypJ4
 aJ6Z5ERLu/L4EmLumqv5R8SeBBf6qZoxTj4FYObzkRksV2pOEfl9ugcUW g==;
X-CSE-ConnectionGUID: sL4YlPMYT4qX3ZiWFgfiaw==
X-CSE-MsgGUID: JLd2RRp0RgOwJRn2rjJgeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="39674930"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="39674930"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:17:55 -0800
X-CSE-ConnectionGUID: OVsgry2SS3SmgVXsy7fNcQ==
X-CSE-MsgGUID: H7CSz063QSq17QiM7j5niA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116686095"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.122])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 02:17:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/pch: Hide PCH device IDs
Date: Fri,  7 Feb 2025 12:17:37 +0200
Message-Id: <d1ceb9fc461cf21e1b885a55293f593eba1458ea.1738923308.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1738923308.git.jani.nikula@intel.com>
References: <cover.1738923308.git.jani.nikula@intel.com>
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

Only the PCH identification code needs the PCH device IDs, as all the
PCH checks are now based on PCH type. Hide the PCH device IDs inside
intel_pch.c. Remove the unused INTEL_PCH_ID() macro while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/soc/intel_pch.c | 30 +++++++++++++++++++++++++++
 drivers/gpu/drm/i915/soc/intel_pch.h | 31 ----------------------------
 2 files changed, 30 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
index 0370ccb6943c..fa03b5068a19 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/soc/intel_pch.c
@@ -7,6 +7,36 @@
 #include "i915_utils.h"
 #include "intel_pch.h"
 
+#define INTEL_PCH_DEVICE_ID_MASK		0xff80
+#define INTEL_PCH_IBX_DEVICE_ID_TYPE		0x3b00
+#define INTEL_PCH_CPT_DEVICE_ID_TYPE		0x1c00
+#define INTEL_PCH_PPT_DEVICE_ID_TYPE		0x1e00
+#define INTEL_PCH_LPT_DEVICE_ID_TYPE		0x8c00
+#define INTEL_PCH_LPT_LP_DEVICE_ID_TYPE		0x9c00
+#define INTEL_PCH_WPT_DEVICE_ID_TYPE		0x8c80
+#define INTEL_PCH_WPT_LP_DEVICE_ID_TYPE		0x9c80
+#define INTEL_PCH_SPT_DEVICE_ID_TYPE		0xA100
+#define INTEL_PCH_SPT_LP_DEVICE_ID_TYPE		0x9D00
+#define INTEL_PCH_KBP_DEVICE_ID_TYPE		0xA280
+#define INTEL_PCH_CNP_DEVICE_ID_TYPE		0xA300
+#define INTEL_PCH_CNP_LP_DEVICE_ID_TYPE		0x9D80
+#define INTEL_PCH_CMP_DEVICE_ID_TYPE		0x0280
+#define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
+#define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
+#define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
+#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
+#define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
+#define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
+#define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
+#define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
+#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
+#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
+#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
+#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
+#define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
+#define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
+#define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
+
 /* Map PCH device id to PCH type, or PCH_NONE if unknown. */
 static enum intel_pch
 intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
index bc926df14c45..635aea7a5539 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/soc/intel_pch.h
@@ -34,38 +34,7 @@ enum intel_pch {
 	PCH_LNL,
 };
 
-#define INTEL_PCH_DEVICE_ID_MASK		0xff80
-#define INTEL_PCH_IBX_DEVICE_ID_TYPE		0x3b00
-#define INTEL_PCH_CPT_DEVICE_ID_TYPE		0x1c00
-#define INTEL_PCH_PPT_DEVICE_ID_TYPE		0x1e00
-#define INTEL_PCH_LPT_DEVICE_ID_TYPE		0x8c00
-#define INTEL_PCH_LPT_LP_DEVICE_ID_TYPE		0x9c00
-#define INTEL_PCH_WPT_DEVICE_ID_TYPE		0x8c80
-#define INTEL_PCH_WPT_LP_DEVICE_ID_TYPE		0x9c80
-#define INTEL_PCH_SPT_DEVICE_ID_TYPE		0xA100
-#define INTEL_PCH_SPT_LP_DEVICE_ID_TYPE		0x9D00
-#define INTEL_PCH_KBP_DEVICE_ID_TYPE		0xA280
-#define INTEL_PCH_CNP_DEVICE_ID_TYPE		0xA300
-#define INTEL_PCH_CNP_LP_DEVICE_ID_TYPE		0x9D80
-#define INTEL_PCH_CMP_DEVICE_ID_TYPE		0x0280
-#define INTEL_PCH_CMP2_DEVICE_ID_TYPE		0x0680
-#define INTEL_PCH_CMP_V_DEVICE_ID_TYPE		0xA380
-#define INTEL_PCH_ICP_DEVICE_ID_TYPE		0x3480
-#define INTEL_PCH_ICP2_DEVICE_ID_TYPE		0x3880
-#define INTEL_PCH_MCC_DEVICE_ID_TYPE		0x4B00
-#define INTEL_PCH_TGP_DEVICE_ID_TYPE		0xA080
-#define INTEL_PCH_TGP2_DEVICE_ID_TYPE		0x4380
-#define INTEL_PCH_JSP_DEVICE_ID_TYPE		0x4D80
-#define INTEL_PCH_ADP_DEVICE_ID_TYPE		0x7A80
-#define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
-#define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
-#define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
-#define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
-#define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
-#define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
-
 #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
-#define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
 #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-- 
2.39.5

