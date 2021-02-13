Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B430931ADA9
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 20:05:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D3B6E881;
	Sat, 13 Feb 2021 19:05:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CED226E170
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 19:05:30 +0000 (UTC)
IronPort-SDR: CjRe495Pd9Z6TfzJ/5RkTblBvg5tWAExby+BjGL5broypGrolzYxYwU65Pl828OFe7l/O5hxT7
 smdVEInwQ0pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9894"; a="267387444"
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="267387444"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:30 -0800
IronPort-SDR: kFYgdUA77W4LFn8MYvg6Vy+rcFs7lgxWOG+0ZYQWN5UnJIMMyUxce6wMe3C992TLVnszoJ1oF6
 xQi2JF03EYHg==
X-IronPort-AV: E=Sophos;i="5.81,176,1610438400"; d="scan'208";a="423228684"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2021 11:05:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 13 Feb 2021 11:05:11 -0800
Message-Id: <20210213190511.1017088-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213190511.1017088-1-lucas.demarchi@intel.com>
References: <20210213190511.1017088-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display: remove strap checks from
 gen 9
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
index c1ec03c726c9..21087169f63a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11919,34 +11919,25 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
@@ -11955,11 +11946,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
