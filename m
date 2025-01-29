Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1E3A224E8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1152810E8AD;
	Wed, 29 Jan 2025 20:01:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ab5V89ld";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F035210E89C;
 Wed, 29 Jan 2025 20:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180893; x=1769716893;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0m22DV12DoJ0fXFK3N+FHD9MyimfB1HyYtkB2ul77hg=;
 b=Ab5V89ldLvn+KPuWU3aKyk60C/3sU3y7zmVhpTKYbPFAr6wRN9WOCtFz
 NyvaJYmA3canf6i2vasRhhrm7zIOPPp6WFIOAwtrT29N3/yxUhtYGVZyG
 yrstqUBgRLOsLak4db11CLvIDuzJOaFkrJpKHfKLKVjgpOXDsVRxvP7Zk
 VbSxo+TlqD/m8V7qPndOEH5neld7VNKOb8l1fjC7jLwAi00+mqOTm799A
 7QYL6aU/zplvO0YxcHbVmqUzrcEZlKXUI5Jt6Huy6SXOSfb7VJataqX7Z
 fj2jXheFES6bs2m3krEyV/sD8gNNRlz0Um+lcAIeCW+w8CcZvNTzzMFA4 A==;
X-CSE-ConnectionGUID: foqmIw5sSVep7MnN4pXgnQ==
X-CSE-MsgGUID: mguc1n6qTlKqaXk5auX1Xw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977693"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977693"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:33 -0800
X-CSE-ConnectionGUID: n5Xm9RG1T26Wr9axWtYwBQ==
X-CSE-MsgGUID: 1L6OGLkvT2Cqzu5zsVPQwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750900"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:32 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 06/17] drm/i915/ddi: Simplify the port disabling via
 DDI_BUF_CTL
Date: Wed, 29 Jan 2025 22:02:10 +0200
Message-ID: <20250129200221.2508101-7-imre.deak@intel.com>
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

A port can be disabled only via a modeset (or during HW state
sanitization) when the port is enabled. Thus it's not required to check
the port's enabled state before disabling it. In any case if the port
happened to be disabled, the following disabling would be just a nop and
waiting for the buffer's idle state should succeed. Simplify the
disabling sequence accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3138dc4034797..24c56d2aa5f31 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3062,17 +3062,12 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	u32 val;
 
 	/* 3.b Clear DDI_CTL_DE Enable to 0. */
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
-	if (val & DDI_BUF_CTL_ENABLE) {
-		val &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
+	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-		/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
-		mtl_wait_ddi_buf_idle(dev_priv, port);
-	}
+	/* 3.c Poll for PORT_BUF_CTL Idle Status == 1, timeout after 100us */
+	mtl_wait_ddi_buf_idle(dev_priv, port);
 
 	/* 3.d Disable D2D Link */
 	mtl_ddi_disable_d2d_link(encoder);
@@ -3089,15 +3084,8 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	enum port port = encoder->port;
-	bool wait = false;
-	u32 val;
 
-	val = intel_de_read(dev_priv, DDI_BUF_CTL(port));
-	if (val & DDI_BUF_CTL_ENABLE) {
-		val &= ~DDI_BUF_CTL_ENABLE;
-		intel_de_write(dev_priv, DDI_BUF_CTL(port), val);
-		wait = true;
-	}
+	intel_de_rmw(dev_priv, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
 	if (intel_crtc_has_dp_encoder(crtc_state))
 		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
@@ -3105,8 +3093,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
 
 	intel_ddi_disable_fec(encoder, crtc_state);
 
-	if (wait)
-		intel_wait_ddi_buf_idle(dev_priv, port);
+	intel_wait_ddi_buf_idle(dev_priv, port);
 }
 
 static void intel_disable_ddi_buf(struct intel_encoder *encoder,
-- 
2.44.2

