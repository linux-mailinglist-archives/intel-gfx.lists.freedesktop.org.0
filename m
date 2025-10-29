Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84828C19274
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 09:47:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 140C810E755;
	Wed, 29 Oct 2025 08:47:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1qEaVlj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BFF210E750;
 Wed, 29 Oct 2025 08:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761727632; x=1793263632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zJC3NPnmXG+WpW1FPMx7WRH4trwU+N5bxKLjQNekUp4=;
 b=E1qEaVljrb3qsHKp74sMiwK2QCT3axavcaVjkujv2WZcti4Ronm5sMei
 vi136z5N8LOkDMps5KH9tH3JsMX0GIHn0CZAWNtFKoLhYkMcAis6VOraK
 4JcYX4toKFqkMBm3p5t+YwKBW41MSDknP5y02oyumWHU6Wr09geJf55i9
 n5+Pp9vtxr6Fw1KB6mZIJZMenqJvduaH2eM6luVoqW10NkcsUC28cIYtU
 hoAOqVtPKY0w+Hr3JbBriYRNBKrWSNrnyXfb98mXsrS4I1Hr7fGuX2nZZ
 2hjnHED66SxiPnrZRSaDtXSm0XloxzHYpwBepoBa1wjxF0B+Q5wE4LwGu A==;
X-CSE-ConnectionGUID: LuNrX60cTnSMABQawKSqIw==
X-CSE-MsgGUID: hozPq+Z0Tbmq5ln7kRpJnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="75187204"
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="75187204"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:12 -0700
X-CSE-ConnectionGUID: lg9e3Dy4SDqwzVbgKb0Rhg==
X-CSE-MsgGUID: QiNBz/+VS9qCgVVAvvAz7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,263,1754982000"; d="scan'208";a="190728032"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.242])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 01:47:10 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 5/9] drm/i915/scaler: Call skl_update_scaler_crtc() earlier
Date: Wed, 29 Oct 2025 10:46:43 +0200
Message-ID: <20251029084647.4165-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
References: <20251029084647.4165-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Move the skl_update_scaler_crtc() call into intel_crtc_compute_config().
It no longer has any dependency on CDLCK/etc. so it doesn't need to be
done so late.

The fastset/modeset checks are redundant now as that's exactly
when intel_crtc_compute_config() is called.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 100535f5409f..b4f5df88d172 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2405,6 +2405,7 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2432,6 +2433,12 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	if (DISPLAY_VER(display) >= 9) {
+		ret = skl_update_scaler_crtc(crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
@@ -4228,13 +4235,6 @@ static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
 	}
 
 	if (DISPLAY_VER(display) >= 9) {
-		if (intel_crtc_needs_modeset(crtc_state) ||
-		    intel_crtc_needs_fastset(crtc_state)) {
-			ret = skl_update_scaler_crtc(crtc_state);
-			if (ret)
-				return ret;
-		}
-
 		ret = intel_atomic_setup_scalers(state, crtc);
 		if (ret)
 			return ret;
-- 
2.49.1

