Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73ABB16F33
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 12:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7300F10E76D;
	Thu, 31 Jul 2025 10:05:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFiHW67G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D1310E76C;
 Thu, 31 Jul 2025 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753956354; x=1785492354;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=55XTkQQtIVAjz3c040rwadQPBsYn7EssSVKZpZ58MbA=;
 b=JFiHW67G4USgcK1v+G1QwK9t+xnMw+ZIVU8qRdGUUduPCezeYrTSBhEL
 gV2zv9BT0CkejqXUzl4PYK3Dv37l0KPks3TQ9yfDip9mVjeCe5CgDD5eM
 0OfZ+HCzvSTWEfuYA17JkyA7vVhV//JLlpZzJ854N+En2+MnKtHWgRKgh
 V2ipSD2ncLg8EgzVkL9tLHKi5gAhK0g7+/WX7qelplQzMchVb3Ezr/eaG
 qwuKr8j9L9yM6cx+Tv+MIUIWPV/mzZnXUrwHTzo6WZVw3RrteTTqpBQjk
 gcDWRn0cqUXd5pMn3DM9qteNAb5jfNscTs1Anqfuj+BKfyklyxuBwZ7Da A==;
X-CSE-ConnectionGUID: MWsNcmC/RPavFUTwaAuP9A==
X-CSE-MsgGUID: WVKEHbpTSSq9grkKvgVEtg==
X-IronPort-AV: E=McAfee;i="6800,10657,11507"; a="56362253"
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="56362253"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:53 -0700
X-CSE-ConnectionGUID: X1fvdnmZQqqV1cAEyVa63Q==
X-CSE-MsgGUID: 4fr7S1VHTE2cgw2mQrLIMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,353,1744095600"; d="scan'208";a="194221826"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 03:05:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 7/7] drm/i915/dsi: use intel_de_wait_custom() instead of
 wait_for_us()
Date: Thu, 31 Jul 2025 13:05:14 +0300
Message-Id: <1fe3d5ac314dd644573e9f59941e4c7f1d57b05d.1753956266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753956266.git.jani.nikula@intel.com>
References: <cover.1753956266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Prefer the register read specific wait function over i915 wait_for_us().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 41 ++++++++++++++++++--------
 1 file changed, 28 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 8d9cb73a93a7..44310984bb57 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -137,8 +137,11 @@ static void wait_for_cmds_dispatched_to_panel(struct intel_encoder *encoder)
 	/* wait for LP TX in progress bit to be cleared */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us(!(intel_de_read(display, DSI_LP_MSG(dsi_trans)) &
-				  LPTX_IN_PROGRESS), 20))
+
+		ret = intel_de_wait_custom(display, DSI_LP_MSG(dsi_trans),
+					   LPTX_IN_PROGRESS, 0,
+					   20, 0, NULL);
+		if (ret)
 			drm_err(display->drm, "LPTX bit not cleared\n");
 	}
 }
@@ -516,13 +519,15 @@ static void gen11_dsi_enable_ddi_buffer(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
+	int ret;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), 0, DDI_BUF_CTL_ENABLE);
 
-		if (wait_for_us(!(intel_de_read(display, DDI_BUF_CTL(port)) &
-				  DDI_BUF_IS_IDLE),
-				  500))
+		ret = intel_de_wait_custom(display, DDI_BUF_CTL(port),
+					   DDI_BUF_IS_IDLE, 0,
+					   500, 0, NULL);
+		if (ret)
 			drm_err(display->drm, "DDI port:%c buffer idle\n",
 				port_name(port));
 	}
@@ -838,9 +843,14 @@ gen11_dsi_configure_transcoder(struct intel_encoder *encoder,
 
 	/* wait for link ready */
 	for_each_dsi_port(port, intel_dsi->ports) {
+		int ret;
+
 		dsi_trans = dsi_port_to_transcoder(port);
-		if (wait_for_us((intel_de_read(display, DSI_TRANS_FUNC_CONF(dsi_trans)) &
-				 LINK_READY), 2500))
+
+		ret = intel_de_wait_custom(display, DSI_TRANS_FUNC_CONF(dsi_trans),
+					   LINK_READY, LINK_READY,
+					   2500, 0, NULL);
+		if (ret)
 			drm_err(display->drm, "DSI link not ready\n");
 	}
 }
@@ -1321,6 +1331,7 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 	enum port port;
 	enum transcoder dsi_trans;
 	u32 tmp;
+	int ret;
 
 	/* disable periodic update mode */
 	if (is_cmd_mode(intel_dsi)) {
@@ -1337,9 +1348,10 @@ static void gen11_dsi_deconfigure_trancoder(struct intel_encoder *encoder)
 		tmp &= ~LINK_ULPS_TYPE_LP11;
 		intel_de_write(display, DSI_LP_MSG(dsi_trans), tmp);
 
-		if (wait_for_us((intel_de_read(display, DSI_LP_MSG(dsi_trans)) &
-				 LINK_IN_ULPS),
-				10))
+		ret = intel_de_wait_custom(display, DSI_LP_MSG(dsi_trans),
+					   LINK_IN_ULPS, LINK_IN_ULPS,
+					   10, 0, NULL);
+		if (ret)
 			drm_err(display->drm, "DSI link not in ULPS\n");
 	}
 
@@ -1367,14 +1379,17 @@ static void gen11_dsi_disable_port(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum port port;
+	int ret;
 
 	gen11_dsi_ungate_clocks(encoder);
 	for_each_dsi_port(port, intel_dsi->ports) {
 		intel_de_rmw(display, DDI_BUF_CTL(port), DDI_BUF_CTL_ENABLE, 0);
 
-		if (wait_for_us((intel_de_read(display, DDI_BUF_CTL(port)) &
-				 DDI_BUF_IS_IDLE),
-				 8))
+		ret = intel_de_wait_custom(display, DDI_BUF_CTL(port),
+					   DDI_BUF_IS_IDLE, DDI_BUF_IS_IDLE,
+					   8, 0, NULL);
+
+		if (ret)
 			drm_err(display->drm,
 				"DDI port:%c buffer not idle\n",
 				port_name(port));
-- 
2.39.5

