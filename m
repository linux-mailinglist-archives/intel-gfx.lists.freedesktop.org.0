Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C817596C7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:29:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E30D10E15B;
	Wed, 19 Jul 2023 13:28:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38AB10E15B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 13:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689773337; x=1721309337;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QQYa/emuFRBplcZY9dlyRTu4MbC/n7mK/d6srP/zBpY=;
 b=AZoffqk5HwR0CNFfa1unPswlZnDX14N5YndLDdAR6dFzw20oZC/MXRXc
 yFCiRwyT2S6PtMe9BxcUiec9ohHioOQN121hLeGAsv49HZd9Poaw+uaYh
 A3frZ6ph7yaafych/yEo/1wAEhZtKxIP/KiEM1IpcEs5imcNLXrF5uOyP
 8YyRo5/s1eCrDiNzTmJ0G9ojno7omsn366WgjYNdnO3uGBU8vmYeBQrg+
 9wnlkwFkG0jsg2HnnrkLEsWYwb8KFIsdYzltDoz6tVKO1kjhlNK6hNh12
 p/7Pf0u+sLDeKNZrKTa/yTyH9HTePzHXba/4J0VZpSbL1mVofMu5FkYYP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363921977"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363921977"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="717978535"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="717978535"
Received: from tscherue-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.56.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:33 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:28:19 +0300
Message-Id: <20230719132822.305612-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230719132822.305612-1-luciano.coelho@intel.com>
References: <20230719132822.305612-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
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

This function doesn't really return the pin assigment mask, but the
max lane count derived from that.  So rename the function to
mtl_tc_port_get_max_lane_count() to better reflect what it really does.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3ebf41859043..71bbc2b16a0e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -290,7 +290,7 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
 	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
 }
 
-static int mtl_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
+static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	intel_wakeref_t wakeref;
@@ -325,7 +325,7 @@ int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
 	assert_tc_cold_blocked(tc);
 
 	if (DISPLAY_VER(i915) >= 14)
-		return mtl_tc_port_get_pin_assignment_mask(dig_port);
+		return mtl_tc_port_get_max_lane_count(dig_port);
 
 	lane_mask = 0;
 	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-- 
2.39.2

