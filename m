Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B48354B8F8D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 18:43:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA27A10E88A;
	Wed, 16 Feb 2022 17:43:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CCDA10E88B
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 17:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645033391; x=1676569391;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nhbyrkG7niV6ucOV8P5ggpiK2Ij+5/mVdXTSDG6IdnU=;
 b=bA6iJfr1KeiIb8xmI6lJYevRXrPwrXRUAFeW4RNxCVmAsFisbrO5Zi1E
 YqjCjoOCpnnZwPFC/z3YvL6cl1OOBj1YO0cjVX8ZtQID8DLA7/4S7fmW3
 copu+IClwU/fzmFQyiPNeUlM8xow2kjhbSbgV47WCHCDV4CYY+PPE3GRU
 +Sbr85OLU4KftRsHrpyk1HizUO6D0OL1KCgbIhF3jXgczNm38PkvMlTfW
 bjzsYe7IQElZfjTm89JX04FveQNlnxurdPU2wV67xn8+Naym3AXS5UZNQ
 TJixgxRbAruns+jR4rlsDG4mZfbbcrXviHuJKHu5qO+oAIhg6wqPIcKYG g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="337122149"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="337122149"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 09:43:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="529611676"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 16 Feb 2022 09:43:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Feb 2022 19:43:07 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 16 Feb 2022 19:42:49 +0200
Message-Id: <20220216174250.4449-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915: Extract icl_qgv_points_mask()
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

Declutter intel_bw_atomic_check() a bit by pulling
the max QGV mask calculation out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 35 ++++++++++++++++---------
 1 file changed, 22 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index d72ccee7d53b..fa03f0935b6d 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -815,6 +815,26 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
 	return 0;
 }
 
+static u16 icl_qgv_points_mask(struct drm_i915_private *i915)
+{
+	unsigned int num_psf_gv_points = i915->max_bw[0].num_psf_gv_points;
+	unsigned int num_qgv_points = i915->max_bw[0].num_qgv_points;
+	u16 mask = 0;
+
+	/*
+	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
+	 * it with failure if we try masking any unadvertised points.
+	 * So need to operate only with those returned from PCode.
+	 */
+	if (num_qgv_points > 0)
+		mask |= REG_GENMASK(num_qgv_points - 1, 0);
+
+	if (num_psf_gv_points > 0)
+		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
+
+	return mask;
+}
+
 int intel_bw_atomic_check(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
@@ -829,23 +849,11 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	unsigned int max_bw_point = 0, max_bw = 0;
 	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
 	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
-	u32 mask = 0;
 
 	/* FIXME earlier gens need some checks too */
 	if (DISPLAY_VER(dev_priv) < 11)
 		return 0;
 
-	/*
-	 * We can _not_ use the whole ADLS_QGV_PT_MASK here, as PCode rejects
-	 * it with failure if we try masking any unadvertised points.
-	 * So need to operate only with those returned from PCode.
-	 */
-	if (num_qgv_points > 0)
-		mask |= REG_GENMASK(num_qgv_points - 1, 0);
-
-	if (num_psf_gv_points > 0)
-		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
-
 	/*
 	 * If we already have the bw state then recompute everything
 	 * even if pipe data_rate / active_planes didn't change.
@@ -970,7 +978,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	 * We store the ones which need to be masked as that is what PCode
 	 * actually accepts as a parameter.
 	 */
-	new_bw_state->qgv_points_mask = ~allowed_points & mask;
+	new_bw_state->qgv_points_mask = ~allowed_points &
+		icl_qgv_points_mask(dev_priv);
 
 	old_bw_state = intel_atomic_get_old_bw_state(state);
 	/*
-- 
2.34.1

