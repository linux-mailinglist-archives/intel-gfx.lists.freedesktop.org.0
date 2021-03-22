Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D51343994
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DDD6E342;
	Mon, 22 Mar 2021 06:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FC226E2EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:34 +0000 (UTC)
IronPort-SDR: jSqelCvWCtVeP3DFmtSZJHmJN8ycM1OKtYbiUZMlZUpJ5bmJo511v6mUWgE9ese/3HF7o7zQG7
 ITzPrrsGTCfQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238753"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238753"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:29 -0700
IronPort-SDR: YndqRSyP5667lcdap48iaYBK6hhc1K7DYbi9Lx8AwRAVZwGU9sS9bGg/dG6loN/YnqRAur62fx
 5UUBJqf4b2WQ==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627129"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:27 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:07 +0530
Message-Id: <20210322143008.29250-7-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915/display: Extract icl_read_csc()
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

For icl+, add hw read out to create hw blob of ctm coeff values.

Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 55 ++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 877833f294bb..8f9727553c45 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -396,6 +396,60 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		       crtc_state->csc_mode);
 }
 
+static struct drm_property_blob *icl_read_output_csc_matrix(struct intel_crtc *crtc)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	struct drm_property_blob *blob;
+	struct drm_color_ctm *ctm;
+	u32 temp;
+
+	blob = drm_property_create_blob(&dev_priv->drm,
+					sizeof(struct drm_color_ctm),
+					NULL);
+	if (IS_ERR(blob))
+		return NULL;
+
+	ctm = blob->data;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_RY_GY(pipe));
+	ctm->matrix[0] = (temp >> 16) & 0xffff;
+	ctm->matrix[1] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_BY(pipe));
+	ctm->matrix[2] = (temp >> 16) & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_RU_GU(pipe));
+	ctm->matrix[3] = (temp >> 16) & 0xffff;
+	ctm->matrix[4] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_BU(pipe));
+	ctm->matrix[5] = (temp >> 16) & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_RV_GV(pipe));
+	ctm->matrix[6] = (temp >> 16) & 0xffff;
+	ctm->matrix[7] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_OUTPUT_COEFF_BV(pipe));
+	ctm->matrix[8] = (temp >> 16) & 0xffff;
+
+	return blob;
+}
+
+static void icl_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (!crtc_state->csc_enable)
+		return;
+
+	if (crtc_state->csc_mode & ICL_CSC_ENABLE)
+		crtc_state->hw.ctm = ilk_read_csc_matrix(crtc);
+
+	if (crtc_state->csc_mode & ICL_OUTPUT_CSC_ENABLE)
+		crtc_state->hw.ctm = icl_read_output_csc_matrix(crtc);
+}
+
 static void chv_csc_convert_ctm(const struct drm_color_ctm *ctm, u16 coeffs[9])
 {
 	int i;
@@ -2271,6 +2325,7 @@ void intel_color_init(struct intel_crtc *crtc)
 		if (INTEL_GEN(dev_priv) >= 11) {
 			dev_priv->display.load_luts = icl_load_luts;
 			dev_priv->display.read_luts = icl_read_luts;
+			dev_priv->display.read_csc = icl_read_csc;
 		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
 			dev_priv->display.load_luts = glk_load_luts;
 			dev_priv->display.read_luts = glk_read_luts;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
