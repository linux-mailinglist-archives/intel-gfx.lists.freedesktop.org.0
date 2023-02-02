Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 139B1687CD2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 207DA882D0;
	Thu,  2 Feb 2023 12:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85439882D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339502; x=1706875502;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hU3SVUGtMlOeIvclZ0r7q8UfI3/a26y+Gq1uKwCcmcA=;
 b=HIUXib7w5sY18OKWZ2vkIJyq2n5bTMPCgHMH3uYSzrwX+b9u2TvTsdBa
 SE8VYUkHDEdyZbgG0sR+ItFp8ctwywdIfVOwVce5TbxereESV9geMjgTD
 NILDBrtMhphFyhMbGOxI8kHABcH7xCjoLgCuZtU7c0B/IgFg8lpwyEfC3
 FTT9LK0GkqeBMKAVJfuvIAE9414r2ifMsCarpsGbP/2m9boeErpbnLJ+h
 IB7FdY5cd4LxVrJGpBpQCP5LuhVHbZvdV/jCqbotsjCIb85sJN3ClaUjP
 soj9rsoj/mVFfthPmolZ4zGXpCDdH3JI11u8NFKRv96zjDIpT9ZyM0N1e Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767183"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767183"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:02 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="642872046"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="642872046"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:04:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:48 +0200
Message-Id: <6912ccb411bb957c68c108b774745dbc7e0cbdc2.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/5] drm/i915/dmc: add proper name to dmc id
 enum and use it
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clarify DMC ID usage by adding enum intel_dmc_id name to the enum, and
use dmc_id as the variable name for it throughout.

Convert a switch-case to if-ladder to avoid warnings about not handling
DMC_FW_MAX enumeration constant in the switch-case.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 77 ++++++++++++------------
 drivers/gpu/drm/i915/display/intel_dmc.h |  2 +-
 2 files changed, 39 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 257aa2b7cf20..2cb748900805 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -249,7 +249,7 @@ struct stepping_info {
 	char substepping;
 };
 
-static bool has_dmc_id_fw(struct drm_i915_private *i915, int dmc_id)
+static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
 {
 	return i915->display.dmc.dmc_info[dmc_id].payload;
 }
@@ -315,26 +315,23 @@ disable_flip_queue_event(struct drm_i915_private *i915,
 }
 
 static bool
