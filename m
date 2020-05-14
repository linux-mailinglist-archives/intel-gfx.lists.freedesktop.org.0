Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A36EC1D3F22
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 22:46:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C9C6E091;
	Thu, 14 May 2020 20:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB8C66E091
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 20:45:56 +0000 (UTC)
IronPort-SDR: GeUIIGu6kSdT9AJmbcotiKpFa6sGDDME3zuTbhIgeNUA3JY2lvr9d67rwrYtc07328v9ZsjtYD
 9PpnmiACThkw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 13:45:56 -0700
IronPort-SDR: V2gkJwqO96B3/euocKJzvykJ3utWvE2YpnZWcQaQVHY3OHnaX3F9TTVBM+14/Qc8Wk3b8PWfXu
 1EZ4CTpJk6Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="262965276"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga003.jf.intel.com with ESMTP; 14 May 2020 13:45:55 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 23:45:53 +0300
Message-Id: <20200514204553.27193-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.23.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix AUX power domain toggling across
 TypeC mode resets
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Make sure to select the port's AUX power domain while holding the TC
port lock. The domain depends on the port's current TC mode, which may
get changed under us if we're not holding the lock.

This was left out from
commit 8c10e2262663 ("drm/i915: Keep the TypeC port mode fixed for detect/AUX transfers")

Cc: <stable@vger.kernel.org> # v5.4+
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 408c3c1c5e81..40d42dcff0b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1359,8 +1359,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	bool is_tc_port = intel_phy_is_tc(i915, phy);
 	i915_reg_t ch_ctl, ch_data[5];
 	u32 aux_clock_divider;
-	enum intel_display_power_domain aux_domain =
-		intel_aux_power_domain(intel_dig_port);
+	enum intel_display_power_domain aux_domain;
 	intel_wakeref_t aux_wakeref;
 	intel_wakeref_t pps_wakeref;
 	int i, ret, recv_bytes;
@@ -1375,6 +1374,8 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	if (is_tc_port)
 		intel_tc_port_lock(intel_dig_port);
 
+	aux_domain = intel_aux_power_domain(intel_dig_port);
+
 	aux_wakeref = intel_display_power_get(i915, aux_domain);
 	pps_wakeref = pps_lock(intel_dp);
 
-- 
2.23.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
