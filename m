Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 545E434236A
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 18:36:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6C26E0C4;
	Fri, 19 Mar 2021 17:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FBD36E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 17:36:34 +0000 (UTC)
IronPort-SDR: RedHfYKfFTwq5DKycx/d2XbVBBdQ31UB0JfP8UWh+PmM2GJVTNrrHUznujj4HO7ki8SzZnhImd
 3O879YWTehwg==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177522283"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="177522283"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
IronPort-SDR: 8wUgfvspyzzWND2YKNmS/IG96rZzViEHWuDl/Irvz++tvmMST6+RXzM2a0zMJiJ/i4ayPRLHph
 dZCAwOgz97gg==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="450943583"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 10:36:03 -0700
Message-Id: <20210319173603.521779-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210319173603.521779-1-lucas.demarchi@intel.com>
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/3] drm/i915/display: remove strap checks
 from gen 9
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

Direction on gen9+ was to stop reading the straps and only rely on the
VBT for marking the port presence. This happened while dealing with
WaIgnoreDDIAStrap and instead of using it as a WA, it should now be the
normal flow. See commit 885d3e5b6f08 ("drm/i915/display: fix comment on
skl straps").

For gen 10 it's hard to say if this will work or not since I can't test
it, so leave it with the same behavior as before.

For PCH_TGP we should still rely on the VBT to make ports E and F not
available.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++--------------
 1 file changed, 11 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 82471961e721..b9af1f1e347e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11687,34 +11687,25 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
 		vlv_dsi_init(dev_priv);
+	} else if (IS_GEN(dev_priv, 9)) {
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+		intel_ddi_init(dev_priv, PORT_C);
+		intel_ddi_init(dev_priv, PORT_D);
+		intel_ddi_init(dev_priv, PORT_E);
+		intel_ddi_init(dev_priv, PORT_F);
 	} else if (HAS_DDI(dev_priv)) {
-		int found;
+		u32 found;
 
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
 
-		/*
-		 * Haswell uses DDI functions to detect digital outputs.
-		 * On SKL pre-D0 the strap isn't connected. Later SKUs may or
-		 * may not have it - it was supposed to be fixed by the same
-		 * time we stopped using straps. Assume it's there.
-		 */
+		/* Haswell uses DDI functions to detect digital outputs. */
 		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
-		/* WaIgnoreDDIAStrap: skl */
-		if (found || IS_GEN9_BC(dev_priv))
+		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
-		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
-		 * register */
-		if (HAS_PCH_TGP(dev_priv)) {
-			/* W/A due to lack of STRAP config on TGP PCH*/
-			found = (SFUSE_STRAP_DDIB_DETECTED |
-				 SFUSE_STRAP_DDIC_DETECTED |
-				 SFUSE_STRAP_DDID_DETECTED);
-		} else {
-			found = intel_de_read(dev_priv, SFUSE_STRAP);
-		}
-
+		found = intel_de_read(dev_priv, SFUSE_STRAP);
 		if (found & SFUSE_STRAP_DDIB_DETECTED)
 			intel_ddi_init(dev_priv, PORT_B);
 		if (found & SFUSE_STRAP_DDIC_DETECTED)
@@ -11723,11 +11714,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_ddi_init(dev_priv, PORT_D);
 		if (found & SFUSE_STRAP_DDIF_DETECTED)
 			intel_ddi_init(dev_priv, PORT_F);
-		/*
-		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
-		 */
-		if (IS_GEN9_BC(dev_priv))
-			intel_ddi_init(dev_priv, PORT_E);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
