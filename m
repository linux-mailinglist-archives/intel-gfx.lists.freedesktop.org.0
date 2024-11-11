Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2225D9C3C18
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 11:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF18010E471;
	Mon, 11 Nov 2024 10:35:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmkT+JuE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C0ED10E477;
 Mon, 11 Nov 2024 10:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731321310; x=1762857310;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P/maH+6OwAD+7H2tF1+s1sim+0xkfk1X+oH8WRHMHCI=;
 b=EmkT+JuEZSwnfACwfLysI+ksFYSH6oBkvxprs6/tvnU5xDg5PRRzS5mU
 feNnrvsNkVCvlOVtkmAZKaC38EYbAIo9Timyh+nIzVcYmp8F0F9IVAoIv
 0J/YAgEySItuUFrd2cVsBJAKhXk3t+SSD/CRh+AEsa82V+riLWXSYiABv
 ognXW1EyAplN66Oj5V8W44au1JaeQ2Rnk6wdaJGqdTjwj6EV77x47+Mts
 /BwPnMDl1P2yMMNn7ymJwFeHaOSYqx7E6C3oPQdUnMmG3+OOsqiVFkwpD
 Q1TEdTEUDovkeQeIFJxAEBhJCvGdecpLSHELomyp4VhNqXZex5bp8u4Tf Q==;
X-CSE-ConnectionGUID: 1wCMdJr6SymwzbaWfOdFXg==
X-CSE-MsgGUID: KHveYjd6TIyqtVZuRSax5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35058770"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35058770"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:35:10 -0800
X-CSE-ConnectionGUID: 4a/HK94sSXanRcdhWyMrUg==
X-CSE-MsgGUID: PGCegBYISn23sRtOuhmOIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86805916"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 02:35:07 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v3 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to struct
 intel_display
Date: Mon, 11 Nov 2024 12:34:00 +0200
Message-Id: <f562d35c94cf7ef18d261a9867d959a58f165f1e.1731321183.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731321183.git.jani.nikula@intel.com>
References: <cover.1731321183.git.jani.nikula@intel.com>
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

Convert HAS_ULTRAJOINER() to struct intel_display. Do minimal drive-by
conversions to struct intel_display in the callers while at it.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c         | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_device.h  |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c              |  5 ++---
 4 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04d9a176cb12..de97cd11aa7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3746,12 +3746,13 @@ static u8 fixup_ultrajoiner_secondary_pipes(u8 ultrajoiner_primary_pipes,
 static void enabled_ultrajoiner_pipes(struct drm_i915_private *i915,
 				      u8 *primary_pipes, u8 *secondary_pipes)
 {
+	struct intel_display *display = &i915->display;
 	struct intel_crtc *crtc;
 
 	*primary_pipes = 0;
 	*secondary_pipes = 0;
 
-	if (!HAS_ULTRAJOINER(i915))
+	if (!HAS_ULTRAJOINER(display))
 		return;
 
 	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc,
@@ -8310,11 +8311,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 static int max_dotclock(struct drm_i915_private *i915)
 {
-	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
+	struct intel_display *display = &i915->display;
+	int max_dotclock = display->cdclk.max_dotclk_freq;
 
-	if (HAS_ULTRAJOINER(i915))
+	if (HAS_ULTRAJOINER(display))
 		max_dotclock *= 4;
-	else if (HAS_UNCOMPRESSED_JOINER(i915) || HAS_BIGJOINER(i915))
+	else if (HAS_UNCOMPRESSED_JOINER(display) || HAS_BIGJOINER(display))
 		max_dotclock *= 2;
 
 	return max_dotclock;
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 11aff485d8fa..2874867aae2b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1331,7 +1331,7 @@ static ssize_t i915_joiner_write(struct file *file,
 {
 	struct seq_file *m = file->private_data;
 	struct intel_connector *connector = m->private;
-	struct drm_i915_private *i915 = to_i915(connector->base.dev);
+	struct intel_display *display = to_intel_display(connector);
 	int force_joined_pipes = 0;
 	int ret;
 
@@ -1349,7 +1349,7 @@ static ssize_t i915_joiner_write(struct file *file,
 		connector->force_joined_pipes = force_joined_pipes;
 		break;
 	case 4:
-		if (HAS_ULTRAJOINER(i915)) {
+		if (HAS_ULTRAJOINER(display)) {
 			connector->force_joined_pipes = force_joined_pipes;
 			break;
 		}
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 5b6cd27cff97..d5e1366f46e0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -180,9 +180,9 @@ struct intel_display_platforms {
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
-#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
-					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
-					 HAS_DSC(i915))
+#define HAS_ULTRAJOINER(__display)	((DISPLAY_VER(__display) >= 20 || \
+					  ((__display)->platform.dgfx && DISPLAY_VER(__display) == 14)) && \
+					 HAS_DSC(__display))
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
 #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
 #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 565ddaffb64e..a1b3e9f6d0cb 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1352,16 +1352,15 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
 			      int hdisplay, int clock)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	struct drm_i915_private *i915 = to_i915(display->drm);
 
 	if (connector->force_joined_pipes)
 		return connector->force_joined_pipes;
 
-	if (HAS_ULTRAJOINER(i915) &&
+	if (HAS_ULTRAJOINER(display) &&
 	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 4))
 		return 4;
 
-	if ((HAS_BIGJOINER(i915) || HAS_UNCOMPRESSED_JOINER(i915)) &&
+	if ((HAS_BIGJOINER(display) || HAS_UNCOMPRESSED_JOINER(display)) &&
 	    intel_dp_needs_joiner(intel_dp, connector, hdisplay, clock, 2))
 		return 2;
 
-- 
2.39.5

