Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE19194069
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 14:52:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3B826E8CA;
	Thu, 26 Mar 2020 13:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B66D6E8CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 13:52:08 +0000 (UTC)
IronPort-SDR: CyttZgjCH19vl/svFHr+QBen8PqA4Fuun+UdpwCb7PBMtzj7PkCmL0mVtrVD2eA+GR9fpFCla9
 AAxw3LNY23nA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 06:52:07 -0700
IronPort-SDR: brddzwOSUg1DuF0G5po1zRBRFWG9VuH7T944NIZyShnL8kuXKbJRlk2yV5aVzPaJggrcTyWMCX
 Cu9ghGsl22XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="420707737"
Received: from unknown (HELO genxfsim-desktop.iind.intel.com) ([10.223.74.178])
 by orsmga005.jf.intel.com with ESMTP; 26 Mar 2020 06:52:04 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Mar 2020 19:11:42 +0530
Message-Id: <20200326134142.31997-4-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200326134142.31997-1-anshuman.gupta@intel.com>
References: <20200326134142.31997-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/3] drm/i915: Add connector dbgfs for all
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
Cc: jani.nikula@intel.com, ankit.k.nautiyal@intel.com, martin.peres@intel.com
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
index 7f1a4e55cda1..c4352d013c29 100644
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
@@ -6204,8 +6203,6 @@ intel_dp_connector_register(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
-	intel_connector_debugfs_add(connector);
-
 	DRM_DEBUG_KMS("registering %s bus for %s\n",
 		      intel_dp->aux.name, connector->kdev->kobj.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 0076abc63851..1f28153babbf 100644
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
@@ -2860,8 +2859,6 @@ intel_hdmi_connector_register(struct drm_connector *connector)
 	if (ret)
 		return ret;
 
-	intel_connector_debugfs_add(connector);
-
 	intel_hdmi_create_i2c_symlink(connector);
 
 	return ret;
-- 
2.25.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
