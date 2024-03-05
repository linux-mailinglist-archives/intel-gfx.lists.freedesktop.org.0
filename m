Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5265871E84
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 13:05:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA04112A70;
	Tue,  5 Mar 2024 12:05:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RSqv+Td2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AAE112A70
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 12:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709640323; x=1741176323;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=arnTwAK12VZi4d+C/K5Ddw1rynFjbq7XJ3Lq85OZKHE=;
 b=RSqv+Td2jx82ami1k0P6Se+FAPoL6MI9rrERsDw8tx8YcD2K7kMKd8DX
 NMTQy2FaCS6emsI1CHmfpvMDnovHNqB7ZI9ECDglkvWlv6MoiVlor/6CS
 7imeo78gvdIerqfFBTvCDizk4kUcwwWgV2swYrGi51dydPHyhzajoTzFb
 WAivjE3NsjyBk74LCbkRbApIwDFSJBt5o1nb9oFwohCCzzk+6yfHrZ1an
 vj6WMJ9DPXv0NqlbHqa0C/EoNRWfpnEi/PcgG/Fnuas7fbZZN/geZctdb
 hGgznGcOrEiBS4egT8FA46qH7sVTYcF8kUYuNNd+Qmitbug0VDSV05cbp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7132102"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7132102"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="9417801"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.194])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 04:05:21 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 4/5] drm/i915/psr: Add IO buffer wake times for LunarLake
 and beyond
Date: Tue,  5 Mar 2024 14:04:57 +0200
Message-Id: <20240305120458.1275218-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240305120458.1275218-1-jouni.hogander@intel.com>
References: <20240305120458.1275218-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

IO buffer wake time used for IO wake calculation is dependent on port clock
on LunarLake and beyond. Take this into account in get_io_buffer_wake_time.

Bspec: 65450

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index afcfa541942c..e113a11406e5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1160,6 +1160,9 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
  * This is not directly mentioned in Bspec. There are 50 us io wake time and 32
  * us fast wake time. Clearly preharge pulses are not (improperly) included in
  * 32 us fast wake time. 50 us - 32 us = 18 us.
+ *
+ * For DISPLAY_VER >= 20
+ * RBR 15us, HBR1 11us, higher rates 10us
  */
 static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 {
@@ -1167,8 +1170,12 @@ static int get_io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
 
 	if (DISPLAY_VER(i915) < 12)
 		return 18;
-	else
+	else if (DISPLAY_VER(i915) < 20 || crtc_state->port_clock > 270000)
 		return 10;
+	else if (crtc_state->port_clock > 162000)
+		return 11;
+	else
+		return 15;
 }
 
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
-- 
2.34.1

