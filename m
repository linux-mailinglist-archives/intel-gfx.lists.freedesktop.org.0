Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ECABF302D
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B199E10E4B4;
	Mon, 20 Oct 2025 18:50:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bkc03JVX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DF9010E4B4;
 Mon, 20 Oct 2025 18:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986246; x=1792522246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pLD2Vg+TmrD5eEPitSMrUXA3ZtAfIJxBMunug1Tz2pM=;
 b=Bkc03JVXdAwSlgnRAyEsrKXNW+dU/BqUwMQ0HYbEB+pqF9MbjQx1QzML
 UHoO/lLS7+6pZECdhyTHiUBhJIkyUPaHXQsOvhRXxzZLW/gLxQYplKy1J
 nXjCv+J7qUFq5k3QJsQRLw5ZIXZBfGZg5swQ14ZPEwENjrUxMbBBgz8ks
 fAzV72Kltgmfywi63UP5c/SuJmCE4J38wK7jyf5wkRrT+eg8yy0FfSvEF
 L+mzxfEGiHQeT8yUx11iLw5EiprOa6aM5MAtpYQSrGwJZRzKTV7GhDikG
 gTI9XxiT0E7UglpoevH5ifloorI49ReYAwjZauQG3kUpxdRoXCfs9YshJ w==;
X-CSE-ConnectionGUID: srrrgnQaTYq56o7RKczIgA==
X-CSE-MsgGUID: 4GdGRjJSQpCW0RD/7T/ILg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88576210"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="88576210"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:46 -0700
X-CSE-ConnectionGUID: bOqmCHJ6RXS0Fl4XDmJizQ==
X-CSE-MsgGUID: C9AMkdm5SKudQ8jjlZN7pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="182585796"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/22] drm/i915/vrr: Fix intel_vrr_always_use_vrr_tg()==true
 on TGL
Date: Mon, 20 Oct 2025 21:50:17 +0300
Message-ID: <20251020185038.4272-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
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

On TGL the hardware always needs TRANS_VBLANK.VBLANK_START
to be programemd with VACTIVE+SCL. Make it so.

The current way of programming it with crtc_vblank_start only
works for the legacy timing generator, as there the delayed
vblank does happen exactly at VACTIVE+SCL.

But if one tries to change intel_vrr_always_use_vrr_tg() to
always use the VRR timing generator on TGL, crtc_vblank_start
will point to the VRR timing generator's delayed vblank,
which may not match VACTIVE+SCL.

Fortunately the state checker caught the issue right away
when I tried intel_vrr_always_use_vrr_tg()==true on TGL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8b4619de347..09d3eb422ad4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2631,6 +2631,9 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 		 * to make it stand out in register dumps.
 		 */
 		crtc_vblank_start = 1;
+	} else if (DISPLAY_VER(display) == 12) {
+		/* VBLANK_START - VACTIVE defines SCL on TGL */
+		crtc_vblank_start = crtc_vdisplay + crtc_state->set_context_latency;
 	}
 
 	if (DISPLAY_VER(display) >= 4)
@@ -2721,6 +2724,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 		 * to make it stand out in register dumps.
 		 */
 		crtc_vblank_start = 1;
+	} else if (DISPLAY_VER(display) == 12) {
+		/* VBLANK_START - VACTIVE defines SCL on TGL */
+		crtc_vblank_start = crtc_vdisplay + crtc_state->set_context_latency;
 	}
 
 	/*
-- 
2.49.1

