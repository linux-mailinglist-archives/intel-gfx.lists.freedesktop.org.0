Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 117583D97FE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E06B06E56D;
	Wed, 28 Jul 2021 22:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70DEE6E886
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212786387"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212786387"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663205"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:03 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:22 -0700
Message-Id: <20210728215946.1573015-2-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/25] drm/i915/display: remove PORT_F
 workaround for CNL
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

Explicit support for CNL is being removed from the driver as it's not
expected to work. Remove the workaround for PORT_F from
display/intel_bios.c so we can also remove the generic DISPLAY_VER == 10
calls to intel_ddi_init(): the only platform with that display version
is already handled separately (GLK).

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c    | 6 +++---
 drivers/gpu/drm/i915/display/intel_display.c | 7 -------
 2 files changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index aa667fa71158..4172c8ee6aa6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1871,12 +1871,12 @@ intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devdata)
 static bool is_port_valid(struct drm_i915_private *i915, enum port port)
 {
 	/*
-	 * On some ICL/CNL SKUs port F is not present, but broken VBTs mark
+	 * On some ICL SKUs port F is not present, but broken VBTs mark
 	 * the port as present. Only try to initialize port F for the
 	 * SKUs that may actually have it.
 	 */
-	if (port == PORT_F && (IS_ICELAKE(i915) || IS_CANNONLAKE(i915)))
-		return IS_ICL_WITH_PORT_F(i915) || IS_CNL_WITH_PORT_F(i915);
+	if (port == PORT_F && IS_ICELAKE(i915))
+		return IS_ICL_WITH_PORT_F(i915);
 
 	return true;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4833eaeb8f0b..8597194bea88 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -11452,13 +11452,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		intel_ddi_init(dev_priv, PORT_B);
 		intel_ddi_init(dev_priv, PORT_C);
 		vlv_dsi_init(dev_priv);
-	} else if (DISPLAY_VER(dev_priv) == 10) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
 	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
