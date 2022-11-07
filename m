Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE6C61FB2C
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A092C10E4F8;
	Mon,  7 Nov 2022 17:23:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC2B510E4FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841792; x=1699377792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I0F58arc9Moznx2+nKFhP8U7S4ViWjUChophuOIi/VA=;
 b=J4zMoQarsW6GpOl36oKTqy7MioaKzLLmz5itA/mi0cXVtmS9hrMAh++K
 eBuw7NLHJ8jatjXSS6qFTCEysGotNoZZqiHcMb5Rj8TOZPdQf2Gg92ihC
 3LB1V1XSySO0jSmdYBx4TmUCS9YpaywYfV6S7zqC5vk/+ajydE7V+IqeD
 vIJRG0ciTZ7UfMcqXLLV66jLROd/2Akm0/KEjt42VGsDSbpJIpnbhHS2a
 O3Ywki2DPfJHIvWFcLRJS+IuECOq4g9UkgZX+2J8nd8sX6sKCmgYAZ4rD
 A1q85D/eTLXPClrXtadVlizGHGIXqVYKwd2Ms98j0HGTcpek0NF2FPxCV A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247259"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247259"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248522"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248522"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:31 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:16 +0200
Message-Id: <20221107170917.3566758-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 8/9] drm/i915: Don't enable the AUX_IO power
 for combo-PHY external DP port main links
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

Combo PHY ports require the AUX_IO power only for eDP/PSR, so don't
enable it otherwise on these ports. So far the external DP and eDP case
was handled the same way due to unclarity when AUX_IO for the main link
is needed. However Bspec is clear in which cases it's required:

- eDP/PSR on all ports and platforms (presumably due to HW/FW initiated
  PSR transactions that won't enable AUX_IO)
  Bspec: 4301, 49296
- TypeC PHY ports on platforms before MTL in all TypeC modes (TBT,
  DP-alt, legacy) and for both HDMI and DP. The next patch will take
  into account the pre-MTL platform dependency.
  Bspec: 22243, 53339, 21750, 49190, 49191, 55424, 65448, 65750, 49294,
         55480, 65380

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b1f9bb45d90a2..b36c34f9adbee 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -867,8 +867,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 */
 	if (crtc_state->has_psr)
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (intel_crtc_has_dp_encoder(crtc_state) ||
-		 intel_phy_is_tc(i915, phy))
+	else if (intel_phy_is_tc(i915, phy))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
-- 
2.37.1

