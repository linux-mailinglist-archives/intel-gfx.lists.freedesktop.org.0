Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 042DDB8D501
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA7910E333;
	Sun, 21 Sep 2025 04:49:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+rC8407";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 262EE10E325;
 Sun, 21 Sep 2025 04:49:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430142; x=1789966142;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RSva/wj9jRqAi/zKfh7ZUO1TF3pvwL2JfZKuA+qH66I=;
 b=R+rC840737J0IGrTLnThRbEa4BTOHPvKExY2yW8xS1d/FK8EvgNIJcUV
 tmf1pY8nFnVO3inwg15tXXljhqcCBwaimS35xybJFjweLzFzP2zn+ZHhm
 Ng36G5TylvSn/w+UfYTNsKATa1UjnBm+DpWYlpPJ1GIDy+V56WMZu/t8w
 IZsfBBx1Jw9rivwg2fe1QoFQQX3FYUrtDbbgy9OQKt/9nUmfB8Ugx6C1v
 OTUvdB8if0q8mKrS6wuWGpyAji8GZbBbwj62wwntXPqeK/o9ZgOa1LNNS
 uAVD2jKcBsQlVf9x0m3ObYOVBn79pZPdxcjc8d97egzKmLiVrk8kTx/8l A==;
X-CSE-ConnectionGUID: GIGySJ48TcyY2RKJ4vP7xQ==
X-CSE-MsgGUID: 1E2fnHDlTwiFeBPvMfWfiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154727"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154727"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:01 -0700
X-CSE-ConnectionGUID: Db66M3zrQ2qaIgwoaCN17A==
X-CSE-MsgGUID: wI/IQSeWQO6lGT4rTxErKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097695"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:48:59 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 1/9] drm/i915/psr:
 s/intel_psr_min_vblank_delay/intel_psr_min_set_context_latency
Date: Sun, 21 Sep 2025 10:05:27 +0530
Message-ID: <20250921043535.2012978-2-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

Rename intel_psr_min_vblank_delay to intel_psr_min_set_context_latency
to reflect that it provides the minimum value for 'Set context
latency'(SCL or Window W2) for PSR/Panel Replay to work correctly across
different platforms.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
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

