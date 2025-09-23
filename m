Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE79B96FD2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F80710E158;
	Tue, 23 Sep 2025 17:19:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GcFD3/ey";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2816D10E158;
 Tue, 23 Sep 2025 17:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758647997; x=1790183997;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yeu0aKZW0fdmeQsIcMBgBjVezwukff4I03LuUjoiAMI=;
 b=GcFD3/eyJ6GEjljPIfaLwL11Ro3mfRRPKhW/C05u/zVrw4wFLVqbcEXU
 C0vJCDDv8bKZJt0WtSn5KAWv0WNORW5QjgEdcu08f5p29lBdrnNHPLv2s
 nDgqscC+4sjTPyfEFQSaiAsCA5ZYzC694EBN2FvN5TeWirisBT/A7ehKz
 1HswK1MIlWvbMNG+/1o0GD3JRvs2WjEowjAboogIPx+w9gQLWFWmtN8B9
 OxrEj/BtORVEfDfYmBDhihz0XlyPmL6vUHBWq/SxA1JGDKY2pQ5Wp7KAg
 ZwsUUdnu9lHme1hIJKCpno1MBwTt/96tq7NSW17hE/KXwxmIwZbOaRQLL Q==;
X-CSE-ConnectionGUID: Yg/Eh0SWTgum7pMHftTZsg==
X-CSE-MsgGUID: J0o48pt1QV+ydJCYnucKyg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48502073"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48502073"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:51 -0700
X-CSE-ConnectionGUID: u88uHZsCQ0qQuX2u5zlSBQ==
X-CSE-MsgGUID: el1sl1OxRWiW3rpRm8luvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="181134353"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:19:50 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 01/20] drm/i915: Introduce intel_crtc_enable_changed() and
 intel_any_crtc_enable_changed()
Date: Tue, 23 Sep 2025 20:19:23 +0300
Message-ID: <20250923171943.7319-2-ville.syrjala@linux.intel.com>
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
its enabled state. Will be useful for cdclk stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h |  4 ++++
 2 files changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index a187db6df2d3..0e089c191841 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -748,3 +748,24 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
 out:
 	intel_psr_unlock(new_crtc_state);
 }
+
+bool intel_crtc_enable_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state)
+{
+	return old_crtc_state->hw.enable != new_crtc_state->hw.enable;
+}
+
+bool intel_any_crtc_enable_changed(struct intel_atomic_state *state)
+{
+	const struct intel_crtc_state *old_crtc_state, *new_crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (intel_crtc_enable_changed(old_crtc_state, new_crtc_state))
+			return true;
+	}
+
+	return false;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 8c14ff8b391e..eae88e604e08 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -58,4 +58,8 @@ void intel_wait_for_vblank_if_active(struct intel_display *display,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
 
+bool intel_any_crtc_enable_changed(struct intel_atomic_state *state);
+bool intel_crtc_enable_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state);
+
 #endif
-- 
2.49.1

