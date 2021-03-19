Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E829034236B
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 18:36:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFC736E0CF;
	Fri, 19 Mar 2021 17:36:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11BD46E0C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 17:36:35 +0000 (UTC)
IronPort-SDR: SoXetMNoY0VUZLvbXWMFBVsBtRsNpS75S8XJ2b5wutiuV6isB405/NZZRrnLY64PtWTQudC7z9
 V4jzCJSmxJFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="177522281"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="177522281"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
IronPort-SDR: 57UkcBg4D6K3GiWshx79AlEj/RLIKHYJ9ExQEkupjKwPntYyjJbRgec3qeeWmCMcwOPBXCfjid
 Iz0LZ+Q9RVsA==
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="450943577"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 10:36:33 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 19 Mar 2021 10:36:01 -0700
Message-Id: <20210319173603.521779-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210319173603.521779-1-lucas.demarchi@intel.com>
References: <20210319173603.521779-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/display: move vbt check to
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

Since commit 45c0673aac97 ("drm/i915/bios: start using the
intel_bios_encoder_data directly") we lookup the devdata for each port
in intel_ddi_init() and just return if the port is not present in VBT
(or if we didn't create a fake devdata for it if VBT is not available).

So in intel_display.c we don't have to check
intel_bios_is_port_present(), just rely on the check in
intel_ddi_init().

v2: Rebase 45c0673aac97 re-using that check in intel_ddi_init() instead
of adding a new one.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7b38b9a38b85..c793cbecfb3b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11672,13 +11672,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
@@ -11732,10 +11732,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
2.30.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
