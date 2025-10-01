Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02745BAFABA
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6278E10E6B9;
	Wed,  1 Oct 2025 08:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VK0VhZho";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79AC10E6AB;
 Wed,  1 Oct 2025 08:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759307923; x=1790843923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uIVv+rnUiBIZZ4jxHgE4l1dUMsW7Z0ecbcPBlH1BaIU=;
 b=VK0VhZho2T8omzt2eiU+kre+vUMNQBQMwDbUgAfkEC2jMOjknRkxQozt
 87BoqbT2g73C5+0HgHB2jieocrrgobvUc0PKfh7LNPUROVQ7BDzg6vmoE
 sGB5yaBkMZ6EbcwfFsrHACQKVq8GjZ84JObVGUp+uz/1dk1H07G71mNO/
 TBf05ILk41Ffawf0+7s5PQIfsQZ3pBqyU3/2v+6Ica0YT+UYB6euzkfZB
 oe5xWsO6vYHNjs0v5zU3zAQHalOZECrj++JeGV1raUhDXmdypbfiqG7u1
 lxRLNfwoky8rjrdgiNsmlLDYCxlx2UFbtkGBw7fQ6z0l9k5SiUWJIp3gM g==;
X-CSE-ConnectionGUID: +oe+JGsyRDGT0LAPWKKrvg==
X-CSE-MsgGUID: GELjLXDSSZakpgyUx+fd/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61742695"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61742695"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:38:43 -0700
X-CSE-ConnectionGUID: S1rd6bD0Ri+WhZ9X5DQhrw==
X-CSE-MsgGUID: ksXJo2WDTIq+QGksgL7Uyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179142519"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa008.fm.intel.com with ESMTP; 01 Oct 2025 01:38:41 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: [RFC PATCH 06/39] drm/i915/display: Fix PHY_C20_VDR_HDMI_RATE
 programming
Date: Wed,  1 Oct 2025 11:28:06 +0300
Message-Id: <20251001082839.2585559-7-mika.kahola@intel.com>
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

The PHY_C20_VDR_HDMI_RATE registers 7:2 bits are reserved and they are
not specified as a must-be-zero field. Accordingly this reserved field
shouldn't be zeroed; to ensure that use an RMW to update the
PHY_C20_HDMI_RATE field (which is bits 1:0 of the register).

Signed-off-by: Imre Deak <imre.deak@intel.com>
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

