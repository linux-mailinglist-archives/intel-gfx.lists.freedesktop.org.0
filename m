Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E4E206BD10A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F6410E212;
	Thu, 16 Mar 2023 13:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3381610E1EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974028; x=1710510028;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=/DpCe4Cg+sAszdBzGNW0hbmv+2AP2mvZHJjeE4Ir+sY=;
 b=gxMCLM0x8OEgajIAT/ebIZ+hfjzJrUk/V3SlhRq7ArE2zLkHLssIDlOr
 mTJ4ryeqdYmeCpxngUtbbjX+t3fDU/y0SmSvMzkc1+1vRB2R1v1WcJ8fI
 pzkD5Rry6R/T4N9W31NIHKMnyKIoKYjpm/CPfztxme1Lbg+7ozn4hfMJC
 sjQtA8WKvQ1a+/9hMZkf4hHDMmJ+DW8f2DWgHOevzGccmyQ2N7/pdpAWN
 n8mK4C+PG1d9qWP1oLSnAOk2QhBOqrax2RwuS2WBGsKIGVgBQ8Q2TQ5fq
 DbZk9w1dvLxlg+/i8wbUBI3h2pQfvsqWiDOztkyPT65HxWBkT4eU1mWqp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524672"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524672"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171275"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171275"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:31 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:15 +0200
Message-Id: <20230316131724.359612-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/14] drm/i915/tc: Wait for IOM/FW PHY
 initialization of legacy TC ports
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

During boot-up/system resume, the TC PHY on legacy ports will be
initialized by the IOM/TCSS firmware regardless of a sink being
connected or not (as opposed to DP-alt/TBT ports, which the FW only
inits once a sink is connected).

Wait for the above initialization to complete during HW readout, so that
connecting the PHY later will already see the expected PHY ready state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index e8cf3b506fb7f..2116c82831a53 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -582,6 +582,15 @@ static bool icl_tc_phy_is_connected(struct intel_digital_port *dig_port)
 	       dig_port->tc_mode == TC_PORT_LEGACY;
 }
 
+static void tc_phy_wait_for_ready(struct intel_digital_port *dig_port)
+{
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
+	if (wait_for(tc_phy_status_complete(dig_port), 100))
+		drm_err(&i915->drm, "Port %s: timeout waiting for PHY ready\n",
+			dig_port->tc_port_name);
+}
+
 static enum tc_port_mode
 intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 {
@@ -589,6 +598,14 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 	u32 live_status_mask = tc_port_live_status_mask(dig_port);
 	enum tc_port_mode mode;
 
+	/*
+	 * For legacy ports the IOM firmware initializes the PHY during boot-up
+	 * and system resume whether or not a sink is connected. Wait here for
+	 * the initialization to get ready.
+	 */
+	if (dig_port->tc_legacy_port)
+		tc_phy_wait_for_ready(dig_port);
+
 	if (!tc_phy_is_owned(dig_port) ||
 	    drm_WARN_ON(&i915->drm, !tc_phy_status_complete(dig_port)))
 		return TC_PORT_TBT_ALT;
-- 
2.37.1

