Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7380075C592
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 13:11:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E494410E655;
	Fri, 21 Jul 2023 11:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C350110E657
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 11:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689937896; x=1721473896;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7yO0ZH9ko79zSUXm5EJeIYDvYnug82O2UqmGiBD86Ok=;
 b=KrKEtn9zKPfRQuk3vrc1tkznLpbF/bGcTQwUX+WZcpic1TeKFHl9mVKH
 Gqrp1H23TFXK38QzGKa9VqzHfIsV4pfN0uQl+WLCd7JKg57WhOk7cAamf
 opNFBFlVbQVuEmTwu52K7ZKCHFfZEZw3K2OeKaYxc0o8xt5EoEeIfwT1K
 vOEf2o8UA9Jx8dyy9d6bokn7l2Cv4HXm8Unq7f0jMrmeJZouG6a3mxYth
 NoplKDxKUZxFH6aXq7OdtDpBXpdyJ6n2k1mLpzvHI6Zc24Q0YQ2TYrO6n
 bfCv8HnEnYkOQ7NgQtnfnnd/tEnG/0ruh+iOgbObSU9SnQO392sajY4RX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397888658"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="397888658"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="675003982"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="675003982"
Received: from bublath-mobl2.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.57.120])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:33 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jul 2023 14:11:18 +0300
Message-Id: <20230721111121.369227-2-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230721111121.369227-1-luciano.coelho@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
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

This function doesn't really return the pin assignment mask, but the
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

