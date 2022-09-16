Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B873D5BA831
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 10:27:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B85910ECE1;
	Fri, 16 Sep 2022 08:26:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7724610ECE1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 08:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663316814; x=1694852814;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ulKF8f0PAR1LPtK0o3yQ6lmId/6OphikfWpzboS/p04=;
 b=CyZyU1lrieK/McN+TzqfJz3aYYQ3CTqZBicVTsajm6rjsMp4NHkt6DMO
 T1b8VFA3IIWbCgjKamJi3fVCvZT/NsmS+JZ4KTiXjo7Jeomk6EjHaUTDr
 Lxv1X+riQgMPbZwvuxz7dyVtqlJZChd8L+3n7yHGUnGqB7+01fxwIJGGY
 waCefbu5rfiWqzySzut6MDRqI4ejRAtSa50JRVGchA850EfiVKyUGrv1J
 wf4WTvbTVmpBjnyP5ceRNlC0xYL9T3Dn3RKbv+A+Tq9ELY4CnREHokqmK
 /oXVztd2lI9b6+8pbmSJmXMHRyvhuOFtcJ5WvskFZyaKzXgwvKXgBctJu w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="281971200"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="281971200"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:26:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="648175493"
Received: from malisch-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.60.50])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:26:51 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 11:26:42 +0300
Message-Id: <20220916082642.3451961-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: fix device info for devices without
 display
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
to runtime info") moved the pipe_mask member from struct
intel_device_info to intel_runtime_info, but overlooked some of our
platforms initializing device info .display = {}. This is significant,
as pipe_mask is the single point of truth for a device having a display
or not; the platforms in question left pipe_mask to whatever was set for
the platforms they "inherit" from in the complex macro scheme we have.

Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
will cause the device info .display sub-struct to be zeroed in
intel_device_info_runtime_init(). A better solution (or simply audit of
proper use of HAS_DISPLAY() checks) is required before moving forward
with [1].

Also clear all the display related members in runtime info if there's no
display. The latter is a bit tedious, but it's for completeness at this
time, to ensure similar functionality as before.

[1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com

Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
 drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
 2 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 77e7df21f539..cd4487a1d3be 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -41,6 +41,8 @@
 	.__runtime.media.ip.ver = (x), \
 	.__runtime.display.ip.ver = (x)
 
+#define NO_DISPLAY .__runtime.pipe_mask = 0
+
 #define I845_PIPE_OFFSETS \
 	.display.pipe_offsets = { \
 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
@@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
 static const struct intel_device_info ivb_q_info = {
 	GEN7_FEATURES,
 	PLATFORM(INTEL_IVYBRIDGE),
+	NO_DISPLAY,
 	.gt = 2,
-	.__runtime.pipe_mask = 0, /* legal, last one wins */
-	.__runtime.cpu_transcoder_mask = 0,
 	.has_l3_dpf = 1,
 };
 
@@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
 	XE_HPM_FEATURES,
 	DGFX_FEATURES,
 	PLATFORM(INTEL_XEHPSDV),
-	.display = { },
+	NO_DISPLAY,
 	.has_64k_pages = 1,
 	.needs_compact_pt = 1,
 	.has_media_ratio_mode = 1,
@@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
 
 static const struct intel_device_info ats_m_info = {
 	DG2_FEATURES,
-	.display = { 0 },
+	NO_DISPLAY,
 	.require_force_probe = 1,
 	.tuning_thread_rr_after_dep = 1,
 };
@@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
 	.__runtime.graphics.ip.rel = 60,
 	.__runtime.media.ip.rel = 60,
 	PLATFORM(INTEL_PONTEVECCHIO),
-	.display = { 0 },
+	NO_DISPLAY,
 	.has_flat_ccs = 0,
 	.__runtime.platform_engine_mask =
 		BIT(BCS0) |
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 1434dc33cf49..20575eb77ea7 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
 						   DRIVER_ATOMIC);
 		memset(&info->display, 0, sizeof(info->display));
+
+		runtime->cpu_transcoder_mask = 0;
 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
+		runtime->fbc_mask = 0;
+		runtime->has_hdcp = false;
+		runtime->has_dmc = false;
+		runtime->has_dsc = false;
 	}
 }
 
-- 
2.34.1

