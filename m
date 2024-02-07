Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF0D84C9B9
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 12:38:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74A07112F64;
	Wed,  7 Feb 2024 11:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zauly6zl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 664D910F484;
 Wed,  7 Feb 2024 11:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707305877; x=1738841877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=90Hh8EvDT25/F9LnCEaWyAMTxcUeKbymsfi2dQik0Us=;
 b=Zauly6zlGTF4adW2Fx2f4Khs9AODNCcsH3NFvExCnBWuIXXiqLDCtuVO
 lLyQyedAwI7Gta0cLvlngj3wqQuCrpxiHK6Pys5wJxehahYbM5DV7I5cU
 evGUe/rCoiFebMuKB8J1nNCBAL8PgFzyGqL08JKvUtgqm0TyEChtdyP0R
 S7vSTp4dQMJ3VpvAP3y5owjYEMrDkY4aUpOsmB4cPLeJVJyc1NQhfDT1J
 AU30eYsOyMli4nILOQPP3FrbmZ7WmQr1GTGBWwL3PZqBK9aAJAG+QbuHw
 EXkmle2VEOLfyeXhWtuE4uiLwtvno9lawsErdBowQuhI7wX7MAYPTtNGW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10976"; a="12056216"
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; d="scan'208";a="12056216"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2024 03:37:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,250,1701158400"; 
   d="scan'208";a="1306521"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa009.jf.intel.com with ESMTP; 07 Feb 2024 03:37:55 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: daniele.ceraolospurio@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/4] drm/xe/hdcp: Add intel_hdcp_gsc_message to Makefile
Date: Wed,  7 Feb 2024 17:05:32 +0530
Message-Id: <20240207113531.1265801-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240207113531.1265801-1-suraj.kandpal@intel.com>
References: <20240207113531.1265801-1-suraj.kandpal@intel.com>
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
index d95c1b3b2d9c..52a22e6d72ab 100644
--- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
+++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
@@ -4,9 +4,11 @@
  */
 
 #include <linux/delay.h>
+#include <drm/i915_hdcp_interface.h>
 
 #include "abi/gsc_command_header_abi.h"
 #include "intel_hdcp_gsc.h"
+#include "intel_hdcp_gsc_message.h"
 #include "xe_gt.h"
 #include "xe_gsc_proxy.h"
 #include "xe_pm.h"
@@ -108,6 +110,22 @@ static int intel_hdcp_gsc_hdcp2_init(struct xe_device *xe)
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

