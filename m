Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB43A3602A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D11510ECAA;
	Fri, 14 Feb 2025 14:19:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WhJhIlEi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1970410ECAA;
 Fri, 14 Feb 2025 14:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542761; x=1771078761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=We0xUn24IryPqdsqMhIV8t2Vl8+CEgqoM8lkN0gKjME=;
 b=WhJhIlEiHXxu1jehnIPkr7Ua+c7g7PtWaMiLOeSGs9xrU1FSsKZKanQl
 WHUhDuCv5WYVEXuUURdU7NzS9tH0rpiT0xrKDDeQ4/Ct0GLKrSY2PTOBH
 3Rg1mdFpV4xLJCy+0dEGZUaQHUVyeLwXYyHfSgJl6Qhs3D1Xub+mkW3ib
 1wCBmeEJT7uktG2C7hrfcfYOrwZkTU8AfcuoaWPSO+hE1rFQDLtee7aAb
 1R5yuIcK89rcOvKKqAY8ch/HFJBucYnHy+6aACiLvixmrDMK3kLKZd/uV
 hq9RGBSmzEJt+CBCNcJR5MMLC4g2Mj2I+wrQp/0JJK2YTsVOlh/wU7BtL Q==;
X-CSE-ConnectionGUID: tFRzi0uAQmCwZFzy0Hsx5w==
X-CSE-MsgGUID: c5vowx7JQ4uruBswkcB7jg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892513"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892513"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:21 -0800
X-CSE-ConnectionGUID: o88p05+GSFmS7sey6BQtYg==
X-CSE-MsgGUID: CyoQLpR2Seu/+REB+lWOpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694316"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:12 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 08/11] drm/i915/ddi: Move platform checks within
 mtl_ddi_enable/disable_d2d_link()
Date: Fri, 14 Feb 2025 16:19:58 +0200
Message-ID: <20250214142001.552916-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250214142001.552916-1-imre.deak@intel.com>
References: <20250214142001.552916-1-imre.deak@intel.com>
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

The prefix of the mtl_ddi_enable_d2d() / mtl_ddi_disable_d2d_link()
names show already what are the relevant platforms, so the corresponding
platform check is a detail that can be hidden in the functions, do so.

While at it rename mtl_ddi_disable_d2d_link() to mtl_ddi_disable_d2d()
for symmetry with mtl_ddi_enable_d2d().

v2: s/mtl_ddi_disable_d2d_link/mtl_ddi_disable_d2d (Jani)

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 22eeaabc0d2de..0cb6c95315fcd 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2556,6 +2556,9 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 	i915_reg_t reg;
 	u32 set_bits, wait_bits;
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
@@ -3047,13 +3050,16 @@ static void intel_ddi_pre_enable(struct intel_atomic_state *state,
 }
 
 static void
-mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
+mtl_ddi_disable_d2d(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
 	i915_reg_t reg;
 	u32 clr_bits, wait_bits;
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
@@ -3083,7 +3089,7 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
 	intel_wait_ddi_buf_idle(dev_priv, port);
 
 	/* 3.d Disable D2D Link */
-	mtl_ddi_disable_d2d_link(encoder);
+	mtl_ddi_disable_d2d(encoder);
 
 	/* 3.e Disable DP_TP_CTL */
 	if (intel_crtc_has_dp_encoder(crtc_state)) {
@@ -3432,8 +3438,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
 	/* e. Enable D2D Link for C10/C20 Phy */
-	if (DISPLAY_VER(dev_priv) >= 14)
-		mtl_ddi_enable_d2d(encoder);
+	mtl_ddi_enable_d2d(encoder);
 
 	encoder->set_signal_levels(encoder, crtc_state);
 
-- 
2.44.2

