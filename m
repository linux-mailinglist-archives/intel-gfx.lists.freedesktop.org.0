Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46F0E69E0E4
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 13:57:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6AC710E805;
	Tue, 21 Feb 2023 12:57:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 212BE10E7F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 12:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676984264; x=1708520264;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Xy3lYyBvT7SEAkkQBuTOOQ8oepl/43jLYRrp4a9zdfc=;
 b=FTikhAYzTccybbttP/kZzyE1+poZ/uqdZJUQmPyyMQVQPvgOnokSgfGB
 fxkTlbG7snCg04NN1lso7qdDac2rGk6HiAxw6Ywppl1+SCdpwyVx0opIM
 vaG9Z8Nq+taE86iEMeb254LPcab9wwn8Kp/L4M0f5AFjmZqDXtow8SsYt
 /pg5BW6Ffk+TkvQYpmGuZKqSTVwCtnPA53uxFzgf6xNZbll1C3+EwYXnW
 KbW7K/NWrK+g77XD50aC+Ko14xe0IdUrvRpza5SkZvVub1Dgq7olf+1KF
 odW2fDTne2pAYlYnso+YfU/A7iRaECapT76ZxiijB+1ngLVdajzgnAHus g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="395103827"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="395103827"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="795512834"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="795512834"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 04:57:43 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 14:57:37 +0200
Message-Id: <20230221125737.1813187-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20230221125737.1813187-1-imre.deak@intel.com>
References: <20230221125737.1813187-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/opregion: Register/unregister
 opregion on platforms without display
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

Call the opregion register/unregister functions during driver
loading/unloading on !HAS_DISPLAY platforms. These functions will send
the opregion adapter power state notifications which is required on all
platforms (similarly how this is sent during runtime and system
suspend/resume). Skip registering the ACPI video notifier callback on
!HAS_DISPLAY, where the corresponding video extensions are not
supported.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 11 +++++++----
 drivers/gpu/drm/i915/display/intel_opregion.c |  2 +-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7827ef3e2d1e6..467f6e2376057 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8882,11 +8882,12 @@ bool intel_modeset_probe_defer(struct pci_dev *pdev)
 
 void intel_display_driver_register(struct drm_i915_private *i915)
 {
-	if (!HAS_DISPLAY(i915))
-		return;
-
 	/* Must be done after probing outputs */
 	intel_opregion_register(i915);
+
+	if (!HAS_DISPLAY(i915))
+		return;
+
 	intel_acpi_video_register(i915);
 
 	intel_audio_init(i915);
@@ -8914,7 +8915,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
 void intel_display_driver_unregister(struct drm_i915_private *i915)
 {
 	if (!HAS_DISPLAY(i915))
-		return;
+		goto unregister_opregion;
 
 	intel_fbdev_unregister(i915);
 	intel_audio_deinit(i915);
@@ -8928,6 +8929,8 @@ void intel_display_driver_unregister(struct drm_i915_private *i915)
 	drm_atomic_helper_shutdown(&i915->drm);
 
 	acpi_video_unregister();
+
+unregister_opregion:
 	intel_opregion_unregister(i915);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
index b7973a05d022d..37098e7f607e6 100644
--- a/drivers/gpu/drm/i915/display/intel_opregion.c
+++ b/drivers/gpu/drm/i915/display/intel_opregion.c
@@ -1150,7 +1150,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
 	if (!opregion->header)
 		return;
 
-	if (opregion->acpi) {
+	if (HAS_DISPLAY(i915) && opregion->acpi) {
 		opregion->acpi_notifier.notifier_call =
 			intel_opregion_video_event;
 		register_acpi_notifier(&opregion->acpi_notifier);
-- 
2.37.1

