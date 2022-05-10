Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B3C52126D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 12:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1305E10EB6B;
	Tue, 10 May 2022 10:42:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DADC610F3AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 10:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652179374; x=1683715374;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BGpABkb+a/Zoii/ipxRzfO1Ykm0y1fbROSEzfzGyhKg=;
 b=RqMznKs5ymtnRZ7gTtZIjqe665aY1+l+vUJk2xgEOWUTe60/z+pc8xz4
 47WGvcJ3HMQPnTdTGDXYO2mITFbDRBDkrshfPIP3qm1JMH+3g9ppRHH0R
 MaHmyF8UOEGJ+I49HfIq9tPoYW/ymwljKVOovPog3vkJ5/YPjBGA3BYus
 rTzO07mt+aMHBqfJItFxaxpS1nYrtl+fpIUqq7uq2mPRvfpDMZuewltlg
 bd1I3GwBk5j/SddxDgo9c0Em9eEDi4VKSeSD4xWeawPrez7tA52r8X+tG
 UxtnU6v06RYNCvJw659a0XuEllpi6wtfuu92zVX7sn2aGtrverRpSQggi A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256870696"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256870696"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 03:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="669826030"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 10 May 2022 03:42:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 May 2022 13:42:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 May 2022 13:42:30 +0300
Message-Id: <20220510104242.6099-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
References: <20220510104242.6099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/15] drm/i915/pps: Split pps_init_delays()
 into distinct parts
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

Split each of the hw/vbt/spec PPS delay initialization into
separate functions to make the whole thing less cluttered.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 66 +++++++++++++++++-------
 1 file changed, 48 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 5a598dd06039..5b72c892a6f2 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1159,53 +1159,83 @@ intel_pps_verify_state(struct intel_dp *intel_dp)
 	}
 }
 
-static void pps_init_delays(struct intel_dp *intel_dp)
+static void pps_init_delays_cur(struct intel_dp *intel_dp,
+				struct edp_power_seq *cur)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	struct edp_power_seq cur, vbt, spec,
-		*final = &intel_dp->pps.pps_delays;
 
 	lockdep_assert_held(&dev_priv->pps_mutex);
 
-	/* already initialized? */
-	if (final->t11_t12 != 0)
-		return;
+	intel_pps_readout_hw_state(intel_dp, cur);
 
-	intel_pps_readout_hw_state(intel_dp, &cur);
+	intel_pps_dump_state(intel_dp, "cur", cur);
+}
 
-	intel_pps_dump_state(intel_dp, "cur", &cur);
+static void pps_init_delays_vbt(struct intel_dp *intel_dp,
+				struct edp_power_seq *vbt)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	*vbt = dev_priv->vbt.edp.pps;
 
-	vbt = dev_priv->vbt.edp.pps;
 	/* On Toshiba Satellite P50-C-18C system the VBT T12 delay
 	 * of 500ms appears to be too short. Ocassionally the panel
 	 * just fails to power back on. Increasing the delay to 800ms
 	 * seems sufficient to avoid this problem.
 	 */
 	if (dev_priv->quirks & QUIRK_INCREASE_T12_DELAY) {
-		vbt.t11_t12 = max_t(u16, vbt.t11_t12, 1300 * 10);
+		vbt->t11_t12 = max_t(u16, vbt->t11_t12, 1300 * 10);
 		drm_dbg_kms(&dev_priv->drm,
 			    "Increasing T12 panel delay as per the quirk to %d\n",
-			    vbt.t11_t12);
+			    vbt->t11_t12);
 	}
+
 	/* T11_T12 delay is special and actually in units of 100ms, but zero
 	 * based in the hw (so we need to add 100 ms). But the sw vbt
 	 * table multiplies it with 1000 to make it in units of 100usec,
 	 * too. */
-	vbt.t11_t12 += 100 * 10;
+	vbt->t11_t12 += 100 * 10;
+
+	intel_pps_dump_state(intel_dp, "vbt", vbt);
+}
+
+static void pps_init_delays_spec(struct intel_dp *intel_dp,
+				 struct edp_power_seq *spec)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	lockdep_assert_held(&dev_priv->pps_mutex);
 
 	/* Upper limits from eDP 1.3 spec. Note that we use the clunky units of
 	 * our hw here, which are all in 100usec. */
-	spec.t1_t3 = 210 * 10;
-	spec.t8 = 50 * 10; /* no limit for t8, use t7 instead */
-	spec.t9 = 50 * 10; /* no limit for t9, make it symmetric with t8 */
-	spec.t10 = 500 * 10;
+	spec->t1_t3 = 210 * 10;
+	spec->t8 = 50 * 10; /* no limit for t8, use t7 instead */
+	spec->t9 = 50 * 10; /* no limit for t9, make it symmetric with t8 */
+	spec->t10 = 500 * 10;
 	/* This one is special and actually in units of 100ms, but zero
 	 * based in the hw (so we need to add 100 ms). But the sw vbt
 	 * table multiplies it with 1000 to make it in units of 100usec,
 	 * too. */
-	spec.t11_t12 = (510 + 100) * 10;
+	spec->t11_t12 = (510 + 100) * 10;
 
-	intel_pps_dump_state(intel_dp, "vbt", &vbt);
+	intel_pps_dump_state(intel_dp, "spec", spec);
+}
+
+static void pps_init_delays(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	struct edp_power_seq cur, vbt, spec,
+		*final = &intel_dp->pps.pps_delays;
+
+	lockdep_assert_held(&dev_priv->pps_mutex);
+
+	/* already initialized? */
+	if (final->t11_t12 != 0)
+		return;
+
+	pps_init_delays_cur(intel_dp, &cur);
+	pps_init_delays_vbt(intel_dp, &vbt);
+	pps_init_delays_spec(intel_dp, &spec);
 
 	/* Use the max of the register settings and vbt. If both are
 	 * unset, fall back to the spec limits. */
-- 
2.35.1

