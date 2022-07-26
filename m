Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBBE58145A
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jul 2022 15:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6EE91498;
	Tue, 26 Jul 2022 13:43:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170A291487
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Jul 2022 13:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658842997; x=1690378997;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MXuSGk6alr+HlwaXcur/ctoHf4Z1UB0r9FabmbsKK3M=;
 b=XMjITNymHi4y4EuCgmGCfuym5XM8SM5uQMMe+TzG1tF2pk/hH5zrvGp4
 ky92PERR0MxP5TD+jL831Iu2UBQnvNZ3lZcRH55wCI8NpCVNtBc1qehnE
 s5HCA5LNjAqHzt5/CcXC8GUhWRG8Q96ag53XTqgyEiIpVSA/9AFBbuPyC
 tLw4rFg9tHYIbaBKNUoeu7m1p3PllXXYMeuTveLfWHzq+My9KXuvHwo6l
 53GOCTAKCdwrjvmXD8YLr6WResyI+hbyPA/1B2Bay9ur9YPqZKqpY0/gJ
 Wwma+YJe1rqfT62wpwJvk8cCZS077ka7aDo3Cy8YUaPZNuFu96+CG61OW w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313721693"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="313721693"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 06:43:16 -0700
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="726539820"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 06:43:15 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Jul 2022 16:43:13 +0300
Message-Id: <20220726134313.1484763-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/tc: Fix PHY ownership programming in
 HDMI legacy mode
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

Make sure the TypeC PHY ownership flag is not getting reset during
an HDMI modeset on the given port. Besides the WARN this triggered, it
didn't cause other issues, since for TypeC legacy mode setting the
PHY ownership flag is optional (there is no other user of the PHY
besides display).

Reported-and-tested-by: Shawn C Lee <shawn.c.lee@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a4c8493f3ce77..6c43a5124cb8e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2866,6 +2866,8 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_connector *connector = conn_state->connector;
 	enum port port = encoder->port;
+	enum phy phy = intel_port_to_phy(dev_priv, port);
+	u32 buf_ctl;
 
 	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
 					       crtc_state->hdmi_high_tmds_clock_ratio,
@@ -2923,8 +2925,12 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
 	 * On ADL_P the PHY link rate and lane count must be programmed but
 	 * these are both 0 for HDMI.
 	 */
-	intel_de_write(dev_priv, DDI_BUF_CTL(port),
-		       dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE);
+	buf_ctl = dig_port->saved_port_bits | DDI_BUF_CTL_ENABLE;
+	if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
+		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
+		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
+	}
+	intel_de_write(dev_priv, DDI_BUF_CTL(port), buf_ctl);
 
 	intel_audio_codec_enable(encoder, crtc_state, conn_state);
 }
-- 
2.34.1

