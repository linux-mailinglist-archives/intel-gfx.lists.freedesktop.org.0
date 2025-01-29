Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0519BA224E6
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9826510E88D;
	Wed, 29 Jan 2025 20:01:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHDM3yAt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9F310E8AB;
 Wed, 29 Jan 2025 20:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180895; x=1769716895;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=n/jg7Tj7Lcm1bv6dY2Ga5gc67VzgU7PFl5/ml6vRdx4=;
 b=PHDM3yAtRpVSFY01RA9LZ4P+CMZnXP9UhPm6pGHd899UVoVoE1pTF5H9
 8s3mJtXgV2CYKtnU77eNNslYUGTXJ53vElMxZqNfakPOCtzscIINhvwuE
 44Z+zXx++/J01T6EkN6DHM5Bd7XjBHLmuPuIoXktHz0/B4RSvpA4164w0
 3OxMEyosJEjyiP+b44tykOLBteNNrOanVB8+qjesUa0MDi9c6nFrwWOy2
 UxTh/mJGvvCnVGIli+QX7q0nRoeRfHj30KEiTeQX7r+YZBB5RY2V2/uG3
 0e+20J9DFESIuZNshRmgJE9JI/Qu9AU8wepZ847foy4hqFcwrOCxKVNw7 A==;
X-CSE-ConnectionGUID: un7et0tURjmuOTfNxw12GA==
X-CSE-MsgGUID: m9q4wTNMTNqy1syIzKa4WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977700"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977700"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:35 -0800
X-CSE-ConnectionGUID: trIAeGuzSnq+fft7SVW8ZQ==
X-CSE-MsgGUID: SZKrV0K6SjiaNY0nyjlqqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750904"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:34 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 08/17] drm/i915/ddi: Move platform checks within
 mtl_ddi_enable/disable_d2d_link()
Date: Wed, 29 Jan 2025 22:02:12 +0200
Message-ID: <20250129200221.2508101-9-imre.deak@intel.com>
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

The prefix of the mtl_ddi_enable_d2d() / mtl_ddi_disable_d2d_link()
names show already what are the relevant platforms, so the corresponding
platform check is a detail that can be hidden in the functions, do so.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d040558b5d029..07188606a0177 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2545,6 +2545,9 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
 	i915_reg_t reg;
 	u32 set_bits, wait_bits;
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
@@ -3035,6 +3038,9 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
 	i915_reg_t reg;
 	u32 clr_bits, wait_bits;
 
+	if (DISPLAY_VER(dev_priv) < 14)
+		return;
+
 	if (DISPLAY_VER(dev_priv) >= 20) {
 		reg = DDI_BUF_CTL(port);
 		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
@@ -3411,8 +3417,7 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
 		hsw_prepare_hdmi_ddi_buffers(encoder, crtc_state);
 
 	/* e. Enable D2D Link for C10/C20 Phy */
-	if (DISPLAY_VER(dev_priv) >= 14)
-		mtl_ddi_enable_d2d(encoder);
+	mtl_ddi_enable_d2d(encoder);
 
 	encoder->set_signal_levels(encoder, crtc_state);
 
-- 
2.44.2

