Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CD06CDB2C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8655E10EAF7;
	Wed, 29 Mar 2023 13:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E8E10EAF5
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097822; x=1711633822;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kT4+4RGV2ywcFLBYvm5TSWyTGCG3P+453n0RnuHnxus=;
 b=LTeWEJHA0Xm/kfpM6HwOp7W9XHSP5TMhF0Sx/IfTl/wpMt70V4tiJmPk
 95fU273K6lCh4FkeLUPL06krAlTpRTK+TY/u7YChb5Kavx4tPzwUhJNSk
 4IfoNj9PdW8qmUnqqKK/JXNm2jRn7fE94ZakLTsXp0QJARdZjH+yTaQ5X
 3whLHHqzUT8zPw5lgwkd35kRuhXY3yELPtAjU5FFZQaoA9us1lBet8FN8
 KJ+o2T4iRITUyBtROvqrVOoYhnz6ErZVNxA2lcqDS1T3JV+JLn68oQ3nf
 mHBq+sajeLPeutHLwWGsqpTKAL5g5NY+4kfLybld6aIvbMV+85LDz9rin Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379050"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379050"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029449"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029449"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:56 +0300
Message-Id: <20230329135002.3096-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Utilize crtc_state->csc on chv
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

Store the chv cgm csc matrix in the crtc state as well. We
shall store it in the same place where we store the ilk+
pipe csc matrix (as opposed to the output csc matrix).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 35 +++++++++++++---------
 1 file changed, 21 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a6f7eba59e12..7e8820583942 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -431,10 +431,10 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		icl_update_output_csc(crtc, &crtc_state->output_csc);
 }
 
-static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
-				    const struct drm_property_blob *blob)
+static void chv_cgm_csc_convert_ctm(const struct intel_crtc_state *crtc_state,
+				    struct intel_csc_matrix *csc)
 {
-	const struct drm_color_ctm *ctm = blob->data;
+	const struct drm_color_ctm *ctm = crtc_state->hw.ctm->data;
 	int i;
 
 	for (i = 0; i < 9; i++) {
@@ -457,24 +457,30 @@ static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
 }
 
 static void chv_load_cgm_csc(struct intel_crtc *crtc,
-			     const struct drm_property_blob *blob)
+			     const struct intel_csc_matrix *csc)
 {
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	enum pipe pipe = crtc->pipe;
-	struct intel_csc_matrix tmp;
-
-	chv_cgm_csc_convert_ctm(&tmp, blob);
 
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
-			  tmp.coeff[1] << 16 | tmp.coeff[0]);
+			  csc->coeff[1] << 16 | csc->coeff[0]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
-			  tmp.coeff[3] << 16 | tmp.coeff[2]);
+			  csc->coeff[3] << 16 | csc->coeff[2]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
-			  tmp.coeff[5] << 16 | tmp.coeff[4]);
+			  csc->coeff[5] << 16 | csc->coeff[4]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
-			  tmp.coeff[7] << 16 | tmp.coeff[6]);
+			  csc->coeff[7] << 16 | csc->coeff[6]);
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
-			  tmp.coeff[8]);
+			  csc->coeff[8]);
+}
+
+static void chv_assign_csc(struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->hw.ctm) {
+		chv_cgm_csc_convert_ctm(crtc_state, &crtc_state->csc);
+	} else {
+		intel_csc_clear(&crtc_state->csc);
+	}
 }
 
 /* convert hw value with given bit_precision to lut property val */
@@ -1442,10 +1448,9 @@ static void chv_load_luts(const struct intel_crtc_state *crtc_state)
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_property_blob *pre_csc_lut = crtc_state->pre_csc_lut;
 	const struct drm_property_blob *post_csc_lut = crtc_state->post_csc_lut;
-	const struct drm_property_blob *ctm = crtc_state->hw.ctm;
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
-		chv_load_cgm_csc(crtc, ctm);
+		chv_load_cgm_csc(crtc, &crtc_state->csc);
 
 	if (crtc_state->cgm_mode & CGM_PIPE_MODE_DEGAMMA)
 		chv_load_cgm_degamma(crtc, pre_csc_lut);
@@ -1872,6 +1877,8 @@ static int chv_color_check(struct intel_crtc_state *crtc_state)
 
 	intel_assign_luts(crtc_state);
 
+	chv_assign_csc(crtc_state);
+
 	crtc_state->preload_luts = chv_can_preload_luts(crtc_state);
 
 	return 0;
-- 
2.39.2

