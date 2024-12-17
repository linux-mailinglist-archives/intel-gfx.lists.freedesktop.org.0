Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C089F4645
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 09:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFA6510E88E;
	Tue, 17 Dec 2024 08:43:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G9nOd3D4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BAE10E88B;
 Tue, 17 Dec 2024 08:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734425003; x=1765961003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n+akX038xYTls5xc9IWMnItku7cJ95Kk7syP+iEnomY=;
 b=G9nOd3D4T240oY5ucNu23lgD1oS00GecoT/kz2fUQlqnU9IoJG0v9dls
 YIMpS55hw169nohHQQSL7MxRv1m3edV/L3D+9Ztwt5qqk/SqScw+wXocc
 Rjdg76Se1ZFLL+nSE/PxnQbinnepR2tPbelJ9JOp7GSWfcsSTLs/3v566
 nebkiObkNswo7WucwyRIDUHQdnwglT2ZJIDS3yFeSBzP5B93EwPNbg/DO
 WbzxRQPMWinLOUYe8vKRSnALSmuxBXNTA5kycTKnz8+AkUdP9NuAr5T9F
 UMCheGIfg8ibVwgXxSXy2RSlG87w/fRC8+JZy5YNPosVTsIE0988OAxfz Q==;
X-CSE-ConnectionGUID: +8eizzeqSTGlOEnpFDp+Ew==
X-CSE-MsgGUID: tTRkIYmbTBOK6TYpb2zDQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="38614960"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="38614960"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:23 -0800
X-CSE-ConnectionGUID: 0BX4kIrpROCf9+kem7k8Aw==
X-CSE-MsgGUID: YcWVuVdGRTevvXSn+mrd2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97703952"
Received: from ettammin-desk.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.122])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 00:43:21 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 santhosh.reddy.guddati@intel.com, jani.saarinen@intel.com
Subject: [PATCH v2 3/3] drm/i915/xe3: disable FBC if PSR2 selective fetch is
 enabled
Date: Tue, 17 Dec 2024 10:42:45 +0200
Message-Id: <20241217084245.246218-4-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241217084245.246218-1-vinod.govindapillai@intel.com>
References: <20241217084245.246218-1-vinod.govindapillai@intel.com>
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
index 637b8d21ed1d..23e1f7c35d42 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1432,9 +1432,14 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
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
2.34.1

