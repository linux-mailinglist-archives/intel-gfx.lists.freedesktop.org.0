Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3F8896E11
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:23:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EC8112A11;
	Wed,  3 Apr 2024 11:23:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m3MUrSYI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F678112A0A;
 Wed,  3 Apr 2024 11:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712143387; x=1743679387;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZpNhdF8hP0Do7nHVqLGF8VqIUEPkpt0sLzH8f7HJXng=;
 b=m3MUrSYIrQu1O315Xe0OkP4xwia+xyoezu0h3sj0QGvGMNGBNmqYrJjB
 wm8sPiZiP417mP2qAQ3d7GIhy7YCNnViSK1/456rF7/tYy2CnQzxWX89a
 XOkf1bux3EtM+XXac19MxUeNveNFXpDUXoM4P/Y0bCuP9f9OgsIMzoJOm
 5dF/z7ahenL6RPOzd0GConEXtWJbT4dcAgZE7rFUy59V6rzGwCRvKKpkE
 4j/EN4ZtN9n3evHjb37dDf4zkH3xZvm+VndJJPj6L1DFl0QDadtL29HLJ
 ITkTRb+PSbZyYIuvwWEGtGQs7VJyFfmtsy91NLFUmT3bpA6vvBaSRas3W g==;
X-CSE-ConnectionGUID: MvjzNikJQLyWUfEO8KdjBQ==
X-CSE-MsgGUID: gNeSoQzeQVCndGm0vYP7QQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="24824070"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24824070"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:07 -0700
X-CSE-ConnectionGUID: vzNaJ0wPSuS9dDU3Vc4OPw==
X-CSE-MsgGUID: SlFY3NZzT7umLz7gVQ6lkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18358515"
Received: from bvivekan-desk.iind.intel.com ([10.190.238.63])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:23:05 -0700
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: [PATCH v2 09/25] drm/i915/xe2hpd: Properly disable power in port A
Date: Wed,  3 Apr 2024 16:52:37 +0530
Message-Id: <20240403112253.1432390-10-balasubramani.vivekanandan@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: José Roberto de Souza <jose.souza@intel.com>

Xe2_HPD has a different value to power down port A.

BSpec: 65450
CC: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 13a2e3db2812..caaae5d3758e 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -2921,17 +2921,28 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
 		intel_cx0pll_enable(encoder, crtc_state);
 }
 
+static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	if (intel_encoder_is_c10phy(encoder))
+		return CX0_P2PG_STATE_DISABLE;
+
+	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
+		return CX0_P2PG_STATE_DISABLE;
+
+	return CX0_P4PG_STATE_DISABLE;
+}
+
 static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum phy phy = intel_encoder_to_phy(encoder);
-	bool is_c10 = intel_encoder_is_c10phy(encoder);
 	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
-					    is_c10 ? CX0_P2PG_STATE_DISABLE :
-					    CX0_P4PG_STATE_DISABLE);
+					    cx0_power_control_disable_val(encoder));
 
 	/*
 	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
-- 
2.25.1

