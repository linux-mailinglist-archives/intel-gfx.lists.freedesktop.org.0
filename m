Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDD5958C04
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2024 18:14:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EE510E44B;
	Tue, 20 Aug 2024 16:14:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hqxdKQvs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A1C10E450
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2024 16:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724170489; x=1755706489;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9xoJ4X4qg/flEenC17T+E9TDG0zZ1Ykr/eQwJ16LF/U=;
 b=hqxdKQvsLZ9w9OYX58//DUT9CX5yWJUVuTLvpfnRuMg5grFuKQFDB8+B
 eNjMWqdWh9ZRZXJ/0LBUGdUdH2z066Y8umJx7v+Yqib5cTR1tSYzeviCQ
 GDKoix5cw5oIsy3bh+A+6KfxfeBCvMsa0kOTPuC9UWOfWSDqDsERFSOj4
 hEXhBIuroBUwswHrrCnHmOJ/RuFFDH3iaa3zfUQoiJHjb6ZAiJXyHLl8D
 TkW8WLhaYoxHug/qOKSyGPG3kSkG5aJdCvo0DNvusyLdfhAIIXDpYnbNr
 D1w83r7piRCGJeuuta6UvyYVO5UpM4XR7BX+ZsHcKJNXF1XJCrC/f48ae w==;
X-CSE-ConnectionGUID: +LUu13RBTBK401HK2FtzbA==
X-CSE-MsgGUID: OYENSl8hT065fWBbt8KJkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="22367266"
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="22367266"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:49 -0700
X-CSE-ConnectionGUID: bK9JtYEDTYmT+Z4rmMiF1g==
X-CSE-MsgGUID: XDbMzDF6R/W0ehPytQiwMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,162,1719903600"; d="scan'208";a="60622986"
Received: from fpallare-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.44])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 09:14:48 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/2] drm/i915/display: Add mechanism to use sink model when
 applying quirk
Date: Tue, 20 Aug 2024 19:14:28 +0300
Message-Id: <20240820161429.2213343-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240820161429.2213343-1-jouni.hogander@intel.com>
References: <20240820161429.2213343-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Currently there is no way to apply quirk device only if certain panel
model is installed. This patch implements such mechanism by adding
sink_oui and sink_device_id field into intel_quirk and using them to
figure out if applying quirk is needed.

For all existing quirks sink_oui and sink_device_id are set as
SINK_[OUI DEVICE_ID]_ANY to indicate quirk is not specific to any
sink model.

Existing intel_init_quirks is modified to ignore quirk if it has
sink_oui set to something else than SINK_OUI_ANY.

New intel_init_dpcd_quirks is added and called after drm_dp_read_desc
with proper sink device identity read from dpcdc.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     |  5 ++
 drivers/gpu/drm/i915/display/intel_quirks.c | 90 +++++++++++++++------
 drivers/gpu/drm/i915/display/intel_quirks.h |  3 +
 3 files changed, 74 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6a0c7ae654f40..9d8bd41dacfe0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -84,6 +84,7 @@
 #include "intel_pch_display.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
+#include "intel_quirks.h"
 #include "intel_tc.h"
 #include "intel_vdsc.h"
 #include "intel_vrr.h"
@@ -4053,6 +4054,7 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
 
 	drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
 			 drm_dp_is_branch(intel_dp->dpcd));
