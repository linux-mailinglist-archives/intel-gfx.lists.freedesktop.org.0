Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93190A3AAB4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 22:20:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFEA610E770;
	Tue, 18 Feb 2025 21:20:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fwus53QK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A59210E76E
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2025 21:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739913600; x=1771449600;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EYjwmoQPdtxYFT/17zIRkqSHotkN3JBY6GbgZy1VYV4=;
 b=Fwus53QKHsnU6GrpdtTGdmHBO3HC1q/FQdeiU973JGhi5T5cOijt0Hmo
 XA3RU2zLfflmJbK5N4ai/9Jkm4Ya6h/chk5kx5LDpVaef2NrOgSucEOQw
 1avPilgllMHTguOb5LKupJm5DJ0oAllGdMMBYq9pvfphHTZ1mtCk9QKF8
 /guZwm37wd2S4hSzwj7UK9/rP17JFEKUN/XI7g06y1QJOhwKX4L2o3cQX
 wghYstnwS9+ByNpwiwqKbWlVzUnuUSFCwYMygaa0IdOKvJ7RMbZNl3T+s
 dfjKBZHk6s+2JX+0zFN7FT/bd+eyND7NnkvpQbUJsIqiizWa+YtKi6DCX g==;
X-CSE-ConnectionGUID: FqBZ0YIPQ/q3AcFjL0e3Mg==
X-CSE-MsgGUID: IzHzS1ncSk+BoTa8UBJ9dg==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="39862321"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="39862321"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 13:20:00 -0800
X-CSE-ConnectionGUID: ajNn3/dwRZSQSIWlcqhzZg==
X-CSE-MsgGUID: 40yMxLW9QOmdJ247gwm9lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114693498"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 13:19:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 23:19:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 13/19] drm/i915: Skip some bw_state readout on pre-icl
Date: Tue, 18 Feb 2025 23:19:07 +0200
Message-ID: <20250218211913.27867-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
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

We only compute bw_state->data_rate and bw_state->num_active_planes
on icl+. Do the same during readout so that we don't leave random
junk inside the state.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 30e6f33d6f30..2a669b8535e0 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -809,13 +809,16 @@ static int intel_bw_crtc_min_cdclk(const struct intel_crtc_state *crtc_state)
 static void intel_bw_crtc_update(struct intel_bw_state *bw_state,
 				 const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	bw_state->data_rate[crtc->pipe] =
-		intel_bw_crtc_data_rate(crtc_state);
-	bw_state->num_active_planes[crtc->pipe] =
-		intel_bw_crtc_num_active_planes(crtc_state);
+	if (DISPLAY_VER(display) >= 11) {
+		bw_state->data_rate[crtc->pipe] =
+			intel_bw_crtc_data_rate(crtc_state);
+		bw_state->num_active_planes[crtc->pipe] =
+			intel_bw_crtc_num_active_planes(crtc_state);
+	}
 	bw_state->force_check_qgv = true;
 
 	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
-- 
2.45.3