-get_flip_queue_event_regs(struct drm_i915_private *i915, int dmc_id,
+get_flip_queue_event_regs(struct drm_i915_private *i915, enum intel_dmc_id dmc_id,
 			  i915_reg_t *ctl_reg, i915_reg_t *htp_reg)
 {
-	switch (dmc_id) {
-	case DMC_FW_MAIN:
+	if (dmc_id == DMC_FW_MAIN) {
 		if (DISPLAY_VER(i915) == 12) {
 			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 3);
 			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 3);
 
 			return true;
 		}
-		break;
-	case DMC_FW_PIPEA ... DMC_FW_PIPED:
+	} else if (dmc_id >= DMC_FW_PIPEA && dmc_id <= DMC_FW_PIPED) {
 		if (IS_DG2(i915)) {
 			*ctl_reg = DMC_EVT_CTL(i915, dmc_id, 2);
 			*htp_reg = DMC_EVT_HTP(i915, dmc_id, 2);
 
 			return true;
 		}
-		break;
 	}
 
 	return false;
@@ -343,7 +340,7 @@ get_flip_queue_event_regs(struct drm_i915_private *i915, int dmc_id,
 static void
 disable_all_flip_queue_events(struct drm_i915_private *i915)
 {
-	int dmc_id;
+	enum intel_dmc_id dmc_id;
 
 	/* TODO: check if the following applies to all D13+ platforms. */
 	if (!IS_DG2(i915) && !IS_TIGERLAKE(i915))
@@ -365,22 +362,22 @@ disable_all_flip_queue_events(struct drm_i915_private *i915)
 
 static void disable_all_event_handlers(struct drm_i915_private *i915)
 {
-	int id;
+	enum intel_dmc_id dmc_id;
 
 	/* TODO: disable the event handlers on pre-GEN12 platforms as well */
 	if (DISPLAY_VER(i915) < 12)
 		return;
 
-	for (id = DMC_FW_MAIN; id < DMC_FW_MAX; id++) {
+	for (dmc_id = DMC_FW_MAIN; dmc_id < DMC_FW_MAX; dmc_id++) {
 		int handler;
 
-		if (!has_dmc_id_fw(i915, id))
+		if (!has_dmc_id_fw(i915, dmc_id))
 			continue;
 
 		for (handler = 0; handler < DMC_EVENT_HANDLER_COUNT_GEN12; handler++)
 			disable_event_handler(i915,
-					      DMC_EVT_CTL(i915, id, handler),
-					      DMC_EVT_HTP(i915, id, handler));
+					      DMC_EVT_CTL(i915, dmc_id, handler),
+					      DMC_EVT_HTP(i915, dmc_id, handler));
 	}
 }
 
@@ -441,7 +438,8 @@ void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 {
 	struct intel_dmc *dmc = &dev_priv->display.dmc;
-	u32 id, i;
+	enum intel_dmc_id dmc_id;
+	u32 i;
 
 	if (!intel_dmc_has_payload(dev_priv))
 		return;
@@ -454,20 +452,20 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	preempt_disable();
 
-	for (id = 0; id < DMC_FW_MAX; id++) {
-		for (i = 0; i < dmc->dmc_info[id].dmc_fw_size; i++) {
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+		for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
 			intel_de_write_fw(dev_priv,
-					  DMC_PROGRAM(dmc->dmc_info[id].start_mmioaddr, i),
-					  dmc->dmc_info[id].payload[i]);
+					  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
+					  dmc->dmc_info[dmc_id].payload[i]);
 		}
 	}
 
 	preempt_enable();
 
-	for (id = 0; id < DMC_FW_MAX; id++) {
-		for (i = 0; i < dmc->dmc_info[id].mmio_count; i++) {
-			intel_de_write(dev_priv, dmc->dmc_info[id].mmioaddr[i],
-				       dmc->dmc_info[id].mmiodata[i]);
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
+			intel_de_write(dev_priv, dmc->dmc_info[dmc_id].mmioaddr[i],
+				       dmc->dmc_info[dmc_id].mmiodata[i]);
 		}
 	}
 
@@ -540,15 +538,16 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 			      const struct stepping_info *si,
 			      u8 package_ver)
 {
-	unsigned int i, id;
+	enum intel_dmc_id dmc_id;
+	unsigned int i;
 
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 
 	for (i = 0; i < num_entries; i++) {
-		id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
+		dmc_id = package_ver <= 1 ? DMC_FW_MAIN : fw_info[i].dmc_id;
 
-		if (id >= DMC_FW_MAX) {
-			drm_dbg(&i915->drm, "Unsupported firmware id: %u\n", id);
+		if (dmc_id >= DMC_FW_MAX) {
+			drm_dbg(&i915->drm, "Unsupported firmware id: %u\n", dmc_id);
 			continue;
 		}
 
@@ -556,19 +555,19 @@ static void dmc_set_fw_offset(struct intel_dmc *dmc,
 		 * check for the stepping since we already found a previous FW
 		 * for this id.
 		 */
-		if (dmc->dmc_info[id].present)
+		if (dmc->dmc_info[dmc_id].present)
 			continue;
 
 		if (fw_info_matches_stepping(&fw_info[i], si)) {
-			dmc->dmc_info[id].present = true;
-			dmc->dmc_info[id].dmc_offset = fw_info[i].offset;
+			dmc->dmc_info[dmc_id].present = true;
+			dmc->dmc_info[dmc_id].dmc_offset = fw_info[i].offset;
 		}
 	}
 }
 
 static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 				       const u32 *mmioaddr, u32 mmio_count,
-				       int header_ver, u8 dmc_id)
+				       int header_ver, enum intel_dmc_id dmc_id)
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	u32 start_range, end_range;
@@ -606,7 +605,7 @@ static bool dmc_mmio_addr_sanity_check(struct intel_dmc *dmc,
 
 static u32 parse_dmc_fw_header(struct intel_dmc *dmc,
 			       const struct intel_dmc_header_base *dmc_header,
-			       size_t rem_size, u8 dmc_id)
+			       size_t rem_size, enum intel_dmc_id dmc_id)
 {
 	struct drm_i915_private *i915 = container_of(dmc, typeof(*i915), display.dmc);
 	struct dmc_fw_info *dmc_info = &dmc->dmc_info[dmc_id];
@@ -802,9 +801,9 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 	struct intel_dmc *dmc = &dev_priv->display.dmc;
 	struct stepping_info display_info = { '*', '*'};
 	const struct stepping_info *si = intel_get_stepping_info(dev_priv, &display_info);
+	enum intel_dmc_id dmc_id;
 	u32 readcount = 0;
 	u32 r, offset;
-	int id;
 
 	if (!fw)
 		return;
@@ -825,18 +824,18 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
 	readcount += r;
 
-	for (id = 0; id < DMC_FW_MAX; id++) {
-		if (!dev_priv->display.dmc.dmc_info[id].present)
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+		if (!dev_priv->display.dmc.dmc_info[dmc_id].present)
 			continue;
 
-		offset = readcount + dmc->dmc_info[id].dmc_offset * 4;
+		offset = readcount + dmc->dmc_info[dmc_id].dmc_offset * 4;
 		if (offset > fw->size) {
 			drm_err(&dev_priv->drm, "Reading beyond the fw_size\n");
 			continue;
 		}
 
 		dmc_header = (struct intel_dmc_header_base *)&fw->data[offset];
-		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, id);
+		parse_dmc_fw_header(dmc, dmc_header, fw->size - offset, dmc_id);
 	}
 }
 
@@ -1044,7 +1043,7 @@ void intel_dmc_ucode_resume(struct drm_i915_private *dev_priv)
  */
 void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 {
-	int id;
+	enum intel_dmc_id dmc_id;
 
 	if (!HAS_DMC(dev_priv))
 		return;
@@ -1052,8 +1051,8 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 	intel_dmc_ucode_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
 
-	for (id = 0; id < DMC_FW_MAX; id++)
-		kfree(dev_priv->display.dmc.dmc_info[id].payload);
+	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++)
+		kfree(dev_priv->display.dmc.dmc_info[dmc_id].payload);
 }
 
 void intel_dmc_print_error_state(struct drm_i915_error_state_buf *m,
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index fd1725de4289..88eae74dbcf2 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -15,7 +15,7 @@ struct drm_i915_private;
 
 enum pipe;
 
-enum {
+enum intel_dmc_id {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
 	DMC_FW_PIPEB,
-- 
2.34.1

