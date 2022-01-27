Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A2D49DE04
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 10:33:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B28910EE50;
	Thu, 27 Jan 2022 09:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A937B10EE50
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 09:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643275997; x=1674811997;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=BLhuQIJvig8XrfCD48zBWcAsk02rSFW9uYVC6wZ3O3s=;
 b=Mu3+8lIS+GHYG4uutEw4dnzFEJl0HtbNi0MDXxOGw1U4cS3vNOa4tB+S
 qmax3+XMtT3+9Nhs1PMYKmH3VOXOgp10o0n5N7P45gRlqnax9iV9unm5X
 38+un5y5cURNuwGb9RztI/AJxTPmwRe7vy5G+KjMLUVgW4c0dZ2u8kkfh
 MShGOu8Py4rDlqnphM4EY1fqN4PY7n2NlKFsYQz74to90sPotvBxeZIH0
 4nPN9tDTagQxCvHNHOjHqBJqN5jh4ReRuJQXLJsbtem1ZHbIwEx7+3DSs
 Hl/Ouh1buhFBaIhfwTB6M+Yn7utKLv2/rn9feqNh1vh/WZpQ4rhijIUm1 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="227472880"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="227472880"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 01:33:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="563723248"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga001.jf.intel.com with SMTP; 27 Jan 2022 01:33:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 11:33:13 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 11:32:52 +0200
Message-Id: <20220127093303.17309-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: s/gmch_{m,n}/data_{m,n}/
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

Rename the gmch_* M/N members to data_* to match the register
definitions and thus make life a little less confusing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c | 48 ++++++++++----------
 drivers/gpu/drm/i915/display/intel_display.h |  4 +-
 drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c    |  2 +-
 5 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 5d1f7d6218c5..ca8becb07e45 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3684,8 +3684,8 @@ static bool m_n_equal(const struct intel_link_m_n *m_n_1,
 		      const struct intel_link_m_n *m_n_2)
 {
 	return m_n_1->tu == m_n_2->tu &&
-		m_n_1->gmch_m == m_n_2->gmch_m &&
-		m_n_1->gmch_n == m_n_2->gmch_n &&
+		m_n_1->data_m == m_n_2->data_m &&
+		m_n_1->data_n == m_n_2->data_n &&
 		m_n_1->link_m == m_n_2->link_m &&
 		m_n_1->link_n == m_n_2->link_n;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d91164d1eb92..75de794185b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3082,7 +3082,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int nlanes,
 	m_n->tu = 64;
 	compute_m_n(data_clock,
 		    link_clock * nlanes * 8,
-		    &m_n->gmch_m, &m_n->gmch_n,
+		    &m_n->data_m, &m_n->data_n,
 		    constant_n);
 
 	compute_m_n(pixel_clock, link_clock,
@@ -3118,8 +3118,8 @@ static void intel_set_m_n(struct drm_i915_private *i915,
 			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
-	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->gmch_m);
-	intel_de_write(i915, data_n_reg, m_n->gmch_n);
+	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
+	intel_de_write(i915, data_n_reg, m_n->data_n);
 	intel_de_write(i915, link_m_reg, m_n->link_m);
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
@@ -3867,8 +3867,8 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 {
 	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
-	m_n->gmch_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->gmch_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
+	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
@@ -5498,9 +5498,9 @@ intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
 	struct drm_i915_private *i915 = to_i915(pipe_config->uapi.crtc->dev);
 
 	drm_dbg_kms(&i915->drm,
-		    "%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu: %u\n",
+		    "%s: lanes: %i; data_m: %u, data_n: %u, link_m: %u, link_n: %u, tu: %u\n",
 		    id, lane_count,
-		    m_n->gmch_m, m_n->gmch_n,
+		    m_n->data_m, m_n->data_n,
 		    m_n->link_m, m_n->link_n, m_n->tu);
 }
 
@@ -6196,8 +6196,8 @@ intel_compare_link_m_n(const struct intel_link_m_n *m_n,
 		       bool exact)
 {
 	return m_n->tu == m2_n2->tu &&
-		intel_compare_m_n(m_n->gmch_m, m_n->gmch_n,
-				  m2_n2->gmch_m, m2_n2->gmch_n, exact) &&
+		intel_compare_m_n(m_n->data_m, m_n->data_n,
+				  m2_n2->data_m, m2_n2->data_n, exact) &&
 		intel_compare_m_n(m_n->link_m, m_n->link_n,
 				  m2_n2->link_m, m2_n2->link_n, exact);
 }
@@ -6396,16 +6396,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 				    &pipe_config->name,\
 				    !fastset)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected tu %i gmch %i/%i link %i/%i, " \
-				     "found tu %i, gmch %i/%i link %i/%i)", \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
 				     current_config->name.tu, \
