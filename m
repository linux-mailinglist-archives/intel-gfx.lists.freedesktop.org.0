Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4639575C590
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 13:11:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AFEC10E660;
	Fri, 21 Jul 2023 11:11:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE0D10E65A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jul 2023 11:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689937896; x=1721473896;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pIFSw4TSILi2lVvIfb1gIhmw73bQAAHd/vIpe9HM1Zs=;
 b=PVn+4kcSfzbLX7P0C6/oDBeEnP6HwmIB06EZ4XOcdG1rCkaEQQ3h6pbF
 1txiSODs8g4lehYhpSLyXgTHWkx5+B7/hQ8Ff1lq/AvWEQ78V+/OleQ0x
 AQqrVHv6eThHRr27ZqFEpatMM+GpnIDy9L7qJcf7txY3HgOkjY5/G9574
 2rOUvV8tn9HYJOsM9tKu/+fymH+rqSC8i4xgPoQLXTIiZE2qSII5SABgJ
 Xph+uB27o0RFixvOlMwML9SOblTU7q+IlXrVuJCbP2+O7lnWGNt1bzQTT
 Sc6vQ18tPynJGR/w/HjAT+oJVQRdtGnvd+S3QCvSeENsXBk16tCmhx0n1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="397888662"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="397888662"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="675003987"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="675003987"
Received: from bublath-mobl2.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.57.120])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 04:11:35 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jul 2023 14:11:19 +0300
Message-Id: <20230721111121.369227-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230721111121.369227-1-luciano.coelho@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/4] drm/i915/tc: make
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

