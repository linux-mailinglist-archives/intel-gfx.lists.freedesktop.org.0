Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ECBC69A07
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 14:38:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A991810E4AE;
	Tue, 18 Nov 2025 13:38:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PCThh/mN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF21110E4AE;
 Tue, 18 Nov 2025 13:38:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763473085; x=1795009085;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9mXoqvBHONwk12LuvVr9EkaTQFYzvEsFfjYVelNjUAg=;
 b=PCThh/mNLO4ISopF562Du6HmvacjQNUxyuEhA2FIRBVEfoKmvJPBCvSp
 5ee+ApiJgeH8O+PqkINQZlXNAC9IuErZvJ6QVH1X9Bc4rxiZfCBZJRXXw
 /aaVbLlo76HqipUM5c2Sktt/uGMyi3oFFMwapmL+iR4J9cnnxeXTRJni+
 pSMpr4RlEBqbxRwxSE9JrhnVUS//OkLJUDa1y0zIlXxX4RNzanHRJTWUs
 fE6UXKrO+MFtFh8GWSdysk6QwDFb/55IoAG4Aj2t2uzMTBuTtxxVHDOQE
 YMyKOdGq0B+KfsUzY33NmSu4Amc4dkz5Z5+8kdiq5mAudfQgmnfcpvgd9 Q==;
X-CSE-ConnectionGUID: 901cEWkUTWmDtsSF+Vf5hg==
X-CSE-MsgGUID: +9LHe3RjR1uUjiLlYCmdrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="88143527"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="88143527"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 05:38:04 -0800
X-CSE-ConnectionGUID: KVxg56uYSj6Rt4XVrDOQ3Q==
X-CSE-MsgGUID: tdrC3BooSDuWhBhrhHMSdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190044784"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.147])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 05:38:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: [PATCH v2] drm/i915/display: change pipe order for platforms with big
 joiner
Date: Tue, 18 Nov 2025 15:37:58 +0200
Message-ID: <20251118133758.2373008-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251118095801.2248786-1-jani.nikula@intel.com>
References: <20251118095801.2248786-1-jani.nikula@intel.com>
MIME-Version: 1.0
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

When big joiner is enabled, it reserves the adjacent pipe as the
secondary pipe. This happens without the user space knowing, and
subsequent attempts at using the CRTC with that pipe will fail. If the
user space does not have a coping mechanism, i.e. trying another pipe,
this leads to a black screen.

If the platform allows joining A+B, map the CRTCs to pipes in order A,
C, B, and D to trick userspace to using pipes that are more likely to be
available for joining.

Although there are currently no platforms with more than four pipes, add
a fallback for initializing the rest of the pipes to not miss them.

v2: Also remove WARN_ON()

Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Let's see what breaks...
---
 drivers/gpu/drm/i915/display/intel_crtc.c     |  2 --
 .../drm/i915/display/intel_display_driver.c   | 26 ++++++++++++++++++-
 2 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 9d2a23c96c61..11e58d07ddef 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -394,8 +394,6 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 
 	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
 
-	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
-
 	if (HAS_CASF(display))
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 7e000ba3e08b..83aad727017b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -452,6 +452,7 @@ bool intel_display_driver_check_access(struct intel_display *display)
 /* part #2: call after irq install, but before gem init */
 int intel_display_driver_probe_nogem(struct intel_display *display)
 {
+	u8 pipe_mask = U8_MAX;
 	enum pipe pipe;
 	int ret;
 
@@ -470,7 +471,30 @@ int intel_display_driver_probe_nogem(struct intel_display *display)
 		    INTEL_NUM_PIPES(display),
 		    INTEL_NUM_PIPES(display) > 1 ? "s" : "");
 
-	for_each_pipe(display, pipe) {
+	/*
+	 * If we have a joiner that can join A+B, expose the pipes in order A,
+	 * C, B, D to trick user space into using pipes that are more likely to
+	 * be available for both a) user space if pipe B has been reserved for
+	 * the joiner, and b) the joiner if pipe A doesn't need the joiner.
+	 *
+	 * Fall back to normal initialization for the remaining pipes, if any.
+	 */
+	if (HAS_BIGJOINER(display) && DISPLAY_VER(display) >= 12) {
+		enum pipe pipe_order[] = { PIPE_A, PIPE_C, PIPE_B, PIPE_D };
+		int i;
+
+		for (i = 0; i < ARRAY_SIZE(pipe_order); i++) {
+			pipe = pipe_order[i];
+
+			ret = intel_crtc_init(display, pipe);
+			if (ret)
+				goto err_mode_config;
+
+			pipe_mask &= ~BIT(pipe);
+		}
+	}
+
+	for_each_pipe_masked(display, pipe, pipe_mask) {
 		ret = intel_crtc_init(display, pipe);
 		if (ret)
 			goto err_mode_config;
-- 
2.47.3

