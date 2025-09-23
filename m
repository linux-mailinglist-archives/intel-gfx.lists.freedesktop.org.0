Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD74BB96FE1
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E18710E662;
	Tue, 23 Sep 2025 17:20:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q1sVWD5X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D4EC10E662;
 Tue, 23 Sep 2025 17:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648009; x=1790184009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zZ2cf2daSGlaosH+hF5AwdOZC3t+iCTeKrs6GsMmkwY=;
 b=Q1sVWD5XjuzF8dCXnTIf4qeuv0o0TA0gxRMTUeEWKJKJ2jue58CZE25n
 F2uKNbbagQdHmt+fDpSHaN4X01Cm7k5Euj57yJ7pBngO+m9JbpQMkBr3R
 atjcWGkMvY352k4ffd4ePpjzZidtbf07/4ZEhn/EphEN+C+ro+vWOI2Um
 yInbzqUfbOOhy79P+GC2KANlTN5cEOTUg84igaXor1PaM81khAn82DMZI
 DZwA/LqmfXRy51rsLlIoLQ6VJ0cPRArYw0MZpDTdqKqCO9AXrP/DU4hKb
 tbWtiOmYpFZwnmHqDaMaGWxaiKyrln5JDmQ0vBWGbuRhMdeaHNhSv41rC w==;
X-CSE-ConnectionGUID: GTVgAbKKQqCQSpEdQOfU8A==
X-CSE-MsgGUID: oNVJlNadTMW3xGEMjJGRyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60990988"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60990988"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:09 -0700
X-CSE-ConnectionGUID: RkyPg5ALSs22DcdBbUaw9w==
X-CSE-MsgGUID: rosmPa0URqWmOzvyv5YtlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898579"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:08 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/20] drm/i915/cdclk: Extract glk_cdclk_audio_wa_needed()
Date: Tue, 23 Sep 2025 20:19:27 +0300
Message-ID: <20250923171943.7319-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
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

Extract the glk audio w/a check into a small helper. We'll
have other uses for this later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index b54b1006aeb0..05d9f488895e 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2831,6 +2831,14 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 	return min_cdclk;
 }
 
+static bool glk_cdclk_audio_wa_needed(struct intel_display *display,
+				      const struct intel_cdclk_state *cdclk_state)
+{
+	return display->platform.geminilake &&
+		cdclk_state->active_pipes &&
+		!is_power_of_2(cdclk_state->active_pipes);
+}
+
 static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
@@ -2887,8 +2895,7 @@ static int intel_compute_min_cdclk(struct intel_atomic_state *state)
 	 * by changing the cd2x divider (see glk_cdclk_table[]) and
 	 * thus a full modeset won't be needed then.
 	 */
-	if (display->platform.geminilake && cdclk_state->active_pipes &&
-	    !is_power_of_2(cdclk_state->active_pipes))
+	if (glk_cdclk_audio_wa_needed(display, cdclk_state))
 		min_cdclk = max(min_cdclk, 2 * 96000);
 
 	if (min_cdclk > display->cdclk.max_cdclk_freq) {
-- 
2.49.1

