Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F880A6B7E8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 10:45:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADF1610E76C;
	Fri, 21 Mar 2025 09:45:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B88abYGi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BDBA10E76B;
 Fri, 21 Mar 2025 09:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742550351; x=1774086351;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fkyg0tCKgmIz9Z1RYoL/mKTgniplwGuVfJx/dAieoYE=;
 b=B88abYGi2dTWHZMFujv+KXEqix4RFs4A+E+JHiL2AAnllc4WVzoAG3TP
 AKbQ/rS4CpQSZsm0mVn97J/zhXQ05SlNBQOuwMalOv4ug+3HLzX0BAWSv
 hH0pUmho4o7/UGtJHxxm4CSCpbdYsLLZ9ZfbqBCVQytHX6VumdK0rf7lF
 vs11cXiqHQ7MEfk5YnyVclVp/pjChWw6WajOIRRHvOibW+BP2h7nle7kd
 U16+dy/kj6TBo2x2THmj1ztPenYnjk/ZW1I2wfUmTbJ4ms62mwpQp+Shj
 tEHzqHO4Lm/59LZh0nasVmHeRTGcQmvikqYHXNeSnmg/+/nHyLcJfgtao Q==;
X-CSE-ConnectionGUID: Emr+5GYrRyWoymxtAcbYNQ==
X-CSE-MsgGUID: b0PK5+/9S/6bz0l8PLYRGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43974528"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43974528"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:51 -0700
X-CSE-ConnectionGUID: hHp21DjITkuvurc83Jq6xw==
X-CSE-MsgGUID: RcKYvJiARvamQI0z7qCaiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="124132835"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.179])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:47 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 1/2] drm/i915/fbc: keep FBC disabled if selective update is
 on in xe2lpd
Date: Fri, 21 Mar 2025 11:45:28 +0200
Message-ID: <20250321094529.197397-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321094529.197397-1-vinod.govindapillai@intel.com>
References: <20250321094529.197397-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

FBC was disabled in case PSR2 selective update in display 12 to
14 as part of a wa. From xe2lpd onwards there is a logic to be
implemented to decide between FBC and selective update. Until
that logic is implemented keep FBC disabled in case selective
update is enabled.

v1: updated patch description and some explanation and todo

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b6978135e8ad..92b00da4c0ab 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1464,13 +1464,15 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 *
-	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
-	 * coexist. So if PSR2 selective fetch is supported then mark that
-	 * FBC is not supported.
-	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
+	 * TODO: Implement a logic to select between PSR2 selective fetch and
+	 * FBC based on Bspec: 68881 in xe2lpd onwards.
+	 *
+	 * As we still see some strange underruns in those platforms while
+	 * disabling PSR2, keep FBC disabled in case of selective update is on
+	 * until the selection logic is implemented.
 	 */
-	if ((IS_DISPLAY_VER(display, 12, 14) || HAS_FBC_DIRTY_RECT(display)) &&
-	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
+	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update &&
+	    !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.43.0

