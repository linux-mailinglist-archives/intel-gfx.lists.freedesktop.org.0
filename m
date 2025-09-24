Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40224B9A3D4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 16:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D17510E72F;
	Wed, 24 Sep 2025 14:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ghrSBvFa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8FAF10E72F;
 Wed, 24 Sep 2025 14:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758724149; x=1790260149;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=g4/GDx6OJY64pY8tMCOex7JNBIIW+WBxxj1CqAjh020=;
 b=ghrSBvFaxaNUyK6ZuPP4LYIvg+USOfWiFQSUM3ZrzBuXMMVxMfpiCj/S
 DaszZaPjMcVSvMO/oG+jpsSFkEspeYxrKISWk/X0+XopSBvXQvmpfrY58
 wpwVp2thm3B+yVyaKbmow89pavbHzLxYrJe9Yqt6JBZOzquDPX6lEJdVG
 sa1/C1IoktfBFMUwhWpdilio6bxHyDxIkCmgf7QdN/kYtgxXadkRjeNtG
 6nAbcGqFeY23pBvD13sLRZ1ATKnhW6s+hjDvVqHPrvsgvon7Voda8wHTs
 9zxFoHY3tBYCX0XK5cckbXeAZNfSRcUYpQ7KzB7WWBqvErl5OkMeWN02j A==;
X-CSE-ConnectionGUID: W021xTE+S/2oj1tGR9jQtw==
X-CSE-MsgGUID: YAU6jvnGSh+uwCSlPljR5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11563"; a="61075906"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="61075906"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:09 -0700
X-CSE-ConnectionGUID: a2KwWv2fRT2EYeqWUJEIbA==
X-CSE-MsgGUID: pZMCtan+RUm25bsHi2Lteg==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 07:29:07 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 01/10] drm/i915/psr:
 s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
Date: Wed, 24 Sep 2025 19:45:33 +0530
Message-ID: <20250924141542.3122126-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
References: <20250924141542.3122126-1-ankit.k.nautiyal@intel.com>
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

