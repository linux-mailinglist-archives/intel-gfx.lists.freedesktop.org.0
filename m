Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3E1A65516
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 16:08:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8050710E427;
	Mon, 17 Mar 2025 15:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DDnF/LRK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1F4110E424;
 Mon, 17 Mar 2025 15:08:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742224133; x=1773760133;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Mykh5p4ZusgmxjwudgK896dPj+Oflu1/W12JI4jPWtU=;
 b=DDnF/LRKNiBdOtSCDKiQce0yT5oU5/AII2HOmix9APi8cWOrmfZU0opO
 K+KCLDJhXoEzD6sfbNX8PKDq1TDIKeryKLfE74XcJNBUIc/wLiIjNy0hp
 6O/8dUzFhmxKTCXUc38ruSR3nrNEZsnFPSQCxhI1vqvW/KtBHhv3XbRQR
 8vKIbWTXo6yEJEarnAZruSXoMr8M+ZsN5hi2gfNnn6XAvBpZIG5XlKtO3
 2PhVQGtVbuf/w6UL7kBTnpQeDokz3NBghhyG8sO1lps4sGwiNKNsx8zVh
 HlAr6me16RfWrCydehAlaIIrySXHGTEIQrEbPf9RAzkp+2BUFcaHowrFj A==;
X-CSE-ConnectionGUID: lwoq3FQAQK69NTKEbxIC7w==
X-CSE-MsgGUID: gHv/0qoEQq2z5wh4u85hdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11376"; a="53530269"
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="53530269"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 08:08:52 -0700
X-CSE-ConnectionGUID: MWsU8WwcS76GJQtwDg3eAQ==
X-CSE-MsgGUID: owViKGMgRci0UeTq7Qm3Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,254,1736841600"; d="scan'208";a="159108607"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.96])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2025 08:08:49 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com
Subject: [PATCH v1] drm/i915/fbc: disable FBC if PSR2 selective fetch is
 enabled
Date: Mon, 17 Mar 2025 17:08:35 +0200
Message-ID: <20250317150835.30564-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
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

Disable FBC in case PSR2 selective fetch is enabled for all
platforms from display version 12. Later on there will be
mechanism to select between selective fetch and FBC based
on the dirty rect percentage.

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b6978135e8ad..3c792b465727 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1463,14 +1463,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Display 12+ is not supporting FBC with PSR2.
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
-	 *
-	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
-	 * coexist. So if PSR2 selective fetch is supported then mark that
-	 * FBC is not supported.
-	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
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

