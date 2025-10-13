Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BD0BD26D4
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF92710E42B;
	Mon, 13 Oct 2025 10:02:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SzhzdK+K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44D5B10E087;
 Mon, 13 Oct 2025 10:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349691; x=1791885691;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=z+v2U22yzfkmOCyzvfLaAa8/zzXqsjnZvlXBwuuwCi4=;
 b=SzhzdK+KJFi+50AEj4rAPNs+BPzk8DqwM01cA8USgsyrIGE8JHE5r6Hp
 N6YVBQZICdHnsAHijMd5+eFcsw9cWB2moI6psNfl3qts26hBMCiYx50Aa
 bJTm36oT9OmlS20JTU0mMtbpj93aZWEy44PDkN6xUqs8Xfeg85g/FVTnK
 6senBRHZ/fk6X8xA9e8q2tRi2AxQfipyQmI53ASIVeih+hFHlxLgdoDAe
 PO6iL3eQ8t9V3Az/bX+PBX7Uv2eeEmexo9bPxKOWNgYXFk9G+/TTePb1J
 gMatJ+rScphZjWIrsqfVyLV1hbELAe+BYd+6WlakhpQ3987EPJrYOiwMR A==;
X-CSE-ConnectionGUID: em5dLZvSTqO19k1hBlWyPg==
X-CSE-MsgGUID: 3Nwlm9v2TN6Ya5lDF6Y3DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126168"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126168"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:31 -0700
X-CSE-ConnectionGUID: qVoVeoywQYa+9G3dzthQdQ==
X-CSE-MsgGUID: 5USlcsCPR+yKIiZC3SMJfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212186996"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:30 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 2/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_DP flag macro
Date: Mon, 13 Oct 2025 12:50:40 +0300
Message-Id: <20251013095045.3658871-3-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251013095045.3658871-1-mika.kahola@intel.com>
References: <20251013095045.3658871-1-mika.kahola@intel.com>
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

From: Imre Deak <imre.deak@intel.com>

Define PHY_C20_IS_DP, so it can be used instead of the plain bit number.

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 0d83145eff41..9492661f1645 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2700,8 +2700,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 	/* 5. For DP or 6. For HDMI */
 	if (is_dp) {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(6) | PHY_C20_DP_RATE_MASK,
-			      BIT(6) | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
+			      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK,
+			      PHY_C20_IS_DP | PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock)),
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 25ab8808e548..ad2f7fb3beae 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -298,6 +298,7 @@
 #define PHY_C20_RD_DATA_L		0xC08
 #define PHY_C20_RD_DATA_H		0xC09
 #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define   PHY_C20_IS_DP			REG_BIT8(6)
 #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
 #define PHY_C20_VDR_HDMI_RATE		0xD01
-- 
2.34.1

