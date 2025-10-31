Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10387C247F6
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Oct 2025 11:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BBCE10EB16;
	Fri, 31 Oct 2025 10:37:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k1n2xnh+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CD710EB16;
 Fri, 31 Oct 2025 10:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761907037; x=1793443037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PZEttlSJ9OlY6XyzQ0IC3jYCB1gY/foGko/IHt/3PrA=;
 b=k1n2xnh+DaIgFG/O2SLehLoksGGC4TtlkVPPVtfXWI6ene1CwmUzzB6I
 fnycSq1LCT+ilSCFNaq/XVSuL3KLRmgSW73t0QQcloUutvxY4mjD7bZOE
 H+ZcYw3o/Er8hV6HjvOZcSYWIDjR5sXhtBbpyH5IOlQpR/nYswe2jzuDH
 fdw/I3LYJbxmaaOHV4iDBKscxg9HyvYHWlAD+YERdPxSGU+EO9NsmX+mG
 1ZsFrjsCgVRT/KR3NodHOGlqmP4q9j2uyneUGA9ullSXQtU+J4iZcr3a5
 6jp+f9Zsh3pMA1G4wGgMce9ASz6E0mSoR6BR1kSlXR7oQZSI3aqNghLvC A==;
X-CSE-ConnectionGUID: WFNMWX2VRwKErB8sMiL2tw==
X-CSE-MsgGUID: ZJ1zdq7ZRjyvC4g8klNb+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="86690872"
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="86690872"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2025 03:37:17 -0700
X-CSE-ConnectionGUID: yqS9rV5+Q8Wk/ucj93Z30Q==
X-CSE-MsgGUID: DjV0Ony6Ssag8/dWMVvGuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,269,1754982000"; d="scan'208";a="190554647"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa005.fm.intel.com with ESMTP; 31 Oct 2025 03:37:14 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, uma.shankar@intel.com,
 gustavo.sousa@intel.com, lucas.demarchi@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 10/25] drm/i915/ltphy: Update the ltpll config table value
 for eDP
Date: Fri, 31 Oct 2025 16:06:28 +0530
Message-Id: <20251031103643.4147868-11-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251031103643.4147868-1-suraj.kandpal@intel.com>
References: <20251031103643.4147868-1-suraj.kandpal@intel.com>
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

