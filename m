Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7DC9BBBB1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Nov 2024 18:20:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A5D10E494;
	Mon,  4 Nov 2024 17:20:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iOe0oyU6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9847310E494;
 Mon,  4 Nov 2024 17:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730740830; x=1762276830;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lI6o+pXsYuB58P7h+6NgACsPx+tEO8QJsRZBfFxWq6w=;
 b=iOe0oyU6cdFMXQYyXPXLfsCLP06D3ZAUeToaES0Rsfqn29+6d/h1KddB
 5Kkv3cnH3csO2CvlBZ/OWOW44KxuiBhZoOs1nEZ1emOAQ6wtGzQ5lpAMx
 3Krn5WBkmpMA+MZOTrNNgS6WzB+/oFhAblkpi5cX3HN4QhE+BnA1ebqD5
 muJOK8kGn+QIOzx9ItIdwuCNf6mJvSoGIg64c+1bCbZiqAKec2sFDgvOk
 pTx+9QuK+4WYsytTMywMjW1zrdiO9h0w/KSn6Gud2lXntR7W4m7zxzfoo
 Kh70WnzyimyPQdMr5Xf1SxJX9y65VtDvIA5sx7wbC9o0slRt6WO1iksNL A==;
X-CSE-ConnectionGUID: BsqTo6edRUKs/VJ4+aLh0g==
X-CSE-MsgGUID: 4ZKFsyxGSiCGqQL4YJjarQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30563965"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="30563965"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:26 -0800
X-CSE-ConnectionGUID: 3vJ3PdsUTBeE8jwxiduGQg==
X-CSE-MsgGUID: 2bXWwN9LTZ+7nBZtZey4Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83815841"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.33])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 09:20:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to struct
 intel_display
Date: Mon,  4 Nov 2024 19:19:25 +0200
Message-Id: <ea4d7f4694ba92c87b00258cd9786d668a09c313.1730740629.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730740629.git.jani.nikula@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
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

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c         | 10 ++++++----
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_device.h  |  6 +++---
 drivers/gpu/drm/i915/display/intel_dp.c              |  5 ++---
 4 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f53611e83502..a3924bbb0d2a 100644
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
index e1e718fced3c..548256401d0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -178,9 +178,9 @@ struct intel_display_platforms {
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
index a27da96d2c60..7d65945c9563 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1333,16 +1333,15 @@ int intel_dp_num_joined_pipes(struct intel_dp *intel_dp,
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

