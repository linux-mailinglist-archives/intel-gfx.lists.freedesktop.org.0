Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 696D3C5F4B5
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 21:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AB610EB1C;
	Fri, 14 Nov 2025 20:53:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S98mMH/s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEF7A10EB24;
 Fri, 14 Nov 2025 20:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763153629; x=1794689629;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=SriZsParPvLEeH6ke6kn0oyDdj8mbW8ocA4Xeh9QyS4=;
 b=S98mMH/sy6PlsqXYrJ6oh5u+U4ntN96D6y3gsB3okC6HMx2SMHhTXQmS
 AXNj+ns2BkRF7lAsMxOmlRKt9JVP3Hgjrss9D/pJE/3IIvbKCX5RV2n3H
 lAnRX6UxigWpmV8+bAU8ppW5f55yuvHhiKo9hHQzlksomRNGiwAkxToC+
 l5cPyQQc34gdYsrIUeRr+hR4Mq5NlEsnFmrc5OHLxgeVf5gJOBc9aLrnH
 TSE4HWnKIbefIbc0MCHET0BtTj//v/1HV1V5gAa/dNosNfNT+fmj/ngKN
 HGa4dnMsHNx9rJKeDRtv1iNpk7jV+7tF7GVLO4aFaT460mZvX06Lj11rr w==;
X-CSE-ConnectionGUID: ORDNP9FNTNigLCdcfNTC7A==
X-CSE-MsgGUID: 6pRcm/QBTYSnvEPkHLo1Ag==
X-IronPort-AV: E=McAfee;i="6800,10657,11613"; a="67859926"
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="67859926"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:47 -0800
X-CSE-ConnectionGUID: /Abad/DiQMK64qlDPsMFKg==
X-CSE-MsgGUID: 2NDZt670Su2gpIv8+59s/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,305,1754982000"; d="scan'208";a="227214235"
Received: from dnelso2-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.50])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 12:53:44 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 14 Nov 2025 17:52:15 -0300
Subject: [PATCH v5 8/8] drm/i915/display: Use HAS_LT_PHY() for LT PHY AUX power
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-xe3p_lpd-basic-enabling-v5-8-c183388367f4@intel.com>
References: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
In-Reply-To: <20251114-xe3p_lpd-basic-enabling-v5-0-c183388367f4@intel.com>
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
index 40d6b44c0b74..d2cb11626c1a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1873,19 +1873,19 @@ static void xelpdp_aux_power_well_enable(struct intel_display *display,
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
@@ -1900,7 +1900,7 @@ static void xelpdp_aux_power_well_disable(struct intel_display *display,
 		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
 		     0);
 
-	if (DISPLAY_VER(display) >= 35) {
+	if (HAS_LT_PHY(display)) {
 		if (intel_de_wait_for_clear_ms(display, XELPDP_DP_AUX_CH_CTL(display, aux_ch),
 					       XELPDP_DP_AUX_CH_CTL_POWER_STATUS, 1))
 			drm_warn(display->drm,

-- 
2.51.0

