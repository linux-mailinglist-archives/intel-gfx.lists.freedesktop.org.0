Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C17823D7A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4074C10E3C9;
	Thu,  4 Jan 2024 08:30:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8F010E3E3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357011; x=1735893011;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=k6VWC58iRqou2BDjo5IlHcFO1EfcdOVxomhZtzaBPMs=;
 b=BmlwPPM1arUZfYHyRJt21lzT/Hj3dv5UMbgOJf5gkavFGZkL7akbZ2I9
 b/BktA0qgJCOHgLNSNnmhwB60ngWDtS6tvDaSUE9/Hi3vSPvb4D0zkOS9
 pGxFegOj6vc6n8kCHdQX4yKdoHs/WAIcqcF0h4Gehnkuak0ukta1NudcS
 jMQE8DlKYwIBP6RPDtqbVzSFL1EdKuYXhjbwbmP52aXscnlZZP0RJyQEo
 DC+I+Pf+MpO03WFDqjVhXsRR3qT5y1A64b9/nRqGl87wX5YbFGAKHCCHC
 vyZhZ7d5pA43XflR3Um5AyS7EG5qJUSAzy4bZRPJiogyaiHl63cgFB1/E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624631"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624631"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422712"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422712"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:10 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/12] drm/i915/dp: Abort AUX on disconnected native DP ports
Date: Thu,  4 Jan 2024 10:30:08 +0200
Message-Id: <20240104083008.2715733-13-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
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

An AUX transfer on any disconnected DP port results in long
timeout/retry delays the same way as this is described for TypeC port in

commit a972cd3f0eb5 ("drm/i915/tc: Abort DP AUX transfer on a disconnected TC port")

Prevent the delay on non-TypeC ports as well by aborting the transfer if
the port is disconnected. For eDP keep the current behavior as the
support for HPD signaling is optional for it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index b36ef321e835e..4f4a0e3b31140 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -231,8 +231,6 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
-	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
-	bool is_tc_port = intel_phy_is_tc(i915, phy);
 	i915_reg_t ch_ctl, ch_data[5];
 	u32 aux_clock_divider;
 	enum intel_display_power_domain aux_domain;
@@ -252,9 +250,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	 * Abort transfers on a disconnected port as required by
 	 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
 	 * timeouts that would otherwise happen.
-	 * TODO: abort the transfer on non-TC ports as well.
 	 */
-	if (is_tc_port &&
+	if (!intel_dp_is_edp(intel_dp) &&
 	    !intel_digital_port_connected_locked(&dig_port->base)) {
 		ret = -ENXIO;
 		goto out_unlock;
-- 
2.39.2

