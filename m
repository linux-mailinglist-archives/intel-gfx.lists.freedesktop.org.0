Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F235FEE25
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 14:52:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24A1010EAE2;
	Fri, 14 Oct 2022 12:52:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD2C10EADE
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 12:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665751932; x=1697287932;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uFdmqQoayoaWW2upwG8en7ldmqHubq5I04jOAD4U6Go=;
 b=J0R2FjWLN+JfO0K1GnC3dAvH57pricYJdz6QcgiGphvBCqqq1+XBqRjx
 IAIvPaTJAnsarjwK7hvZi1GvAkoBXdFCYDnSzKvGxoWWxW4iWjSicRh6K
 uwJWXBUBa9oZA6ndLgholS/qLa5iCyTLJKV6WhCZseRvIzwcTtY4XVKHi
 auJPpZtMMrH5pgjZXKrNQsVpq5qN72gUnG2nHV1en29chzY/QilzIazme
 qjy+PyKKsiIwwc7dXjiO4GIYIxq2lxtJ1r7GzaMAC7liGEuEGBQh69GGG
 /tvjs5tpJmzPA7Mc3UGGra2SFuMCw4eIvKMGfwJRamHH4YpwrTSuB+R+f A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="304104668"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="304104668"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 05:52:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="716739796"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="716739796"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Oct 2022 05:52:11 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 Oct 2022 15:47:33 +0300
Message-Id: <20221014124740.774835-14-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221014124740.774835-1-mika.kahola@intel.com>
References: <20221014124740.774835-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 13/20] drm/i915/mtl: For DP2.0 10G and 20G rates
 use MPLLA
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

Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index aab606520a62..9ce55b0c1cdc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -1728,8 +1728,12 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		if (intel_dp_is_edp(intel_dp) && !intel_panel_use_ssc(i915))
 			ssc_enabled = false;
 
-		/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
-		val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		/* DP2.0 10G and 20G rates enable MPLLA*/
+		if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000) {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+		} else {
+			val |= ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+		}
 	}
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
-- 
2.34.1

