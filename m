Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBA8846AE3
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 09:40:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8975C10EB20;
	Fri,  2 Feb 2024 08:40:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0I9kIqr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C668D10E5F1;
 Fri,  2 Feb 2024 08:40:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706863202; x=1738399202;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+jD2Yge9DhBC45ngP08kbCEZrtM3dP5+GcTsBpYaq1I=;
 b=V0I9kIqrLIgDPo6DQtQ2dJz0PQXUViWirG/k8y55P3Ns83d6pTTTB26Z
 ucE7CoBSOHPnOZqsI4O3HHrlcZSgqI+WwtDKdjgG5QlAWQIQG5C/4LGlT
 vVb1kIr1oKiSYyl73lOH18Ay+zx5ftsm8LuucjQ9ZqjVymNKdudfwlZWP
 rzrIUhMCid8+YlyjeXr0IgAEKgFrtXe3xEKa9D97BbSUKHFDOKfTN+aQG
 2qlPeIx8thfkn6RX5At67r12FTnhVAgvDNzAncWhqRZX5GLmtd/1KDCDe
 JXEnFw1EgSdQLgIjGCw7eUGtk3SA/+bNGy5EZGiiD3mfWnnQctyemprh+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="25562514"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="25562514"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 00:40:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="4635276"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa004.fm.intel.com with ESMTP; 02 Feb 2024 00:39:56 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Date: Fri,  2 Feb 2024 14:07:38 +0530
Message-Id: <20240202083737.1088306-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240202083737.1088306-1-suraj.kandpal@intel.com>
References: <20240202083737.1088306-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

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
index eca941d7b281..549108060613 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -3,9 +3,12 @@
  * Copyright 2023, Intel Corporation.
  */
 
+#include <drm/i915_hdcp_interface.h>
+
 #include "abi/gsc_command_header_abi.h"
 #include "i915_drv.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "xe_bo.h"
 #include "xe_map.h"
 #include "xe_gsc_submit.h"
@@ -97,6 +100,22 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
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
 int intel_hdcp_gsc_init(struct drm_i915_private *i915)
 {
 	struct i915_hdcp_arbiter *data;
-- 
2.25.1

