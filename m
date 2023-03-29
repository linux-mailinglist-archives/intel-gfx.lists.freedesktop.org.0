Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C02A6CDB2F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 901C710EAF1;
	Wed, 29 Mar 2023 13:50:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3654210EAEB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097831; x=1711633831;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LYT6TGyMMCuKEsX7jN7e5tJgtdpQwkexyhUiJxYDk8E=;
 b=eoEL89/o+uncrMa1T3dtJuE9Wum6b/bOkkV5A/xUQSaoQLveh2gKz8bK
 PgJ/GNG3d7mdlJ8rGBQe6Pe+aUKtsQ6UDmRIMKGkPWu2geQ0bf2tI6+0F
 VimqmOrnaoqDUF0K8C8fDypgSthEQ5XThRLSxJsrrOKZuBMDJ5Yz1zKdP
 wL2DIF/dn/JzDV2QP5n6Y29QP4KZpa6T+HXVZeJZWOSqU+iV2kZnzR1Rh
 pOwZXqDpZPqvWWYwvdzDBIp7zMuB61R12Jq+s0FcqD4M9rKY+iawC+iI8
 ufWRN4epKMcMkVFFjmCO2q315SL31XYv+rM2oqvS4yBZKZnOVYtgvmeTt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379076"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379076"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029492"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029492"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:28 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:59 +0300
Message-Id: <20230329135002.3096-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/12] drm/i915: Implement chv cgm csc readout
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

Read out the csc matrix on chv, and stash the result into the
correct spot in the crtc state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 86b0d8260574..baadf62aabb4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -612,6 +612,41 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 			  csc->coeff[8]);
 }
 
+static void chv_read_cgm_csc(struct intel_crtc *crtc,
+			     struct intel_csc_matrix *csc)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u32 tmp;
+
+	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF01(pipe));
+	csc->coeff[0] = tmp & 0xffff;
+	csc->coeff[1] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF23(pipe));
+	csc->coeff[2] = tmp & 0xffff;
+	csc->coeff[3] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF45(pipe));
+	csc->coeff[4] = tmp & 0xffff;
+	csc->coeff[5] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF67(pipe));
+	csc->coeff[6] = tmp & 0xffff;
+	csc->coeff[7] = tmp >> 16;
+
+	tmp = intel_de_read_fw(i915, CGM_PIPE_CSC_COEFF8(pipe));
+	csc->coeff[8] = tmp & 0xffff;
+}
+
+static void chv_read_csc(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	if (crtc_state->cgm_mode & CGM_PIPE_MODE_CSC)
+		chv_read_cgm_csc(crtc, &crtc_state->csc);
+}
+
 static void chv_assign_csc(struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
@@ -3329,6 +3364,7 @@ static const struct intel_color_funcs chv_color_funcs = {
 	.load_luts = chv_load_luts,
 	.read_luts = chv_read_luts,
 	.lut_equal = chv_lut_equal,
+	.read_csc = chv_read_csc,
 };
 
 static const struct intel_color_funcs i965_color_funcs = {
-- 
2.39.2

