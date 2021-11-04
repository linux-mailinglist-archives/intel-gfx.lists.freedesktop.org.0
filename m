Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9337445726
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Nov 2021 17:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA436FA53;
	Thu,  4 Nov 2021 16:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F2506FA53
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Nov 2021 16:19:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="295183152"
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="295183152"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:25 -0700
X-IronPort-AV: E=Sophos;i="5.87,209,1631602800"; d="scan'208";a="450269285"
Received: from mihaelac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.32.21])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2021 09:19:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Nov 2021 18:18:57 +0200
Message-Id: <20211104161858.21786-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211104161858.21786-1-jani.nikula@intel.com>
References: <20211104161858.21786-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/audio: clean up LPE audio
 init/cleanup calls
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Unify audio init/cleanup paths wrt LPE audio, and base the logic on the
return values from LPE audio calls. Move the platform device check on
cleanup to intel_lpe_audio.c, thereby limiting all audio.lpe substruct
access to that file.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c     | 14 ++++++++------
 drivers/gpu/drm/i915/display/intel_lpe_audio.c |  6 ++++--
 drivers/gpu/drm/i915/display/intel_lpe_audio.h |  4 ++--
 3 files changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 24e76657d561..aa7037021376 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1403,8 +1403,10 @@ static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
  */
 void intel_audio_init(struct drm_i915_private *dev_priv)
 {
-	if (intel_lpe_audio_init(dev_priv) < 0)
-		i915_audio_component_init(dev_priv);
+	if (!intel_lpe_audio_init(dev_priv))
+		return;
+
+	i915_audio_component_init(dev_priv);
 }
 
 /**
@@ -1414,8 +1416,8 @@ void intel_audio_init(struct drm_i915_private *dev_priv)
  */
 void intel_audio_deinit(struct drm_i915_private *dev_priv)
 {
-	if ((dev_priv)->audio.lpe.platdev != NULL)
-		intel_lpe_audio_teardown(dev_priv);
-	else
-		i915_audio_component_cleanup(dev_priv);
+	if (!intel_lpe_audio_teardown(dev_priv))
+		return;
+
+	i915_audio_component_cleanup(dev_priv);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
index 4970bf146c4a..a2984718d136 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -296,10 +296,10 @@ int intel_lpe_audio_init(struct drm_i915_private *dev_priv)
  *
  * release all the resources for LPE audio <-> i915 bridge.
  */
-void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
+int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
 {
 	if (!HAS_LPE_AUDIO(dev_priv))
-		return;
+		return -ENODEV;
 
 	lpe_audio_platdev_destroy(dev_priv);
 
@@ -307,6 +307,8 @@ void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
 
 	dev_priv->audio.lpe.irq = -1;
 	dev_priv->audio.lpe.platdev = NULL;
+
+	return 0;
 }
 
 /**
diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
index f848c5038714..030874623872 100644
--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
@@ -12,8 +12,8 @@ enum pipe;
 enum port;
 struct drm_i915_private;
 
-int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
-void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
+int intel_lpe_audio_init(struct drm_i915_private *dev_priv);
+int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
 void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
 			    enum pipe pipe, enum port port,
-- 
2.30.2

