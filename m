Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 21ED13C7C9D
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jul 2021 05:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A2D66E161;
	Wed, 14 Jul 2021 03:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B776E167
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Jul 2021 03:16:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="232085882"
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="232085882"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:16:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,238,1620716400"; d="scan'208";a="494031601"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 20:16:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 13 Jul 2021 20:15:35 -0700
Message-Id: <20210714031540.3539704-46-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210714031540.3539704-1-matthew.d.roper@intel.com>
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 45/50] drm/i915/dg2: Classify DG2 PHY types
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

Although the bspec labels four of DG2's outputs as "combo PHY," the
underlying PHYs in both cases are actually Synopsys PHYs that are
programmed completely differently than the traditional Intel "combo" PHY
units.  As such, we don't want intel_phy_is_combo to take us down legacy
programming paths, so just return false from it on DG2.  Instead add a
new intel_phy_is_snps() that will return true for all DG2 PHYs.

Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 26 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  1 +
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6f532b695b29..90d4efba466b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3698,6 +3698,13 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
 		return false;
+	else if (IS_DG2(dev_priv))
+		/*
+		 * DG2 outputs labelled as "combo PHY" in the bspec use
+		 * SNPS PHYs with completely different programming,
+		 * hence we always return false here.
+		 */
+		return false;
 	else if (IS_ALDERLAKE_S(dev_priv))
 		return phy <= PHY_E;
 	else if (IS_DG1(dev_priv) || IS_ROCKETLAKE(dev_priv))
@@ -3712,7 +3719,10 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
-	if (IS_ALDERLAKE_P(dev_priv))
+	if (IS_DG2(dev_priv))
+		/* DG2's "TC1" output uses a SNPS PHY */
+		return false;
+	else if (IS_ALDERLAKE_P(dev_priv))
 		return phy >= PHY_F && phy <= PHY_I;
 	else if (IS_TIGERLAKE(dev_priv))
 		return phy >= PHY_D && phy <= PHY_I;
@@ -3722,6 +3732,20 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 		return false;
 }
 
+bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
+{
+	if (phy == PHY_NONE)
+		return false;
+	else if (IS_DG2(dev_priv))
+		/*
+		 * All four "combo" ports and the TC1 port (PHY E) use
+		 * Synopsis PHYs.
+		 */
+		return phy <= PHY_E;
+
+	return false;
+}
+
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
 	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index c9dbaf074d77..284936f0ddab 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -561,6 +561,7 @@ struct drm_display_mode *
 intel_encoder_current_mode(struct intel_encoder *encoder);
 bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
+bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy);
 enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
 			      enum port port);
 int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
