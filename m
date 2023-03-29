Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5189D6CDB28
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 15:50:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB09F10EAE8;
	Wed, 29 Mar 2023 13:50:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D04110EAE4
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 13:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680097814; x=1711633814;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=A83I0H8sl1rlcwbE7JeYrJskLbPsSGx7oA7X3JBSH9E=;
 b=crllecSImvF6N3cpPnJYlQd0eV8hG3xN8V9H2bF36rnDq/K8WCvR8OoJ
 MUOTIh/b6bRIdF33rTimQqFKsIbcwWUr11zHUsUe9algY3RQ8oHB+Y44C
 ohN5hqiB3nyInzNQLG5grSRLLLqcRNbGhPbespnhr8ENdpI71qpzWFB72
 +FuMXqcR42aoXd8wLUBmj8ZENJAi4UFInEap1olERRk+RP+Gt8JgHZCPu
 kLAaHyPGWZLQnEkV8pA7lnxhjWKwuASgXBZLJISeo9D0SLZLxawUSBZ+D
 fQ/nfP0VPII04e2Za7uz9N3Aw0Dy3ErppyG9m497x3WvP+rtNzOmXtUtO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="338379019"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="338379019"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 06:50:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="1014029406"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="1014029406"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 29 Mar 2023 06:50:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 16:50:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Mar 2023 16:49:53 +0300
Message-Id: <20230329135002.3096-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/12] drm/i915: Split chv_load_cgm_csc() into
 pieces
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

Split chv_cgm_csc_convert_ctm() out from chv_load_cgm_csc() so
that we have functions with clear jobs. This is also how the ilk+
code is already structured.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index b1059e0c0665..47af24e64a7e 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -399,16 +399,13 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
 	}
 }
 
-static void chv_load_cgm_csc(struct intel_crtc *crtc,
-			     const struct drm_property_blob *blob)
+static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
+				    const struct drm_property_blob *blob)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 	const struct drm_color_ctm *ctm = blob->data;
-	enum pipe pipe = crtc->pipe;
-	u16 coeffs[9];
 	int i;
 
-	for (i = 0; i < ARRAY_SIZE(coeffs); i++) {
+	for (i = 0; i < 9; i++) {
 		u64 abs_coeff = ((1ULL << 63) - 1) & ctm->matrix[i];
 
 		/* Round coefficient. */
@@ -425,6 +422,16 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
 		coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
 		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
 	}
+}
+
+static void chv_load_cgm_csc(struct intel_crtc *crtc,
+			     const struct drm_property_blob *blob)
+{
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	enum pipe pipe = crtc->pipe;
+	u16 coeffs[9];
+
+	chv_cgm_csc_convert_ctm(coeffs, blob);
 
 	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
 			  coeffs[1] << 16 | coeffs[0]);
-- 
2.39.2

