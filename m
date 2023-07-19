Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C17596C9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 15:29:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0820C10E4A8;
	Wed, 19 Jul 2023 13:29:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C17710E19D
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 13:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689773340; x=1721309340;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=86nMjPpGw3Wm6alXSVJ6yNZjGVUvmegiSqKJdx1I72A=;
 b=iQnakHgLk0QjSrNZMipg8T6nPw1/aHTl6mv1B517ZF+MoH1pmGpgctHw
 LdNaWjJc8j5PvMlbi0RGaA1lDwfMQfIc2jO5F1T4oEjuI7eDdrBFBEy0k
 iWJxfl/5lZ2iec+tss0Los+ZvJ/c1AqXDYONWmWLVEZvTS2hRxEdB/oQh
 jOMPRlEfFoAss5AaINT9a08h0dZS2lVkuW8qCMtTPVYSVS//TLE+mYtxz
 UeYruiErVSAICGTb5sUzV7hSXdStp6vRVYBhyzarhWezRYoCv7CE8V07S
 8yP1pVgl6BO0kyKg+kwilD41l1o64adE04RHSc5s6jitL56UIgPmEOJlx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363922013"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363922013"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="717978544"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="717978544"
Received: from tscherue-mobl1.ger.corp.intel.com (HELO
 hazy.ger.corp.intel.com) ([10.252.56.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:28:37 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:28:22 +0300
Message-Id: <20230719132822.305612-5-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230719132822.305612-1-luciano.coelho@intel.com>
References: <20230719132822.305612-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/tc: remove "fia" from
 intel_tc_port_fia_max_lane_count()
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

It is irrelevant for the caller that the max lane count is being
derived from a FIA register, so having "fia" in the function name is
irrelevant.  Rename the function accordingly.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_tc.h | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 03675620e3ea..b974af839acb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -306,13 +306,13 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
 	int sink_max = intel_dp->max_sink_lane_count;
-	int fia_max = intel_tc_port_fia_max_lane_count(dig_port);
+	int port_max = intel_tc_port_max_lane_count(dig_port);
 	int lttpr_max = drm_dp_lttpr_max_lane_count(intel_dp->lttpr_common_caps);
 
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, fia_max);
+	return min3(source_max, sink_max, port_max);
 }
 
 int intel_dp_max_lane_count(struct intel_dp *intel_dp)
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 11b6139eaf4f..61de3dfb89bd 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -347,7 +347,7 @@ static int intel_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 	}
 }
 
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port)
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
 {
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
@@ -595,7 +595,7 @@ static bool tc_phy_verify_legacy_or_dp_alt_mode(struct intel_tc_port *tc,
 	struct intel_digital_port *dig_port = tc->dig_port;
 	int max_lanes;
 
-	max_lanes = intel_tc_port_fia_max_lane_count(dig_port);
+	max_lanes = intel_tc_port_max_lane_count(dig_port);
 	if (tc->mode == TC_PORT_LEGACY) {
 		drm_WARN_ON(&i915->drm, max_lanes != 4);
 		return true;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index ffc0e2a74e43..80a61e52850e 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -20,7 +20,7 @@ bool intel_tc_port_connected(struct intel_encoder *encoder);
 bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
-int intel_tc_port_fia_max_lane_count(struct intel_digital_port *dig_port);
+int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port);
 void intel_tc_port_set_fia_lane_count(struct intel_digital_port *dig_port,
 				      int required_lanes);
 
-- 
2.39.2

