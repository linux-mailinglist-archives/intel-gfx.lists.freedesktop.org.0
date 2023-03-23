Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E10616C6AB9
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 15:21:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AF610EAB8;
	Thu, 23 Mar 2023 14:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EA6510EAC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 14:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679581264; x=1711117264;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VT5yYIzUXPXukg0kFw/b7BOGa4jqGbwtdTIwhXIBxcM=;
 b=LvSW+jVjaVB0h/lxYbW7i11oJzZnh1+8vPMXeA9qbkPuvYwtXOkx+eXt
 Ctq3zXkzEmWfSvnxSb5nY7pH2DBoANyW4nBf0N5yDN+FVXthBaVxwbNHp
 Oflgs96edcLj1Bcwxz0cOgv5EzC9Ly3eoXdDCaJxUONlaN1wljdDBv6Gt
 Mkqxo9BszrIJqkEhIarYqNJED7K9W9wPdA+9xs78j3eWyuDo+3RGZvWj2
 T1l97vrlEwsiLIjvc0q3G+eF2FJoz1XE41CYqflY4UpK0M/a7XZm7Uzgh
 ZzjEYGmXA3mdeE9VBbR31k3lOpkSQik7MvuWTmqnkFDKYtzGvwK+vHzCP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="327892345"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="327892345"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746722728"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; d="scan'208";a="746722728"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 07:21:03 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 16:20:30 +0200
Message-Id: <20230323142035.1432621-25-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230323142035.1432621-1-imre.deak@intel.com>
References: <20230323142035.1432621-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 24/29] drm/i915/tc: Don't connect the PHY in
 intel_tc_port_connected()
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

Connecting the PHY for connector probing - also blocking TC-cold - isn't
required and has some overhead. Taking only the mutex is sufficient, so
do that.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 08a23ab081d74..f202ba324fd0a 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -1235,20 +1235,25 @@ bool intel_tc_port_connected_locked(struct intel_encoder *encoder)
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_tc_port *tc = to_tc_port(dig_port);
+	u32 mask = ~0;
 
 	drm_WARN_ON(&i915->drm, !intel_tc_port_ref_held(dig_port));
 
-	return tc_phy_hpd_live_status(tc) & BIT(tc->mode);
+	if (tc->mode != TC_PORT_DISCONNECTED)
+		mask = BIT(tc->mode);
+
+	return tc_phy_hpd_live_status(tc) & mask;
 }
 
 bool intel_tc_port_connected(struct intel_encoder *encoder)
 {
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_tc_port *tc = to_tc_port(dig_port);
 	bool is_connected;
 
-	intel_tc_port_lock(dig_port);
+	mutex_lock(&tc->lock);
 	is_connected = intel_tc_port_connected_locked(encoder);
-	intel_tc_port_unlock(dig_port);
+	mutex_unlock(&tc->lock);
 
 	return is_connected;
 }
-- 
2.37.1

