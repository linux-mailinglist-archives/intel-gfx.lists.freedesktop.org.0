Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D65007881E2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B665810E62C;
	Fri, 25 Aug 2023 08:16:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F7F10E627
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692951413; x=1724487413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S96e+V13AVN2JRyX6rzJ0Hb44HtMAWJpCgScOiQ+YyA=;
 b=BBGQ8RixfrZFTX42dy4rV8SW94c6wut+6EQBXAUetCwfn94B+tVWblCv
 sUxE4NPqJvCznCPJIhw3HKphQqtlMxzAYrARGShMa9+sDgK0+mkw084kz
 JZcsWgdEdniSJjl4QMQGcQwfB8DKoEIr3NsPgrwkn4uwE8fi4gQcHPKRz
 czOxXhQOjCm/Z6iErUYsMSduu/ywlYglYE/9Sd4KfcI8Z1Igu+1V1mvFE
 fJgyfAf2D3xXn3ZWOLrEpm3DS1ywoo3lXv0WVRlN+hQTckx0uUgDyeefE
 TbZoCQlAASWVjEQrsesNc6xpQ7G8rKnNlcy+anvhK1t6eezK/Ad512KNX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364859060"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364859060"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881107687"
Received: from teclark-mobl2.amr.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.213.100])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:57 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 11:16:35 +0300
Message-Id: <20230825081638.275795-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825081638.275795-1-luciano.coelho@intel.com>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 1/4] drm/i915/tc: rename
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
Cc: suraj.kandpal@linux.intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This function doesn't really return the pin assignment mask, but the
max lane count derived from that.  So rename the function to
mtl_tc_port_get_max_lane_count() to better reflect what it really does.

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
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

