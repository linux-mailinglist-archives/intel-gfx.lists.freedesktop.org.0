Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C27BDEA24
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 15:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DD8110E7D8;
	Wed, 15 Oct 2025 13:05:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ixp0xjlW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA53010E7D8;
 Wed, 15 Oct 2025 13:05:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760533542; x=1792069542;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oizf4oEXOgm2FOdF4qlqbuDS8abjy5H+MRypiiy5pHQ=;
 b=Ixp0xjlWy2SFkoiuVKc05yxO0gHZfCyMBFlbe4zEWexhjblCXb89LZT5
 ytkQd9iD0atvU5cJtlFWoycB7P5mrLpPeyNcVRcgzI5iAbVIhqT9ak7m8
 53GLPw5tegVkMDzL7+dCHGi2D5qX9ftO046/Gald35cg3J6Ci0vHf9xL5
 9zUFDNMo+wG+Vva9Vprk6X/yi57OwxeQC5NXlIVXk2aLItW/FL0zuXRbV
 6SrfZW8RTbclRqIsKD2Y/XrK6n5jQanohzqG6sCl7sa9nIXFVaaLPjlsR
 FX5cxsH0y7uKRV9p6h0N1199ajn1oqyJxaKnrvC24biMDDOh3KD7TT9MJ Q==;
X-CSE-ConnectionGUID: IKRx6kACSHSkYYOLpSLBrg==
X-CSE-MsgGUID: LrMIK3/lT9GX+BkfKN3hMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="80341307"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="80341307"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 06:05:42 -0700
X-CSE-ConnectionGUID: j2KyeVc0RqiBkfY8IIme0Q==
X-CSE-MsgGUID: D4sJAZI5RwS4q8Vo9/bWKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="186586988"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa005.fm.intel.com with ESMTP; 15 Oct 2025 06:05:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Mika Kahola <mika.kahola@intel.com>
Subject: [CI 4/7] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL flag macro
Date: Wed, 15 Oct 2025 15:54:43 +0300
Message-Id: <20251015125446.3931198-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015125446.3931198-1-mika.kahola@intel.com>
References: <20251015125446.3931198-1-mika.kahola@intel.com>
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

Define PHY_C20_IS_HDMI_FRL, so it can be used instead of the plain bit number.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index a7aee098e7b9..9be7e155a584 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2706,8 +2706,8 @@ static void intel_c20_pll_program(struct intel_display *display,
 			      MB_WRITE_COMMITTED);
 	} else {
 		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
-			      BIT(7) | PHY_C20_DP_RATE_MASK,
-			      is_hdmi_frl(port_clock) ? BIT(7) : 0,
+			      PHY_C20_IS_HDMI_FRL | PHY_C20_DP_RATE_MASK,
+			      is_hdmi_frl(port_clock) ? PHY_C20_IS_HDMI_FRL : 0,
 			      MB_WRITE_COMMITTED);
 
 		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 5bd1e02b5313..0743a3e2d15f 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -298,6 +298,7 @@
 #define PHY_C20_RD_DATA_L		0xC08
 #define PHY_C20_RD_DATA_H		0xC09
 #define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
+#define   PHY_C20_IS_HDMI_FRL		REG_BIT8(7)
 #define   PHY_C20_IS_DP			REG_BIT8(6)
 #define   PHY_C20_DP_RATE_MASK		REG_GENMASK8(4, 1)
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
-- 
2.34.1

