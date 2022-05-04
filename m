Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D594751A31C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 982BD10EED3;
	Wed,  4 May 2022 15:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32FC310ECE2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676710; x=1683212710;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RAGVltkNp0f1Hr2zW4uUACJzNM8J38BGKFNuj3GVU/0=;
 b=dzkjkHaauhlZvvOD1ze0NDvqqzhkq45siKxMk0nHuRL+9cemWwK2aL6D
 Vi6EynIVGUmY7A7d3ziKq9crXCzSEkbsj1U7XZI+9Y30SaXEhZsI1yd8q
 TTwz3h6RaAkF54F6SmirAU1UxEisLb4la6oLxJ+EIrsiH4oNKomX790OP
 TVLL/jW8VTa2OLBg234qmjIBJD6v3X3yFVvbecGs+6mOdToz83zjmVqsR
 BncnJIgltdJjEVUyO93sGUlDW5FNQ2JVf10TRsTfbFFt/JGaoAcze6elm
 oM40b72AThm6SKvcUx0J1smnlpCxvk2odiSdeA0aaVwdHPdd/py4HZImq Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="330779046"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="330779046"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:05:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="568141986"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga007.fm.intel.com with SMTP; 04 May 2022 08:05:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:05:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:38 +0300
Message-Id: <20220504150440.13748-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915/bios: Refactor panel_type code
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Make the panel type code a bit more abstract along the
lines of the source of the panel type. For the moment
we have three classes: OpRegion, VBT, fallback.
Well introduce another one shortly.

We can now also print out all the different panel types,
and indicate which one we ultimately selected. Could help
with debugging.

v2: Add .get_panel_type() vfunc (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 66 ++++++++++++++++++-----
 1 file changed, 53 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 63f50d219be4..46ce9e9f14f2 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -595,6 +595,11 @@ get_lfp_data_tail(const struct bdb_lvds_lfp_data *data,
 		return NULL;
 }
 
+static int opregion_get_panel_type(struct drm_i915_private *i915)
+{
+	return intel_opregion_get_panel_type(i915);
+}
+
 static int vbt_get_panel_type(struct drm_i915_private *i915)
 {
 	const struct bdb_lvds_options *lvds_options;
@@ -612,25 +617,60 @@ static int vbt_get_panel_type(struct drm_i915_private *i915)
 	return lvds_options->panel_type;
 }
 
+static int fallback_get_panel_type(struct drm_i915_private *i915)
+{
+	return 0;
+}
+
+enum panel_type {
+	PANEL_TYPE_OPREGION,
+	PANEL_TYPE_VBT,
+	PANEL_TYPE_FALLBACK,
+};
+
 static int get_panel_type(struct drm_i915_private *i915)
 {
-	int ret;
+	struct {
+		const char *name;
+		int (*get_panel_type)(struct drm_i915_private *i915);
+		int panel_type;
+	} panel_types[] = {
+		[PANEL_TYPE_OPREGION] = {
+			.name = "OpRegion",
+			.get_panel_type = opregion_get_panel_type,
+		},
+		[PANEL_TYPE_VBT] = {
+			.name = "VBT",
+			.get_panel_type = vbt_get_panel_type,
+		},
+		[PANEL_TYPE_FALLBACK] = {
+			.name = "fallback",
+			.get_panel_type = fallback_get_panel_type,
+		},
+	};
+	int i;
 
-	ret = intel_opregion_get_panel_type(i915);
-	if (ret >= 0) {
-		drm_WARN_ON(&i915->drm, ret > 0xf);
-		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
-		return ret;
-	}
+	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
+		panel_types[i].panel_type = panel_types[i].get_panel_type(i915);
+
+		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
 
-	ret = vbt_get_panel_type(i915);
-	if (ret >= 0) {
-		drm_WARN_ON(&i915->drm, ret > 0xf);
-		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n", ret);
-		return ret;
+		if (panel_types[i].panel_type >= 0)
+			drm_dbg_kms(&i915->drm, "Panel type (%s): %d\n",
+				    panel_types[i].name, panel_types[i].panel_type);
 	}
 
-	return 0; /* fallback */
+	if (panel_types[PANEL_TYPE_OPREGION].panel_type >= 0)
+		i = PANEL_TYPE_OPREGION;
+	else if (panel_types[PANEL_TYPE_VBT].panel_type >= 0)
+		i = PANEL_TYPE_VBT;
+	else
+		i = PANEL_TYPE_FALLBACK;
+
+	drm_dbg_kms(&i915->drm, "Selected panel type (%s): %d\n",
+		    panel_types[i].name, panel_types[i].panel_type);
+
+	return panel_types[i].panel_type;
 }
 
 /* Parse general panel options */
-- 
2.35.1

