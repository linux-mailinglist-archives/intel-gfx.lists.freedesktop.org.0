Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D601D424847
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F7776EE89;
	Wed,  6 Oct 2021 20:50:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FD6B6EE7F
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:50:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206218887"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206218887"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="560310779"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 06 Oct 2021 13:50:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 06 Oct 2021 23:50:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  6 Oct 2021 23:49:31 +0300
Message-Id: <20211006204937.30774-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/16] drm/i915: Query the vswing levels
 per-lane for tgl dkl phy
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Prepare for per-lane drive settings by querying the desired vswing
level per-lane.

Note that the code only does two loops, with each one writing the
levels for two TX lanes. The register offsets also look a bit funny
because each time through the loop we write to the exact same
register offsets. The crucial bit is the HIP_INDEX_REG
write that steers the same mmio window into different places.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 33 ++++++++++++++----------
 1 file changed, 19 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1874a2ca8f3b..85247744e9dd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -1295,9 +1295,7 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum tc_port tc_port = intel_port_to_tc(dev_priv, encoder->port);
-	int level = intel_ddi_level(encoder, crtc_state, 0);
 	const struct intel_ddi_buf_trans *trans;
-	u32 val, dpcnt_mask, dpcnt_val;
 	int n_entries, ln;
 
 	if (intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder)))
@@ -1307,28 +1305,35 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !trans))
 		return;
 
-	dpcnt_mask = (DKL_TX_PRESHOOT_COEFF_MASK |
-		      DKL_TX_DE_EMPAHSIS_COEFF_MASK |
-		      DKL_TX_VSWING_CONTROL_MASK);
-	dpcnt_val = DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing);
-	dpcnt_val |= DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis);
-	dpcnt_val |= DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
-
 	for (ln = 0; ln < 2; ln++) {
+		int level;
+		u32 val;
+
 		intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
 			       HIP_INDEX_VAL(tc_port, ln));
 
 		intel_de_write(dev_priv, DKL_TX_PMD_LANE_SUS(tc_port), 0);
 
-		/* All the registers are RMW */
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+0);
+
 		val = intel_de_read(dev_priv, DKL_TX_DPCNTL0(tc_port));
-		val &= ~dpcnt_mask;
-		val |= dpcnt_val;
+		val &= ~(DKL_TX_PRESHOOT_COEFF_MASK |
+			 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+			 DKL_TX_VSWING_CONTROL_MASK);
+		val |= DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
+			DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+			DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
 		intel_de_write(dev_priv, DKL_TX_DPCNTL0(tc_port), val);
 
+		level = intel_ddi_level(encoder, crtc_state, 2*ln+1);
+
 		val = intel_de_read(dev_priv, DKL_TX_DPCNTL1(tc_port));
-		val &= ~dpcnt_mask;
-		val |= dpcnt_val;
+		val &= ~(DKL_TX_PRESHOOT_COEFF_MASK |
+			 DKL_TX_DE_EMPAHSIS_COEFF_MASK |
+			 DKL_TX_VSWING_CONTROL_MASK);
+		val |= DKL_TX_VSWING_CONTROL(trans->entries[level].dkl.vswing) |
+			DKL_TX_DE_EMPHASIS_COEFF(trans->entries[level].dkl.de_emphasis) |
+			DKL_TX_PRESHOOT_COEFF(trans->entries[level].dkl.preshoot);
 		intel_de_write(dev_priv, DKL_TX_DPCNTL1(tc_port), val);
 
 		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
-- 
2.32.0

