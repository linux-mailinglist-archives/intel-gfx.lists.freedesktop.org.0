Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E40BAFAB4
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39DE610E6AC;
	Wed,  1 Oct 2025 08:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nzuSDS9z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91C6110E6AB;
 Wed,  1 Oct 2025 08:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307921; x=1790843921;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R8zSKvdc3lsP0yVd+nHFY1fPsj/ijla6fslOr1mmb/M=;
 b=nzuSDS9zrT28IoJVY2dGymENNLn1pWUy4n5djVwHyx4iJR7e+mZcaGbY
 sRVwX/8UuCKg6gyoQJEn18PUPPWH6frF9uKWe746KujyPfeUzr1QoigDW
 0BFsEnaKp5NwilKrob9qLg1MEee6XYPSiYK/O78vPR9BeSH2HWbML1mdr
 41ST0MSlm+0SfqJDL/EgSIqBKA8uPVRgutWTS6/UIASDTXpwI8qO8PS5a
 AkaYpSrCvU+9uag2g+IC0XpsoNve4cTEWF0wqF/rl6+Tc7ZHprXK/+C3F
 jxwYrBUNd7CgC0nfcPK4qigQH/BNbwCP/JZI6tdf2W6N9Y4QYWl0Arqtx w==;
X-CSE-ConnectionGUID: gwH9j8DbTZSo51+kuczfpw==
X-CSE-MsgGUID: Q20GeEsRS3WfW5lMmP60bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742687"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742687"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:41 -0700
X-CSE-ConnectionGUID: xpFA52kERbeazC5MnNLFCA==
X-CSE-MsgGUID: 5WIoCeQTTsSb+zTp/b8Hfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142511"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:39 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 04/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/IS_HDMI_FRL flag macro
Date: Wed,  1 Oct 2025 11:28:04 +0300
Message-Id: <20251001082839.2585559-5-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001082839.2585559-1-mika.kahola@intel.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
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

Define PHY_C20_IS_HDMI_FRL, so it can be used instead of the plain bit
number.

Signed-off-by: Imre Deak <imre.deak@intel.com>
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

