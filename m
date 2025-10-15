Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F02CBDC698
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 06:08:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13F0110E6EB;
	Wed, 15 Oct 2025 04:08:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2GJQc20";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F6D810E714;
 Wed, 15 Oct 2025 04:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760501332; x=1792037332;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WBBvlx3wvajT/icEdRZJeQIeLTb7hQiFB9ARZiGQ3oM=;
 b=k2GJQc20vHTIwvZvQqS4jxqn18IkPifuNTel9mq75krvWM3Cna3XGgNO
 Ih2f1C8tbkXe2T7t82jEXLrbRXp41zwAlqi0V3HKxgkl0sR1kr8lqp/bq
 U32btJ/xAXGB+9j+870ltHcafmAg9WIJY0ezWTDDoPqZBb7ooIuRKMNWO
 C7eby8E0MVW2NVwKhArmXU0u3D+Qovj65lByUgpgJPZbv//VV2tpTKjdU
 1Ps4K8vTaMUC1wyq37/0dRb1Sb7TfDSbDgXEnQJo33WajYf+DzAIL1D5H
 Qkd11ZkwXa8A6CbKQgkk3su0dDBTVuhV1/UHMBoQa//WRu7jSE8E0C8TA Q==;
X-CSE-ConnectionGUID: Vzq0mlUjSxCLYzVWMr2MbQ==
X-CSE-MsgGUID: pm4q1S5cSjqvqiAKpz9vdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="66318959"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="66318959"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 21:08:52 -0700
X-CSE-ConnectionGUID: 1/HZq/pFRVCOwSrL2s5jwA==
X-CSE-MsgGUID: lA+4D020Q0iff+UfF7SFEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="219196130"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa001.jf.intel.com with ESMTP; 14 Oct 2025 21:08:49 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 09/25] drm/i915/ltphy: Update the ltpll config table value for
 eDP
Date: Wed, 15 Oct 2025 09:38:01 +0530
Message-Id: <20251015040817.3431297-10-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251015040817.3431297-1-suraj.kandpal@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
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
---
 drivers/gpu/drm/i915/display/intel_lt_phy.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index 9380ba530901..8cd0009609d4 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1226,6 +1226,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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

