Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84611B95FF5
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435EF10E614;
	Tue, 23 Sep 2025 13:24:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XZ/bxwBe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A03A210E182;
 Tue, 23 Sep 2025 13:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633847; x=1790169847;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g4/GDx6OJY64pY8tMCOex7JNBIIW+WBxxj1CqAjh020=;
 b=XZ/bxwBeM0xZ0JowSEYzlj99UJ99vm6azDizyp57Ayr5rvTuQoCdgAxO
 g5wH5TAPTBVW6ISs/DdhVbaoN5pm0aduqg/rTsnj8r2BQLhXhZwKBLuRt
 oBHSz5icnLXDgigOMNmHgm0wjRu5xSk9tVSHw6ZATUhQ1wr6eshRZjm80
 jDL9YCZQIM6mDgR1tbaSNWK9QXKlz1s0viXMMeYAcnG/X1bCtU+GSSf2m
 TAYcKwPmTJENdEoOT7ZFJ3aPUfleRwvJCbtGZsL8EM/aMknToNLzw8zDG
 NGdZhXOmq4M+Nhln09WgtgYserix2K23tEErz/i67xJsHxUHIVH4bd3MQ g==;
X-CSE-ConnectionGUID: RAZ/VOSFSGqH/3rJunNYdw==
X-CSE-MsgGUID: RqyFqgwKRU6BWQTIRyDxXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480525"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480525"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:06 -0700
X-CSE-ConnectionGUID: zsYKrGMBSUe3Lowt/HQUlA==
X-CSE-MsgGUID: /jX9eYpFS2+2TM5qfD3V4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689542"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:05 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/9] drm/i915/psr:
 s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
Date: Tue, 23 Sep 2025 18:40:35 +0530
Message-ID: <20250923131043.2628282-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

Rename intel_psr_min_vblank_delay to intel_psr_min_set_context_latency
to reflect that it provides the minimum value for 'Set context
latency'(SCL or Window W2) for PSR/Panel Replay to work correctly across
different platforms.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 +-
 drivers/gpu/drm/i915/display/intel_psr.c     | 6 +++---
 drivers/gpu/drm/i915/display/intel_psr.h     | 2 +-
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 18b9baa96241..679c2a9baaee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2369,7 +2369,7 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
 	if (!HAS_DSB(display))
 		return 0;
 
-	vblank_delay = max(vblank_delay, intel_psr_min_vblank_delay(crtc_state));
+	vblank_delay = max(vblank_delay, intel_psr_min_set_context_latency(crtc_state));
 
 	return vblank_delay;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 01bf304c705f..49ccd0864c55 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2360,12 +2360,12 @@ void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 }
 
 /**
- * intel_psr_min_vblank_delay - Minimum vblank delay needed by PSR
+ * intel_psr_min_set_context_latency - Minimum 'set context latency' lines needed by PSR
  * @crtc_state: the crtc state
  *
- * Return minimum vblank delay needed by PSR.
+ * Return minimum SCL lines/delay needed by PSR.
  */
-int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state)
+int intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 077751aa599f..9147996d6c9e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -77,7 +77,7 @@ void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
 void intel_psr_trigger_frame_change_event(struct intel_dsb *dsb,
 					  struct intel_atomic_state *state,
 					  struct intel_crtc *crtc);
-int intel_psr_min_vblank_delay(const struct intel_crtc_state *crtc_state);
+int intel_psr_min_set_context_latency(const struct intel_crtc_state *crtc_state);
 void intel_psr_connector_debugfs_add(struct intel_connector *connector);
 void intel_psr_debugfs_register(struct intel_display *display);
 bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_crtc_state *crtc_state);
-- 
2.45.2

