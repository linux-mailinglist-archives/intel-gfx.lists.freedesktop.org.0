Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA7043E767
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 19:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BB26E440;
	Thu, 28 Oct 2021 17:35:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3757F6E440
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 17:35:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10151"; a="217647853"
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="217647853"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:51 -0700
X-IronPort-AV: E=Sophos;i="5.87,190,1631602800"; d="scan'208";a="597889085"
Received: from ralfseng-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.156])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 10:35:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Date: Thu, 28 Oct 2021 20:35:17 +0300
Message-Id: <20211028173518.9107-5-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211028173518.9107-1-jani.nikula@intel.com>
References: <20211028173518.9107-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/6] drm/i915/audio: clean up LPE audio
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
index e89ac7cb8890..9da306bd35a9 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1366,8 +1366,10 @@ static void i915_audio_component_cleanup(struct drm_i915_private *dev_priv)
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
@@ -1377,8 +1379,8 @@ void intel_audio_init(struct drm_i915_private *dev_priv)
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

