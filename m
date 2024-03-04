Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC85E86F91E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 05:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 776B110FBBD;
	Mon,  4 Mar 2024 04:01:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4vYQ0Nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39BC10FBBE
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 04:01:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709524897; x=1741060897;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Q0VJDlpIZ/80QRdei1vMMnyg/SvBEDAFlmCXyZGpXt8=;
 b=f4vYQ0NnVgT9edTKZ3vMXMf3WLjr74Af50mGnJB1NFmR7RFcbguYBTgw
 W+qTPP/gr+G38H2noMrOthuiJn7b4AnNywbM1S6Xz+5AS5+U3+k6XpDg0
 Hp0G53lh01vQapbriKpYeR6oAykv1CjRfoMx1/I+m1RXoPmZFqXxN7Yjz
 ScCKOOT+TAQkq9/mgqeycrFX9fG6FcHEWAdC75qsmSJsBDqwM/0EcFo4+
 /li7qr0tt90KLQ+crm+4jW4Q8cCoOt98GtwSHY5IwIEBYtgo1NrB+ZSzz
 KMZ0CS/sUVtMJw/6QUoeu2efJYXXYhvrf8byevqaNF0Hwq60sD+nYrp5f w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4120689"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4120689"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 20:01:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="8799488"
Received: from shekharc-ms-7d25.iind.intel.com ([10.190.239.16])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 20:01:33 -0800
From: Shekhar Chauhan <shekhar.chauhan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, matthew.d.roper@intel.com,
 clinton.a.taylor@intel.com, shekhar.chauhan@intel.com
Subject: [PATCH v2] drm/i915/dp: Increase idle pattern wait timeout to 2ms
Date: Mon,  4 Mar 2024 09:30:38 +0530
Message-Id: <20240304040038.774303-1-shekhar.chauhan@intel.com>
X-Mailer: git-send-email 2.34.1
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

Currently, the driver is only waiting for 1ms for
idle patterns. But starting from LNL and beyond,
the MST wants the driver to wait for 1640us before
timing out (which we round up to 2ms).

v1: Introduced the 2ms wait timeout.
v2: Segregated the wait timeout for platforms before & after LNL.

BSpec: 68849
Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bea441590204..b72bcad60cdc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3677,12 +3677,20 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
 	 */
 	if (port == PORT_A && DISPLAY_VER(dev_priv) < 12)
 		return;
-
-	if (intel_de_wait_for_set(dev_priv,
+	if(DISPLAY_VER(dev_priv) >= 20) {
+		if (intel_de_wait_for_set(dev_priv,
+				  dp_tp_status_reg(encoder, crtc_state),
+				  DP_TP_STATUS_IDLE_DONE, 2))
+		drm_err(&dev_priv->drm,
+			"Timed out waiting for DP idle patterns\n");
+	}
+	else {
+		if (intel_de_wait_for_set(dev_priv,
 				  dp_tp_status_reg(encoder, crtc_state),
 				  DP_TP_STATUS_IDLE_DONE, 1))
 		drm_err(&dev_priv->drm,
 			"Timed out waiting for DP idle patterns\n");
+	}
 }
 
 static bool intel_ddi_is_audio_enabled(struct drm_i915_private *dev_priv,
-- 
2.34.1

