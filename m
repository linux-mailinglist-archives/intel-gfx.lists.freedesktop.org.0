Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 242956BD10B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 14:40:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA50110E226;
	Thu, 16 Mar 2023 13:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A86310E1F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 13:40:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678974031; x=1710510031;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ABznAQIoxBbrlUohCcVhQj9C4Jk+U1ss53MEChKwhuE=;
 b=Q2glFr1MKKAcrMlK0XFlXcDpDoxR485MEFsLDI9iO3cyChfVYGgItQio
 lJC5ZPuIO5MV911nh+FQJtz6mVqUcyfqiy+lferR7n/4ztrsyPEJ8IuCt
 vdB+f9iw2Z2p7P16SeHK6L262yZC1j+GQLm6nBPUrDNjgQxfdAqhNzQc/
 ocxqwct2GJW6IwRZ34AW6QZZVz4erxc1sz66bN3nyMvSUJUexcY2mRcz1
 kuHHen5Kp3XnJKKa+ldJ6KkkNmBzjdg9RGtJvO/aJh2T9/qGzg42vv3Fc
 +25h/WUTpNsYjwDzEUrDptLKk2nEzZp8fvK1o9gsZsbjjkrubXFu9Gs/b A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="339524713"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339524713"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10650"; a="657171278"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="657171278"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 06:17:33 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Mar 2023 15:17:17 +0200
Message-Id: <20230316131724.359612-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230316131724.359612-1-imre.deak@intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/14] drm/i915/tc: Fix target TC mode for a
 disconnected legacy port
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

Atm, the target TC mode - which the PHY should be switched to at any
point it's used - is TBT in case there is no sink connected. However
legacy ports are only used in the legacy mode regardless of the sink
connected state. Fix the mode returned by
intel_tc_port_get_target_mode() accordingly.

Despite of the above issue, the PHY got disconnected as expected in
response to a sink disconnect event, causing only a redundant
PHY disconnect->reconnect sequence whenever the port was used.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 002e142cc746f..e39c8a870df06 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -635,15 +635,23 @@ intel_tc_port_get_current_mode(struct intel_digital_port *dig_port)
 	return mode;
 }
 
+static enum tc_port_mode default_tc_mode(struct intel_digital_port *dig_port)
+{
+	if (dig_port->tc_legacy_port)
+		return TC_PORT_LEGACY;
+
+	return TC_PORT_TBT_ALT;
+}
+
 static enum tc_port_mode
-hpd_mask_to_target_mode(u32 live_status_mask)
+hpd_mask_to_target_mode(struct intel_digital_port *dig_port, u32 live_status_mask)
 {
 	enum tc_port_mode mode = hpd_mask_to_tc_mode(live_status_mask);
 
 	if (mode != TC_PORT_DISCONNECTED)
 		return mode;
 
-	return TC_PORT_TBT_ALT;
+	return default_tc_mode(dig_port);
 }
 
 static enum tc_port_mode
@@ -651,7 +659,7 @@ intel_tc_port_get_target_mode(struct intel_digital_port *dig_port)
 {
 	u32 live_status_mask = tc_port_live_status_mask(dig_port);
 
-	return hpd_mask_to_target_mode(live_status_mask);
+	return hpd_mask_to_target_mode(dig_port, live_status_mask);
 }
 
 static void intel_tc_port_reset_mode(struct intel_digital_port *dig_port,
-- 
2.37.1

