Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C9D1AAF56
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 19:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471546EA41;
	Wed, 15 Apr 2020 17:20:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464496EA40
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 17:20:46 +0000 (UTC)
IronPort-SDR: Fw4MKc76JTQFgPvfHTH/fo52T3aNYEppzg++Tcb1G0o3YiB0jqA9qMr/CgxGKqQdKpIzVCNyJ0
 t+N88Xu1kdTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 10:20:46 -0700
IronPort-SDR: mlmEyYdPBx498HiXDuTbYidv27cV92E4QAKjUHzdAEF4z/GZT/hz1pHkUg//Vr7Fch4N07PI0Q
 9rdVnOLCZjvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,387,1580803200"; d="scan'208";a="400382917"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga004.jf.intel.com with ESMTP; 15 Apr 2020 10:20:44 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 22:35:54 +0530
Message-Id: <20200415170555.15531-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200415170555.15531-1-anshuman.gupta@intel.com>
References: <20200415170555.15531-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 3/4] drm/i915: Add connector dbgfs for all
 connectors
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add connector debugfs attributes for each intel
connector which is getting register.

v2:
- adding connector debugfs for each connector in
  intel_connector_register() to fix CI failure for legacy connectors.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/display/intel_connector.c | 3 +++
 drivers/gpu/drm/i915/display/intel_dp.c        | 3 ---
 drivers/gpu/drm/i915/display/intel_hdmi.c      | 3 ---
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_connector.c b/drivers/gpu/drm/i915/display/intel_connector.c
index 98ec2ea86c7c..406e96785c76 100644
--- a/drivers/gpu/drm/i915/display/intel_connector.c
+++ b/drivers/gpu/drm/i915/display/intel_connector.c
@@ -33,6 +33,7 @@
 
 #include "i915_drv.h"
 #include "intel_connector.h"
+#include "intel_display_debugfs.h"
 #include "intel_display_types.h"
 #include "intel_hdcp.h"
 
@@ -123,6 +124,8 @@ int intel_connector_register(struct drm_connector *connector)
 		goto err_backlight;
 	}
 
+	intel_connector_debugfs_add(connector);
+
 	return 0;
 
 err_backlight:
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d4fcc9583869..48397b2c08cf 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -48,7 +48,6 @@
 #include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_ddi.h"
-#include "intel_display_debugfs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -6451,8 +6450,6 @@ intel_dp_connector_register(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
-	intel_connector_debugfs_add(connector);
-
 	drm_dbg_kms(&i915->drm, "registering %s bus for %s\n",
 		    intel_dp->aux.name, connector->kdev->kobj.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 011d83c2a1e3..0ca8bf62cb8e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -44,7 +44,6 @@
 #include "intel_audio.h"
 #include "intel_connector.h"
 #include "intel_ddi.h"
-#include "intel_display_debugfs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dpio_phy.h"
@@ -2877,8 +2876,6 @@ intel_hdmi_connector_register(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
-	intel_connector_debugfs_add(connector);
-
 	intel_hdmi_create_i2c_symlink(connector);
 
 	return ret;
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
