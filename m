Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E499C3A85
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D0F710E447;
	Mon, 11 Nov 2024 09:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d7TAO6wj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB0F610E45B;
 Mon, 11 Nov 2024 09:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316220; x=1762852220;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SnndnHidnWah7kAjnEtb7qQbeDRdeOWHJDDxYPUFrhQ=;
 b=d7TAO6wja41AxksvrrG1n4zxnd49udnRy4rRufc/qDWFXwKJKTmEaTH4
 o7I6kd1yq+o63DgaasCym3VI+cHW3SwK4hsl6b7xW/Mh3+uiqJ3GoNP9a
 q9pliHo7Y55YhyMyuDH+haRx6KEztxx1epO6QFv6kDyN4FvASPughw0Me
 NxrOg5vMdOojw4edg+PKoh5Kfc0qiqrMaokW7DsaNFLYw7/8/sjkyxkoe
 Ac+v1pwHdFbwhtSDLuWNdcdZEEObZ/rXnuFEyUwzItMD9X9DmZUOV6A3P
 hyDNkM5sWdbwqG9+I/kL7rxUH3W8c9wrVjIJhaYWX+HXj/W7MZ6sq/Czy Q==;
X-CSE-ConnectionGUID: 4GJ0cphFRRSbot1on50beQ==
X-CSE-MsgGUID: WonqqHW+Qbm+7o3sexV61g==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052388"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052388"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:20 -0800
X-CSE-ConnectionGUID: VaaPcg7zTLqK8czjIoZp9w==
X-CSE-MsgGUID: O3Y5cy4sSQ6zFjqVnnqi+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762667"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:18 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 13/23] drm/i915/vrr: Handle joiner with vrr
Date: Mon, 11 Nov 2024 14:42:11 +0530
Message-ID: <20241111091221.2992818-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

Do not program transcoder registers for VRR for the secondary pipe of
the joiner. Remove check to skip VRR for joiner case.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 5a7a4dbf699c..ecd4b06cb273 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -247,13 +247,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 	int vmin, vmax;
 
-	/*
-	 * FIXME all joined pipes share the same transcoder.
-	 * Need to account for that during VRR toggle/push/etc.
-	 */
-	if (crtc_state->joiner_pipes)
-		return;
-
 	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
 		return;
 
@@ -324,6 +317,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	/*
 	 * This bit seems to have two meanings depending on the platform:
 	 * TGL: generate VRR "safe window" for DSB vblank waits
@@ -365,6 +361,9 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (!crtc_state->vrr.tg_enable)
 		return;
 
@@ -388,6 +387,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(crtc_state))
+		return;
+
 	if (!crtc_state->vrr.tg_enable)
 		return;
 
@@ -415,6 +417,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
 	struct intel_display *display = to_intel_display(old_crtc_state);
 	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
 
+	if (intel_crtc_is_joiner_secondary(old_crtc_state))
+		return;
+
 	if (!old_crtc_state->vrr.tg_enable)
 		return;
 
-- 
2.45.2

