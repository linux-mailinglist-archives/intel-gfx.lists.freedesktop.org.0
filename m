Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A811DC3DA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2020 02:38:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 769B26E8DD;
	Thu, 21 May 2020 00:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD9416E8DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 May 2020 00:38:13 +0000 (UTC)
IronPort-SDR: J8CTmo36k5WfIQQ0k33kXEJzZRIxGqF6jcPCS2HLTXE554/y0oNRh/TZwzfdXJtLISgw+cdeCd
 g4tZowrvVETQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2020 17:38:13 -0700
IronPort-SDR: 5+SnLGpiFcGL66L4lYs3rs+Hg9PYyFZNE/sXd1H5qwtlMyOc6f7Tr5w0veGOW5O0awNf7zcqDF
 qh4zM7MO4B3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,415,1583222400"; d="scan'208";a="466720944"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga006.fm.intel.com with ESMTP; 20 May 2020 17:38:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 May 2020 17:37:54 -0700
Message-Id: <20200521003803.18936-29-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200521003803.18936-1-lucas.demarchi@intel.com>
References: <20200521003803.18936-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 28/37] drm/i915/dg1: Enable first 2 ports for DG1
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
Cc: fernando.pacheco@intel.com, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Aditya Swarup <aditya.swarup@intel.com>

Enable PORTS A and B for DG1 initially, the other ports still need more
plumbing code in order to be enabled.

Cc: Clinton Taylor <Clinton.A.Taylor@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Aditya Swarup <aditya.swarup@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a17319d75b44..e99dc6658b25 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7213,6 +7213,9 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
+	else if (IS_DG1(dev_priv))
+		/* FIXME: Enable only two ports for now */
+		return phy <= PHY_B;
 	else if (IS_ROCKETLAKE(dev_priv))
 		return phy <= PHY_D;
 	else if (IS_ELKHARTLAKE(dev_priv))
@@ -7225,7 +7228,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	if (IS_ROCKETLAKE(dev_priv))
+	if (IS_ROCKETLAKE(dev_priv) || IS_DG1(dev_priv))
 		return false;
 	else if (INTEL_GEN(dev_priv) >= 12)
 		return phy >= PHY_D && phy <= PHY_I;
@@ -16736,7 +16739,11 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
-	if (IS_ROCKETLAKE(dev_priv)) {
+	if (IS_DG1(dev_priv)) {
+		/* FIXME: Enable only two ports for now */
+		intel_ddi_init(dev_priv, PORT_A);
+		intel_ddi_init(dev_priv, PORT_B);
+	} else if (IS_ROCKETLAKE(dev_priv)) {
 		/*
 		 * If HTI (aka HDPORT) is enabled at boot, it may have taken
 		 * over some of the PHYs and made them unavailable to the
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
