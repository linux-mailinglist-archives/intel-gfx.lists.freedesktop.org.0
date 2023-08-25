Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACCA7881E1
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 10:16:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 243F210E62A;
	Fri, 25 Aug 2023 08:16:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4962A10E62A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Aug 2023 08:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692951415; x=1724487415;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TohHXndzjX0kDwkNUbQsVTxwU3V0jKGn/Z/48ux/WM0=;
 b=g/p1hZWiACcxTr6inY4dlewd0FmCRbAzB1e1KPsv7ekU62DZQXiiXzHx
 z9MAfVd9GDYaNh/Z0+tp0xUKXePpDNNmoofW1CDhmiGWQ4AMvii9E+VY/
 Tnn9jZ7IUD6zUZm7/iFmrPRWuNZgfyJSXVLV4DAXJ57/5vMw3RISREAXH
 Pwvml7SzSIiuoYBD+9pVcE9NLMDx3pJJygmFv+iG3NXr4DopreayyPf5K
 zNwyUA6aJLEEBVomuO1Qbw467t7SJesN/SYe4pKJMm3Ds7gEKYPfemg39
 yjgE31h8yfXPi5DuLY+O2thGJ2OXMLvB4P2YgaQU51nMCjyqtDgFl8X2Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="364859065"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="364859065"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="881107695"
Received: from teclark-mobl2.amr.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.251.213.100])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2023 01:16:58 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 25 Aug 2023 11:16:36 +0300
Message-Id: <20230825081638.275795-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230825081638.275795-1-luciano.coelho@intel.com>
References: <20230825081638.275795-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 2/4] drm/i915/tc: make
 intel_tc_port_get_lane_mask() static
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

This function is only used locally, so make it static and remove the
definition from the header file.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 2 +-
 drivers/gpu/drm/i915/display/intel_tc.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 71bbc2b16a0e..de848b329f4b 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -260,7 +260,7 @@ assert_tc_port_power_enabled(struct intel_tc_port *tc)
 		    !intel_display_power_is_enabled(i915, tc_port_power_domain(tc)));
 }
 
-u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
+static u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 3b16491925fa..ffc0e2a74e43 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -19,7 +19,6 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_connected(struct intel_encoder *encoder);
 bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
-u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
 int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
-- 
2.39.2