+	intel_init_dpcd_quirks(&dev_priv->display, &intel_dp->desc.ident);
 
 	/*
 	 * Read the eDP display control registers.
@@ -4152,6 +4154,7 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 static bool
 intel_dp_get_dpcd(struct intel_dp *intel_dp)
 {
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int ret;
 
 	if (intel_dp_init_lttpr_and_dprx_caps(intel_dp) < 0)
@@ -4165,6 +4168,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 		drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
 				 drm_dp_is_branch(intel_dp->dpcd));
 
+		intel_init_dpcd_quirks(&i915->display, &intel_dp->desc.ident);
+
 		intel_dp_update_sink_caps(intel_dp);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 14d5fefc9c5b2..d9045b317cd16 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -69,9 +69,18 @@ struct intel_quirk {
 	int device;
 	int subsystem_vendor;
 	int subsystem_device;
+	u8 sink_oui[3];
+	u8 sink_device_id[6];
 	void (*hook)(struct intel_display *display);
 };
 
+#define SINK_OUI(first, second, third) { (first), (second), (third) }
+#define SINK_DEVICE_ID(first, second, third, fourth, fifth, sixth) \
+	{ (first), (second), (third), (fourth), (fifth), (sixth) }
+
+#define SINK_OUI_ANY		SINK_OUI(0, 0, 0)
+#define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
+
 /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
 struct intel_dmi_quirk {
 	void (*hook)(struct intel_display *display);
@@ -140,77 +149,82 @@ static const struct intel_dmi_quirk intel_dmi_quirks[] = {
 
 static struct intel_quirk intel_quirks[] = {
 	/* Lenovo U160 cannot use SSC on LVDS */
-	{ 0x0046, 0x17aa, 0x3920, quirk_ssc_force_disable },
+	{ 0x0046, 0x17aa, 0x3920, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_ssc_force_disable },
 
 	/* Sony Vaio Y cannot use SSC on LVDS */
-	{ 0x0046, 0x104d, 0x9076, quirk_ssc_force_disable },
+	{ 0x0046, 0x104d, 0x9076, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_ssc_force_disable },
 
 	/* Acer Aspire 5734Z must invert backlight brightness */