-				     current_config->name.gmch_m, \
-				     current_config->name.gmch_n, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
 				     current_config->name.link_m, \
 				     current_config->name.link_n, \
 				     pipe_config->name.tu, \
-				     pipe_config->name.gmch_m, \
-				     pipe_config->name.gmch_n, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
 				     pipe_config->name.link_m, \
 				     pipe_config->name.link_n); \
 		ret = false; \
@@ -6423,22 +6423,22 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	    !intel_compare_link_m_n(&current_config->alt_name, \
 				    &pipe_config->name, !fastset)) { \
 		pipe_config_mismatch(fastset, crtc, __stringify(name), \
-				     "(expected tu %i gmch %i/%i link %i/%i, " \
-				     "or tu %i gmch %i/%i link %i/%i, " \
-				     "found tu %i, gmch %i/%i link %i/%i)", \
+				     "(expected tu %i data %i/%i link %i/%i, " \
+				     "or tu %i data %i/%i link %i/%i, " \
+				     "found tu %i, data %i/%i link %i/%i)", \
 				     current_config->name.tu, \
-				     current_config->name.gmch_m, \
-				     current_config->name.gmch_n, \
+				     current_config->name.data_m, \
+				     current_config->name.data_n, \
 				     current_config->name.link_m, \
 				     current_config->name.link_n, \
 				     current_config->alt_name.tu, \
-				     current_config->alt_name.gmch_m, \
-				     current_config->alt_name.gmch_n, \
+				     current_config->alt_name.data_m, \
+				     current_config->alt_name.data_n, \
 				     current_config->alt_name.link_m, \
 				     current_config->alt_name.link_n, \
 				     pipe_config->name.tu, \
-				     pipe_config->name.gmch_m, \
-				     pipe_config->name.gmch_n, \
+				     pipe_config->name.data_m, \
+				     pipe_config->name.data_n, \
 				     pipe_config->name.link_m, \
 				     pipe_config->name.link_n); \
 		ret = false; \
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b61b75248ded..a241007f5c82 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -317,8 +317,8 @@ enum aux_ch {
 /* Used by dp and fdi links */
 struct intel_link_m_n {
 	u32 tu;
-	u32 gmch_m;
-	u32 gmch_n;
+	u32 data_m;
+	u32 data_n;
 	u32 link_m;
 	u32 link_n;
 };
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4d4579a301f6..146b83916005 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1895,7 +1895,7 @@ intel_dp_compute_config(struct intel_encoder *encoder,
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
-		pipe_config->dp_m_n.gmch_m *= pipe_config->splitter.link_count;
+		pipe_config->dp_m_n.data_m *= pipe_config->splitter.link_count;
 
 	if (!HAS_DDI(dev_priv))
 		g4x_dp_set_clock(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c1439fcb5a95..46be46f2c47e 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -84,7 +84,7 @@ intel_drrs_compute_config(struct intel_dp *intel_dp,
 
 	/* FIXME: abstract this better */
 	if (pipe_config->splitter.enable)
-		pipe_config->dp_m2_n2.gmch_m *= pipe_config->splitter.link_count;
+		pipe_config->dp_m2_n2.data_m *= pipe_config->splitter.link_count;
 }
 
 static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
-- 
2.34.1

