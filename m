Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31BBC472BB2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Dec 2021 12:41:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C325410E86C;
	Mon, 13 Dec 2021 11:41:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ED1A10E86B
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Dec 2021 11:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639395673; x=1670931673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=21RQdsO7rC8/hD3MVjXfnUN5gxXm8L6VUmeXPcpS12c=;
 b=iL91WQalQr7xBSZD58/FVDp0AnmuV70L+oUgSKDlLnmIE5zFFoqsPXqo
 Kad+7/FjiKkpUq5a6xYLUMU1UtE7cVnZz3Nb07F5O2+nbScOJ3r2/cfbm
 fXPmFp77DVv+UlWIY/bBABnW0tUPCXyDD/sCO40fyDv8NcsIdJHlnJD4W
 BcATP6Bl8UlOPnGbEccONx7BHiiP86CAaV1zmG4yEOJjEsmvklxlBwYBg
 03D2Ca9Afn5hbrpRpNcb87uuRFYjBK0mEG8/+TH4bjqt/1IfiMEbSHSLt
 6QHF6JWgewFjgeJnxmHgrUVgfkPvKAcNjKjrkEPhxrM7EBzO+L6bUpNpl A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238659886"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="238659886"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:41:12 -0800
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; d="scan'208";a="504871300"
Received: from ppolasze-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.20.7])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2021 03:41:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Dec 2021 13:41:05 +0200
Message-Id: <20211213114106.296017-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/cdclk: turn around i915_drv.h
 and intel_cdclk.h dependency
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

intel_cdclk.h only needs i915_drv.h for struct intel_cdclk_config. Move
the definition to intel_cdclk.h and turn the includes around to avoid
including i915_drv.h from other headers.

The intel cdclk state macros in intel_cdclk.h still reference struct
drm_i915_private, but as macros they don't strictly require the
definition until they are used.

v2: Expand on the commit message wrt cdclk state macros

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.h  | 6 +++++-
 drivers/gpu/drm/i915/i915_drv.h             | 6 +-----
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index a62550711e98..1080741d1561 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic.c
@@ -34,6 +34,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_plane_helper.h>
 
+#include "i915_drv.h"
 #include "intel_atomic.h"
 #include "intel_cdclk.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index fc638522e445..71dd84740ae3 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -8,7 +8,6 @@
 
 #include <linux/types.h>
 
-#include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_global_state.h"
 
@@ -16,6 +15,11 @@ struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc_state;
 
+struct intel_cdclk_config {
+	unsigned int cdclk, vco, ref, bypass;
+	u8 voltage_level;
+};
+
 struct intel_cdclk_state {
 	struct intel_global_state base;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a0f54a69b11d..e2c0d69753b1 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -65,6 +65,7 @@
 #include "i915_utils.h"
 
 #include "display/intel_bios.h"
+#include "display/intel_cdclk.h"
 #include "display/intel_display.h"
 #include "display/intel_display_power.h"
 #include "display/intel_dmc.h"
@@ -625,11 +626,6 @@ struct i915_virtual_gpu {
 	u32 caps;
 };
 
-struct intel_cdclk_config {
-	unsigned int cdclk, vco, ref, bypass;
-	u8 voltage_level;
-};
-
 struct i915_selftest_stash {
 	atomic_t counter;
 	struct ida mock_region_instances;
-- 
2.30.2

