Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 355C5583658
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120B010E640;
	Thu, 28 Jul 2022 01:35:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CFD10E60E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972082; x=1690508082;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sG2tMgo+z+sS1g0ffTZwfuG8bL5/IVQciY6aHwHZb/0=;
 b=jzqn+Oyoku9bu7+T3joeY2sszhnVimEudfByZWcd8xFTKoo0PHPOpcQ/
 DKSgiki5szXmWn3wsaDiWttv6siqvYFUf40GXq1/KG7qxSf5qmKoQB9Sd
 odi5x5EV4eRXq2xR6rXxNwQQ/2aA7OVPvdCn3IKLpuxG6JCtP2gamCizF
 G07jOYGJb+TuAHvLdy2ftCYCvO+RBcZdijoGaN1qkOfD9fGiY9VcjyEYL
 E80FAObfJv3dtbtRHimx60nIT96cVUIGqm5dxYFX1oOhluxRDQ7Pcos8+
 AeS7KHaGApOITNTlvbIf4VL6y8UR4VY1zaEqeF75b/R2tQgtPQnt3kmbe A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="271431760"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="271431760"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659457028"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:41 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:13 -0700
Message-Id: <20220728013420.3750388-17-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 16/23] drm/i915/mtl: Update memory bandwidth
 parameters
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

Like ADL_P, Meteorlake has different memory characteristics from
past platforms. Update the values used by our memory bandwidth
calculations accordingly.

Bspec: 64631

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 42 ++++++++++++++++++++++---
 1 file changed, 38 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 8bbf47da1716..447a15f2c18a 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -178,7 +178,32 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 	qi->num_points = dram_info->num_qgv_points;
 	qi->num_psf_points = dram_info->num_psf_gv_points;
 
-	if (DISPLAY_VER(dev_priv) >= 12)
+	if (DISPLAY_VER(dev_priv) >= 14) {
+		switch (dram_info->type) {
+		case INTEL_DRAM_DDR4:
+			qi->t_bl = 4;
+			qi->max_numchannels = 2;
+			qi->channel_width = 64;
+			qi->deinterleave = 2;
+			break;
+		case INTEL_DRAM_DDR5:
+			qi->t_bl = 8;
+			qi->max_numchannels = 4;
+			qi->channel_width = 32;
+			qi->deinterleave = 2;
+			break;
+		case INTEL_DRAM_LPDDR4:
+		case INTEL_DRAM_LPDDR5:
+			qi->t_bl = 16;
+			qi->max_numchannels = 8;
+			qi->channel_width = 16;
+			qi->deinterleave = 4;
+			break;
+		default:
+			MISSING_CASE(dram_info->type);
+			return -EINVAL;
+		}
+	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		switch (dram_info->type) {
 		case INTEL_DRAM_DDR4:
 			qi->t_bl = is_y_tile ? 8 : 4;
@@ -212,7 +237,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
 			qi->max_numchannels = 1;
 			break;
 		}
-	else if (DISPLAY_VER(dev_priv) == 11) {
+	} else if (DISPLAY_VER(dev_priv) == 11) {
 		qi->t_bl = dev_priv->dram_info.type == INTEL_DRAM_DDR4 ? 4 : 8;
 		qi->max_numchannels = 1;
 	}
@@ -311,6 +336,13 @@ static const struct intel_sa_info adlp_sa_info = {
 	.derating = 20,
 };
 
+static const struct intel_sa_info mtl_sa_info = {
+	.deburst = 32,
+	.deprogbwlimit = 38, /* GB/s */
+	.displayrtids = 256,
+	.derating = 20,
+};
+
 static int icl_get_bw_info(struct drm_i915_private *dev_priv, const struct intel_sa_info *sa)
 {
 	struct intel_qgv_info qi = {};
@@ -585,9 +617,11 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (IS_DG2(dev_priv))
+	if (DISPLAY_VER(dev_priv) >= 14)
+		tgl_get_bw_info(dev_priv, &mtl_sa_info);
+	else if (IS_DG2(dev_priv))
 		dg2_get_bw_info(dev_priv);
-	else if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_P(dev_priv))
+	else if (IS_ALDERLAKE_P(dev_priv))
 		tgl_get_bw_info(dev_priv, &adlp_sa_info);
 	else if (IS_ALDERLAKE_S(dev_priv))
 		tgl_get_bw_info(dev_priv, &adls_sa_info);
-- 
2.25.1

