Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C90616A62
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 18:16:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7633710E534;
	Wed,  2 Nov 2022 17:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C27310E534
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 17:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667409342; x=1698945342;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=aR8q0Tet5UqKZV39zat2KJvhRhqQjOqKFnie7PwSmVg=;
 b=dqMY4xfE4U9lhlBM3W+EZqPOP4c3km17M70npSgS1IijEiIDWOr3uC4o
 nhgAxG5WVcnn0Q5/QlkDHfIVvkB936b6ccCXu+YtysWzbVArPBZmAmg8P
 YMPQ1DXRtM2HeJrKJ/802ZG2KTJt3F6546+oRsPPUNUpVmVZIKhzzCoKB
 zGmHDUyBQArJ6Rh46hWsjZYaEvhTcUzv08xMoALazfROwytFmDUcvKjtH
 +6cL/+RSmpPav5BHYTmIt3uj0/zqV1PncsaDMY9kcSX9kmQrHI3eu+Muj
 eWwn2iP9qxJexAAFwjd/g77L2vFlo892sstnCrHV9AGeqmO+7CPbWZcbj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="296918924"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="296918924"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="636857864"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="636857864"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 10:15:40 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 19:15:30 +0200
Message-Id: <20221102171530.3261282-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221102171530.3261282-1-imre.deak@intel.com>
References: <20221102171530.3261282-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/mtl+: Don't enable the AUX_IO
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

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 7453772d2073d..8be52ff06e999 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -867,8 +867,9 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 */
 	if (intel_dp_is_edp(&dig_port->dp))
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

