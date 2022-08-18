Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89EB5599163
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 01:44:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB5110E3EE;
	Thu, 18 Aug 2022 23:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F06B510E2BF;
 Thu, 18 Aug 2022 23:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660866151; x=1692402151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxp/KT3lcoH1nMx4gHY3iAIRxIofieLfnONlm/0JH8k=;
 b=ELL5uynEmacOHGdlCyfWETZUIcDBoPXFNXyBNt/pF37rSWkUxPR1Yq3V
 T0T6EBvNqsSB9/a9iHrum0WhFzNPbAsKo5TgpvjSFQbFK5o5rGkj20K7t
 UYeTjbcTnPLHVC+LdZn2Zp5frqdocXak2RmGeo+eVgY7yy2j2SY3JhEe7
 tkKFEvDWPWParnNJVtR/3s7KgTyBQ+IITyhbsUHifFkYGAGCERxQPfQqe
 g+DElhM7xjMQDD3lcu88ckELUsFRMPee/o0SFUE/0X/ie4CB62mriKFk4
 0qwYp/ODvvT8T/hHEDYth3Nfuf6+qSgNDj3NePfbUt1TC5RjDV2nOTIc2 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10443"; a="275938514"
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="275938514"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 16:42:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="783953290"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2022 16:42:28 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 16:41:48 -0700
Message-Id: <20220818234202.451742-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818234202.451742-1-radhakrishna.sripada@intel.com>
References: <20220818234202.451742-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/21] drm/i915/mtl: Add gmbus and gpio
 support
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add tables to map the GMBUS pin pairs to GPIO registers and port to DDC.
From spec we have registers GPIO_CTL[1-5] mapped to native display phys and
GPIO_CTL[9-14] are mapped to TC ports.

BSpec: 49306

Original Author: Brian J Lovin
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
---
 drivers/gpu/drm/i915/display/intel_gmbus.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_gmbus.h |  1 +
 2 files changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index a6ba7fb72339..542b8b2654be 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -116,6 +116,20 @@ static const struct gmbus_pin gmbus_pins_dg2[] = {
 	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
 };
 
+static const struct gmbus_pin gmbus_pins_mtp[] = {
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
+	[GMBUS_PIN_5_MTP] = { "dpe", GPIOF },
+	[GMBUS_PIN_9_TC1_ICP] = { "tc1", GPIOJ },
+	[GMBUS_PIN_10_TC2_ICP] = { "tc2", GPIOK },
+	[GMBUS_PIN_11_TC3_ICP] = { "tc3", GPIOL },
+	[GMBUS_PIN_12_TC4_ICP] = { "tc4", GPIOM },
+	[GMBUS_PIN_13_TC5_TGP] = { "tc5", GPION },
+	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIOO },
+};
+
 static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 					     unsigned int pin)
 {
@@ -128,6 +142,9 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
 		pins = gmbus_pins_dg1;
 		size = ARRAY_SIZE(gmbus_pins_dg1);
+	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
+		pins = gmbus_pins_mtp;
+		size = ARRAY_SIZE(gmbus_pins_mtp);
 	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
 		pins = gmbus_pins_icp;
 		size = ARRAY_SIZE(gmbus_pins_icp);
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.h b/drivers/gpu/drm/i915/display/intel_gmbus.h
index 8edc2e99cf53..20f704bd4e70 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.h
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.h
@@ -24,6 +24,7 @@ struct i2c_adapter;
 #define GMBUS_PIN_2_BXT		2
 #define GMBUS_PIN_3_BXT		3
 #define GMBUS_PIN_4_CNP		4
+#define GMBUS_PIN_5_MTP		5
 #define GMBUS_PIN_9_TC1_ICP	9
 #define GMBUS_PIN_10_TC2_ICP	10
 #define GMBUS_PIN_11_TC3_ICP	11
-- 
2.25.1

