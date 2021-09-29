Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F2741C59F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7656EA74;
	Wed, 29 Sep 2021 13:28:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CE996EA71
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:28:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="310487744"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="310487744"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="617510945"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:28:43 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Wed, 29 Sep 2021 16:28:33 +0300
Message-Id: <20210929132833.2253961-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210921002313.1132357-14-imre.deak@intel.com>
References: <20210921002313.1132357-14-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 13/13] drm/i915/tc: Fix system hang on ADL-P
 during TypeC PHY disconnect
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

The PHY ownership release->AUX PW disable steps during a modeset
disable->PHY disconnect sequence can hang the system if the PHY
disconnect happens after disabling the PHY's PLL. The spec doesn't
require a specific order for these two steps, so this issue is still
being root caused by HW/FW teams. Until that is found, let's make
sure the disconnect happens before the PLL is disabled, and do this on
all platforms for consistency.

v2: Add a TODO comment to remove the w/a once the issue is root
    caused/fixed. (Jose)

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 4a14db604cbae..40faa18947c99 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -834,6 +834,14 @@ void intel_tc_port_put_link(struct intel_digital_port *dig_port)
 	intel_tc_port_lock(dig_port);
 	--dig_port->tc_link_refcount;
 	intel_tc_port_unlock(dig_port);
+
+	/*
+	 * Disconnecting the PHY after the PHY's PLL gets disabled may
+	 * hang the system on ADL-P, so disconnect the PHY here synchronously.
+	 * TODO: remove this once the root cause of the ordering requirement
+	 * is found/fixed.
+	 */
+	intel_tc_port_flush_work(dig_port);
 }
 
 static bool
-- 
2.27.0

