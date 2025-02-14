Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16581A36024
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 15:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9369E10ECB7;
	Fri, 14 Feb 2025 14:19:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WHnBVUFj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2010F10ECB2;
 Fri, 14 Feb 2025 14:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739542751; x=1771078751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RYL+eRP/AW/dW51K3lPEjGPj9dfSSL1u6JyMS+rtD6s=;
 b=WHnBVUFjB5THfQkLAMixzMNWRqXvN5QnH0Ezd65i24O/K9NCGE59vXVY
 ZosouzM9x3aD8xXI7XOXLZfHzm1DbOpClvEKERMgQHaP7jYaIFyDxy9r1
 5CE6Ac6diVoRlfKlp70VSoy2K4FYAqQE9o5IjIl9SmssSwsnZ3nil60Df
 FTA02NnGGMAOx1qNeP8xhPFXFfI78Y1rgDBuynnXEObuw+fvFEcrBe59+
 q2K0jjxK+XwE7sA/wP8HyfkVYSiehydgojOYrzDUguPI0kneMnJzhx9w2
 HU4dh0f5HxZD1snclCM08tbqBYFkqjuxX/+bdF82ND/JbOpvDSp82VNI/ A==;
X-CSE-ConnectionGUID: oQaWSiCgSeSCcVOQVI/ILA==
X-CSE-MsgGUID: VgyLVmB4Qtm7bnHDLPl9EQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="27892502"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="27892502"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:11 -0800
X-CSE-ConnectionGUID: VZo1ln+ySAyGMmk+d8mbig==
X-CSE-MsgGUID: 9/Zk+8pYQv+wk9fy1hYvvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="136694273"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 06:19:09 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 06/11] drm/i915/ddi: Simplify the port disabling via
 DDI_BUF_CTL
Date: Fri, 14 Feb 2025 16:19:56 +0200
Message-ID: <20250214142001.552916-7-imre.deak@intel.com>
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

A port can be disabled only via a modeset (or during HW state
sanitization) when the port is enabled. Thus it's not required to check
the port's enabled state before disabling it. In any case if the port
happened to be disabled, the following disabling would be just a nop and
waiting for the buffer's idle state should succeed. Simplify the
disabling sequence accordingly.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 23 +++++------------------
 1 file changed, 5 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 68c93071720ec..1badbf207e529 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3081,17 +3081,12 @@ static void mtl_disable_ddi_buf(struct intel_encoder *encoder,
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
@@ -3108,15 +3103,8 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
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
@@ -3124,8 +3112,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
 
 	intel_ddi_disable_fec(encoder, crtc_state);
 
-	if (wait)
-		intel_wait_ddi_buf_idle(dev_priv, port);
+	intel_wait_ddi_buf_idle(dev_priv, port);
 }
 
 static void intel_disable_ddi_buf(struct intel_encoder *encoder,
-- 
2.44.2

