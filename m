Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2937C64EE9A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 17:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF46F10E5E8;
	Fri, 16 Dec 2022 16:08:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE2AB10E5E8;
 Fri, 16 Dec 2022 16:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671206887; x=1702742887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Yw91XUnp7QZ3ZiibbRYe4nJEhG5X8VpYiPW/sU0hLRw=;
 b=EtTVxGO1wZF2+xYn2ZzF6RJZTEd08SkVXcKletBmxO/AK3cG5fV9Db9X
 Yo50iO2O/JRiJH959OzonwrsSVoVoWDj4qgT6nhWS454oW69vXGWMfs6W
 wrsz4LUcLV6bElA5x9/D4CorYfzlRKlz7j6YmwWa73W+Gm9RJoTxJH4lz
 +PF8lPAqLQzVzjn1G2zw6I5Wo3yD1drxqw1Ni/lEED9w4LUuTP5FaHKYo
 LzKGJ8kXwZHTAhZeAgv67z1jWkY0q9eoF+EWLuCf9elNK2mEpeyjHZxdg
 jEwlvEce51JhtXpyfZUoqv7dwZYIrrv5N2+BsyJTUs2DAq2GXgWp0esHR g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="299330709"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="299330709"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 08:01:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="682337264"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="682337264"
Received: from fbielich-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.62.38])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 08:01:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 16 Dec 2022 18:00:24 +0200
Message-Id: <839cb0fd5a411705dc724f7b8d339bba97fb8b78.1671206131.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1671206131.git.jani.nikula@intel.com>
References: <cover.1671206131.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 10/12] drm/i915/bios: convert
 intel_bios_init_panel() to drm_edid
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

Try to use struct drm_edid where possible, even if having to fall back
to looking into struct edid down low via drm_edid_raw().

v2: Rebase

