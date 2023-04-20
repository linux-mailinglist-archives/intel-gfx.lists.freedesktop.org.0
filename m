Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E41A56E94EE
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 14:46:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D6A510EC2B;
	Thu, 20 Apr 2023 12:46:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDCC710EC23
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 12:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681994762; x=1713530762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B9jWWAK2HNKQJWURmtJ0VY8gi4GWqbIjiaAs/pHYOpo=;
 b=PGNVgjxmHQuoxtPSYxAMdCR/TWYJZqa00B7AnftCYNn3/fDhstwyQpVY
 5ZS0TAOBpdoUOjbrp3ZA8lhkPpBnJTP6z4BEWQ0rrvOJgB8TkAOUtBrDx
 pkHDbyAoPGtrb8EmQCex/ibuHbsZYHvyH5RsLp4kXnPiNxFmyhXhTe4Jz
 Zyls+q3v6Tvtdmb73fovRBI+veHWn0c79cAjjYELEjdn8//ccFQdUqqZS
 NWG+hBt+M67FIoWPx5qvVjnKgCvE+YZJTFZAynbpSizAPGkMRGZP2Jff9
 GOZvJ0RdMXO71xzrVTKNBtGFZ6zIWzbWSV/+bxgLrmH4qZjWoIfTgLai/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="326051910"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="326051910"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 05:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="761146024"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="761146024"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga004.fm.intel.com with ESMTP; 20 Apr 2023 05:46:01 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Apr 2023 15:40:43 +0300
Message-Id: <20230420124050.3617608-7-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230420124050.3617608-1-mika.kahola@intel.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G rates
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
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index f7720acaf58c..4231ba98f075 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2340,8 +2340,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
 
 	/* TODO: HDMI FRL */
-	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
-	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
+	/* DP2.0 10G and 20G rates enable MPLLA*/
+	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)
+		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
+	else
+		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
 
 	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
 		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
-- 
2.34.1

