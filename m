Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E4D128169
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 18:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D9F6EC7D;
	Fri, 20 Dec 2019 17:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 667956E116
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 17:28:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 09:28:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210875742"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 20 Dec 2019 09:27:59 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2019 09:27:50 -0800
Message-Id: <20191220172754.3773-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191220172754.3773-1-lucas.demarchi@intel.com>
References: <20191220172754.3773-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: prefer 3-letter acronym for
 icelake
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We are currently using a mix of platform name and acronym to name the
functions. Let's prefer the acronym as it should be clear what platform
it's about and it's shorter, so it doesn't go over 80 columns in a few
cases. This converts icelake to icl where appropriate.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++------
 drivers/gpu/drm/i915/gt/intel_mocs.c         |  6 +++---
 2 files changed, 8 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9983113ff050..2213f9505d49 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10205,9 +10205,8 @@ static void cnl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
 	pipe_config->shared_dpll = intel_get_shared_dpll_by_id(dev_priv, id);
 }
 
-static void icelake_get_ddi_pll(struct drm_i915_private *dev_priv,
-				enum port port,
-				struct intel_crtc_state *pipe_config)
+static void icl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port port,
+			    struct intel_crtc_state *pipe_config)
 {
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	enum icl_port_dpll_id port_dpll_id;
@@ -10491,7 +10490,7 @@ static void hsw_get_ddi_port_state(struct intel_crtc *crtc,
 	}
 
 	if (INTEL_GEN(dev_priv) >= 11)
-		icelake_get_ddi_pll(dev_priv, port, pipe_config);
+		icl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_CANNONLAKE(dev_priv))
 		cnl_get_ddi_pll(dev_priv, port, pipe_config);
 	else if (IS_GEN9_BC(dev_priv))
@@ -10542,7 +10541,7 @@ static enum transcoder transcoder_master_readout(struct drm_i915_private *dev_pr
 		return master_select - 1;
 }
 
-static void icelake_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
+static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
 	u32 transcoders;
@@ -10698,7 +10697,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 
 	if (INTEL_GEN(dev_priv) >= 11 &&
 	    !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		icelake_get_trans_port_sync_config(pipe_config);
+		icl_get_trans_port_sync_config(pipe_config);
 
 out:
 	for_each_power_domain(power_domain, power_domain_mask)
diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
index cbdeda608359..95f1bc45953b 100644
--- a/drivers/gpu/drm/i915/gt/intel_mocs.c
+++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
@@ -267,7 +267,7 @@ static const struct drm_i915_mocs_entry tigerlake_mocs_table[] = {
 		   L3_3_WB),
 };
 
-static const struct drm_i915_mocs_entry icelake_mocs_table[] = {
+static const struct drm_i915_mocs_entry icl_mocs_table[] = {
 	/* Base - Uncached (Deprecated) */
 	MOCS_ENTRY(I915_MOCS_UNCACHED,
 		   LE_1_UC | LE_TC_1_LLC,
@@ -288,8 +288,8 @@ static bool get_mocs_settings(const struct drm_i915_private *i915,
 		table->table = tigerlake_mocs_table;
 		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
 	} else if (IS_GEN(i915, 11)) {
-		table->size  = ARRAY_SIZE(icelake_mocs_table);
-		table->table = icelake_mocs_table;
+		table->size  = ARRAY_SIZE(icl_mocs_table);
+		table->table = icl_mocs_table;
 		table->n_entries = GEN11_NUM_MOCS_ENTRIES;
 	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
 		table->size  = ARRAY_SIZE(skl_mocs_table);
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
