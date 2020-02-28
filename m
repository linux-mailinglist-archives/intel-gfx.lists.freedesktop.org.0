Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC59174153
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 22:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F236E111;
	Fri, 28 Feb 2020 21:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FC3B6E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 21:16:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 13:16:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,497,1574150400"; d="scan'208";a="238878339"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2020 13:16:17 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2020 13:16:05 -0800
Message-Id: <20200228211605.25109-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to intel_detect_preproduction_hw(), the SKL stepping D0 is
still pre-preproduction so we can nuke the additional workaround.
WA database says it applies to all steppings, but bspec disagrees.
After talking to HW people they said it was fixed either on B0 or D0.

While at it, nuke dangling new line.

v2: fix typo in commit message (Michael) and note that W/A db disagrees
    with the steppings this is applicable (Ville).

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ab2e2454f038..c33eb4f8aa70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16887,14 +16887,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
 
-		/*
-		 * Haswell uses DDI functions to detect digital outputs.
-		 * On SKL pre-D0 the strap isn't connected, so we assume
-		 * it's there.
-		 */
 		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
-		/* WaIgnoreDDIAStrap: skl */
-		if (found || IS_GEN9_BC(dev_priv))
+		if (found)
 			intel_ddi_init(dev_priv, PORT_A);
 
 		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
@@ -16915,7 +16909,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		if (IS_GEN9_BC(dev_priv) &&
 		    intel_bios_is_port_present(dev_priv, PORT_E))
 			intel_ddi_init(dev_priv, PORT_E);
-
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
