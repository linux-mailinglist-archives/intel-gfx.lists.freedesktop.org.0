Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 288579C1111
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 22:37:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D1A10E8F3;
	Thu,  7 Nov 2024 21:37:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DXF3TZVG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBA0510E8F3;
 Thu,  7 Nov 2024 21:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731015476; x=1762551476;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H1rxC8y68yKLceB1p4FzHqY9yP8y6/npqA0d0ztb9js=;
 b=DXF3TZVGxXtfKL5bUBk8gYzzmjg3S1uKflQICkbMJ42dtWHgkO70922+
 U8Rq99PQ3EdJ+oN/FOaG1RFGajkoFi36lIcx+Ect4bGV+o87eWViUtMeu
 IdQiRNmceO0KMPzRubHiZA8GthiTSigMtZ3z/peZ9YHmAu1Eu03kugIxb
 iV9QnqMXSNlXHeUe6qVgIBX7Auu2Y0CsE8kJ+Y3ozd3XDiEX3Lh3yDVV5
 YThqBpvzF0N0g6hHQrGhxc+BUqVFYpexsbA6iZOi3Ex47nBIrv8270t+9
 Kh48j/TyDGyuOjsOStFMk4UBNyJwDVsmKdRn76JP8SeIllURJi7KWbh8A A==;
X-CSE-ConnectionGUID: En8aXMpeTZ2T4y0AEAI28A==
X-CSE-MsgGUID: wSOZdB7FRCWW8xJ0G9zraQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="56283020"
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="56283020"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:56 -0800
X-CSE-ConnectionGUID: oXFZUoyjSM2vau2KXzwoTg==
X-CSE-MsgGUID: T83l+ie+RfKBYjaZpcgwjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,136,1728975600"; d="scan'208";a="85574895"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.233])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 13:37:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Vinod Govindapillai <vinod.govindapillai@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [CI v2 v2 11/15] drm/i915/display: convert HAS_ULTRAJOINER() to
 struct intel_display
Date: Thu,  7 Nov 2024 23:36:45 +0200
Message-Id: <666a146cc1531d31f8a98f89d59dcb7f0d645828.1731015334.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1731015333.git.jani.nikula@intel.com>
References: <cover.1731015333.git.jani.nikula@intel.com>
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
index d01b91b71a90..e8197dacb676 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -179,9 +179,9 @@ struct intel_display_platforms {
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
index b7ee6eec72a8..a5049f449dcb 100644
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

