Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5961084F31A
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Feb 2024 11:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD91810F2F4;
	Fri,  9 Feb 2024 10:16:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/zv123O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4C610F2F1;
 Fri,  9 Feb 2024 10:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707473809; x=1739009809;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/q+LiHJ9KqB3+Hrgh2z8aH4DxW+1jpG8aNzeI2Ubt2I=;
 b=n/zv123OUVgHcpaptkS8WGgsx+wL3z8G5g5JWrdvIwY75JAVZKO5IpQ1
 y/oIqfp/X7o1DESnG+3aAPB6TSCJ5tVWI0KZCLw/reSfqvfKQK/Z9Sobt
 u9SOfCin7D7nM0teH8MAW4woeV2KEVHc1RTgUwt+iF/jlJBNPvjFMvLCB
 LvAnYQ+tm2FVGM5UeP4eLqjIx8fkoEOIUIKVnnlBb/grMzFz6IRFAR9j4
 Kx/uhoYzGALum1BOheu1j9ck/fp9AEbggb7b2KwvQ8ryJhgKKeJ+P4IDd
 6hY4MWUXVSR/AXWJFT8hmKjfGgo4Ibg+nteB8m4NbRDqBNjyxaQF8qQe0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="1307540"
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="1307540"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2024 02:16:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,256,1701158400"; 
   d="scan'208";a="2244162"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa006.jf.intel.com with ESMTP; 09 Feb 2024 02:16:18 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/5] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Date: Fri,  9 Feb 2024 15:44:12 +0530
Message-Id: <20240209101412.1326176-6-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240209101412.1326176-1-suraj.kandpal@intel.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Add intel_hdcp_gsc_message to Makefile and add corresponding
changes to xe_hdcp_gsc.c to make it build.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/xe/Makefile              |  1 +
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 18 ++++++++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index c531210695db..2b654c908ff3 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -254,6 +254,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_global_state.o \
 	i915-display/intel_gmbus.o \
 	i915-display/intel_hdcp.o \
+	i915-display/intel_hdcp_gsc_message.o \
 	i915-display/intel_hdmi.o \
 	i915-display/intel_hotplug.o \
 	i915-display/intel_hotplug_irq.o \
diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
index aa8c13916bb6..f185465d5682 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -5,9 +5,11 @@
 
 #include <drm/drm_print.h>
 #include <linux/delay.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "xe_device_types.h"
 #include "xe_gt.h"
 #include "xe_gsc_proxy.h"
@@ -113,6 +115,22 @@ static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
 	return ret;
 }
 
+static const struct i915_hdcp_ops gsc_hdcp_ops = {
+	.initiate_hdcp2_session = intel_hdcp_gsc_initiate_session,
+	.verify_receiver_cert_prepare_km =
+				intel_hdcp_gsc_verify_receiver_cert_prepare_km,
+	.verify_hprime = intel_hdcp_gsc_verify_hprime,
+	.store_pairing_info = intel_hdcp_gsc_store_pairing_info,
+	.initiate_locality_check = intel_hdcp_gsc_initiate_locality_check,
+	.verify_lprime = intel_hdcp_gsc_verify_lprime,
+	.get_session_key = intel_hdcp_gsc_get_session_key,
+	.repeater_check_flow_prepare_ack =
+				intel_hdcp_gsc_repeater_check_flow_prepare_ack,
+	.verify_mprime = intel_hdcp_gsc_verify_mprime,
+	.enable_hdcp_authentication = intel_hdcp_gsc_enable_authentication,
+	.close_hdcp_session = intel_hdcp_gsc_close_session,
+};
+
 int intel_hdcp_gsc_init(struct xe_device *xe)
 {
 	struct i915_hdcp_arbiter *data;
-- 
2.25.1

