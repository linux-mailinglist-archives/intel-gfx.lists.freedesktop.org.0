Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 986817596CA
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:29:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58CC410E4A9;
	Wed, 19 Jul 2023 13:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B5A10E100
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 13:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689773337; x=1721309337;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pIFSw4TSILi2lVvIfb1gIhmw73bQAAHd/vIpe9HM1Zs=;
 b=Ro/jw1Xb3l+vi6681dLcIJNum4LLF1kJbOKLjzO3LCYDukSuibMRbFqO
 I8QRCkgGKg0X8JJYpZSre54E8R8Pjd6ij375lG3qmUT1yQFZGznwyY3jt
 wg3Z0eLHCI2FI7A2nOdXtBeVrvj4rvVCSRpP0BQYfibHx/k0/K3BSPgp3
 mCeTsKdXgvDnZs2R61zUJn0nSdrHCZZOqROlHl1Hg/FNxVckm7Db6o+dC
 pycKFEmldbTjEzYBpJISQ6Kv/xwWkq49XgMsOKz9A3x1zlx2rxkB7jBDE
 JvDK10zUhgnykOtEeQAIlmY40WQoSzohph8ry9rLh9ZrC282FV0idGMmn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363921987"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363921987"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="717978538"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="717978538"
Received: from tscherue-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.56.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:34 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:28:20 +0300
Message-Id: <20230719132822.305612-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230719132822.305612-1-luciano.coelho@intel.com>
References: <20230719132822.305612-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/tc: make
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This function is only used locally, so make it static and remove the
definition from the header file.

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

