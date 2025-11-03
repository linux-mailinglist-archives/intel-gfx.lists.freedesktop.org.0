Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA49C2D6C6
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 18:19:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B19110E205;
	Mon,  3 Nov 2025 17:19:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YPnsk3/r";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BA110E457;
 Mon,  3 Nov 2025 17:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762190382; x=1793726382;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=oBexbJM+yIIE5WiCFUxZSfq+WUY8dvtAOEpyRS/Lq7I=;
 b=YPnsk3/rgbjTUfM8cGocWUihg0JuGMT4yWbHMR/C305Z9Prsh1o1pL/n
 dbX4YDrTKl4euZ8ETJveOjELE2Zqlf+z7PBuNEkt4xaUzke9paQ3+aGID
 nbRFU7jE2ZXZss3J9QZc6C7oMseuT6o2vAvZf2mY38INIwmcvSyr1MHwB
 +6XskKV6fn9bzJKqiPoyq4WVr/0ML5vXmrgfLZgP8hN/UarRjoWfH+a43
 jx8xcrXDqmFQdxaFQ24EhkfQQnSA9DzM/4ewrsJKZuJaKc3o6V2MgV/vz
 aWglWGJrQAK4f8ti+3ljfXqMLIFXbsvjCfb7CA+P2u4VbEwqjSM4HOpAK g==;
X-CSE-ConnectionGUID: 5M4qGtWUSDiKVRqmiCo0TA==
X-CSE-MsgGUID: JUQP1PD6SrS+5NM3dplYYw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64309961"
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="64309961"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:41 -0800
X-CSE-ConnectionGUID: RtQF2az/T2eXi6k5Amqq5w==
X-CSE-MsgGUID: j8j2X7gwS/CSOA8I0VI0Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,276,1754982000"; d="scan'208";a="186606210"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO [192.168.1.16])
 ([10.124.220.223])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 09:19:38 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Mon, 03 Nov 2025 14:17:53 -0300
Subject: [PATCH v3 02/29] drm/i915/xe3p_lpd: Drop north display reset
 option programming
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-xe3p_lpd-basic-enabling-v3-2-00e87b510ae7@intel.com>
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
 Vinod Govindapillai <vinod.govindapillai@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

The NDE_RSTWRN_OPT has been removed on Xe3p platforms and reset option
programming is no longer necessary during display init.

Bspec: 68846, 69137
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index fbfa823b6dce..74fcd9cfe911 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1438,6 +1438,9 @@ static void intel_pch_reset_handshake(struct intel_display *display,
 	i915_reg_t reg;
 	u32 reset_bits;
 
+	if (DISPLAY_VER(display) >= 35)
+		return;
+
 	if (display->platform.ivybridge) {
 		reg = GEN7_MSG_CTL;
 		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;

-- 
2.51.0

