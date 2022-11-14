Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5646627DA6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Nov 2022 13:23:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3263C10E123;
	Mon, 14 Nov 2022 12:23:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 427FE10E0BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Nov 2022 12:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668428595; x=1699964595;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qfGFBuFx9CIP3nZ2SexW64DRBtWBQyKEo9+VumpqcKk=;
 b=W5uuK7KaB6bTyJpzx5TC6wWkfRNcpSMJ70Oqmw9b5b9isSs/ewcXyOhq
 VliBoS4iHI9bhx6owqZd3E1WVeS/SOrAoAUTsDCIjHdw42zoDGf+H5aoV
 VwkEBQWS2BoxfkTH1kM0d5xs8O/odgTWSezosbWASs6bzHdy1/DtSklUf
 TCK8mtbIEkMkL7x8VHuef31Xww0D3NqYnTlpqNUshm8UP1+QSMMjqMeYm
 qxElx2MtYJTBEyzbWmO3IVsHdeArjH+TQ2sII+h7RZwTzjg9RG/zMilQ5
 +zrUwJC2ZBRr1ujkI/dv1W6vVyejZzhmPQgk+pmI9TuhShmGRWzaCxzre Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="310664145"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="310664145"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:06 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10530"; a="671539884"
X-IronPort-AV: E=Sophos;i="5.96,161,1665471600"; d="scan'208";a="671539884"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 04:23:05 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 14 Nov 2022 14:22:51 +0200
Message-Id: <20221114122251.21327-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221114122251.21327-1-imre.deak@intel.com>
References: <20221114122251.21327-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 9/9] drm/i915/mtl+: Don't enable the AUX_IO
 power for non-eDP port main links
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

MTL+ requires the AUX_IO power for the main link only on eDP, so don't
enable it in other cases.

v2:
- Rebased on checking intel_encoder_can_psr() instead of crtc->has_psr.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0231b273e1673..9bf303e166e1a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -868,8 +868,9 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 */
 	if (intel_encoder_can_psr(&dig_port->base))
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (intel_crtc_has_dp_encoder(crtc_state) ||
-		 intel_phy_is_tc(i915, phy))
+	else if (DISPLAY_VER(i915) < 14 &&
+		 (intel_crtc_has_dp_encoder(crtc_state) ||
+		  intel_phy_is_tc(i915, phy)))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
-- 
2.37.1

