Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAB36A19E5
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 11:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5023910E87E;
	Fri, 24 Feb 2023 10:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFC0510E8A8
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 10:19:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677233989; x=1708769989;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LldG4uwLC1gtztdP4fZujPzr6BsyPS7KFg9T3my5kIs=;
 b=W+Qq9R5qS85dA9LkXTDuG1ZA83zj4crCTqcN1fI3EEuzvzoL0bxGIi82
 ERAr/gUULv9I0GXsI7HbZrF91L4EyQx0HTz4jMEqIfiy+vcURGnaD9ync
 mzx+YTgPja7yqLVzruWRRwBN6IBn3F3K+0PrJ5D8Y3AAc5WFJjdhn6urH
 jzoRx+SEmA6wBbo+jzObDyhOEq14JvtBWu8c/YGM/xZf4t61xDaz1mE+Z
 3/AH9efgRwGX1Zb3xFK7DrBhpNuijG/9KBhusBS33YCozSy8xPnyGM+DJ
 kZ8P8ReZ/Fzi8EWdwcjAo1uWg1JsqSlkWR+NxsTu7KBkUIGt3LACxRnNN A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="332129891"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="332129891"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 02:19:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="672846617"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="672846617"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga002.jf.intel.com with ESMTP; 24 Feb 2023 02:19:29 -0800
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Feb 2023 12:13:48 +0200
Message-Id: <20230224101356.2390838-15-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230224101356.2390838-1-mika.kahola@intel.com>
References: <20230224101356.2390838-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 14/22] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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
index 434ca994be4c..7df32f114042 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2214,8 +2214,12 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
 		if (!intel_panel_use_ssc(i915))
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

