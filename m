Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7D8C057F0
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 12:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9319810EA23;
	Fri, 24 Oct 2025 10:07:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c6uno8jv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85B2010EA23;
 Fri, 24 Oct 2025 10:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761300468; x=1792836468;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3dNdsf5jGHShay6BuaWvLRah2gl5CYxeyL0idnXvK80=;
 b=c6uno8jvMs65OwLj/KsU7nNZlVR1xqEHF2qd3eKcCMrjT3b5ywYqi6e2
 VVfhMtmjydrm0JdJrwkNTLzAo6YHrwisAjieBCzpYMOPrGRy7wMWMc7/U
 HJRAFF4KVNRSq6P8jGbCjFy/DOrUXceJogvcenxQ3N0nBbblZzvRmMQF5
 iytmlR+VHkTx5mH4XmnD3K2KtYnJCltj0tIdIZSDKDpb/HcjgIH5d8WwC
 x8FUKMt4x53qNN22+g3ru8dhDvE1ffGLncDyy2DimGNEVTgMzuV6JbVdB
 LeqEGLgVMNNchID++Nawtkp1QLlyhLUMxG5ckcZ5mYQkLk4KuVdb+Xq8X Q==;
X-CSE-ConnectionGUID: fAjt4zcTR3uA32UNCydbpA==
X-CSE-MsgGUID: fyyExTAKS0OD3Y28o9q4+A==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67346809"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67346809"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 03:07:48 -0700
X-CSE-ConnectionGUID: 0TKrC66eRPeYg2ZpkWttrQ==
X-CSE-MsgGUID: 9Q3miUv8Sa+y7kL/Q4ULsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="208039242"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa002.fm.intel.com with ESMTP; 24 Oct 2025 03:07:46 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 10/26] drm/i915/ltphy: Update the ltpll config table value
 for eDP
Date: Fri, 24 Oct 2025 15:36:56 +0530
Message-Id: <20251024100712.3776261-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251024100712.3776261-1-suraj.kandpal@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
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
index b506bda8a751..c790fe652aa0 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1227,6 +1227,10 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
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

