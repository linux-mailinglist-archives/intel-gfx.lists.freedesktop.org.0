Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8D8445720
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A2E6F9D7;
	Thu,  4 Nov 2021 16:19:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E35C6F9C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:19:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="231685055"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="231685055"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:16 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="490021216"
Received: from mihaelac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.21])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 18:18:55 +0200
Message-Id: <20211104161858.21786-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211104161858.21786-1-jani.nikula@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 3/6] drm/i915/audio: define the audio struct
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
Cc: jani.nikula@intel.com, Dave Airlie <airlied@redhat.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a standalone definition of struct intel_audio_private, and note that
all of it is private to intel_audio.c.

v2: Rebase

Cc: Dave Airlie <airlied@redhat.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 45 ++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index b55ada4c2840..418c952bbf42 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -826,6 +826,29 @@ struct i915_selftest_stash {
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
+	struct mutex mutex;
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
 
@@ -1211,27 +1234,7 @@ struct drm_i915_private {
 
 	bool ipc_enabled;
 
-	struct {
-		/* Display internal audio functions */
-		const struct intel_audio_funcs *funcs;
-
-		/* hda/i915 audio component */
-		struct i915_audio_component *component;
-		bool component_registered;
-		/* mutex for audio/video sync */
-		struct mutex mutex;
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

