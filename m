Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A09BA224F1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A36F10E8B6;
	Wed, 29 Jan 2025 20:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AblBYmKE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD11110E8B0;
 Wed, 29 Jan 2025 20:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180918; x=1769716918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/4IkloCPDRaUl8pM1jxtTxWUIphdBunBdXuUrf8vfLE=;
 b=AblBYmKEV7ofrsdeoRzwP06YuFsvheUoX5aXvHXWDxzrjHvYQvWt1yrC
 1czVqUAp6GPggFHKXkBM05s1NgmHJXau2SuxEzxPxsVQJazpi1Zv3kWCw
 XXL9xVKDlvLvHGipWvWzejDWbW7Xvq+QZ4tlzT8UAc9SMXMNe4GiwH1Zi
 mr7DPP9Vm5aMGj9Rf/vYEI7JKom0PfeaPQlkIqN0/qRmthuici007uNz7
 dPSD29guzFzq4A/UnGqcPoluNysNBN7OlEuVL0gawcCdPTsYWMCMy4itx
 oEdGzNYzrayS3PjweQpppXsN5/tdmA+f4evWG+zIAs+om2Gv16Lk7P5AC w==;
X-CSE-ConnectionGUID: MxLwZftCQaCk3ViDwGxqZw==
X-CSE-MsgGUID: CVwxAQkoTia82Y2vj77yQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977760"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977760"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:45 -0800
X-CSE-ConnectionGUID: CeivIZLDTZyffgs58qAxVA==
X-CSE-MsgGUID: h1sKaDyBQNid28DWXLgbaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750920"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:44 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 16/17] drm/i915/ddi: Move platform/encoder checks within
 adlp_tbt_to_dp_alt_switch_wa()
Date: Wed, 29 Jan 2025 22:02:20 +0200
Message-ID: <20250129200221.2508101-17-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

From: Imre Deak <imre.deak@gmail.com>

The prefix of adlp_tbt_to_dp_alt_switch_wa() function name shows already
what is the relevant platform and encoder type/mode, so the
corresponding checks are a detail that can be hidden in the
function, do so.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 431db1e6b6f07..a2d82a4c4aa77 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3699,10 +3699,16 @@ intel_ddi_pre_pll_enable(struct intel_atomic_state *state,
 
 static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 {
+	struct intel_display *display = to_intel_display(encoder);
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	enum tc_port tc_port = intel_encoder_to_tc(encoder);
 	int ln;
 
+	if (!display->platform.alderlake_p ||
+	    (!intel_tc_port_in_dp_alt_mode(dig_port) && !intel_tc_port_in_legacy_mode(dig_port)))
+		return;
+
 	for (ln = 0; ln < 2; ln++)
 		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port, ln), DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
@@ -3777,9 +3783,7 @@ static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
 	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
 
-	if (IS_ALDERLAKE_P(dev_priv) &&
-	    (intel_tc_port_in_dp_alt_mode(dig_port) || intel_tc_port_in_legacy_mode(dig_port)))
-		adlp_tbt_to_dp_alt_switch_wa(encoder);
+	adlp_tbt_to_dp_alt_switch_wa(encoder);
 
 	intel_enable_ddi_buf(encoder, intel_dp->DP);
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-- 
2.44.2

