Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08D302116E4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 01:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B4A66E4F9;
	Wed,  1 Jul 2020 23:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AD26EA13
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 23:54:51 +0000 (UTC)
IronPort-SDR: 2kvukkRG9qpsR2gsyvwEbHxQEp8oh/IcC8fWU7gBxfjv8y/jo0Z30sQ8HW3OA+2jl9gGcPa9Su
 EPLY2HXD63Kg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="231619206"
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="231619206"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 16:54:51 -0700
IronPort-SDR: IgnoZJJ+KKz1jwXYZXgzHRjd/2YpFoRzk70Fh2o6uj2KNsZVd0VQgjQph9SQ83EwZpgNxIs14l
 5NlbaDWkJsPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,302,1589266800"; d="scan'208";a="356276401"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 01 Jul 2020 16:54:50 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 16:53:35 -0700
Message-Id: <20200701235339.32608-25-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200701235339.32608-1-lucas.demarchi@intel.com>
References: <20200701235339.32608-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 24/28] drm/i915/dg1: enable PORT C/D aka D/E
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

For DG1 we have a little of mix up wrt to DDI/port names and indexes.
Bspec refers to the ports as DDIA, DDIB, DDI USBC1 and DDI USBC2
(besides the DDIA, DDIB, DDIC, DDID), but the previous naming is the
most unambiguous one. This means that for any register on Display Engine
we should use the index of A, B, D and E. However in some places this is
not true:

- VBT: uses C and D and have to be mapped to D/E

- IO/Combo: uses C and D, but we already differentiate those when
  we created the phy vs port distinction.

Ths additional mapping for VBT and phy are already covered in previous
patches, so now we can initialize the DDI as D/E.

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f5d834fa82eb..fdc46dd5e8fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7230,10 +7230,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
-	else if (IS_DG1(dev_priv))
-		/* FIXME: Enable only two ports for now */
-		return phy <= PHY_B;
-	else if (IS_ROCKETLAKE(dev_priv))
+	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
 		return phy <= PHY_D;
 	else if (IS_ELKHARTLAKE(dev_priv))
 		return phy <= PHY_C;
@@ -7257,7 +7254,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
-	if (IS_ROCKETLAKE(i915) && port >= PORT_D)
+	if ((IS_DG1(i915) || IS_ROCKETLAKE(i915)) && port >= PORT_D)
 		return (enum phy)port - 1;
 	else if (IS_ELKHARTLAKE(i915) && port == PORT_D)
 		return PHY_A;
@@ -16867,9 +16864,18 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_DG1(dev_priv)) {
-		/* FIXME: Enable only two ports for now */
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
+
+		/*
+		 * Bspec lists the ports as A, B, C (USBC1) and D (USBC2).
+		 * However from the Display Engine perspective all registers are
+		 * actually wired to handle C and D as offsets of D/E. Instead
+		 * of fighting all our macros for handling them specially for
+		 * DG1, just call them D/E
+		 */
+		intel_ddi_init(dev_priv, PORT_D);
+		intel_ddi_init(dev_priv, PORT_E);
 	} else if (IS_ROCKETLAKE(dev_priv)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
