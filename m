Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7183DA18E58
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:30:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158C610E69F;
	Wed, 22 Jan 2025 09:30:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C4LG8nNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8340D10E6A0;
 Wed, 22 Jan 2025 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737538233; x=1769074233;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nN9C9wtx4sawb7ch9Ipovk90jG7UMVvTXS9O9dVn2vs=;
 b=C4LG8nNFKQpDFLoSP53z4tUmBRo3p30SRJUgLsMpA9Tv6f11M96f/aUy
 WI8WllDPWOoUOEXJgorylws5yeaNxalsIcAXdZRra/seicqWDR09eJ7+Y
 RyVmyMQmi4yDR36C/bYG3U5d9dVSsaUFLCXSbtTN3VNSZXjjfqiumxwKw
 wyxlqI0J9bpNObIEK/7dfaeA3BORaacvdNHyzw2XWvH+4rzJOL10FO/wx
 pvVYSwrw32bPn/gpU9RYH8tgWXQp3ubbddTisJoVTzWVcVJsmB/aaSpFD
 7RfR1Z8M808nEan1iHgRJVSO7JNyJ30G+f9Xdvn8MvGlxkrWq1UukhSDF w==;
X-CSE-ConnectionGUID: 2Bn/zhKKTtaK+ESDuWR64A==
X-CSE-MsgGUID: Qfl5srUKTriB9d/SJmpsHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38156746"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38156746"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:33 -0800
X-CSE-ConnectionGUID: iZHqeiQpRW+MrabaX8WGxA==
X-CSE-MsgGUID: 3Wdzrx68Sainh1g5pgrjUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137929406"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.31])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:30:31 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v4 3/6] drm/i915/xe3: disable FBC if PSR2 selective fetch is
 enabled
Date: Wed, 22 Jan 2025 11:30:03 +0200
Message-ID: <20250122093006.405711-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250122093006.405711-1-vinod.govindapillai@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
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

It is not recommended to have both FBC and PSR2 selective fetch
be enabled at the same time in a plane. If PSR2 selective fetch
or panel replay is on, mark FBC as not possible in that plane.

v2: fix the condition to disable FBC if PSR2 enabled (Jani)

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ab9649dd606c..7eefe699a0e6 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1338,9 +1338,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Display 12+ is not supporting FBC with PSR2.
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
+	 *
+	 * In Xe3, PSR2 selective fetch and FBC dirty rect feature cannot
+	 * coexist. So if PSR2 selective fetch is supported then mark that
+	 * FBC is not supported.
+	 * TODO: Need a logic to decide between PSR2 and FBC Dirty rect
 	 */
-	if (IS_DISPLAY_VER(display, 12, 14) && crtc_state->has_sel_update &&
-	    !crtc_state->has_panel_replay) {
+	if ((IS_DISPLAY_VER(display, 12, 14) || DISPLAY_VER(display) >= 30) &&
+	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.43.0

