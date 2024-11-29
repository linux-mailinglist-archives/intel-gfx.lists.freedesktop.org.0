Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 210F19DC2FC
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 12:42:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB62710E4A9;
	Fri, 29 Nov 2024 11:42:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b4V3di9h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B79910E4A6;
 Fri, 29 Nov 2024 11:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732880527; x=1764416527;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=x+Ns8sv9GJwX0mbpANVs5azW5kdO8topijym+CKYOfk=;
 b=b4V3di9hI/y5j6/ok8LLsBtzSxth47/tDQfXY0VtK3ElpG9ZvmAppHMq
 eHI7mDA/xjQhmyW3UzsaaUZKsFd4gnCmtOh9IBeimM5SQeKvTy7o7zOjv
 +25O4Eh9iKB8Zf49+FpHTV8jkYGn/dC3HxcwLJWXKkQMv1uzcU2YkxVDb
 VoBPYqtf84iPYfPXK6LkFMwFNptnj4Ltvz70TbRSDtucTF8nTjxLIjgFj
 rwNPv2CJdO9qh7DvkcJ0JBkkfYO5JQikPHnbmu4nKuFKoOeilmmmWWXwv
 1iO/or0rMA2erKU+gX1HcQP9yr9FJA7U1cAMjXsh5VqdhyITqPNKpNSaN Q==;
X-CSE-ConnectionGUID: iVYN/KJ0SMyZft1cTwSQAg==
X-CSE-MsgGUID: BDlqjaACRHmc7yf70dv1Uw==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44497741"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44497741"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:42:07 -0800
X-CSE-ConnectionGUID: OR7kzmcoSx6vPiYqwc5w4A==
X-CSE-MsgGUID: pX49ekFOQz+wv+sq+/FhWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="123333492"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:42:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH] drm/i915/cx0: split out mtl_get_cx0_buf_trans() to c10 and
 c20 variants
Date: Fri, 29 Nov 2024 13:41:58 +0200
Message-Id: <20241129114158.486418-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

The PHY is either c10 or c20, there's no need to check at runtime and
complicate the conditions in mtl_get_cx0_buf_trans().

While at it, replace the direct port clock check with
intel_dp_is_uhbr().

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../drm/i915/display/intel_ddi_buf_trans.c    | 23 +++++++++++++------
 1 file changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
index 4d21ce734343..9389b295036e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi_buf_trans.c
@@ -1687,18 +1687,24 @@ dg2_get_snps_buf_trans(struct intel_encoder *encoder,
 }
 
 static const struct intel_ddi_buf_trans *
-mtl_get_cx0_buf_trans(struct intel_encoder *encoder,
+mtl_get_c10_buf_trans(struct intel_encoder *encoder,
 		      const struct intel_crtc_state *crtc_state,
 		      int *n_entries)
 {
-	if (intel_crtc_has_dp_encoder(crtc_state) && crtc_state->port_clock >= 1000000)
+	return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
+}
+
+static const struct intel_ddi_buf_trans *
+mtl_get_c20_buf_trans(struct intel_encoder *encoder,
+		      const struct intel_crtc_state *crtc_state,
+		      int *n_entries)
+{
+	if (intel_crtc_has_dp_encoder(crtc_state) && intel_dp_is_uhbr(crtc_state))
 		return intel_get_buf_trans(&mtl_c20_trans_uhbr, n_entries);
-	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) && !(intel_encoder_is_c10phy(encoder)))
+	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return intel_get_buf_trans(&mtl_c20_trans_hdmi, n_entries);
-	else if (!intel_encoder_is_c10phy(encoder))
-		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 	else
-		return intel_get_buf_trans(&mtl_c10_trans_dp14, n_entries);
+		return intel_get_buf_trans(&mtl_c20_trans_dp14, n_entries);
 }
 
 void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
@@ -1706,7 +1712,10 @@ void intel_ddi_buf_trans_init(struct intel_encoder *encoder)
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 
 	if (DISPLAY_VER(i915) >= 14) {
-		encoder->get_buf_trans = mtl_get_cx0_buf_trans;
+		if (intel_encoder_is_c10phy(encoder))
+			encoder->get_buf_trans = mtl_get_c10_buf_trans;
+		else
+			encoder->get_buf_trans = mtl_get_c20_buf_trans;
 	} else if (IS_DG2(i915)) {
 		encoder->get_buf_trans = dg2_get_snps_buf_trans;
 	} else if (IS_ALDERLAKE_P(i915)) {
-- 
2.39.5

