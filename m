Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D3331ADA8
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 20:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 755016E874;
	Sat, 13 Feb 2021 19:05:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E5F26E874
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 19:05:30 +0000 (UTC)
IronPort-SDR: kXmAauw/DCqF1DsU1AIbmqqXY3H7DY7i5AeNYV3N8c1B2P5WmupK6rs9Fx8+E1ySgpuJ7QfHuc
 eozrVaJDmJ+w==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="267387442"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="267387442"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:30 -0800
IronPort-SDR: cxPhwKmzdFahZi6E4HNL6yxtFkd6+NsKVMTtvMWtOFxHmzT733cO6FNxguB11SOacdfqgN4Axl
 OQ49whYjexTw==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="423228678"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:29 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Feb 2021 11:05:09 -0800
Message-Id: <20210213190511.1017088-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213190511.1017088-1-lucas.demarchi@intel.com>
References: <20210213190511.1017088-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/display: move vbt check to
 intel_ddi_init()
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

On intel_ddi_init() we already check VBT if the port supports HDMI/DP
and bail out otherwise. Instad of checking if a single port is present
using VBT in intel_display.c, move the stronger check to
intel_ddi_init() and return early in case it's not supported.  There
would be no way intel_bios_* would report support for hdmi/dp if the
port isn't present so this should cause no regressions for other
platforms.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++++
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 2 files changed, 13 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3b97c0091812..1235be0ba5d1 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3972,6 +3972,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
+	if (!intel_bios_is_port_present(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "VBT says port %c is not present, respect it\n",
+			    port_name(port));
+		return;
+	}
+
 	/*
 	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
 	 * have taken over some of the PHYs and made them unavailable to the
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 23ec68498800..7aaf7a29d493 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11904,13 +11904,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_C);
 		intel_ddi_init(dev_priv, PORT_D);
 		intel_ddi_init(dev_priv, PORT_E);
+
 		/*
-		 * On some ICL SKUs port F is not present. No strap bits for
-		 * this, so rely on VBT.
-		 * Work around broken VBTs on SKUs known to have no port F.
+		 * On some ICL SKUs port F is not present, but broken VBTs mark
+		 * the port as present. Only try to initialize port F for the
+		 * SKUs that may actually have it.
 		 */
-		if (IS_ICL_WITH_PORT_F(dev_priv) &&
-		    intel_bios_is_port_present(dev_priv, PORT_F))
+		if (IS_ICL_WITH_PORT_F(dev_priv))
 			intel_ddi_init(dev_priv, PORT_F);
 
 		icl_dsi_init(dev_priv);
@@ -11964,10 +11964,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		/*
 		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
 		 */
-		if (IS_GEN9_BC(dev_priv) &&
-		    intel_bios_is_port_present(dev_priv, PORT_E))
+		if (IS_GEN9_BC(dev_priv))
 			intel_ddi_init(dev_priv, PORT_E);
-
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
