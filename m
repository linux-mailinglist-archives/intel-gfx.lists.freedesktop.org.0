Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D22861FB2E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DEA10E508;
	Mon,  7 Nov 2022 17:23:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C007510E4F8
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841797; x=1699377797;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kEvIrSsjuvkQO+3iI9WoV0acx1BB7BCehj6vlqB25Oo=;
 b=jeW5XxsB12vOo2eV9nf3Jm/rS717kHh+J3R6lL99herUKvITweYHeeYF
 04Yz4KEea9QYsBxNcyMLILKyQI0VnZJBiOfsEnFG9kW0cnvVllxm1uYc9
 fA5rlOks4ky71d1h8i+JFhZ6KlKm5KXfboJSMwOubIbnSx2dJ9jh/G5lX
 eW5mUZp9EsLwJ4MYth1T0ktYYfWSNU1HRHB8UOhVJqrOT3N/FE9ZUGQnJ
 pkDJyUEKpSzpngXCZsauAqCqHC85kKJzjNEkdiV2QFWS34SXz4PPhBfTo
 Jh/ICoUMFa/UinpB5gg9qTpukwMaj18a1dD+OZUhlG1TZyk9AahQUFIwn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247291"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247291"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248548"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248548"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:33 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:17 +0200
Message-Id: <20221107170917.3566758-10-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/mtl+: Don't enable the AUX_IO
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

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b36c34f9adbee..73f06e870323d 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -867,7 +867,7 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 */
 	if (crtc_state->has_psr)
 		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
-	else if (intel_phy_is_tc(i915, phy))
+	else if (DISPLAY_VER(i915) < 14 && intel_phy_is_tc(i915, phy))
 		return intel_aux_power_domain(dig_port);
 	else
 		return POWER_DOMAIN_INVALID;
-- 
2.37.1

