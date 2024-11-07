Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA619C05C4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 13:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8117A10E81C;
	Thu,  7 Nov 2024 12:27:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VGt+O7lo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F107110E826
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 12:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730982445; x=1762518445;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oZ+jz4ODpyB3AFc/7/LWQJMWk8VOxtZsMYCOEA9t4VM=;
 b=VGt+O7lo+wG4okVb1eIJ7DZJpXnCLtVmdV9G8q0kiBaRhs+OJOlhn0T3
 BSgOq0gzoYrwQ5VxyA6naFjXt2iz41YD1DOPIrsLaZBpJA1776Mag8xrn
 eb8XFKUR0WTrKgaXTjeQuIXwcqtM6hzzmu04+YwMBDj9wDqWAN6iUAz2I
 k9pDODs8UjJjg9gbzVjZAplZLuzqOnymjDY0b/iCeoWnbL2drEtDlBguX
 /rIF+fZjq/0gX3N2EsUXiRY2BZaBJJr9zQMJGudL0/+5mbJe/2vUYz721
 rbslFxkXGZAVckuEXp9NHbObKflf7BRCj1/U+xM+WvDmQ5HVb7QfwjU5b A==;
X-CSE-ConnectionGUID: z0zeWkM1SgiR1hwBWjncoQ==
X-CSE-MsgGUID: qYrlGq0jSqKqVyX8gXZwJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="34516065"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="34516065"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 04:27:25 -0800
X-CSE-ConnectionGUID: zZiukL4dTN6GLrcP1CwCjA==
X-CSE-MsgGUID: qAoHs8XlTqinWPbi6lVhdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,266,1728975600"; d="scan'208";a="85189537"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 04:27:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 14:27:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 8/8] drm/i915/scaler: Extract intel_allocate_scaler()
Date: Thu,  7 Nov 2024 14:26:58 +0200
Message-ID: <20241107122658.21901-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
References: <20241107122658.21901-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_atomic_setup_scaler() is a mess. Make it a bit less so
by moving the scaler allocation loop into its own function.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 31 ++++++++++++++---------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cefbcabba134..11f73659c1b6 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -291,6 +291,23 @@ int skl_update_scaler_plane(struct intel_crtc_state *crtc_state,
 				 need_scaler);
 }
 
+static int intel_allocate_scaler(struct intel_crtc_scaler_state *scaler_state,
+				 struct intel_crtc *crtc)
+{
+	int i;
+
+	for (i = 0; i < crtc->num_scalers; i++) {
+		if (scaler_state->scalers[i].in_use)
+			continue;
+
+		scaler_state->scalers[i].in_use = true;
+
+		return i;
+	}
+
+	return -1;
+}
+
 static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_state,
 				     int num_scalers_need, struct intel_crtc *crtc,
 				     const char *name, int idx,
@@ -299,20 +316,10 @@ static int intel_atomic_setup_scaler(struct intel_crtc_scaler_state *scaler_stat
 {
 	struct intel_display *display = to_intel_display(crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	int j;
 	u32 mode;
 
-	if (*scaler_id < 0) {
-		/* find a free scaler */
-		for (j = 0; j < crtc->num_scalers; j++) {
-			if (scaler_state->scalers[j].in_use)
-				continue;
-
-			*scaler_id = j;
-			scaler_state->scalers[*scaler_id].in_use = true;
-			break;
-		}
-	}
+	if (*scaler_id < 0)
+		*scaler_id = intel_allocate_scaler(scaler_state, crtc);
 
 	if (drm_WARN(display->drm, *scaler_id < 0,
 		     "Cannot find scaler for %s:%d\n", name, idx))
-- 
2.45.2

