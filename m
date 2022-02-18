Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D108E4BB2A6
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 07:41:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3300610ECBB;
	Fri, 18 Feb 2022 06:41:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6687910EC2F
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 06:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645166458; x=1676702458;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=MMUZnS254kiahwIMmYkdJ6jdA/3iKNdg4myA+66Fq14=;
 b=gJYqSpvpuBWwFKetM2qosjpRDuZo0nSLyVqBIecmUAb3HzoOKIitxKpm
 M8fRrGkhr4jRouR1gbnufE43l85F0frfD85FHxnodbJVrQh0H70Il5g/v
 pcECa9P/otWlMN8khWfsX0MuI59OEx5uJ03AE9DarJJBTVt5HhhwJYMDu
 R0n+YxbUQlilNWotTsVKEU6rUju2v2/VbipX6LjFjcOIcyeXXHLaDXihp
 aDYYrF0IgHIhkCH3sM2mEYu3c+jg7hpSfKrXd10o+edr2GdBP9cV1WW9i
 G3b0xxtHqe/L2WqYSV6OZJmU4eJiDYtgYQ2FBDaEV4QXT6gzax+93hhzZ w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="234596141"
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="234596141"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 22:40:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,378,1635231600"; d="scan'208";a="626520470"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by FMSMGA003.fm.intel.com with SMTP; 17 Feb 2022 22:40:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Feb 2022 08:40:55 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Feb 2022 08:40:38 +0200
Message-Id: <20220218064039.12834-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
References: <20220218064039.12834-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915: Extract icl_qgv_points_mask()
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
index 1fd1d2182d8f..6637da75f878 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -816,6 +816,26 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
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
@@ -831,23 +851,11 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	unsigned int num_qgv_points = dev_priv->max_bw[0].num_qgv_points;
 	unsigned int num_psf_gv_points = dev_priv->max_bw[0].num_psf_gv_points;
 	bool changed = false;
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
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		unsigned int old_data_rate =
@@ -979,7 +987,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
 	 * We store the ones which need to be masked as that is what PCode
 	 * actually accepts as a parameter.
 	 */
-	new_bw_state->qgv_points_mask = ~allowed_points & mask;
+	new_bw_state->qgv_points_mask = ~allowed_points &
+		icl_qgv_points_mask(dev_priv);
 
 	/*
 	 * If the actual mask had changed we need to make sure that
-- 
2.34.1

