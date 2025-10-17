Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5266BEA8CC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B6E410EC7D;
	Fri, 17 Oct 2025 16:14:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZMgi+W4X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6790110EC7F;
 Fri, 17 Oct 2025 16:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717682; x=1792253682;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AeJ8fqvEfCNT5jzbvNc0ihxfK40aDV0GjtiNdIM2aio=;
 b=ZMgi+W4Xy2fx/+jrfokfpOSjVs8jtTKFYSVuFKv7YXGzjYkLNvavFEn+
 y1TCoXFs+2xgYXRq9B4EwYIBA4br9hxNaoLESieb2G3Zxoir6SblsqMqK
 izz5JlYwBCkGfPkMYl3jQYakIWXH2sZ2AXy9Qy97AvPhMBT9zpVWT3BWi
 i2h346L0OeLziZzHZ4amJx5KMMIuKs8oAkNqym84B3+wMi9xTugSNdpHs
 UAhTStD9CFFW+Jn0sZJKIb/84lcBYzHJjcYBM3QegjvzdZq8ul20YYw6o
 riEB5iZV24NRxv0IN7IUrFAB14dBk6jyERTHSqKbl52EKFayNbw0eHtsB w==;
X-CSE-ConnectionGUID: otXatWriQL+pUzao7E44Nw==
X-CSE-MsgGUID: R/L5M17sSVyzRLFQFSCFXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="61961796"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61961796"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:42 -0700
X-CSE-ConnectionGUID: 2lMdKDjkT+aL+Y5LOHnupQ==
X-CSE-MsgGUID: focL4nH+QdCqzZgWLjcS1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="187026487"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 5/9] drm/i915/scaler: Call skl_update_scaler_crtc() earlier
Date: Fri, 17 Oct 2025 19:14:13 +0300
Message-ID: <20251017161417.4399-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 211761c5b72a..0c483a4994c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2406,6 +2406,7 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
 static int intel_crtc_compute_config(struct intel_atomic_state *state,
 				     struct intel_crtc *crtc)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
 	int ret;
@@ -2433,6 +2434,12 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 
 	intel_vrr_compute_guardband(crtc_state);
 
+	if (DISPLAY_VER(display) >= 9) {
+		ret = skl_update_scaler_crtc(crtc_state);
+		if (ret)
+			return ret;
+	}
+
 	return 0;
 }
 
@@ -4223,13 +4230,6 @@ static int intel_crtc_atomic_check_late(struct intel_atomic_state *state,
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

