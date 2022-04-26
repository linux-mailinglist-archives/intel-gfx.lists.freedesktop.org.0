Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB4151091B
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:33:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15FF910E5F1;
	Tue, 26 Apr 2022 19:33:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1EFC10E5B3
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001586; x=1682537586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gnXaLRDf0Gf5/3bg+9Wu1ypylUlaIdUXZEPeeWsDfwA=;
 b=lbAgRCaDw7HtNoNdL/K7ajLQX1i4joQct9d7zOnU54bzzpUAjAvy6jQU
 VfEpkH2BnGa0p7z2qi1af+lRc4vf2b9+9tSFwoDLoMCL+dC35Ax00DRVM
 01hjN+MWuSngbyspryMKTajR5z/32Z27e5htA12Qkt7l/kzBfiVgF+axC
 8YVuxe/quNycQGm5C5C8z+1bW0ToSb3P2BI/KRaFzlDC+Jihg44PoIHLe
 gvOLwVnCx4pccMg9luNnyvCO+Yw9pQNTkID9i+ntiWfXeMhlrlSadMm4c
 +MfP0HxN9+QqZcYDHoN9DQMirVizHADvzLjTZ9yLUzsa5WbARjR2LzNzk Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="246264549"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="246264549"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:33:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="539002231"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 26 Apr 2022 12:33:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:33:02 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:17 +0300
Message-Id: <20220426193222.3422-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 13/18] drm/i915/bios: Refactor panel_type code
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
index c68e4d987b81..e4ab637517ba 100644
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

