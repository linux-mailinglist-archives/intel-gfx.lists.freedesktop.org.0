Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9F7BF3069
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:51:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A910110E4D2;
	Mon, 20 Oct 2025 18:51:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KpCMr/Px";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBC010E4D2;
 Mon, 20 Oct 2025 18:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986311; x=1792522311;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sCkib+IYknqcqqFunA9fAFlnQOSXo6Xi5raZj9ebZqU=;
 b=KpCMr/PxSaCNXUZQVxds3WZxhtANMO77YETadGh4bo4I8A+xHJd0K4Mg
 nWzf3wCMaVvC30pEG2S++UyEUku+1cGwTBQfmmFffYq7ES9BWZMvWXH+s
 ngCpqMDGY/IwQgRTjJyhRljVTGP2aOsOH0RyW9fiHEwKZ5a5HRazk/0ir
 ZViTLOWuviiBTl73dx4Ha09sWOgmUxb3Sot+UhjNYkXJlBwN++BhcInDe
 gQ8wYb10wz7TjmlidLyjKhkk1YgsRTQco//LyYYg1k1G6RzXXBYtmU7HL
 04nQmWOxxW47XuZfEwiMV1vA3khj5spekvQ2SIET26T1wxukneu1yX/gc g==;
X-CSE-ConnectionGUID: EgTA1KVoSD+n0GWuBx/Xkw==
X-CSE-MsgGUID: Hm5TbjZLTEuWZ63xC2ahsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="50679000"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="50679000"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:50 -0700
X-CSE-ConnectionGUID: 6soNQqwbQbWYfCEXRHOpcA==
X-CSE-MsgGUID: 9W8YYVbnQWS0a+EIiDpm4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="183241706"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:51:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 18/22] drm/i915/vrr: s/crtc_state/old_crtc_state/ in
 intel_vrr_transcoder_disable()
Date: Mon, 20 Oct 2025 21:50:34 +0300
Message-ID: <20251020185038.4272-19-ville.syrjala@linux.intel.com>
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

We generally use the 'old_crtc_state' in the disable functiosn to
make it clear these generally get called when the hardware is
still using the old crtc state rather than the new crtc state.
Rename the intel_vrr_transcoder_disable() 'crtc_state' parameter
to 'old_crtc_state' for consistency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 29143dd092a8..71c5d8bf7557 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -770,15 +770,15 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
 		intel_vrr_tg_enable(crtc_state, false);
 }
 
-void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
+void intel_vrr_transcoder_disable(const struct intel_crtc_state *old_crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_display *display = to_intel_display(old_crtc_state);
 
-	if (!intel_vrr_possible(crtc_state))
+	if (!intel_vrr_possible(old_crtc_state))
 		return;
 
 	if (intel_vrr_always_use_vrr_tg(display))
-		intel_vrr_tg_disable(crtc_state);
+		intel_vrr_tg_disable(old_crtc_state);
 }
 
 bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
-- 
2.49.1

