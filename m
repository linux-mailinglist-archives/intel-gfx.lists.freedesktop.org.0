Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2540D687CD3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99C9C10E4F2;
	Thu,  2 Feb 2023 12:05:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1150310E4F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339506; x=1706875506;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Y0zkXGGnH8qsVw3GImQgFKcu2OVLHOC4aNtlijbRhqg=;
 b=UfaVtZ7NeniZCOtNFBYc/3H68zjk8aXe9ie/jFH1rgGkVbdlsDMCWQ2B
 WaT2L7UkdY+GYV+V4LVFH06HEcV2OC0e2p4tyXBJ1FAOhLv+Yb1E90mWP
 MDKoRulFWvCwVZl/aXDVdWqhznEwcdtISHQP56PxnT8/CSTg7pbHgnR5v
 txCqgrRuxtWjACQTECjS1sJ161JumurFDTU8wHtkQfxXDzdk6cDyCf8UZ
 k994Uk7LdArO6DEvRHZ2jzYVCfQmaJdCN1D6nXkI0TCiYHK4X+cqlZWgQ
 9zuvRP0SQ2Qcy6XQlP2xHmPGw1uq1ScfMHZLwWWRSAmiB4d510ukoBoPH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767201"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767201"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="642872062"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="642872062"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:49 +0200
Message-Id: <8dcaa716093e6fbe75bb69ee7ac715a3f007a523.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/dmc: add for_each_dmc_id() and use
 it
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

The loop is duplicated many times, with slightly different ways. Unify.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 2cb748900805..51109cb1d1b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -249,6 +249,9 @@ struct stepping_info {
 	char substepping;
 };
 
+#define for_each_dmc_id(__dmc_id) \
+	for ((__dmc_id) = DMC_FW_MAIN; (__dmc_id) < DMC_FW_MAX; (__dmc_id)++)
+
 static bool has_dmc_id_fw(struct drm_i915_private *i915, enum intel_dmc_id dmc_id)
 {
 	return i915->display.dmc.dmc_info[dmc_id].payload;
@@ -346,7 +349,7 @@ disable_all_flip_queue_events(struct drm_i915_private *i915)
 	if (!IS_DG2(i915) && !IS_TIGERLAKE(i915))
 		return;
 
-	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+	for_each_dmc_id(dmc_id) {
 		i915_reg_t ctl_reg;
 		i915_reg_t htp_reg;
 
@@ -368,7 +371,7 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
 	if (DISPLAY_VER(i915) < 12)
 		return;
 
-	for (dmc_id = DMC_FW_MAIN; dmc_id < DMC_FW_MAX; dmc_id++) {
+	for_each_dmc_id(dmc_id) {
 		int handler;
 
 		if (!has_dmc_id_fw(i915, dmc_id))
@@ -452,7 +455,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	preempt_disable();
 
-	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+	for_each_dmc_id(dmc_id) {
 		for (i = 0; i < dmc->dmc_info[dmc_id].dmc_fw_size; i++) {
 			intel_de_write_fw(dev_priv,
 					  DMC_PROGRAM(dmc->dmc_info[dmc_id].start_mmioaddr, i),
@@ -462,7 +465,7 @@ void intel_dmc_load_program(struct drm_i915_private *dev_priv)
 
 	preempt_enable();
 
-	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+	for_each_dmc_id(dmc_id) {
 		for (i = 0; i < dmc->dmc_info[dmc_id].mmio_count; i++) {
 			intel_de_write(dev_priv, dmc->dmc_info[dmc_id].mmioaddr[i],
 				       dmc->dmc_info[dmc_id].mmiodata[i]);
@@ -824,7 +827,7 @@ static void parse_dmc_fw(struct drm_i915_private *dev_priv,
 
 	readcount += r;
 
-	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++) {
+	for_each_dmc_id(dmc_id) {
 		if (!dev_priv->display.dmc.dmc_info[dmc_id].present)
 			continue;
 
@@ -1051,7 +1054,7 @@ void intel_dmc_ucode_fini(struct drm_i915_private *dev_priv)
 	intel_dmc_ucode_suspend(dev_priv);
 	drm_WARN_ON(&dev_priv->drm, dev_priv->display.dmc.wakeref);
 
-	for (dmc_id = 0; dmc_id < DMC_FW_MAX; dmc_id++)
+	for_each_dmc_id(dmc_id)
 		kfree(dev_priv->display.dmc.dmc_info[dmc_id].payload);
 }
 
-- 
2.34.1

