Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC77746EF26
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:00:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E2110E1EB;
	Thu,  9 Dec 2021 16:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C4F89F08
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 16:51:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639068716; x=1670604716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hY2mm3uEmRvWsabaP+Ck+2CS6mmBdmhazajyEwTx6Mo=;
 b=PbjsgSN+NrSqZP7WQJ52y4BRNXki0clTGU5fW9kn5Bd5rfW7MgQeQRx5
 Mng1PotcVCflQMpmO2xY/jgmH3EMfnbZgU0apqUoFf761mptuLOcm4Iqz
 ClYJBNzat91YkZwjpip4Xo0OxPb22EzAURsuLfph/RgnsXDmmlOvOr/C9
 VLeHNrbUe6njuoFCuf2NPQubvVky6yjdcvlGlY9aQJrby01Jp31igIeXY
 epBxJJ5ByDIqp4d/k0z7BIrKxV/XdrukMAAjbzQnVfUp97szEaTW9KAoX
 uiGjJwNE8JrvaKtvzWr/qych32Uu2NG6H0kUuCDGSDY12nl6evuWeaHJz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="225417987"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="225417987"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:55 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="462206379"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 08:51:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 18:51:25 +0200
Message-Id: <5f410f0fa5fe469895c1bfbe68aa92511053d5fa.1639068649.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639068649.git.jani.nikula@intel.com>
References: <cover.1639068649.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/cdclk: turn around i915_drv.h and
 intel_cdclk.h dependency
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic.c | 1 +
 drivers/gpu/drm/i915/display/intel_cdclk.h  | 6 +++++-
 drivers/gpu/drm/i915/i915_drv.h             | 6 +-----
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
index b4e7ac51aa31..ff17bec7a67d 100644
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
index 50b93226517e..e11db06a81c2 100644
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
index e36aea6453c2..a198f7e075d9 100644
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

