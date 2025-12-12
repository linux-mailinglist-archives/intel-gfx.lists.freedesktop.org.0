Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1033CB9225
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:29:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4217710E8D6;
	Fri, 12 Dec 2025 15:29:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XgbZYpOg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6123610E8D9;
 Fri, 12 Dec 2025 15:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765553373; x=1797089373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dvGF0Lcms1WDzxl9pz4fVPhLR+jnP1QE1Jz2OdpoC9s=;
 b=XgbZYpOgJhWORV8Olf4F6jtsG3SDcujqDQHUa98yBKunDHCdEXLLWT8t
 vGHaBQ1fPY/e9ftJV1cXElRlDgjOQJCr2sIrUAtdPuMBeQLUTfrnoccw0
 NnQ/m+kjeoOgY5ZNC7StvnXZuA8/qhlOvBk3c/Wc4tv19vfGgqFYCnEdj
 X4gRcO+OU1b6WoY1YJPAb3qajzeVO3lo5Erm3qVgPzxkYGGEJO4gi29Mr
 O7xHka+GT5VNrUFIYRi6YWRx7c/OrlW7KafOtN6NXMFpye2Lz2B2516oH
 PCC5XC7wOhMd/QtbVei/SM4ZX+m9CHHIGtVVDaem79HLDw/SjJiDQab5H Q==;
X-CSE-ConnectionGUID: AE90JbrqTGavivLNXVdN0g==
X-CSE-MsgGUID: zn5JWpfGQeuLtQsK1S4mag==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="71402563"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="71402563"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:33 -0800
X-CSE-ConnectionGUID: CWuAqB4WRw2I4LgkftsMWw==
X-CSE-MsgGUID: RkInpGCfSCW3zdEIBfKUTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="228171869"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:29:32 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 11/13] drm/i915: Carve intel_atomic_commit_type() up a bit
Date: Fri, 12 Dec 2025 17:28:45 +0200
Message-ID: <20251212152847.13679-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
References: <20251212152847.13679-1-ville.syrjala@linux.intel.com>
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

We can't currently do full modesets, fastsets, nor async
flips via either DSB nor flip qeueu. Let's checks for those
up front to reduce the clutter in the if statements.

And while at it, throw in some TODO comments to remind
us that we may want to implement these via DSB/flip queue
eventually.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++++-------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f09a0b3860d7..395942342fb8 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7279,21 +7279,27 @@ intel_atomic_commit_type(struct intel_atomic_state *state,
 	if (state->base.legacy_cursor_update)
 		return INTEL_COMMIT_MMIO;
 
-	/* FIXME deal with everything */
+	/* TODO maybe enable/disable planes via DSB/flip queue during modeset? */
+	if (intel_crtc_needs_modeset(new_crtc_state))
+		return INTEL_COMMIT_MMIO;
+
+	/* TODO implement fastsets via DSB/flip queue */
+	if (intel_crtc_needs_fastset(new_crtc_state))
+		return INTEL_COMMIT_MMIO;
+
+	/* TODO implement async flips via DSB/flip queue */
+	if (new_crtc_state->do_async_flip)
+		return INTEL_COMMIT_MMIO;
+
+	/* TODO handle VRR with flip queue */
 	if (intel_flipq_supported(display) &&
-	    !new_crtc_state->do_async_flip &&
 	    !new_crtc_state->vrr.enable &&
 	    !new_crtc_state->has_psr &&
-	    !intel_crtc_needs_modeset(new_crtc_state) &&
-	    !intel_crtc_needs_fastset(new_crtc_state) &&
 	    !intel_crtc_needs_color_update(new_crtc_state))
 		return INTEL_COMMIT_FLIPQ;
 
 	if (intel_dsb_supported(display) &&
-	    !new_crtc_state->do_async_flip &&
-	    (DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr) &&
-	    !intel_crtc_needs_modeset(new_crtc_state) &&
-	    !intel_crtc_needs_fastset(new_crtc_state))
+	    (DISPLAY_VER(display) >= 20 || !new_crtc_state->has_psr))
 		return INTEL_COMMIT_DSB;
 
 	return INTEL_COMMIT_MMIO;
-- 
2.51.2

