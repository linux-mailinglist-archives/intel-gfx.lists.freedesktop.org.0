Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F519343993
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 07:38:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EB526E2F2;
	Mon, 22 Mar 2021 06:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F200D6E0F8
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 06:38:33 +0000 (UTC)
IronPort-SDR: C21sfMTFZNJIyu+IAeI1DIhtJWejylJnUuR5rKsbhCTO58zg+viVDldFwmDwG9aHo5LCVGb9tz
 BBcjEdhyaJMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9930"; a="190238748"
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="190238748"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:27 -0700
IronPort-SDR: 8YtNa/xszgz72BuMLFMelMoskTU+/DS2TwfnuvqMM7XCA4wW1C1ARBJpbLdn/8Vsz4YVn68Pmk
 +mhMXWXX9GrA==
X-IronPort-AV: E=Sophos;i="5.81,268,1610438400"; d="scan'208";a="451627125"
Received: from bhanu-nuclab.iind.intel.com ([10.145.162.173])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2021 23:38:25 -0700
From: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 20:00:06 +0530
Message-Id: <20210322143008.29250-6-bhanuprakash.modem@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
References: <20210322143008.29250-1-bhanuprakash.modem@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/display: Extract ilk_read_csc()
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

For ilk+, add hw read out to create hw blob of ctm coeff values.

Cc: Swati Sharma <swati2.sharma@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 52 ++++++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 15f97fbb77b3..877833f294bb 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -321,6 +321,54 @@ static void ilk_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 		       crtc_state->csc_mode);
 }
 
+static struct drm_property_blob *ilk_read_csc_matrix(struct intel_crtc *crtc)
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
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_RY_GY(pipe));
+	ctm->matrix[0] = (temp >> 16) & 0xffff;
+	ctm->matrix[1] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_BY(pipe));
+	ctm->matrix[2] = (temp >> 16) & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_RU_GU(pipe));
+	ctm->matrix[3] = (temp >> 16) & 0xffff;
+	ctm->matrix[4] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_BU(pipe));
+	ctm->matrix[5] = (temp >> 16) & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_RV_GV(pipe));
+	ctm->matrix[6] = (temp >> 16) & 0xffff;
+	ctm->matrix[7] = temp & 0xffff;
+
+	temp = intel_de_read(dev_priv, PIPE_CSC_COEFF_BV(pipe));
+	ctm->matrix[8] = (temp >> 16) & 0xffff;
+
+	return blob;
+}
+
+static void ilk_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->csc_enable)
+		crtc_state->hw.ctm = ilk_read_csc_matrix(crtc);
+}
+
 static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -2226,13 +2274,17 @@ void intel_color_init(struct intel_crtc *crtc)
 		} else if (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)) {
 			dev_priv->display.load_luts = glk_load_luts;
 			dev_priv->display.read_luts = glk_read_luts;
+			dev_priv->display.read_csc = ilk_read_csc;
 		} else if (INTEL_GEN(dev_priv) >= 8) {
 			dev_priv->display.load_luts = bdw_load_luts;
+			dev_priv->display.read_csc = ilk_read_csc;
 		} else if (INTEL_GEN(dev_priv) >= 7) {
 			dev_priv->display.load_luts = ivb_load_luts;
+			dev_priv->display.read_csc = ilk_read_csc;
 		} else {
 			dev_priv->display.load_luts = ilk_load_luts;
 			dev_priv->display.read_luts = ilk_read_luts;
+			dev_priv->display.read_csc = ilk_read_csc;
 		}
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
