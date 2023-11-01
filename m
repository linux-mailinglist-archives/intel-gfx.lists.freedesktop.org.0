Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4937DE075
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 12:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E17A10E6D1;
	Wed,  1 Nov 2023 11:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3217D10E6D1
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 11:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698838947; x=1730374947;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Vn+LXJkhsYHWF6nEFZsDlfV1Ij4Zv1XX0dpmHvLit+o=;
 b=bw7FarjU0ne5+EuE4mBEAcg1ZN7oI1MKjKKcmpd4m1NI/4cwLgscmYt6
 ST7CxwsaNuWEA92A2PqT37athzDl6QIr5Zbkz/Nd5dmdwxzCYlt8Sp1zQ
 +gAZr/mOS7NL5akiLEUuYcI8uAhWZfIXMk26qWcgSVgTo0A2QdBUR7hI/
 nReM2rK+o96Dcv5tXK3w3BwIHVW9Gau1lJNjTbbbOeZqLI6G9UA+fVEuA
 EMiDfrzJYytsrCVHR6DJkyps3DQyC2IwTUxyQNbF8sswAsXBugriFXvNa
 Zj/Bsp5yDFRJ4AtvXdATjE5CyDkr9usqSrCI2GxcKztNgoI8cZ6RLdhKs g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392338777"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="392338777"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 04:42:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754450287"
X-IronPort-AV: E=Sophos;i="6.03,268,1694761200"; d="scan'208";a="754450287"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 04:42:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 13:42:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Nov 2023 13:42:11 +0200
Message-ID: <20231101114212.9345-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
References: <20231101114212.9345-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/dsi: Remove dead GLK checks
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

GLK has its own glk_dsi_clear_device_ready() so remove
the dead GLK checks from vlv_dsi_clear_device_ready().
Sadly BXT still uses vlv_dsi_clear_device_ready() so the
code still looks like a mess due to the difference in VLV/CHV
vs. BXT port A/C shenanigans.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 55da627a8b8d..64023fb8dd74 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -570,7 +570,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 	drm_dbg_kms(&dev_priv->drm, "\n");
 	for_each_dsi_port(port, intel_dsi->ports) {
 		/* Common bit for both MIPI Port A & MIPI Port C on VLV/CHV */
-		i915_reg_t port_ctrl = IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ?
+		i915_reg_t port_ctrl = IS_BROXTON(dev_priv) ?
 			BXT_MIPI_PORT_CTRL(port) : MIPI_PORT_CTRL(PORT_A);
 
 		intel_de_write(dev_priv, MIPI_DEVICE_READY(port),
@@ -589,7 +589,7 @@ static void vlv_dsi_clear_device_ready(struct intel_encoder *encoder)
 		 * On VLV/CHV, wait till Clock lanes are in LP-00 state for MIPI
 		 * Port A only. MIPI Port C has no similar bit for checking.
 		 */
-		if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) || port == PORT_A) &&
+		if ((IS_BROXTON(dev_priv) || port == PORT_A) &&
 		    intel_de_wait_for_clear(dev_priv, port_ctrl,
 					    AFE_LATCHOUT, 30))
 			drm_err(&dev_priv->drm, "DSI LP not going Low\n");
-- 
2.41.0

