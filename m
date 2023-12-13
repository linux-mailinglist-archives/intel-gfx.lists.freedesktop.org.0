Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1F381212A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 23:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0A610E824;
	Wed, 13 Dec 2023 22:05:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39AEE10E824
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 22:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702505122; x=1734041122;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3FjPuBvQcnlUhswtI0zCg3/8Y3XiZ6fIml+SlajsoNo=;
 b=RejtJsfa954X9cjCY8pmwzJPGQIW+A/H2zWQFq3ea8a2mIYfh/IWpdMY
 PPd3L0F6L2a6ew0bveSK+EB19043Ln8olI1QcYsWoGwNIkbvb6lfdlWXj
 ftK9RVIhL6UO4fnXbp/LNxwevvkxC1uTnWqPcEC0SoW99JByzYtVT4T+k
 cEtpI5E1kotPqRHqU4KcO49Hix0BUVj3We3fLSZFVy2aCKUW+1L0ZLTXX
 PQ+kJvzQjVZVT+if/VMlPyPJekuXkf+xRjj7T7e2TV/gFWcPWsoijpbUe
 P5p+cWHtYvin4/jTkYx/y/1zIwy0sFrIPL+s1VWNA/yCwRxi/KQk4F0K9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="2177979"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; 
   d="scan'208";a="2177979"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 14:05:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="808325104"
X-IronPort-AV: E=Sophos;i="6.04,274,1695711600"; d="scan'208";a="808325104"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 14:05:20 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] drm/i915/mtl: Fix HDMI/DP PLL clock selection
Date: Thu, 14 Dec 2023 00:05:26 +0200
Message-Id: <20231213220526.1828827-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
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

Select the HDMI specific PLL clock only for HDMI outputs.

Fixes: 62618c7f117e ("drm/i915/mtl: C20 PLL programming")
Cc: Mika Kahola <mika.kahola@intel.com>
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 4e6ea71ff6294..884a1da360893 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2468,7 +2468,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 
 	val |= XELPDP_FORWARD_CLOCK_UNGATE;
 
-	if (is_hdmi_frl(crtc_state->port_clock))
+	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
+	    is_hdmi_frl(crtc_state->port_clock))
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
 	else
 		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
-- 
2.39.2

