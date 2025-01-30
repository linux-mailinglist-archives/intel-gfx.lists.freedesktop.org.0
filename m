Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E12A23639
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 22:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3286010E9DC;
	Thu, 30 Jan 2025 21:01:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ec26PS/T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7534010E9E2;
 Thu, 30 Jan 2025 21:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738270865; x=1769806865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Qj+l+pxyse1z4wwgaK9lg+GZBlYCKWj7TeKSI7Qto8Y=;
 b=Ec26PS/TXCHJV4weHj0PleegNIRr7lO5l5PsC5NCoD3fwwOgLf2hR48u
 uxaqG4fnPmBIIPtaYN3Zjpf1iPJ6oHdvWl7NnQUr+TUrJuYrmnSyUC2Vb
 2H3nj80mF8sk3WLOh40L1mnaThK+Fh6QmF/NHSt0WDt5qRXp1KKhbsTOq
 nvCmyX5oBZI3UZ96XCJtpXf8ynEpS0a827its7uNV+TCuJ01UI7Uk5Ib6
 /ptkM+tfPV9SVGBCDDFe2xhj0nbkeIXly8nrVuuvURPwjkRA3tAUIIzGC
 7Q2UqB1aa3YDGkAPvUImB/ggVmLw0nD8dCX1XH+zSFhgfmuh8i6Wh1gqc g==;
X-CSE-ConnectionGUID: pvv3K7puQqSNOv/A00gv8w==
X-CSE-MsgGUID: PIa9A806TBOSjFhUxRcM/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="42491603"
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="42491603"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:01:05 -0800
X-CSE-ConnectionGUID: C6knJu7DT7K3QAeK2Q6vKg==
X-CSE-MsgGUID: sufbU2VoRPuTx335eSNJCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,246,1732608000"; d="scan'208";a="110015991"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.118])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 13:01:03 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v6 7/7] drm/i915/xe3: disable FBC if PSR2 selective fetch is
 enabled
Date: Thu, 30 Jan 2025 23:00:26 +0200
Message-ID: <20250130210027.591927-8-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250130210027.591927-1-vinod.govindapillai@intel.com>
References: <20250130210027.591927-1-vinod.govindapillai@intel.com>
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

It is not recommended to have both FBC dirty rect and PSR2
selective fetch be enabled at the same time. If PSR2 selective
fetch or panel replay is on, mark FBC as not possible.

v2: fix the condition to disable FBC if PSR2 enabled (Jani)

v3: use HAS_FBC_DIRTY_RECT()

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index b17ee1797118..429e213e1dcd 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1481,9 +1481,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
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
+	if ((IS_DISPLAY_VER(display, 12, 14) || HAS_FBC_DIRTY_RECT(display)) &&
+	    crtc_state->has_sel_update && !crtc_state->has_panel_replay) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.43.0

