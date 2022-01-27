Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C48D849E1DA
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 13:02:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E625810EA04;
	Thu, 27 Jan 2022 12:02:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 979E010E759
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 12:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643284956; x=1674820956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OxFqOkBoVPcyjCzDBeZWR+T7hk2pk6ACzACMzVoREcA=;
 b=RrbvMiVPPdxScctNXnV625Rb48UeNL0PDUZmlcN+z0Wy7qULgkxb/MUq
 n2kqDxdkq9feF+OyhFxGLsJN7E0OLCuGhZKHc2Qi3UvFAIlpfwde7OZaP
 Fr+WqaDPj7rn9a7eouIyF+DuGXcqeVsv53d1ELT9DV5ieERUdxW8QFlzD
 lDV1O9cmvT+mKVsykXuU4CiZTeJOOztCQfRi/hipXon/9GR//FpFahYOB
 c/340v7uYSSaHJ+urGgsGl/DxEwsssdfE4wgHOACC5/vIPQW9qHVL0jNd
 fOBryrK7MI1bc6MNY77N3XD6Eb7Gf3FC/OzI7orGfS1BAa+MDtBYblRSb g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="271285430"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="271285430"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 04:02:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="581446639"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 27 Jan 2022 04:02:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Jan 2022 14:02:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jan 2022 14:02:19 +0200
Message-Id: <20220127120219.20143-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220127093303.17309-3-ville.syrjala@linux.intel.com>
References: <20220127093303.17309-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 02/14] drm/i915: Clean up M/N register defines
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_GENMASK() & co. for the M/N register values. There are
also a lot of weird unused defines (eg. *_OFFSET) we can just
throw out.

Also let's mask out the unused bits during readout for good
measure. Previously we only masked out the TU_SIZE from one
of the registers, which was a bit too inconsistent for my
taste.

v2: Mention the readout masking in the commit msg  (Jani)
    Dal wth gvt

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++-----
 drivers/gpu/drm/i915/gvt/display.c           |  4 ++--
 drivers/gpu/drm/i915/i915_reg.h              | 22 +++-----------------
 3 files changed, 10 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f76faa195cb9..d91164d1eb92 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3865,11 +3865,11 @@ static void intel_get_m_n(struct drm_i915_private *i915,
 			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
 			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
 {
-	m_n->link_m = intel_de_read(i915, link_m_reg);
-	m_n->link_n = intel_de_read(i915, link_n_reg);
-	m_n->gmch_m = intel_de_read(i915, data_m_reg) & ~TU_SIZE_MASK;
-	m_n->gmch_n = intel_de_read(i915, data_n_reg);
-	m_n->tu = ((intel_de_read(i915, data_m_reg) & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
+	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
+	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->gmch_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
+	m_n->gmch_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
+	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
 }
 
 static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
diff --git a/drivers/gpu/drm/i915/gvt/display.c b/drivers/gpu/drm/i915/gvt/display.c
index 7198d02edc74..3ce88dea525c 100644
--- a/drivers/gpu/drm/i915/gvt/display.c
+++ b/drivers/gpu/drm/i915/gvt/display.c
@@ -253,7 +253,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = 63 << TU_SIZE_SHIFT;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
@@ -387,7 +387,7 @@ static void emulate_monitor_status_change(struct intel_vgpu *vgpu)
 		 *   DP link clk 1620 MHz and non-constant_n.
 		 * TODO: calculate DP link symbol clk and stream clk m/n.
 		 */
-		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = 63 << TU_SIZE_SHIFT;
+		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) = TU_SIZE(64);
 		vgpu_vreg_t(vgpu, PIPE_DATA_M1(TRANSCODER_A)) |= 0x5b425e;
 		vgpu_vreg_t(vgpu, PIPE_DATA_N1(TRANSCODER_A)) = 0x800000;
 		vgpu_vreg_t(vgpu, PIPE_LINK_M1(TRANSCODER_A)) = 0x3cd6e;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e4dd9db63fe..ec48406eb37a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5209,16 +5209,14 @@ enum {
 #define _PIPEB_DATA_M_G4X	0x71050
 
 /* Transfer unit size for display port - 1, default is 0x3f (for TU size 64) */
-#define  TU_SIZE(x)             (((x) - 1) << 25) /* default size 64 */
-#define  TU_SIZE_SHIFT		25
-#define  TU_SIZE_MASK           (0x3f << 25)
+#define  TU_SIZE_MASK		REG_GENMASK(30, 25)
+#define  TU_SIZE(x)		REG_FIELD_PREP(TU_SIZE_MASK, (x) - 1) /* default size 64 */
 
-#define  DATA_LINK_M_N_MASK	(0xffffff)
+#define  DATA_LINK_M_N_MASK	REG_GENMASK(23, 0)
 #define  DATA_LINK_N_MAX	(0x800000)
 
 #define _PIPEA_DATA_N_G4X	0x70054
 #define _PIPEB_DATA_N_G4X	0x71054
-#define   PIPE_GMCH_DATA_N_MASK			(0xffffff)
 
 /*
  * Computing Link M and N values for the Display Port link
@@ -5233,11 +5231,8 @@ enum {
 
 #define _PIPEA_LINK_M_G4X	0x70060
 #define _PIPEB_LINK_M_G4X	0x71060
-#define   PIPEA_DP_LINK_M_MASK			(0xffffff)
-
 #define _PIPEA_LINK_N_G4X	0x70064
 #define _PIPEB_LINK_N_G4X	0x71064
-#define   PIPEA_DP_LINK_N_MASK			(0xffffff)
 
 #define PIPE_DATA_M_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_M_G4X, _PIPEB_DATA_M_G4X)
 #define PIPE_DATA_N_G4X(pipe) _MMIO_PIPE(pipe, _PIPEA_DATA_N_G4X, _PIPEB_DATA_N_G4X)
@@ -6840,24 +6835,13 @@ enum {
 
 
 #define _PIPEA_DATA_M1		0x60030
-#define  PIPE_DATA_M1_OFFSET    0
 #define _PIPEA_DATA_N1		0x60034
-#define  PIPE_DATA_N1_OFFSET    0
-
 #define _PIPEA_DATA_M2		0x60038
-#define  PIPE_DATA_M2_OFFSET    0
 #define _PIPEA_DATA_N2		0x6003c
-#define  PIPE_DATA_N2_OFFSET    0
-
 #define _PIPEA_LINK_M1		0x60040
-#define  PIPE_LINK_M1_OFFSET    0
 #define _PIPEA_LINK_N1		0x60044
-#define  PIPE_LINK_N1_OFFSET    0
-
 #define _PIPEA_LINK_M2		0x60048
-#define  PIPE_LINK_M2_OFFSET    0
 #define _PIPEA_LINK_N2		0x6004c
-#define  PIPE_LINK_N2_OFFSET    0
 
 /* PIPEB timing regs are same start from 0x61000 */
 
-- 
2.34.1