-	{ 0x2a42, 0x1025, 0x0459, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x0459, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer/eMachines G725 */
-	{ 0x2a42, 0x1025, 0x0210, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x0210, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer/eMachines e725 */
-	{ 0x2a42, 0x1025, 0x0212, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x0212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer/Packard Bell NCL20 */
-	{ 0x2a42, 0x1025, 0x034b, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x034b, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer Aspire 4736Z */
-	{ 0x2a42, 0x1025, 0x0260, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x0260, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer Aspire 5336 */
-	{ 0x2a42, 0x1025, 0x048a, quirk_invert_brightness },
+	{ 0x2a42, 0x1025, 0x048a, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 
 	/* Acer C720 and C720P Chromebooks (Celeron 2955U) have backlights */
-	{ 0x0a06, 0x1025, 0x0a11, quirk_backlight_present },
+	{ 0x0a06, 0x1025, 0x0a11, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Acer C720 Chromebook (Core i3 4005U) */
-	{ 0x0a16, 0x1025, 0x0a11, quirk_backlight_present },
+	{ 0x0a16, 0x1025, 0x0a11, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Apple Macbook 2,1 (Core 2 T7400) */
-	{ 0x27a2, 0x8086, 0x7270, quirk_backlight_present },
+	{ 0x27a2, 0x8086, 0x7270, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Apple Macbook 4,1 */
-	{ 0x2a02, 0x106b, 0x00a1, quirk_backlight_present },
+	{ 0x2a02, 0x106b, 0x00a1, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Toshiba CB35 Chromebook (Celeron 2955U) */
-	{ 0x0a06, 0x1179, 0x0a88, quirk_backlight_present },
+	{ 0x0a06, 0x1179, 0x0a88, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* HP Chromebook 14 (Celeron 2955U) */
-	{ 0x0a06, 0x103c, 0x21ed, quirk_backlight_present },
+	{ 0x0a06, 0x103c, 0x21ed, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Dell Chromebook 11 */
-	{ 0x0a06, 0x1028, 0x0a35, quirk_backlight_present },
+	{ 0x0a06, 0x1028, 0x0a35, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Dell Chromebook 11 (2015 version) */
-	{ 0x0a16, 0x1028, 0x0a35, quirk_backlight_present },
+	{ 0x0a16, 0x1028, 0x0a35, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_backlight_present },
 
 	/* Toshiba Satellite P50-C-18C */
-	{ 0x191B, 0x1179, 0xF840, quirk_increase_t12_delay },
+	{ 0x191B, 0x1179, 0xF840, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_t12_delay },
 
 	/* GeminiLake NUC */
-	{ 0x3185, 0x8086, 0x2072, quirk_increase_ddi_disabled_time },
-	{ 0x3184, 0x8086, 0x2072, quirk_increase_ddi_disabled_time },
+	{ 0x3185, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
+	{ 0x3184, 0x8086, 0x2072, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
 	/* ASRock ITX*/
-	{ 0x3185, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
-	{ 0x3184, 0x1849, 0x2212, quirk_increase_ddi_disabled_time },
+	{ 0x3185, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
+	{ 0x3184, 0x1849, 0x2212, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
 	/* ECS Liva Q2 */
-	{ 0x3185, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
-	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
+	{ 0x3185, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
+	{ 0x3184, 0x1019, 0xa94d, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_increase_ddi_disabled_time },
 	/* HP Notebook - 14-r206nv */
-	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
+	{ 0x0f31, 0x103c, 0x220f, SINK_OUI_ANY, SINK_DEVICE_ID_ANY, quirk_invert_brightness },
 };
 
 void intel_init_quirks(struct intel_display *display)
 {
 	struct pci_dev *d = to_pci_dev(display->drm->dev);
+	u8 any_sink_oui[] = SINK_OUI_ANY;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
 		struct intel_quirk *q = &intel_quirks[i];
 
+		if (memcmp(q->sink_oui, any_sink_oui,
+			   sizeof(any_sink_oui)) != 0)
+			continue;
+
 		if (d->device == q->device &&
 		    (d->subsystem_vendor == q->subsystem_vendor ||
 		     q->subsystem_vendor == PCI_ANY_ID) &&
@@ -224,6 +238,34 @@ void intel_init_quirks(struct intel_display *display)
 	}
 }
 
+void intel_init_dpcd_quirks(struct intel_display *display,
+			    struct drm_dp_dpcd_ident *ident)
+{
+	struct pci_dev *d = to_pci_dev(display->drm->dev);
+	u8 any_sink_oui[] = SINK_OUI_ANY;
+	u8 any_sink_device_id[] = SINK_DEVICE_ID_ANY;
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_quirks); i++) {
+		struct intel_quirk *q = &intel_quirks[i];
+
+		if (!memcmp(q->sink_oui, any_sink_oui, sizeof(any_sink_oui)))
+			continue;
+
+		if (d->device == q->device &&
+		    (d->subsystem_vendor == q->subsystem_vendor ||
+		     q->subsystem_vendor == PCI_ANY_ID) &&
+		    (d->subsystem_device == q->subsystem_device ||
+		     q->subsystem_device == PCI_ANY_ID) &&
+		    !memcmp(q->sink_oui, ident->oui, sizeof(ident->oui)) &&
+		    (!memcmp(q->sink_device_id, ident->device_id,
+			    sizeof(ident->device_id)) ||
+		     !memcmp(q->sink_device_id, any_sink_device_id,
+			    sizeof(any_sink_device_id))))
+			q->hook(display);
+	}
+}
+
 bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk)
 {
 	return display->quirks.mask & BIT(quirk);
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 151c8f4ae5760..2d664af7e89f7 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -9,6 +9,7 @@
 #include <linux/types.h>
 
 struct intel_display;
+struct drm_dp_dpcd_ident;
 
 enum intel_quirk_id {
 	QUIRK_BACKLIGHT_PRESENT,
@@ -20,6 +21,8 @@ enum intel_quirk_id {
 };
 
 void intel_init_quirks(struct intel_display *display);
+void intel_init_dpcd_quirks(struct intel_display *display,
+			    struct drm_dp_dpcd_ident *ident);
 bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk);
 
 #endif /* __INTEL_QUIRKS_H__ */
-- 
2.34.1

