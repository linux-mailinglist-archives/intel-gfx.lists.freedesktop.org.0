Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95844B96FD3
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23F8610E212;
	Tue, 23 Sep 2025 17:19:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qdc+6uaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D34010E158;
 Tue, 23 Sep 2025 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758647998; x=1790183998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i5gjmvAkMrbA80w6IG3QXbZxqD+NfLxXvoneIwjLNWM=;
 b=Qdc+6uaVGrfFDuXHUc1WYkGxF1C/tR2z3ldzul5WIzQ3KT2vbKC4qO0K
 Ly5nvJWKW1Ubdz51IiSrt+UTsL/9jbSz9ZtOH22EYN/TQ7ZumoYLiUIcg
 cef2C8gpzTkLZHi8FjcAxAqXBhg25YrvlAh7guk+uc4Izzv/eAL83krT3
 2r09PArRY/s8T5tfIYmp6bhLnnV9ovVFrc3eeP9BmrYNSfY4LMXeR/RMR
 e43yS5bST87O7urG11c/RgIyb6GxsOL+bA5mLNP1KDBT9PV13oacNGznO
 9OW+6MippFTZFYioaes0Lma13mrlw+lYDMB3cry7AEWrlVOiCkuBJa83Z w==;
X-CSE-ConnectionGUID: PtQPxbPeSfyu6kSASU8Ejw==
X-CSE-MsgGUID: 6Dq9uhJbRyupKm7GzR/DsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="60990969"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="60990969"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:56 -0700
X-CSE-ConnectionGUID: Blpl4xJvRhWuEOc86fXWtA==
X-CSE-MsgGUID: 3yHxc+LvQW+9EoEERpYWow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="176898379"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/20] drm/i915: Introduce intel_crtc_active_changed() and
 intel_any_crtc_active_changed()
Date: Tue, 23 Sep 2025 20:19:24 +0300
Message-ID: <20250923171943.7319-3-ville.syrjala@linux.intel.com>
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

Introduce helpers that determine whether any crtc is changing
its active state. Will be useful for cdclk stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h |  3 +++
 2 files changed, 24 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 0e089c191841..f3939eeb27a3 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -769,3 +769,24 @@ bool intel_any_crtc_enable_changed(struct intel_atomic_state *state)
 
 	return false;
 }
+
+bool intel_crtc_active_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state)
+{
+	return old_crtc_state->hw.active != new_crtc_state->hw.active;
+}
+
+bool intel_any_crtc_active_changed(struct intel_atomic_state *state)
+{
+	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (intel_crtc_active_changed(old_crtc_state, new_crtc_state))
+			return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index eae88e604e08..cee09e7cd3dc 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -61,5 +61,8 @@ void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
 bool intel_any_crtc_enable_changed(struct intel_atomic_state *state);
 bool intel_crtc_enable_changed(const struct intel_crtc_state *old_crtc_state,
 			       const struct intel_crtc_state *new_crtc_state);
+bool intel_any_crtc_active_changed(struct intel_atomic_state *state);
+bool intel_crtc_active_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state);
 
 #endif
-- 
2.49.1

