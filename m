Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A7884F3CEF
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:35:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4437C10EDAE;
	Tue,  5 Apr 2022 17:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19F7610EDAE
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180104; x=1680716104;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+4UOudDKAJ2tXbxrcAkmZ4nJmcbQnhuN0T7zXWzyfy4=;
 b=KL/vAUXikXMUWcB+FbJTuvOSFDB9BlPeQ0ALrr4d5c3TThREaQY9lGJc
 aSrG4i/JDYT60XXR32pV1VqnMKSY0c/FIIDsqnWNviZ1v44IVL8luh6mS
 uYO+1ccZ7VQCTxcerUMV0KMKNbPEuIgd21MqxzPD57NZ+XxRJ3y9vtEjq
 xjOV9GdIsofSGC3KQ+NuULci1vp5jkzp0vCT/y+5X7ITuxvB1MfnsTFb3
 ghRgv02hC8Js9tUPRVrxHjTKnjHmiw8W1dcgCut2NW3lqHuzgJb7JGRgE
 ubY4WHgY0bMStG7k1gorj7FwqR/Dz79joWH06FY+9XTpudkHVvA3J43sz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="248334835"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="248334835"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:35:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="523551672"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga002.jf.intel.com with SMTP; 05 Apr 2022 10:35:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:35:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:34:05 +0300
Message-Id: <20220405173410.11436-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/22] drm/i915/bios: Refactor panel_type code
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

Make the panel type code a bit more abstract along the
lines of the source of the panel type. For the moment
we have three classes: OpRegion, VBT, fallback.
Well introduce another one shortly.

We can now also print out all the different panel types,
and indicate which one we ultimately selected. Could help
with debugging.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 47 ++++++++++++++++-------
 1 file changed, 34 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 26839263abf0..feef5aa97398 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -606,25 +606,46 @@ static int vbt_panel_type(struct drm_i915_private *i915)
 	return lvds_options->panel_type;
 }
 
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
+		int panel_type;
+	} panel_types[] = {
+		[PANEL_TYPE_OPREGION] = { .name = "OpRegion", .panel_type = -1, },
+		[PANEL_TYPE_VBT] = { .name = "VBT", .panel_type = -1, },
+		[PANEL_TYPE_FALLBACK] = { .name = "fallback", .panel_type = 0, },
+	};
+	int i;
 
-	ret = intel_opregion_get_panel_type(i915);
-	if (ret >= 0) {
-		drm_WARN_ON(&i915->drm, ret > 0xf);
-		drm_dbg_kms(&i915->drm, "Panel type: %d (OpRegion)\n", ret);
-		return ret;
-	}
+	panel_types[PANEL_TYPE_OPREGION].panel_type = intel_opregion_get_panel_type(i915);
+	panel_types[PANEL_TYPE_VBT].panel_type = vbt_panel_type(i915);
+
+	for (i = 0; i < ARRAY_SIZE(panel_types); i++) {
+		drm_WARN_ON(&i915->drm, panel_types[i].panel_type > 0xf);
 
-	ret = vbt_panel_type(i915);
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

