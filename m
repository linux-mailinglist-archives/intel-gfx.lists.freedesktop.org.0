Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1B3C42198
	for <lists+intel-gfx@lfdr.de>; Sat, 08 Nov 2025 01:07:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BF5A10EBC9;
	Sat,  8 Nov 2025 00:07:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GKfkZdE6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6133810EBC9;
 Sat,  8 Nov 2025 00:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762560433; x=1794096433;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=a4Z9pia2tRLgm5C6v5UAyH7J8chVbfAJgo36BCd/2zc=;
 b=GKfkZdE6xPKD4EHO7L0NNRXIAHmjm/XgsyaFhSBflH4Geg2i48aZWqFi
 DkE/Hlo5AgcpWgzXVvVAIKSNdyQqBnoFo7GPGSCrW5LvF0vdgcYikP/NP
 ydrB6dHyvhCRdNmS2uLGWM4+JQ0ohMRy63dbabnYAaswlZYXWLV3c4xpU
 8pFmWDEmq1qtW9zG2foIFbHRVLEAWU+PkTIa9RLXijWehwp03AzDB/ngr
 TcZ0/QP2tiIZgCmOumscC4iNLzHjkxeaHQ5pCmmNHeiOTqFTZucRt7sLl
 DsLY2dBaCgavuMm097IcEA/BR+PGaA5LrCrFP9P4+KIl15651WaC2yOb5 Q==;
X-CSE-ConnectionGUID: 8TNmlFDZT8C2umOC6HmwIw==
X-CSE-MsgGUID: H7oieiN3StKJ1x4xW2MHCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64621289"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64621289"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:07:13 -0800
X-CSE-ConnectionGUID: JTSl/2wORaK6bMqtvF1fRQ==
X-CSE-MsgGUID: /J3/aNLJTQmdEl6r6dgu6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218822676"
Received: from mgerlach-mobl1.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.137])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 16:07:10 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 07 Nov 2025 21:05:44 -0300
Subject: [PATCH v4 11/11] drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX
 power
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-xe3p_lpd-basic-enabling-v4-11-ab3367f65f15@intel.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
In-Reply-To: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
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
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
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

