Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A51B16DF2
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 10:54:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB2F810E73A;
	Thu, 31 Jul 2025 08:54:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Smsj4q2X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B6F10E73A
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Jul 2025 08:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753952052; x=1785488052;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=esONcdAejKt/hor0g4nZTQ3m7yEfx0shld7B5Iakr64=;
 b=Smsj4q2XnPyiMFn2Ell6qYxtfdV0rT7RLJuBkQQtrwMDCyzC5Yd6Xmqo
 6MqcCHGTvNRZhNYBwWke0VQrN/l6E7CmiCChKe4znvj+vzPpb+WdhC458
 6evcV9zQ8QSv8QE3K10/7nvssAI8kSG69MamVEVOcMYfBu6LgskQcaq90
 X5jzPX4F2owl/V477x9oP+BXwxoayHoY14NAQG1bvWbX7VCg7pJm8C6K0
 Q4Ayc+lBVWwzS+uDfxt5ko8OcETFHAGiLffdc1esOxmBIkTCU3aXz9yQ3
 ro9/A1Sz0cRFgIM/xAqJczDCveDBuyuOtH5OUoRp/Kyq25XsvufqJCLIJ A==;
X-CSE-ConnectionGUID: 4A+XJ66kSF23J8F6GvRZeQ==
X-CSE-MsgGUID: DICdYgiqQ+6xlD23bjg00A==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="55964760"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="55964760"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 01:54:11 -0700
X-CSE-ConnectionGUID: +r8EZwJwS+Cc/yXTAVd+Cw==
X-CSE-MsgGUID: UjIa8em/Srm+WFnAHWcULQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="167433135"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa003.jf.intel.com with ESMTP; 31 Jul 2025 01:54:11 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH] drm/i915/display: WA_14011503117
Date: Thu, 31 Jul 2025 14:19:00 +0530
Message-Id: <20250731084900.1684276-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

Before enabling the scaler mask the bit and after
enabling the scaler, in the later stage after
waiting for a frame unmask the PS_ECC bit and
ERR_FATAL_MASK bit.
Unmasking of DISPLAY_ERR_FATAL_MASK bit is use
for validation purpose. There is no functional
imapct.

v2: Remove intel_display_need_wa [Jani]
    Optimise the ecc_unmask call[Animesh]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  5 ++++
 drivers/gpu/drm/i915/display/skl_scaler.c    | 28 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_scaler.h    |  4 +++
 3 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7035c1fc9033..08cc747638ca 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1081,6 +1081,11 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (audio_enabling(old_crtc_state, new_crtc_state))
 		intel_encoders_audio_enable(state, crtc);
 
+	if (DISPLAY_VER(display) == 13) {
+		if (old_crtc_state->pch_pfit.enabled != new_crtc_state->pch_pfit.enabled)
+			adl_scaler_ecc_unmask(new_crtc_state);
+	}
+
 	intel_alpm_post_plane_update(state, crtc);
 
 	intel_psr_post_plane_update(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4cc55f4e1f9f..cadfcb549ae8 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -762,6 +762,9 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
 			crtc_state->scaler_state.scaler_id < 0))
 		return;
 
+	if (DISPLAY_VER(display) == 13)
+		adl_scaler_ecc_mask(crtc_state);
+
 	drm_rect_init(&src, 0, 0,
 		      drm_rect_width(&crtc_state->pipe_src) << 16,
 		      drm_rect_height(&crtc_state->pipe_src) << 16);
@@ -938,3 +941,28 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
 }
+
+void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->pch_pfit.enabled)
+		return;
+
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, ~0);
+}
+
+void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	const struct intel_crtc_scaler_state *scaler_state =
+		&crtc_state->scaler_state;
+	int id;
+
+	if (!scaler_state && scaler_state->scaler_id == -1)
+		return;
+
+	intel_de_write_fw(display, SKL_PS_ECC_STAT(crtc->pipe, id), 1);
+	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 692716dd7616..79183d9ecc3b 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -44,4 +44,8 @@ skl_scaler_mode_valid(struct intel_display *display,
 		      enum intel_output_format output_format,
 		      int num_joined_pipes);
 
+void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
+
+void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
+
 #endif
-- 
2.25.1

