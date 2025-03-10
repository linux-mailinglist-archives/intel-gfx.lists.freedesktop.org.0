Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD39A59471
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Mar 2025 13:28:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C4E10E445;
	Mon, 10 Mar 2025 12:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRm7JZXI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4DAD10E443;
 Mon, 10 Mar 2025 12:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741609729; x=1773145729;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/E+ZmVnkrUwIz/XaAW/hW+68DBDamLCP3WjxCKMz8Lc=;
 b=mRm7JZXITrAL7xfZTRrcrdPP1qNrKNY01c0o5cf3Lw5cQyu8bB7qA13G
 GV0zZxpSX/yOxk+P+s7kGi7NqFrkLu5+WCVF916xqR3pm78636E1ilRdL
 zO09ev6ESPk0Rdc1bBGiWHD58ja181MdvQyzo2xkHFzDHE7DzgbV8YhKj
 o1bjqHrwURhC4q9obAAm2ldHYPrekr6OZ86lIFbsvequYNe1w6eMS41Ek
 VVgd7if4lJo885/68D4vqlKQ4l0xKnJ2kXk2kAFts+e1R656YTxnREhwn
 1RR5a2EOqWA0mFjOPhMm3s8+Sw15Iv6/hm1+dsEtNPtFIzhsx5yuahQT3 Q==;
X-CSE-ConnectionGUID: brsvb4KESBucjUQCvgpkPQ==
X-CSE-MsgGUID: ok5CVNp2QUa+7530pKanug==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="65057321"
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="65057321"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:48 -0700
X-CSE-ConnectionGUID: /+Jyz7RkSfWQ2D8X0+j75w==
X-CSE-MsgGUID: QHoWKO1tSf66gBXqT/xPQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,236,1736841600"; d="scan'208";a="143180590"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 05:28:47 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 18/21] drm/i915/display: Move vrr.guardband/pipeline_full out
 of !fastset block
Date: Mon, 10 Mar 2025 17:46:12 +0530
Message-ID: <20250310121615.1077079-19-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
References: <20250310121615.1077079-1-ankit.k.nautiyal@intel.com>
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

Since the vrr.guardband can now change for platforms that always use the
VRR Timing Generator, and it is unsafe to reprogram the guardband on the
fly, move the guardband and pipeline_full checks from the pure !fastboot
path and add a check for intel_vrr_always_use_vrr_tg().

For older platforms the vrr.guardband change happens when VRR Timing
generator is off. For the platforms that always use the VRR Timing
Generator, this will prevent reprogramming the vrr.guardband without a
full modeset. However, this will disrupt LRR functionality for these
platforms.

v2: modify the check to avoid breaking the LRR on older platform.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_vrr.c     | 1 -
 drivers/gpu/drm/i915/display/intel_vrr.h     | 2 ++
 3 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7ac504885869..53e2c11112c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5397,6 +5397,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
+	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
+		PIPE_CONF_CHECK_I(vrr.pipeline_full);
+		PIPE_CONF_CHECK_I(vrr.guardband);
+	}
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 57e9aef02b7c..b83b1c66c242 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -544,7 +544,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
 	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
 }
 
-static
 bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 {
 	if (!HAS_VRR(display))
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
index d857633bc02c..c92d6dd26f6d 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.h
+++ b/drivers/gpu/drm/i915/display/intel_vrr.h
@@ -13,6 +13,7 @@ struct intel_atomic_state;
 struct intel_connector;
 struct intel_crtc_state;
 struct intel_dsb;
+struct intel_display;
 
 bool intel_vrr_is_capable(struct intel_connector *connector);
 bool intel_vrr_is_in_range(struct intel_connector *connector, int vrefresh);
@@ -38,5 +39,6 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
 void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
+bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
 
 #endif /* __INTEL_VRR_H__ */
-- 
2.45.2

