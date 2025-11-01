Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D3C2762F
	for <lists+intel-gfx@lfdr.de>; Sat, 01 Nov 2025 04:05:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DB010EC07;
	Sat,  1 Nov 2025 03:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fLZPIHWF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7791710E6FB;
 Sat,  1 Nov 2025 03:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761966309; x=1793502309;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZEttlSJ9OlY6XyzQ0IC3jYCB1gY/foGko/IHt/3PrA=;
 b=fLZPIHWFSo59PznVEbzu9YOOSPHqGDqx63gTtquKlJ1pvIxzW8GgXOlg
 FSqQFiluVc1SkLCnYUNBS5IVSz9LvvvT54Q8HzJIngYjqHa6RxnqS188D
 kX4Co6COmlToWE9pmS85dFEZgwsHjd4larcE9ZX+LJSXza28GgG0TFIcW
 6pZWg/+XEYb57ZotJ2NhAH06GYU2vJR8iAlWVWu1Vt0Ci7XpLIAuu2qMe
 Qos32H3HB6rDu3emsXqMxmNb6TIL/elv6ByPv0zoNzdb72hanEtONkQa1
 1+Q727j63x37FzBnBJAGbEYWRcybLJkbtZWlsMtwvTrYXluWi0EBdMSFA A==;
X-CSE-ConnectionGUID: uJuRoeEySnW1eV3kLipUsw==
X-CSE-MsgGUID: WjFPmUJ2Tv+c8nta4/FtdA==
X-IronPort-AV: E=McAfee;i="6800,10657,11599"; a="81759520"
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="81759520"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 20:05:08 -0700
X-CSE-ConnectionGUID: wr23hsQCSTKAwyvdVPcjFQ==
X-CSE-MsgGUID: U+VgrUk8TsuEJ+vm+srLyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,271,1754982000"; d="scan'208";a="217222648"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa001.fm.intel.com with ESMTP; 31 Oct 2025 20:05:04 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v4 10/25] drm/i915/ltphy: Update the ltpll config table value
 for eDP
Date: Sat,  1 Nov 2025 08:34:19 +0530
Message-Id: <20251101030434.4159839-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251101030434.4159839-1-suraj.kandpal@intel.com>
References: <20251101030434.4159839-1-suraj.kandpal@intel.com>
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

When we get the eDP tables we reuse dp tables for some data rates.
We need to modify the 3rd config value of this table to 1 instead
of 0 since that is the only difference in the dp and edp table for
that particular data rate.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index ece81e8d558d..892dea3b975f 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1225,6 +1225,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
 	for (i = 0; tables[i]; i++) {
 		if (crtc_state->port_clock == tables[i]->clock) {
 			crtc_state->dpll_hw_state.ltpll = *tables[i];
+			if (intel_crtc_has_dp_encoder(crtc_state)) {
+				if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
+					crtc_state->dpll_hw_state.ltpll.config[2] = 1;
+			}
 			return 0;
 		}
 	}
-- 
2.34.1

