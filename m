Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E443596D7A7
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 13:53:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB4E310E870;
	Thu,  5 Sep 2024 11:53:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bOB2H1uS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0B4710E86D;
 Thu,  5 Sep 2024 11:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725537209; x=1757073209;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AgOW4veXAB76SiSiFGkCZJiW/UQ5sn7PmYs6LJYxWTw=;
 b=bOB2H1uSVkmE7osR0mJw4bpaB4HWx74Tc9vyFkgLXrp9KcyME/gipCjB
 O9u5Oj1H1jtccbAQaGTlShpy1oj8I9U24rLzn2ROaHNm3NpGUlDteR1tS
 ltbsxjPFfyufvfMqPgoVQFTtPebUVrZTy51vAhrO8LwPCbCtjr9/j2TkH
 OwZIL+fNLQDNEUMYb/ZB+anryO/b6MYca7GjbWwIbwl+xGpZzFRCH5hdH
 eY83/ir0Fj/zP7ettp0BSDSlzYtS23TAvVIsrR5jvuknoosrKyGtl99rM
 2EVW5nR7ED8o4Sx7tGwBQvgHH7tddckQDN69IivQoDGsQz77ngTdoqp8Y A==;
X-CSE-ConnectionGUID: hcKK2bM9R4Gf20/WcKh/JA==
X-CSE-MsgGUID: m1Wyn/L0RRafJVhLuR5MMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24406108"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24406108"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:29 -0700
X-CSE-ConnectionGUID: M2orQk67SkehIFIg6QflkA==
X-CSE-MsgGUID: 0XzCzIkATsmc6LlLnEIGMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="65918144"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 04:53:28 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com
Subject: [PATCH 1/5] drm/i915/display: Add bits for link_n_exended for DISPLAY
 >= 14
Date: Thu,  5 Sep 2024 17:25:01 +0530
Message-ID: <20240905115505.3629087-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

LINK_N register has bits 31:24 for extended link N value used for
HDMI2.1 and for an alternate mode of operation of DP TG DDA
(Bspec:50488).

Add support for these extra bits.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++++----
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/i915_reg.h               |  2 ++
 3 files changed, 28 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b4ef4d59da1a..60cdd7a37b03 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2595,6 +2595,8 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
 	compute_m_n(&m_n->link_m, &m_n->link_n,
 		    pixel_clock, link_symbol_clock,
 		    0x80000);
+
+	m_n->link_n_ext = 0;
 }
 
 void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
@@ -2632,6 +2634,7 @@ void intel_set_m_n(struct drm_i915_private *i915,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
+	u8 link_n_ext = 0;
 	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
 	intel_de_write(i915, data_n_reg, m_n->data_n);
 	intel_de_write(i915, link_m_reg, m_n->link_m);
@@ -2639,7 +2642,11 @@ void intel_set_m_n(struct drm_i915_private *i915,
 	 * On BDW+ writing LINK_N arms the double buffered update
 	 * of all the M/N registers, so it must be written last.
 	 */
-	intel_de_write(i915, link_n_reg, m_n->link_n);
+
+	if (DISPLAY_VER(i915) >= 14 && m_n->link_n_ext)
+		link_n_ext = PIPE_LINK_N1_EXTENDED(m_n->link_n_ext);
+
+	intel_de_write(i915, link_n_reg, m_n->link_n | link_n_ext);
 }
 
 bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
@@ -3346,8 +3353,17 @@ void intel_get_m_n(struct drm_i915_private *i915,
 		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
+	u32 link_n;
+
 	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
-	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
+
+	link_n = intel_de_read(i915, link_n_reg);
+	m_n->link_n = link_n & DATA_LINK_M_N_MASK;
+	if (DISPLAY_VER(i915) >= 14)
+		m_n->link_n_ext = REG_FIELD_GET(PIPE_LINK_N1_EXTENDED_MASK, link_n);
+	else
+		m_n->link_n_ext = 0;
+
 	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
 	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
 	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
@@ -4843,7 +4859,8 @@ intel_compare_link_m_n(const struct intel_link_m_n *m_n,
 		m_n->data_m == m2_n2->data_m &&
 		m_n->data_n == m2_n2->data_n &&
 		m_n->link_m == m2_n2->link_m &&
-		m_n->link_n == m2_n2->link_n;
+		m_n->link_n == m2_n2->link_n &&
+		m_n->link_n_ext == m2_n2->link_n_ext;
 }
 
 static bool
@@ -5133,18 +5150,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	if (!intel_compare_link_m_n(&current_config->name, \
 				    &pipe_config->name)) { \
 		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
-				     "(expected tu %i data %i/%i link %i/%i, " \
-				     "found tu %i, data %i/%i link %i/%i)", \
+				     "(expected tu %i data %i/%i link %i/%i link_n_ext %i, " \
+				     "found tu %i, data %i/%i link %i/%i link_n_ext %i)", \
 				     current_config->name.tu, \
 				     current_config->name.data_m, \
 				     current_config->name.data_n, \
 				     current_config->name.link_m, \
 				     current_config->name.link_n, \
+				     current_config->name.link_n_ext, \
 				     pipe_config->name.tu, \
 				     pipe_config->name.data_m, \
 				     pipe_config->name.data_n, \
 				     pipe_config->name.link_m, \
-				     pipe_config->name.link_n); \
+				     pipe_config->name.link_n, \
+				     pipe_config->name.link_n_ext); \
 		ret = false; \
 	} \
 } while (0)
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f29e5dc3db91..1328e2e89786 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1028,6 +1028,7 @@ struct intel_link_m_n {
 	u32 data_n;
 	u32 link_m;
 	u32 link_n;
+	u8 link_n_ext;
 };
 
 struct intel_csc_matrix {
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 41f4350a7c6c..941d273dbf8c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2172,6 +2172,8 @@
 #define _PIPEB_DATA_N2		0x6103c
 #define _PIPEB_LINK_M1		0x61040
 #define _PIPEB_LINK_N1		0x61044
+#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
+#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
 #define _PIPEB_LINK_M2		0x61048
 #define _PIPEB_LINK_N2		0x6104c
 
-- 
2.45.2

