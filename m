Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 900506CDB2A
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE7510EAF6;
	Wed, 29 Mar 2023 13:50:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5155310EAEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097817; x=1711633817;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=GeFrHJsNylnhTQXInP8M11PHaN2uIJCMnrF97rzf3hc=;
 b=AAUEm09Z5fC/Ybj+og5M+4wcEWOPXqaps/MxwcXxQ+Oz6l7uJMwnlL2v
 l0iGF7AQvZiv7NoTWR8NAmlGxaE9g/zHq/vvRCvg8ObYGPHpLrfu/t6dr
 YGPUW1sbVXvKg2BDXx8P3Abvwy58a2v3d3ofEblgg9gYjGYFVE6gfbR0s
 qDvC2vWc9yJgnATfXIjojTEE7vp9gKU0T+d44yvcP5OcJhcq0m4c+0d/S
 oMmaFyYbbuZG7thR0BykvsmWX09GkRKcLU3kbDZKZdkyU7Uaf4jhy4N2+
 RHtGMzGwwO2c8D2ooa7h49M0KcTkrwbBdp6a15b2u/IcXewaLs1bop2JE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379028"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379028"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029418"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029418"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:54 +0300
Message-Id: <20230329135002.3096-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/12] drm/i915: Start using struct
 intel_csc_matrix for chv cgm csc
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

Convert chv_cgm_csc_convert_ctm() over to using the nee
intel_csc_matrix structure. No pre/post offsets on this
hardware so only the coefficients get filled out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 24 +++++++++++-----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 47af24e64a7e..a76cea4ab1ec 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -399,7 +399,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
+static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
 				    const struct drm_property_blob *blob)
 {
 	const struct drm_color_ctm *ctm = blob->data;
@@ -413,14 +413,14 @@ static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
 		/* Clamp to hardware limits. */
 		abs_coeff = clamp_val(abs_coeff, 0, CTM_COEFF_8_0 - 1);
 
-		coeffs[i] = 0;
+		csc->coeff[i] = 0;
 
 		/* Write coefficients in S3.12 format. */
 		if (ctm->matrix[i] & (1ULL << 63))
-			coeffs[i] |= 1 << 15;
+			csc->coeff[i] |= 1 << 15;
 
-		coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
-		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
+		csc->coeff[i] |= ((abs_coeff >> 32) & 7) << 12;
+		csc->coeff[i] |= (abs_coeff >> 20) & 0xfff;
 	}
 }
 
@@ -429,20 +429,20 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	u16 coeffs[9];
+	struct intel_csc_matrix tmp;
 
-	chv_cgm_csc_convert_ctm(coeffs, blob);
+	chv_cgm_csc_convert_ctm(&tmp, blob);
 
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
-			  coeffs[1] << 16 | coeffs[0]);
+			  tmp.coeff[1] << 16 | tmp.coeff[0]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
-			  coeffs[3] << 16 | coeffs[2]);
+			  tmp.coeff[3] << 16 | tmp.coeff[2]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
-			  coeffs[5] << 16 | coeffs[4]);
+			  tmp.coeff[5] << 16 | tmp.coeff[4]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
-			  coeffs[7] << 16 | coeffs[6]);
+			  tmp.coeff[7] << 16 | tmp.coeff[6]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
-			  coeffs[8]);
+			  tmp.coeff[8]);
 }
 
 /* convert hw value with given bit_precision to lut property val */
-- 
2.39.2

