Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E10B823D79
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA6E10E3E4;
	Thu,  4 Jan 2024 08:30:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E97F10E3E1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:30:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704357010; x=1735893010;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Kg+hj9dU7PjT+FlpoHm/0natFVmUOIXE4IHbMxMFqyg=;
 b=ITrlTea6usvDOtmgXHKVZONe/fwNBHQshah3R0ExAQ0HgOPgZhuq/cKz
 Q9nXCMdUZSwblc99dFt/Bg717tEiu97eH0xRXVzK0xk8ilLoU62395BbU
 K/QVIEDoGIws1IJsUeejezfGL8vQSgQVemEUpaVPfCJGg7Pw9ofkcw/6i
 +QAR+B2WoRLWFqfsAb9LYn9/UrOUAlBQj3435ekKFoRq6KlmV2FTO0goo
 wW9/y2EHjQFtatTWU6yzPx43SDnSUTDYlo4BBEnhvG11ltY6J3TtX5g2m
 t4aV7dGBNWPJFfVo3pBjAufoTa8L0R8oNvERzwvPfcaMFvmwKsMto42Ke g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624571"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624571"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422706"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422706"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:30:09 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 11/12] drm/i915: Filter out glitches on HPD lines during
 hotplug detection
Date: Thu,  4 Jan 2024 10:30:07 +0200
Message-Id: <20240104083008.2715733-12-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Glitches deasserting the connector HPD line can lead to incorrectly
detecting a disconnect event (a glitch asserting the line will only
cause a redundant connect->disconnect transition). The source of such a
glitch can be noise on the line or a 0.5ms-1ms MST IRQ_HPD pulse. TypeC
ports in the DP-alt or TBT-alt mode filter out these glitches inernally,
but for others the driver has to do this. Make it so by polling the HPD
line on these connectors for 4 ms.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
 drivers/gpu/drm/i915/display/intel_tc.c |  9 +++++++++
 drivers/gpu/drm/i915/display/intel_tc.h |  1 +
 3 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index f04926d4aa80d..77ba6de6ba087 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5460,11 +5460,20 @@ bool intel_digital_port_connected_locked(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	bool is_glitch_free = intel_tc_port_handles_hpd_glitches(dig_port);
 	bool is_connected = false;
 	intel_wakeref_t wakeref;
 
-	with_intel_display_power(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref)
-		is_connected = dig_port->connected(encoder);
+	with_intel_display_power(dev_priv, POWER_DOMAIN_DISPLAY_CORE, wakeref) {
+		unsigned long wait_expires = jiffies + msecs_to_jiffies_timeout(4);
+
+		do {
+			is_connected = dig_port->connected(encoder);
+			if (is_connected || is_glitch_free)
+				break;
+			usleep_range(10, 30);
+		} while (time_before(jiffies, wait_expires));
+	}
 
 	return is_connected;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 80aed9e87927a..f34743e6eeed2 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -122,6 +122,15 @@ bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port)
 	return intel_tc_port_in_mode(dig_port, TC_PORT_LEGACY);
 }
 
+bool intel_tc_port_handles_hpd_glitches(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
+
+	return intel_phy_is_tc(i915, phy) && !tc->legacy_port;
+}
+
 /*
  * The display power domains used for TC ports depending on the
  * platform and TC mode (legacy, DP-alt, TBT):
diff --git a/drivers/gpu/drm/i915/display/intel_tc.h b/drivers/gpu/drm/i915/display/intel_tc.h
index 936fa2daaa74a..26c4265368c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.h
+++ b/drivers/gpu/drm/i915/display/intel_tc.h
@@ -15,6 +15,7 @@ struct intel_encoder;
 bool intel_tc_port_in_tbt_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_dp_alt_mode(struct intel_digital_port *dig_port);
 bool intel_tc_port_in_legacy_mode(struct intel_digital_port *dig_port);
+bool intel_tc_port_handles_hpd_glitches(struct intel_digital_port *dig_port);
 
 bool intel_tc_port_connected(struct intel_encoder *encoder);
 
-- 
2.39.2

