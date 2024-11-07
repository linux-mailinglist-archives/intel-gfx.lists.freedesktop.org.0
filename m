Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DEFD9C0AED
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:11:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BEBB10E872;
	Thu,  7 Nov 2024 16:11:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EHzDUglr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05BCE10E13D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:11:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995898; x=1762531898;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DRvnptwt0l8s2zWH/uEHOaj4wLX/I0EQAvBBzv/5hX4=;
 b=EHzDUglrLFLHrysMEnH+MmATIZgS4H3dMqsyX5yPUdCiVbYaAlCQI6tz
 ZfTn6otBYaZxBALUSpbP4MMYnPDJYl+rPtmLlg7GZOVCBCf6J0LpEZ3iN
 vm4Z+Jh15vkSxBAUL7Ud+Ds9SF5FSBzf9/ezH2hST75HaDPD5AGR7vNOW
 8feI+M2P6AtD11f5n7RPv6NiNvbX/NBDRQjuq9Q1y1/ypsGCpZsDdSQk4
 +rTlpFFt6HKP+IUP7GCMbMllSdd1+7pHPDFQGTb18vjzCHMO/HF8CqUlC
 ELPFcvyLnTCC+Qqu7cA8t7hvDGZIawlN9BOPEUI/EdKQ5nmeTDEeXu9/7 g==;
X-CSE-ConnectionGUID: /8ZZqVHtQAa5FfBRatx92g==
X-CSE-MsgGUID: xnrT/s0bRMiTfMRFz/3txw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443078"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443078"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:36 -0800
X-CSE-ConnectionGUID: 899uoj6QRwSC2IuI7ihSqg==
X-CSE-MsgGUID: zPJt6eF6QlCOOeZXdrKQyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277850"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/10] drm/i915/crt: Use REG_BIT() & co.
Date: Thu,  7 Nov 2024 18:11:17 +0200
Message-ID: <20241107161123.16269-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Follow the modern style and use REG_BIT() & co. for the analog
port register definitions.

