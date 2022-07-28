Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8AF58366D
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:38:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A8910E21B;
	Thu, 28 Jul 2022 01:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C5310EBC5
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=omI5brQ0gUJnZYrXRJ38q/CoNZUctSbCPPOl5vJwBcI=;
 b=TjWGAFpEqmTai2nHNaFZ/YupPmVmf7zqXykq8hmWbyTqpn44ssBDgc7t
 cjWfXeoifY9Af4634+wPsWSqbwEBRgKIfvbkNuVicCncStzTNfNpKRUpO
 8Z+ymDvJBVlAFHfERNpv+5TfailnthJikcifCfY02x7u07O9NmsT4RI2T
 Gx6ZX7Oe2qMVwVWpRl0lcvQd8qvdTieTb6WSf/5hVHWjsttd9Ux9wFtIq
 jeqfb2ig/6N22y/DpRCko+X4N8S1GWX+WG8g88jk6p7xJFREcWlFR5amd
 V0grg+LY8QsLALdk85bxAQw7geAdLxngeamnIQxswt/lIilkzP/trPk9Z g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693655"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693655"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456983"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:04 -0700
Message-Id: <20220728013420.3750388-8-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/23] drm/i915/mtl: Add gmbus and gpio support
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

Add tables to map the GMBUS pin pairs to GPIO registers and port to DDC.
From spec we have registers GPIO_CTL[1-5] mapped to combo phys and
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

