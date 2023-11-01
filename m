Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAE67DE076
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:42:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1DCE10E6D3;
	Wed,  1 Nov 2023 11:42:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E6B310E6D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698838950; x=1730374950;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7M9ykptrqo8gPBex6t4tZoVspztrbxT/7wvSXshXzAY=;
 b=TbQ8hbc47pdcK3zRwfjmrgP58uWjlIYfyAD+zBpQr+UUB4IIk364sX4s
 kU8CxXa7yaujZ3MGH7U5PEetzCYNwzvNXnl53dmis7NIvRgdtRC83XQGt
 QCYfEOosEcS3Fi3UiFuK8JnY1ApFRi+fTioIzacRoUU6IJPV30ri4W2a+
 YuEf0sq8B/9h4iWwzmXQx96BRtvQSb+naWR3Kyy3+pE1GuugT9garx5KX
 ZYPBiZYpCliM9MapoTq2P9agI+XsiBk/MN6HnKQtTPyitjd167DPJGupq
 /Wp2o4/KfZmUwfk4aVa0alZqzLDE5sdqPifHYij5yIA7Ke1dPSpJORapT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392338780"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="392338780"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:42:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754450301"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754450301"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:42:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:42:27 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 13:42:12 +0200
Message-ID: <20231101114212.9345-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/dsi: Extract port_ctrl_reg()
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

The code to determine the pre-ICL DSI port control register is
repeated several times. Consolidate.

vlv_dsi_clear_device_ready() is left with the open-coded version
due to the weirdness with port A vs. C on VLV/CHV.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 64023fb8dd74..bda49734ca33 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -561,6 +561,12 @@ static void glk_dsi_clear_device_ready(struct intel_encoder *encoder)
 	glk_dsi_disable_mipi_io(encoder);
 }
 
+static i915_reg_t port_ctrl_reg(struct drm_i915_private *i915, enum port port)
+{
+	return IS_GEMINILAKE(i915) || IS_BROXTON(i915) ?
+		BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
+}
+
 static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
@@ -627,8 +633,7 @@ static void intel_dsi_port_enable(struct intel_encoder *encoder,
 	}
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t port_ctrl = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
-			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
+		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
 		u32 temp;
 
 		temp = intel_de_read(dev_priv, port_ctrl);
@@ -664,8 +669,7 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t port_ctrl = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
-			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
+		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
 
 		/* de-assert ip_tg_enable signal */
 		intel_de_rmw(dev_priv, port_ctrl, DPI_ENABLE, 0);
@@ -955,9 +959,8 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 
 	/* XXX: this only works for one DSI output */
 	for_each_dsi_port(port, intel_dsi->ports) {
-		i915_reg_t ctrl_reg = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
-			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(port);
-		bool enabled = intel_de_read(dev_priv, ctrl_reg) & DPI_ENABLE;
+		i915_reg_t port_ctrl = port_ctrl_reg(dev_priv, port);
+		bool enabled = intel_de_read(dev_priv, port_ctrl) & DPI_ENABLE;
 
 		/*
 		 * Due to some hardware limitations on VLV/CHV, the DPI enable
-- 
2.41.0

