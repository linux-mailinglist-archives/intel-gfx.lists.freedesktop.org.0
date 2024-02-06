Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C37D84BB5F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Feb 2024 17:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0EDC112CE2;
	Tue,  6 Feb 2024 16:49:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyE/oSmN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F9D112CE0;
 Tue,  6 Feb 2024 16:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707238194; x=1738774194;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wEJzyw+qMFBkQw3k5NGIciyRg/0f74CpyenkUfyeuf4=;
 b=HyE/oSmNjgZM0henmuuslsZvXYTC4p/XzX0cBnM1ec0RGz9DkfGuaZ23
 SYrnGq9RTUA+gd0FnSpZ8ZHQlhh9MBf1c85l09Oua4+Rr70oqjpmqKg3A
 /xRvY6jyIH2/p8majnMnvQN7r4OI/BAvlobCrxflFRDtYLicx9wf/8AQ3
 BPtDdqABRTwLNlbFy87XAWLc5JQhZpvOGJXE1BuMQNVtSrzUyjEOupNlw
 yTQtWolS1rpexBbq/CFpgq0/Nffr4wnQWvuHieAZPcf5GtEXm6YBrlcPf
 qQg48cYTJ/TtpDOUqCdxIbN6P2SZPljlQIlRjFJ53K0DvRsBZp/kkfRBN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="11525170"
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="11525170"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2024 08:49:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,247,1701158400"; d="scan'208";a="24309535"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa002.fm.intel.com with ESMTP; 06 Feb 2024 08:49:51 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com, chaitanya.kumar.borah@intel.com,
 ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 3/3] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Date: Tue,  6 Feb 2024 22:17:42 +0530
Message-Id: <20240206164742.1222593-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240206164742.1222593-1-suraj.kandpal@intel.com>
References: <20240206164742.1222593-1-suraj.kandpal@intel.com>
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
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c | 19 ++++++++++++++++++-
 2 files changed, 19 insertions(+), 1 deletion(-)

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
index dbcd10617a1b..513568304b41 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,9 +4,10 @@
  */
 
 #include <linux/delay.h>
-
+#include <drm/i915_hdcp_interface.h>
 #include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "xe_bo.h"
 #include "xe_map.h"
 #include "xe_gsc_submit.h"
@@ -88,6 +89,22 @@ static int intel_hdcp_gsc_hdcp2_init(struct drm_i915_private *i915)
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