Also throw out the ADPA_DPMS_... stuff as that's just an alias
for the sync off bits.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c |  4 +-
 drivers/gpu/drm/i915/i915_reg.h          | 69 ++++++++++++------------
 2 files changed, 35 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 134a4e6a4ac0..73d5332cf103 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -91,9 +91,9 @@ bool intel_crt_port_enabled(struct intel_display *display,
 
 	/* asserts want to know the pipe even if the port is disabled */
 	if (HAS_PCH_CPT(dev_priv))
-		*pipe = (val & ADPA_PIPE_SEL_MASK_CPT) >> ADPA_PIPE_SEL_SHIFT_CPT;
+		*pipe = REG_FIELD_GET(ADPA_PIPE_SEL_MASK_CPT, val);
 	else
-		*pipe = (val & ADPA_PIPE_SEL_MASK) >> ADPA_PIPE_SEL_SHIFT;
+		*pipe = REG_FIELD_GET(ADPA_PIPE_SEL_MASK, val);
 
 	return val & ADPA_DAC_ENABLE;
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f0757c4491f1..f233fc32e45c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1151,43 +1151,40 @@
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
 #define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
-#define   ADPA_DAC_ENABLE	(1 << 31)
-#define   ADPA_DAC_DISABLE	0
-#define   ADPA_PIPE_SEL_SHIFT		30
-#define   ADPA_PIPE_SEL_MASK		(1 << 30)
-#define   ADPA_PIPE_SEL(pipe)		((pipe) << 30)
-#define   ADPA_PIPE_SEL_SHIFT_CPT	29
-#define   ADPA_PIPE_SEL_MASK_CPT	(3 << 29)
-#define   ADPA_PIPE_SEL_CPT(pipe)	((pipe) << 29)
+#define   ADPA_DAC_ENABLE			REG_BIT(31)
+#define   ADPA_PIPE_SEL_MASK			REG_BIT(30)
+#define   ADPA_PIPE_SEL(pipe)			REG_FIELD_PREP(ADPA_PIPE_SEL_MASK, (pipe))
+#define   ADPA_PIPE_SEL_MASK_CPT		REG_GENMASK(30, 29)
+#define   ADPA_PIPE_SEL_CPT(pipe)		REG_FIELD_PREP(ADPA_PIPE_SEL_MASK_CPT, (pipe))
 #define   ADPA_CRT_HOTPLUG_MASK  0x03ff0000 /* bit 25-16 */
-#define   ADPA_CRT_HOTPLUG_MONITOR_NONE  (0 << 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_MASK  (3 << 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR (3 << 24)
-#define   ADPA_CRT_HOTPLUG_MONITOR_MONO  (2 << 24)
-#define   ADPA_CRT_HOTPLUG_ENABLE        (1 << 23)
-#define   ADPA_CRT_HOTPLUG_PERIOD_64     (0 << 22)
-#define   ADPA_CRT_HOTPLUG_PERIOD_128    (1 << 22)
-#define   ADPA_CRT_HOTPLUG_WARMUP_5MS    (0 << 21)
-#define   ADPA_CRT_HOTPLUG_WARMUP_10MS   (1 << 21)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_2S     (0 << 20)
-#define   ADPA_CRT_HOTPLUG_SAMPLE_4S     (1 << 20)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_40    (0 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_50    (1 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_60    (2 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLTAGE_70    (3 << 18)
-#define   ADPA_CRT_HOTPLUG_VOLREF_325MV  (0 << 17)
-#define   ADPA_CRT_HOTPLUG_VOLREF_475MV  (1 << 17)
-#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER (1 << 16)
-#define   ADPA_USE_VGA_HVPOLARITY (1 << 15)
-#define   ADPA_SETS_HVPOLARITY	0
-#define   ADPA_VSYNC_CNTL_DISABLE (1 << 10)
-#define   ADPA_VSYNC_CNTL_ENABLE 0
-#define   ADPA_HSYNC_CNTL_DISABLE (1 << 11)
-#define   ADPA_HSYNC_CNTL_ENABLE 0
-#define   ADPA_VSYNC_ACTIVE_HIGH (1 << 4)
-#define   ADPA_VSYNC_ACTIVE_LOW	0
-#define   ADPA_HSYNC_ACTIVE_HIGH (1 << 3)
-#define   ADPA_HSYNC_ACTIVE_LOW	0
+#define   ADPA_CRT_HOTPLUG_MONITOR_MASK		REG_GENMASK(25, 24)
+#define   ADPA_CRT_HOTPLUG_MONITOR_NONE		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_MONITOR_COLOR	REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 3)
+#define   ADPA_CRT_HOTPLUG_MONITOR_MONO		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_MONITOR_MASK, 2)
+#define   ADPA_CRT_HOTPLUG_ENABLE		REG_BIT(23)
+#define   ADPA_CRT_HOTPLUG_PERIOD_MASK		REG_BIT(22)
+#define   ADPA_CRT_HOTPLUG_PERIOD_64		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_PERIOD_128		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_PERIOD_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_WARMUP_MASK		REG_BIT(21)
+#define   ADPA_CRT_HOTPLUG_WARMUP_5MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_WARMUP_10MS		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_WARMUP_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_MASK		REG_BIT(20)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_2S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_SAMPLE_4S		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_SAMPLE_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_MASK		REG_GENMASK(19, 18)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_40		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_50		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_60		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 2)
+#define   ADPA_CRT_HOTPLUG_VOLTAGE_70		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLTAGE_MASK, 3)
+#define   ADPA_CRT_HOTPLUG_VOLREF_MASK		REG_BIT(17)
+#define   ADPA_CRT_HOTPLUG_VOLREF_325MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 0)
+#define   ADPA_CRT_HOTPLUG_VOLREF_475MV		REG_FIELD_PREP(ADPA_CRT_HOTPLUG_VOLREF_MASK, 1)
+#define   ADPA_CRT_HOTPLUG_FORCE_TRIGGER	REG_BIT(16)
+#define   ADPA_USE_VGA_HVPOLARITY		REG_BIT(15)
+#define   ADPA_HSYNC_CNTL_DISABLE		REG_BIT(11)
+#define   ADPA_VSYNC_CNTL_DISABLE		REG_BIT(10)
+#define   ADPA_VSYNC_ACTIVE_HIGH		REG_BIT(4)
+#define   ADPA_HSYNC_ACTIVE_HIGH		REG_BIT(3)
 
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
-- 
2.45.2