Cc: Imre Deak <imre.deak@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 23 ++++++++++++-----------
 drivers/gpu/drm/i915/display/intel_bios.h |  4 ++--
 drivers/gpu/drm/i915/display/intel_dp.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_lvds.c |  2 +-
 4 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 55544d484318..9badd77d656a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -620,14 +620,14 @@ static void dump_pnp_id(struct drm_i915_private *i915,
 
 static int opregion_get_panel_type(struct drm_i915_private *i915,
 				   const struct intel_bios_encoder_data *devdata,
-				   const struct edid *edid, bool use_fallback)
+				   const struct drm_edid *drm_edid, bool use_fallback)
 {
 	return intel_opregion_get_panel_type(i915);
 }
 
 static int vbt_get_panel_type(struct drm_i915_private *i915,
 			      const struct intel_bios_encoder_data *devdata,
-			      const struct edid *edid, bool use_fallback)
+			      const struct drm_edid *drm_edid, bool use_fallback)
 {
 	const struct bdb_lvds_options *lvds_options;
 
@@ -652,12 +652,13 @@ static int vbt_get_panel_type(struct drm_i915_private *i915,
 
 static int pnpid_get_panel_type(struct drm_i915_private *i915,
 				const struct intel_bios_encoder_data *devdata,
-				const struct edid *edid, bool use_fallback)
+				const struct drm_edid *drm_edid, bool use_fallback)
 {
 	const struct bdb_lvds_lfp_data *data;
 	const struct bdb_lvds_lfp_data_ptrs *ptrs;
 	const struct lvds_pnp_id *edid_id;
 	struct lvds_pnp_id edid_id_nodate;
+	const struct edid *edid = drm_edid_raw(drm_edid); /* FIXME */
 	int i, best = -1;
 
 	if (!edid)
@@ -701,7 +702,7 @@ static int pnpid_get_panel_type(struct drm_i915_private *i915,
 
 static int fallback_get_panel_type(struct drm_i915_private *i915,
 				   const struct intel_bios_encoder_data *devdata,
-				   const struct edid *edid, bool use_fallback)
+				   const struct drm_edid *drm_edid, bool use_fallback)
 {
 	return use_fallback ? 0 : -1;
 }
@@ -715,13 +716,13 @@ enum panel_type {
 
 static int get_panel_type(struct drm_i915_private *i915,
 			  const struct intel_bios_encoder_data *devdata,
-			  const struct edid *edid, bool use_fallback)
+			  const struct drm_edid *drm_edid, bool use_fallback)
 {
 	struct {
 		const char *name;
 		int (*get_panel_type)(struct drm_i915_private *i915,
 				      const struct intel_bios_encoder_data *devdata,
-				      const struct edid *edid, bool use_fallback);
+				      const struct drm_edid *drm_edid, bool use_fallback);
 		int panel_type;
 	} panel_types[] = {
 		[PANEL_TYPE_OPREGION] = {
@@ -745,7 +746,7 @@ static int get_panel_type(struct drm_i915_private *i915,
 
 	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
 		panel_types[i].panel_type = panel_types[i].get_panel_type(i915, devdata,
-									  edid, use_fallback);
+									  drm_edid, use_fallback);
 
 		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf &&
 			    panel_types[i].panel_type != 0xff);
@@ -3187,7 +3188,7 @@ void intel_bios_init(struct drm_i915_private *i915)
 static void intel_bios_init_panel(struct drm_i915_private *i915,
 				  struct intel_panel *panel,
 				  const struct intel_bios_encoder_data *devdata,
-				  const struct edid *edid,
+				  const struct drm_edid *drm_edid,
 				  bool use_fallback)
 {
 	/* already have it? */
@@ -3197,7 +3198,7 @@ static void intel_bios_init_panel(struct drm_i915_private *i915,
 	}
 
 	panel->vbt.panel_type = get_panel_type(i915, devdata,
-					       edid, use_fallback);
+					       drm_edid, use_fallback);
 	if (panel->vbt.panel_type < 0) {
 		drm_WARN_ON(&i915->drm, use_fallback);
 		return;
@@ -3228,9 +3229,9 @@ void intel_bios_init_panel_early(struct drm_i915_private *i915,
 void intel_bios_init_panel_late(struct drm_i915_private *i915,
 				struct intel_panel *panel,
 				const struct intel_bios_encoder_data *devdata,
-				const struct edid *edid)
+				const struct drm_edid *drm_edid)
 {
-	intel_bios_init_panel(i915, panel, devdata, edid, true);
+	intel_bios_init_panel(i915, panel, devdata, drm_edid, true);
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index ff1fdd2e0c1c..d221f784aa88 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -32,8 +32,8 @@
 
 #include <linux/types.h>
 
+struct drm_edid;
 struct drm_i915_private;
-struct edid;
 struct intel_bios_encoder_data;
 struct intel_crtc_state;
 struct intel_encoder;
@@ -238,7 +238,7 @@ void intel_bios_init_panel_early(struct drm_i915_private *dev_priv,
 void intel_bios_init_panel_late(struct drm_i915_private *dev_priv,
 				struct intel_panel *panel,
 				const struct intel_bios_encoder_data *devdata,
-				const struct edid *edid);
+				const struct drm_edid *drm_edid);
 void intel_bios_fini_panel(struct intel_panel *panel);
 void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
 bool intel_bios_is_valid_vbt(const void *buf, size_t size);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6caa290ef6e6..a64e97808813 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5325,7 +5325,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_connector->edid = drm_edid;
 
 	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata,
-				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
+				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
 
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 6a98787edf48..9f6910bba2e9 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -977,7 +977,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_connector->edid = drm_edid;
 
 	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, NULL,
-				   IS_ERR_OR_NULL(drm_edid) ? NULL : drm_edid_raw(drm_edid));
+				   IS_ERR(drm_edid) ? NULL : drm_edid);
 
 	/* Try EDID first */
 	intel_panel_add_edid_fixed_modes(intel_connector, true);
-- 
2.34.1

