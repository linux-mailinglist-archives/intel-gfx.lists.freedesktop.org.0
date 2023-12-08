Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01BF780A580
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 15:32:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51D9C10E2D6;
	Fri,  8 Dec 2023 14:32:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E1710E2D6
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 14:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702045948; x=1733581948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VdzfE0ImmgtOLtWdDV1KSIO9KAzlo1z9kKNjEPjEOH4=;
 b=AIKVwcZA5TFarLFPcgBGCObdNZvV8vHQTv0z4VEa0FLHAj76drftuXux
 pSlT/+vzefR5aoIaB/bL3+gysKlPFDF7UcnOzPUNK1a5l93XdhMATC8ON
 8crQDqEMyUXFEyetPh66QiVJ6Ed6SZE0KD8FYKuI+4P7/AS4oKZn+3n1e
 yiZPlcYiVG0nU7/iSWpEqumCDQcJLNtsrB/mq9JGzPS7fLppIs7qAzx0D
 NEtd99stR3BLPcvPi/HV18Mvck6vJu8V2t/NYyZTtQkxDblbpYCc+fyBs
 9ZKIMasdbpd0AnDGuxzAia2RNzPgwRpbSFtKVpUTYXM3aJspfii2Nw+o8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="394148883"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="394148883"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 06:32:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="748348215"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="748348215"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 06:32:27 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/display: Print PICA version
Date: Fri,  8 Dec 2023 06:31:37 -0800
Message-Id: <20231208143137.2402239-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231208143137.2402239-1-lucas.demarchi@intel.com>
References: <20231208143137.2402239-1-lucas.demarchi@intel.com>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The PICA_DEVICE_ID follows the same format as other GMD_ID registers
(graphics, display and media). Currently the only use for it is
informational for developers while checking the differences between
machines with the same platform. Print the raw number as there's no need
for the driver to check any of the fields.

In future this may change, but then the IP version in
struct intel_display_runtime_info will need some refactor to allow
keeping both the display engine and PICA versions.

Lastly, keeping the PICA version around in the display runtime info
matches its current use. If that changes in future, then it may need
to be moved to the device info.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
 drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
 3 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index 5d1084a98b93..d9d1be008e4c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -956,6 +956,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
 	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
 
+	if (HAS_GMD_ID(i915))
+		display_runtime->pica_id = intel_de_read(i915, PICA_DEVICE_ID);
+
 	/* This covers both ULT and ULX */
 	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
 		display_runtime->port_mask &= ~BIT(PORT_D);
@@ -1124,6 +1127,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
 {
 	drm_printf(p, "display version: %u.%02u.%02u\n",
 		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
+	if (runtime->pica_id)
+		drm_printf(p, "PICA version: %#08x\n", runtime->pica_id);
 
 #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
 	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 79e9f1c3e241..f8a2ada1a4ec 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -123,6 +123,8 @@ struct intel_display_runtime_info {
 
 	u8 fbc_mask;
 
+	u32 pica_id;
+
 	bool has_hdcp;
 	bool has_dmc;
 	bool has_dsc;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 27dc903f0553..9d70635508ae 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6362,6 +6362,8 @@ enum skl_power_gate {
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
 #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
 
+#define PICA_DEVICE_ID				_MMIO(0x16fe00)
+
 #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
 #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
 #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
-- 
2.40.1

