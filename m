Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA34E2818
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 14:51:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D43C10E33E;
	Mon, 21 Mar 2022 13:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DBC10E33E
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 13:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647870683; x=1679406683;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LKOq3r+LGT3Fca7hFS3aCbI9MbOkyPs6/O6udhfdpbg=;
 b=P38INP7v6PJ0CBIFJLrYa9VOCWOxFNASQ2PTUWk+8oWN0kyC/prC1JtM
 OXGho5kN1YDrRwnEBLt7H1rvKU0lY0Zhi2g7N18vG8YYwqQtF76/e7iFl
 VKByZHErjg87xMTb2n2BjBSuIYCZdO49QjXRMQrRloAKM4AON9eC2x+CZ
 rnwMLTf/DU9cOkAqtd7m9UPoYbF1km/mg9IvNeiqvxkFZ7TKJAU4+Oju7
 lsbwH2qFkAR4MsJuQMgAzPT17akqHk1ekALxdkTosSbnprnqN9kuNtAhY
 aIhT7fDYk3YVmWe7B85/530yI5nUK9IQ+fLIx8/ivt3M91/eVc+vMGabf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="245028229"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="245028229"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:23 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="514940374"
Received: from abhijitc-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.34.12])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 06:51:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Mar 2022 15:50:34 +0200
Message-Id: <b6c4e39fef69826aaf4622b2d2741a3ca9a810e4.1647870374.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647870374.git.jani.nikula@intel.com>
References: <cover.1647870374.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/7] drm/i915/dmc: hide DMC version macros
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The macros are now only needed within intel_dmc.c, so move them there.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 4 ++++
 drivers/gpu/drm/i915/display/intel_dmc.h | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index f0eb3de8de60..a204b60a061f 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -37,6 +37,10 @@
  * low-power state and comes back to normal.
  */
 
+#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
+#define DMC_VERSION_MAJOR(version)	((version) >> 16)
+#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
+
 #define DMC_PATH(platform, major, minor) \
 	"i915/"				 \
 	__stringify(platform) "_dmc_ver" \
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index dd8880d2cbed..41091aee3b47 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -13,10 +13,6 @@
 struct drm_i915_error_state_buf;
 struct drm_i915_private;
 
-#define DMC_VERSION(major, minor)	((major) << 16 | (minor))
-#define DMC_VERSION_MAJOR(version)	((version) >> 16)
-#define DMC_VERSION_MINOR(version)	((version) & 0xffff)
-
 enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
-- 
2.30.2

