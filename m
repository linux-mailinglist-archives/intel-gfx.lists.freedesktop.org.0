Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6697967F9B
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 08:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A6510E1FB;
	Mon,  2 Sep 2024 06:43:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BNwbQsjV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D28DF10E15B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 06:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725259385; x=1756795385;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=omKT7botoCqOEsYp/EB5Te3IzStBUjj+Jp7TQZiPPao=;
 b=BNwbQsjVIVfAn2OfMJxmf/FKtCzcPM8s+1QvULAMvZd3tbwQhGp6E7dh
 BNoLRhUW/9AEQoxDyS8wN6uCv0EOG6gLeM2XwdbQU2DjibfeKBuhZqUGz
 dZsSnZEcgiQ3mnaBN7ZDkXdI+RRuDDEHJ5x0nKGEf1ISsSewUqyXDwDIU
 c2hRZKK4Z5TtuC/xegfL1KCPnfXWAOcvy/1l1MHbj8OOsyYh0RjLOaJ4T
 /TXqJloSdMQRALBC/WlBw91200ReMkwFt2wtuI/4V3UGav8PO9Wj60BRW
 dEwbappDNKEntPIda2ZVbChQCuza9BMQHeqkjA0dKtMVaW/1ixJpmkyhx g==;
X-CSE-ConnectionGUID: FbcbyzwPSQyLUJ+aNkNnQQ==
X-CSE-MsgGUID: IqnhuC+iTk+dKjCCamMdUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="41327200"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41327200"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:04 -0700
X-CSE-ConnectionGUID: 2k5pJXECQ7W0ZBdgpdpozA==
X-CSE-MsgGUID: ORLl2zhPQJiqnm8GGespqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64865757"
Received: from apaszkie-mobl2.apaszkie-mobl2 (HELO jhogande-mobl1..)
 ([10.245.244.34])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2024 23:43:04 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/2] drm/i915/display: Add mechanism to use sink model when
 applying quirk
Date: Mon,  2 Sep 2024 09:42:40 +0300
Message-Id: <20240902064241.1020965-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240902064241.1020965-1-jouni.hogander@intel.com>
References: <20240902064241.1020965-1-jouni.hogander@intel.com>
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

Currently there is no way to apply quirk on device only if certain panel
model is installed. This patch implements such mechanism by adding new
quirk type intel_dpcd_quirk which contains also sink_oui and sink_device_id
fields and using also them to figure out if applying quirk is needed.

New intel_init_dpcd_quirks is added and called after drm_dp_read_desc with
proper sink device identity read from dpcdc.

v3:
  - !mem_is_zero fixed to mem_is_zero
v2:
  - instead of using struct intel_quirk add new struct intel_dpcd_quirk

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  4 ++
 drivers/gpu/drm/i915/display/intel_quirks.c   | 51 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_quirks.h   |  5 ++
 4 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 868ff8976ed93..ba1617bcea9f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1907,6 +1907,10 @@ struct intel_dp {
 	} alpm_parameters;
 
 	u8 alpm_dpcd;
+
+	struct {
+		unsigned long mask;
+	} quirks;
 };
 
 enum lspcon_vendor {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 789c2f78826d0..98ed39413a7de 100644
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
+	intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
 
 	/*
 	 * Read the eDP display control registers.
@@ -4165,6 +4167,8 @@ intel_dp_get_dpcd(struct intel_dp *intel_dp)
 		drm_dp_read_desc(&intel_dp->aux, &intel_dp->desc,
 				 drm_dp_is_branch(intel_dp->dpcd));
 
+		intel_init_dpcd_quirks(intel_dp, &intel_dp->desc.ident);
+
 		intel_dp_update_sink_caps(intel_dp);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index 14d5fefc9c5b2..bce1f67c918bb 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -14,6 +14,11 @@ static void intel_set_quirk(struct intel_display *display, enum intel_quirk_id q
 	display->quirks.mask |= BIT(quirk);
 }
 
+static void intel_set_dpcd_quirk(struct intel_dp *intel_dp, enum intel_quirk_id quirk)
+{
+	intel_dp->quirks.mask |= BIT(quirk);
+}
+
 /*
  * Some machines (Lenovo U160) do not work with SSC on LVDS for some reason
  */
@@ -72,6 +77,21 @@ struct intel_quirk {
 	void (*hook)(struct intel_display *display);
 };
 
+struct intel_dpcd_quirk {
+	int device;
+	int subsystem_vendor;
+	int subsystem_device;
+	u8 sink_oui[3];
+	u8 sink_device_id[6];
+	void (*hook)(struct intel_dp *intel_dp);
+};
+
+#define SINK_OUI(first, second, third) { (first), (second), (third) }
+#define SINK_DEVICE_ID(first, second, third, fourth, fifth, sixth) \
+	{ (first), (second), (third), (fourth), (fifth), (sixth) }
+
+#define SINK_DEVICE_ID_ANY	SINK_DEVICE_ID(0, 0, 0, 0, 0, 0)
+
 /* For systems that don't have a meaningful PCI subdevice/subvendor ID */
 struct intel_dmi_quirk {
 	void (*hook)(struct intel_display *display);
@@ -203,6 +223,9 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
 };
 
+static struct intel_dpcd_quirk intel_dpcd_quirks[] = {
+};
+
 void intel_init_quirks(struct intel_display *display)
 {
 	struct pci_dev *d = to_pci_dev(display->drm->dev);
@@ -224,7 +247,35 @@ void intel_init_quirks(struct intel_display *display)
 	}
 }
 
+void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
+			    const struct drm_dp_dpcd_ident *ident)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct pci_dev *d = to_pci_dev(display->drm->dev);
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
+		struct intel_dpcd_quirk *q = &intel_dpcd_quirks[i];
+
+		if (d->device == q->device &&
+		    (d->subsystem_vendor == q->subsystem_vendor ||
+		     q->subsystem_vendor == PCI_ANY_ID) &&
+		    (d->subsystem_device == q->subsystem_device ||
+		     q->subsystem_device == PCI_ANY_ID) &&
+		    !memcmp(q->sink_oui, ident->oui, sizeof(ident->oui)) &&
+		    (!memcmp(q->sink_device_id, ident->device_id,
+			    sizeof(ident->device_id)) ||
+		     mem_is_zero(q->sink_device_id, sizeof(q->sink_device_id))))
+			q->hook(intel_dp);
+	}
+}
+
 bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk)
 {
 	return display->quirks.mask & BIT(quirk);
 }
+
+bool intel_has_dpcd_quirk(struct intel_dp *intel_dp, enum intel_quirk_id quirk)
+{
+	return intel_dp->quirks.mask & BIT(quirk);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
index 151c8f4ae5760..c8db50b9ab74d 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.h
+++ b/drivers/gpu/drm/i915/display/intel_quirks.h
@@ -9,6 +9,8 @@
 #include <linux/types.h>
 
 struct intel_display;
+struct intel_dp;
+struct drm_dp_dpcd_ident;
 
 enum intel_quirk_id {
 	QUIRK_BACKLIGHT_PRESENT,
@@ -20,6 +22,9 @@ enum intel_quirk_id {
 };
 
 void intel_init_quirks(struct intel_display *display);
+void intel_init_dpcd_quirks(struct intel_dp *intel_dp,
+			    const struct drm_dp_dpcd_ident *ident);
 bool intel_has_quirk(struct intel_display *display, enum intel_quirk_id quirk);
+bool intel_has_dpcd_quirk(struct intel_dp *intel_dp, enum intel_quirk_id quirk);
 
 #endif /* __INTEL_QUIRKS_H__ */
-- 
2.34.1

