Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A9336CF40
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 01:10:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 028326EA05;
	Tue, 27 Apr 2021 23:09:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87BF06EA01
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 23:09:54 +0000 (UTC)
IronPort-SDR: J1CcGhQcv78JncSpfSjgaYdjU+tR0Ak7M4AZOOx9VvKoyz2CvCTkDRRcCknH0nPVjn88+f4wU9
 yX/Z6KunFT4Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="217324850"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="217324850"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:09:53 -0700
IronPort-SDR: CAOrTSO9DMThbrQAKIkR/I1yQuerVbgLYINMYyKrnHhAPk6QMbGxF3JKP3teQc2UgNJ0VmikM+
 Kq5e2Kj2WaKg==
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="465663270"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:09:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 16:07:53 -0700
Message-Id: <20210427230756.2847495-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210427230756.2847495-1-lucas.demarchi@intel.com>
References: <20210427230756.2847495-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/display: move vbt check to
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
Cc: Jani Nikula <jani.nikula@intel.com>
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

v2: Rebase on commit 45c0673aac97 ("drm/i915/bios: start using the
intel_bios_encoder_data directly") re-using that check in intel_ddi_init()
instead of adding a new one.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6280ba7f4c17..705f32b2f832 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -10868,13 +10868,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
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
@@ -10928,10 +10928,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		/*
 		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
 		 */
-		if (DISPLAY_VER(dev_priv) == 9 &&
-		    intel_bios_is_port_present(dev_priv, PORT_E))
+		if (DISPLAY_VER(dev_priv) == 9)
 			intel_ddi_init(dev_priv, PORT_E);
-
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
