Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09153A59467
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E27D10E433;
	Mon, 10 Mar 2025 12:28:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBTV2s57";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2814210E43A;
 Mon, 10 Mar 2025 12:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609719; x=1773145719;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B2Pa9oy5F/XQ+V9Y9duehMFzAevkPJ45niU5AvgkyMw=;
 b=bBTV2s577RasKhGGLe+diJvb/Q4ZlsqeeEZPM5mspx+yfq4Ksh5UVO+c
 Enn4m9URqyJjWDyM07xyv2pC1MPXDQJFhIoRxFqq9vn/QTT6f17LrVZ06
 FbBmjv8YndoZl7Lv4O6rNpffB8JAy1zdqZnJodaa+6sOkExLy8x1dOkYR
 F8t0XR8stAbZgUUGPu8u+atOzvpXxRPOq79yAj2CZmPEiVznCbKug1raA
 T5rkbd+9C55kp2B6BYEzlBxQtdZ55HX4/glth8elMXeSPu+ntwAXnWsPl
 BOOyWdIqiwhA4HCQFf1lQUTnauyxXAWdXOvcHIs3lQMID7oOslZ0M14tN Q==;
X-CSE-ConnectionGUID: ukXbsA+pTqOR2YS/0Jm8qw==
X-CSE-MsgGUID: Z4f1fAGSSZmBiNZVvS+gsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057311"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057311"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:39 -0700
X-CSE-ConnectionGUID: c1dM3IH+TMyfzLTG8LtZ7g==
X-CSE-MsgGUID: onnxD6MNQzyy1hU4M1+zsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180559"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:37 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/21] drm/i915/vrr: Refactor condition for computing vmax and
 LRR
Date: Mon, 10 Mar 2025 17:46:07 +0530
Message-ID: <20250310121615.1077079-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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
index 622a70e21737..310add32781f 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -363,14 +363,16 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 
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

