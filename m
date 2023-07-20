Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 153A075AA65
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 11:14:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 642EC10E58A;
	Thu, 20 Jul 2023 09:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C32A10E585
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jul 2023 09:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689844467; x=1721380467;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QQYa/emuFRBplcZY9dlyRTu4MbC/n7mK/d6srP/zBpY=;
 b=V91+O5GJaFpFJQ4kR9ZeGuXyGfrLCJ1iW+Twa4KKSf0KTASlGSFtOyVj
 GwoOnuixj1VpeFjcXMMoQobLr4OoLyDsUyQk8MDmYmwHpNwJWLeqbIFWb
 u13UOzUuPYFt8Z6yStLbec13ey6SYKvKsXdF54Y1ckP+TZfLI0TXCFcAx
 Gbzn9BPIt6RT2lF06/8sod4NB2mLwFH+D6Asq/Uijp+UUBt0Klx75RsS+
 +EyrRe0qoNhz1X+a6EBVuuxjHP72X6lCdGhzFOT1QHFLWbnol6LTy6HAL
 pWP5mkILC8Gn28KclR/yUYH3cuZ03Hxd2ImZJEx4uCmjvjzEQJmT0DBJ/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="364140595"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="364140595"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="970981905"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="970981905"
Received: from ssauty-mobl1.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.56.229])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 02:14:26 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jul 2023 12:14:08 +0300
Message-Id: <20230720091411.347654-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230720091411.347654-1-luciano.coelho@intel.com>
References: <20230720091411.347654-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915/tc: rename
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

