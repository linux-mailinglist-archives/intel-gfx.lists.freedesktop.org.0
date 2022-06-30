Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 474A55612E4
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 09:06:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6164710FDC4;
	Thu, 30 Jun 2022 07:06:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745D110FDE5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 07:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656572788; x=1688108788;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yUHWEOnBAHuO+QnpZFLkE9Tuboymfqv2QdXHaPZUwjg=;
 b=W9rNwX2fL3oooLUal7dlSUbIe2SbDropN6VDHV2Q+uphc5D/jrtyT4JW
 BjFhV6tHsdP1446fEyGuhSRNKaMQvcNm2KlqaQVb+y7jOQfI9nauplwqu
 +DN2YBbfWXQkcTcd+LqzWrPs+fKM+uKtFfCk6YVf3da4T4HxEP1Oy462B
 EhAeu7UEGW/Hg3AVAyJspt61C1dmNq/PzGY/ULrMQAhTXfdCySZof6hfI
 3j5E0UlN2reJS9Uuw42UbFRhN26hkMccEl4agXMSikf1R34Z6gQOIgFS5
 Soi9Q5oJ9ak0sY5rptZV/iaqlHXsNc6LU+2NIjBBHh0vnt6oD7R55akGM A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="307770241"
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="307770241"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 00:06:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,233,1650956400"; d="scan'208";a="617872419"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by orsmga008.jf.intel.com with ESMTP; 30 Jun 2022 00:06:25 -0700
From: Arun R Murthy <arun.r.murthy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 12:36:07 +0530
Message-Id: <20220630070607.858766-1-arun.r.murthy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCHv2] drm/i915: free crtc on driver remove
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

intel_crtc is being allocated as part of intel_modeset_init_nogem
and not freed as part of driver remove. This will lead to memory
leak. Hence free up the allocated crtc on driver remove as part of
intel_modeset_driver_remove_nogem.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_crtc.h    | 1 +
 drivers/gpu/drm/i915/display/intel_display.c | 6 ++++++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 4442aa355f86..c90b2854c772 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -193,7 +193,7 @@ static struct intel_crtc *intel_crtc_alloc(void)
 	return crtc;
 }
 
-static void intel_crtc_free(struct intel_crtc *crtc)
+void intel_crtc_free(struct intel_crtc *crtc)
 {
 	intel_crtc_destroy_state(&crtc->base, crtc->base.state);
 	kfree(crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 73077137fb99..d20200a2c33b 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -35,5 +35,6 @@ struct intel_crtc *intel_crtc_for_pipe(struct drm_i915_private *i915,
 void intel_wait_for_vblank_if_active(struct drm_i915_private *i915,
 				     enum pipe pipe);
 void intel_crtc_wait_for_next_vblank(struct intel_crtc *crtc);
+void intel_crtc_free(struct intel_crtc *crtc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a0f84cbe974f..33e29455fe56 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9046,6 +9046,8 @@ void intel_modeset_driver_remove_noirq(struct drm_i915_private *i915)
 /* part #3: call after gem init */
 void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 {
+	struct intel_crtc *crtc;
+
 	intel_dmc_ucode_fini(i915);
 
 	intel_power_domains_driver_remove(i915);
@@ -9053,6 +9055,10 @@ void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915)
 	intel_vga_unregister(i915);
 
 	intel_bios_driver_remove(i915);
+
+	/* Free the allocated crtc */
+	for_each_intel_crtc(&i915->drm, crtc)
+		intel_crtc_free(crtc);
 }
 
 bool intel_modeset_probe_defer(struct pci_dev *pdev)
-- 
2.25.1

