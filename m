Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B317EBD26D7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 12:02:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD5210E432;
	Mon, 13 Oct 2025 10:02:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FSju/yvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88ACC10E423;
 Mon, 13 Oct 2025 10:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760349708; x=1791885708;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C/XfXhYNCqBN1z+Ka7JlocH5YHtROnaoAzNuM6p13vU=;
 b=FSju/yvuQ0FucdbH7rZpPWAOuMLUptH+we7H2oEQUThIiVH9MdZ2h+IN
 ruv1gPOpVw1cRPtE/+hnJnVQeVLb5Jc+xpbuf/3NFoZDTqHhShHj6GvL3
 YXm++U8rxjUelRpD7+Klw8fjZcBlCHWXobtZbmMq8xeAGEAgGiB7yNpdl
 6bovBuadiGQuxxvX5uPtf02k126mZ5Qyig0q0F4Dl1CgQiz6jGX5gGjng
 DI54MTC6NuB3DP/JgoYobvdcz123Cmcyb/G8brdUHhHu9Mk74vLW1A2VD
 elS5vsua/ijMOAMch94LA1GXjkKDL3xoq9y+iGlRCwBsysQ3rj85FbT01 g==;
X-CSE-ConnectionGUID: jjQQtihFSLGCBMd4Znb0ZA==
X-CSE-MsgGUID: OCNk/uNUQcOGxiWdeRKnVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="80126203"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="80126203"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 03:01:48 -0700
X-CSE-ConnectionGUID: sGlzKOs2Shi/WRPIFiXT5A==
X-CSE-MsgGUID: E/IV8SGzQmynswF43Na/6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="212187011"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by orviesa002.jf.intel.com with ESMTP; 13 Oct 2025 03:01:36 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>,
	Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 6/7] drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE programming
Date: Mon, 13 Oct 2025 12:50:44 +0300
Message-Id: <20251013095045.3658871-7-mika.kahola@intel.com>
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

The PHY_C20_VDR_HDMI_RATE registers 7:2 bits are reserved and they are
not specified as a must-be-zero field. Accordingly this reserved field
shouldn't be zeroed; to ensure that use an RMW to update the
PHY_C20_HDMI_RATE field (which is bits 1:0 of the register).

Signed-off-by: Imre Deak <imre.deak@intel.com>
Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 7 ++++---
 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 ++
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e49659d2f17..f8c1338f9053 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2714,9 +2714,10 @@ static void intel_c20_pll_program(struct intel_display *display,
 		      MB_WRITE_COMMITTED);
 
 	if (!is_dp)
-		intel_cx0_write(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
-				intel_c20_get_hdmi_rate(port_clock),
-				MB_WRITE_COMMITTED);
+		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
+			      PHY_C20_HDMI_RATE_MASK,
+			      intel_c20_get_hdmi_rate(port_clock),
+			      MB_WRITE_COMMITTED);
 
 	/*
 	 * 7. Write Vendor specific registers to toggle context setting to load
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
index 0743a3e2d15f..86e2e1c7babf 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
@@ -304,6 +304,8 @@
 #define   PHY_C20_DP_RATE(val)		REG_FIELD_PREP8(PHY_C20_DP_RATE_MASK, val)
 #define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
 #define PHY_C20_VDR_HDMI_RATE		0xD01
+#define   PHY_C20_HDMI_RATE_MASK	REG_GENMASK8(1, 0)
+#define   PHY_C20_HDMI_RATE(val)	REG_FIELD_PREP8(PHY_C20_HDMI_RATE_MASK, val)
 #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
 #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
 #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
-- 
2.34.1

