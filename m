Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32BECC2D729
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAA1310E48B;
	Mon,  3 Nov 2025 17:21:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FLwCnvkT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5992010E497;
 Mon,  3 Nov 2025 17:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190486; x=1793726486;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=iW0sGfyWgOnq9RhZLLGa9dFjAaUqDr004wiSVz7nid0=;
 b=FLwCnvkTQYycaWC5OhQNzUxJI64ZVT4lVrmDOzvj/ejHZ2MHd+v+POGG
 HXXnElh9i/1s0iDwzgZObQ9qqrJCnBCjoliqhYmdIP/iLCgGJCpDKja26
 As7lZcEn25JSZHpcXXRiCge32bBGozZNZ5+rOCBuQyjhGNBYeyQYe3Jxk
 2FOt5FFs/RQy1zTqlr+oG5+m8ZdRDR0uJakwdPoMhhIE5h4mfvclyuTbh
 SWKnO6aUxB892fsNp89CyMJqnSKgZpBdp1LO9h36X4/EArzMYRJq2+aof
 20ZPy6ar9VMO/uTuMZo9OV6FScTCQYyQsNmtcJSIg2eogqjYrMC2tMVDF g==;
X-CSE-ConnectionGUID: ydj3xY2lQ0GlakAFgeiRmQ==
X-CSE-MsgGUID: P6CqjFCLTTGMA4cnBwaWSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64423947"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64423947"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:26 -0800
X-CSE-ConnectionGUID: jyZnmuyVTKW8uGupCPRvsQ==
X-CSE-MsgGUID: zK9nHfH5RuKQo3kotyvExQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606816"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:21:22 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:18:20 -0300
Subject: [PATCH v3 29/29] drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX
 power
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-29-00e87b510ae7@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
In-Reply-To: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>, 
 Suraj Kandpal <suraj.kandpal@intel.com>
X-Mailer: b4 0.15-dev
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
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 1485fc65ab87..33c9540a5d73 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1870,19 +1870,19 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
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
 		if (intel_de_wait_for_set(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
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
@@ -1897,7 +1897,7 @@ static void xelpdp_aux_power_well_disable(struct intel_display *display,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 
-	if (DISPLAY_VER(display) >= 35) {
+	if (HAS_LT_PHY(display)) {
 		if (intel_de_wait_for_clear(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 					    XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
 			drm_warn(display->drm,

-- 
2.51.0

