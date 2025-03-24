Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD05BA6DBE0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 417E010E431;
	Mon, 24 Mar 2025 13:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EtML/ux6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9114710E427;
 Mon, 24 Mar 2025 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823887; x=1774359887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xwKr3JPf2XJN07/QRIxfIL4iTXbxAB5p90+O6zkCV1c=;
 b=EtML/ux6LzOMoCMXbnoUOO6Vs08jlyRijz34THnralPhGOtsBs9WrzZE
 ggac60eknt2aRQDId4OZwORaGGKdum2kJaDqoCbenp29CE5YDMqRMy/4F
 nGowCpJD/2Iv/IQlV9RjjrHkZC+MXemP2BceTDzb7wMOiR+DzLEVLyatG
 xd+CR9zF4Pj32r929/h1HxJ8dIrvpecFTvgkpYM7BqZktWUoh4XG4xdLh
 YDnhHzN12oHCRY+E1fbU8OqFGiU95L92/Zu+jVVgq0p574wURh/w/t6mP
 G/TVPqmDMeXOMAPjN1BrhjkVp8d/G6Jb+dd/3Rbn/WHxRSYKp0m0/Ijjy A==;
X-CSE-ConnectionGUID: 5mumeb5ESZCdWkgT9aatnA==
X-CSE-MsgGUID: 5T2RZs0FQlWoayk24ff4Gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43955715"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43955715"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:47 -0700
X-CSE-ConnectionGUID: wgzk0m4LR32GyZ0LhBcSCg==
X-CSE-MsgGUID: YHxUMOjETTWQuzxviuwaBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124040564"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:44:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 05/16] drm/i915/vrr: Refactor condition for computing vmax and
 LRR
Date: Mon, 24 Mar 2025 19:02:37 +0530
Message-ID: <20250324133248.4071909-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

LRR and Vmax can be computed only if VRR is supported and vrr.in_range
is set. Currently we proceed with vrr timings only for VRR supporting
panels and return otherwise. For using VRR TG with fix timings, need to
continue even for panels that do not support VRR.

To achieve this, refactor the condition for computing vmax and
update_lrr so that we can continue for fixed timings for panels that do
not support VRR.

v2: Set vmax = vmin for non VRR panels. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c682c487eb25..e68c13ae21b3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -365,14 +365,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
 	crtc_state->vrr.in_range =
 		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
-	if (!crtc_state->vrr.in_range)
-		return;
-
-	if (HAS_LRR(display))
-		crtc_state->update_lrr = true;
 
 	vmin = intel_vrr_compute_vmin(crtc_state);
-	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+
+	if (crtc_state->vrr.in_range) {
+		if (HAS_LRR(display))
+			crtc_state->update_lrr = true;
+		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+	} else {
+		vmax = vmin;
+	}
 
 	if (vmin >= vmax)
 		return;
-- 
2.45.2

