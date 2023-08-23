Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E0C785E1B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 19:09:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA8610E484;
	Wed, 23 Aug 2023 17:09:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB3C10E0CF;
 Wed, 23 Aug 2023 17:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692810556; x=1724346556;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CCtIqmq8XfbJkRAHV2ZW22zNg25Sd2NJJ0O3iABXhHk=;
 b=V4m9WhhjwgVrlxWuOX14NwkpttK5zJojZ9D6vSILKbsWylSqY+lnYPAD
 GqFwuB/EKBP+g89Nn9kHCH/rUtQQVqJqm/J+dKSZu0ml+mZAkylrw9/mB
 1TBHcnoRoqJp348hD5I9I7ycgI7K4WGCxSN3w2Wb5m8ViABIvRUGtUpQ+
 2E5s/L/a3TEQEWW88EsPWf3ieUA99brxv1fs9SGjmwAziExwED/7bgVWP
 bj8ZHS8u+jLeAV9Oj2YCZ8kacNGHm/yB3iahW6upGIgoUgYlGxLoX6D0E
 y5TKilGQHTm+aQMZCflz1a2P2iKdEWCGtFGljoEU6l5B4dldUwxivgLP2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438147467"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438147467"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="802204777"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="802204777"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 10:09:15 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 23 Aug 2023 10:07:05 -0700
Message-Id: <20230823170740.1180212-8-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230823170740.1180212-1-lucas.demarchi@intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/42] drm/i915/tc: rename
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Luca Coelho <luciano.coelho@intel.com>

This function doesn't really return the pin assignment mask, but the
max lane count derived from that.  So rename the function to
mtl_tc_port_get_max_lane_count() to better reflect what it really does.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Link: https://lore.kernel.org/r/20230721111121.369227-2-luciano.coelho@intel.com
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
2.40.1

