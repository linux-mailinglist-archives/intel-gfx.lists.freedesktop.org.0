Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1EEE6BD105
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6597D10E1DF;
	Thu, 16 Mar 2023 13:40:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EA3410E1DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974021; x=1710510021;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9bxrEkoTLlUig4XlVAYfbhXWpvaxHrLHWohmYT4zaSY=;
 b=Ul/LoUoYNQI2XWAlq29GLbPjqkTRbvchh5IFWXBvqtihSNdYHbO1bWsG
 wIMxzl3nwg9X6XkSmuRFnpeMmTby8XuTbSG1jiO4LG8SOTsfz9C0zrcxl
 L1YnzZFWdOC+pDR1vep+dcW1ESktyO41kxQhZTU65r7V9zL93r5eESvtH
 B89hQPRP6Pz9wYvTirC6Hdj3rYSC0+vdJHVTeVQOsGQcl0+JamPHFS46S
 bHY5Y6r7NGfLhNVeNOTkYaqCrCNpv8ZTXstSsVX/p6cRzxxARtgGfZbC2
 /0pxAFu9GhUpsu5E209sDPAqIIt9mmWRwdqxrMspDg+iuf6/s1LYQHDQ7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524596"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524596"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171262"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171262"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:27 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:11 +0200
Message-Id: <20230316131724.359612-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/14] drm/i915/tc: Abort DP AUX transfer on a
 disconnected TC port
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
Cc: Chris Chiu <chris.chiu@canonical.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On TC ports the 4ms AUX timeout combined with the 5 * 32 retry
attempts during DPCD accesses adds a 640ms delay to each access if the
sink is disconnected. This in turn slows down a modeset during which the
sink is disconnected (for instance a disabling modeset).

Prevent the above delay by aborting AUX transfers on a TC port with a
disconnected sink.

The DP 1.4a link CTS (4.2.1.5 Source Device Inactive HPD / Inactive AUX
Test") also requires not to initiate AUX transfers on disconnected DP
ports in general, however this patch doesn't change the behavior on
non-TC ports, leaving that for a follow-up.

Reported-and-tested-by: Chris Chiu <chris.chiu@canonical.com>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8279
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 15 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_tc.c     | 15 +++++++++++----
 drivers/gpu/drm/i915/display/intel_tc.h     |  1 +
 3 files changed, 25 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 96967e21c94c2..eb07dc5d87099 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -205,8 +205,19 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	for (i = 0; i < ARRAY_SIZE(ch_data); i++)
 		ch_data[i] = intel_dp->aux_ch_data_reg(intel_dp, i);
 
-	if (is_tc_port)
+	if (is_tc_port) {
 		intel_tc_port_lock(dig_port);
+		/*
+		 * Abort transfers on a disconnected port as required by
+		 * DP 1.4a link CTS 4.2.1.5, also avoiding the long AUX
+		 * timeouts that would otherwise happen.
+		 * TODO: abort the transfer on non-TC ports as well.
+		 */
+		if (!intel_tc_port_connected_locked(&dig_port->base)) {
+			ret = -ENXIO;
+			goto out_unlock;
+		}
+	}
 
 	aux_domain = intel_aux_power_domain(dig_port);
 
@@ -367,7 +378,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 
 	intel_pps_unlock(intel_dp, pps_wakeref);
 	intel_display_power_put_async(i915, aux_domain, aux_wakeref);
-
+out_unlock:
 	if (is_tc_port)
 		intel_tc_port_unlock(dig_port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index f45328712bff1..050f998284592 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -768,16 +768,23 @@ void intel_tc_port_sanitize_mode(struct intel_digital_port *dig_port)
  * connected ports are usable, and avoids exposing to the users objects they
  * can't really use.
  */
+bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
+{
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
+
+	return tc_port_live_status_mask(dig_port) & BIT(dig_port->tc_mode);
+}
+
 bool intel_tc_port_connected(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	bool is_connected;
 
 	intel_tc_port_lock(dig_port);
-
-	is_connected = tc_port_live_status_mask(dig_port) &
-		       BIT(dig_port->tc_mode);
-
+	is_connected = intel_tc_port_connected_locked(encoder);
 	intel_tc_port_unlock(dig_port);
 
 	return is_connected;
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index d54082e2d5e8d..93813056043a5 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -17,6 +17,7 @@ bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
 
 bool intel_tc_port_connected(struct intel_encoder *encoder);
+bool intel_tc_port_connected_locked(struct intel_encoder *encoder);
 
 u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port);
 u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port);
-- 
2.37.1

