Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 565F2437AE9
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:28:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F3AD6E5D4;
	Fri, 22 Oct 2021 16:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14FA26EDA9
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:28:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="290174709"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="290174709"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:24 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="663240564"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:28:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: airlied@gmail.com, daniel@ffwll.ch, ville.syrjala@linux.intel.com,
 lucas.demarchi@intel.com, jani.nikula@intel.com,
 Dave Airlie <airlied@redhat.com>
Date: Fri, 22 Oct 2021 19:27:57 +0300
Message-Id: <97098cf69dfeb0c6c4ab85d3378e4d41fdd952c2.1634918767.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634918767.git.jani.nikula@intel.com>
References: <cover.1634918767.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/audio: define the audio struct
 separately from drm_i915_private
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

Add a standalone definition of struct intel_audio_private, and note that
all of it is private to intel_audio.c.

Cc: Dave Airlie <airlied@redhat.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 45 ++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9c77610acf23..ed86633a587b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -828,6 +828,29 @@ struct i915_selftest_stash {
 	struct ida mock_region_instances;
 };
 
+/* intel_audio.c private */
+struct intel_audio_private {
+	/* Display internal audio functions */
+	const struct intel_audio_funcs *funcs;
+
+	/* hda/i915 audio component */
+	struct i915_audio_component *component;
+	bool component_registered;
+	/* mutex for audio/video sync */
+	struct mutex lock;
+	int power_refcount;
+	u32 freq_cntrl;
+
+	/* Used to save the pipe-to-encoder mapping for audio */
+	struct intel_encoder *encoder_map[I915_MAX_PIPES];
+
+	/* necessary resource sharing with HDMI LPE audio driver. */
+	struct {
+		struct platform_device *platdev;
+		int irq;
+	} lpe;
+};
+
 struct drm_i915_private {
 	struct drm_device drm;
 
@@ -1213,27 +1236,7 @@ struct drm_i915_private {
 
 	bool ipc_enabled;
 
-	struct {
-		/* Display internal audio functions */
-		const struct intel_audio_funcs *funcs;
-
-		/* hda/i915 audio component */
-		struct i915_audio_component *component;
-		bool component_registered;
-		/* mutex for audio/video sync */
-		struct mutex lock;
-		int power_refcount;
-		u32 freq_cntrl;
-
-		/* Used to save the pipe-to-encoder mapping for audio */
-		struct intel_encoder *encoder_map[I915_MAX_PIPES];
-
-		/* necessary resource sharing with HDMI LPE audio driver. */
-		struct {
-			struct platform_device *platdev;
-			int irq;
-		} lpe;
-	} audio;
+	struct intel_audio_private audio;
 
 	struct i915_pmu pmu;
 
-- 
2.30.2

