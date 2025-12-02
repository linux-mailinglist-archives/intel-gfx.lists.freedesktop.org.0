Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3BCC99BAF
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 02:23:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C65B710E50B;
	Tue,  2 Dec 2025 01:23:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ne2D6wDw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AACE10E50D;
 Tue,  2 Dec 2025 01:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764638601; x=1796174601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ViVXuoPB/+tH6wFPPz7OeydYth9pY3bGsImnU646ie4=;
 b=ne2D6wDwGEVX2iNCz0lHobTcmGqNg31KTG71FOTgGwQVbZ0CZ+Cq6YEO
 vl2A5tjYNtgIlNgEhz/LUHrenrkFLlDaDkh2/bunwsQsM/ihK8fun3ZZs
 K3LEKUd8mZWEQSFl2ugn2pdT4Am79g0RJZDVsInYP6YlvodTlqeovrjeM
 w3v3F7U1LIreECdKyy35QNuzfaw/IdgmMLmKnjgXcingTboa3tYs2+rjK
 mxUxoCVvSZ3vC3s+x34zBflCGF/2KySkjbj+qTyesNTE6jgSWiWwh0q6V
 sMdmYsZwtNvEpCtulW6YFelQNwjztN9JC6UN1onsm+Dd6yphFu/D+d8Qf A==;
X-CSE-ConnectionGUID: 3xniZOZdSo2NtZ8Ov9H7Hw==
X-CSE-MsgGUID: X81MnGcfTZOKQbsPZ5yBVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="69186556"
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="69186556"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:20 -0800
X-CSE-ConnectionGUID: Oxq4+AwDQ5Sj5MzJb/YYRg==
X-CSE-MsgGUID: Tz2vjyMQTqiPZ8mGOQzQzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,241,1758610800"; d="scan'208";a="224927938"
Received: from msatwood-mobl.amr.corp.intel.com (HELO
 msatwood-mobl.hsd1.or.comcast.net) ([10.125.111.179])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 17:23:21 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@Intel.com, dnyaneshware.bhdane@intel.com,
 gustavo.sousa@intel.com, jouni.hogander@intel.com,
 juha-peka.heikkila@intel.com, luciano.coelho@intel.com,
 matthew.d.roper@intel.com, ravi.kumar.vodapalli@intel.com,
 shekhar.chauhan@intel.com, vinod.govindapillai@intel.com,
 imre.deak@intel.com, jani.nikula@linux.intel.com, suraj.kandapal@intel.com,
 jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 sai.teja.pottumuttu@Intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v6 8/8] drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power
Date: Mon,  1 Dec 2025 17:23:06 -0800
Message-ID: <20251202012306.9315-9-matthew.s.atwood@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251202012306.9315-1-matthew.s.atwood@intel.com>
References: <20251202012306.9315-1-matthew.s.atwood@intel.com>
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

From: Gustavo Sousa <gustavo.sousa@intel.com>

Bspec states that the new AUX power enable/disable sequences are
associated with the LT PHY.  As such, use HAS_LT_PHY() instead of IP
checks in those paths in the driver code.

While at it, also move the comment that we can't use the power status
flag to the "else" branch, since that comment is not applicable for the
LT PHY.

Bspec: 68967
Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Suggested-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c  | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 3abfb17f8988..db185a859133 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1866,19 +1866,19 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
 
-	/*
-	 * The power status flag cannot be used to determine whether aux
-	 * power wells have finished powering up.  Instead we're
-	 * expected to just wait a fixed 600us after raising the request
-	 * bit.
-	 */
-	if (DISPLAY_VER(display) >= 35) {
+	if (HAS_LT_PHY(display)) {
 		if (intel_de_wait_for_set_ms(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 					     XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 2))
 			drm_warn(display->drm,
 				 "Timeout waiting for PHY %c AUX channel power to be up\n",
 				 phy_name(phy));
 	} else {
+		/*
+		 * The power status flag cannot be used to determine whether aux
+		 * power wells have finished powering up.  Instead we're
+		 * expected to just wait a fixed 600us after raising the request
+		 * bit.
+		 */
 		usleep_range(600, 1200);
 	}
 }
@@ -1893,7 +1893,7 @@ static void xelpdp_aux_power_well_disable(struct intel_display *display,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 
-	if (DISPLAY_VER(display) >= 35) {
+	if (HAS_LT_PHY(display)) {
 		if (intel_de_wait_for_clear_ms(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 					       XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
 			drm_warn(display->drm,
-- 
2.51.0

