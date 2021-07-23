Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 111533D4370
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Jul 2021 01:44:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C2BD6FCAD;
	Fri, 23 Jul 2021 23:44:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27E546FCAD
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jul 2021 23:44:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10054"; a="297540995"
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="297540995"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 16:44:12 -0700
X-IronPort-AV: E=Sophos;i="5.84,265,1620716400"; d="scan'208";a="415990628"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jul 2021 16:44:12 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Jul 2021 16:43:52 -0700
Message-Id: <20210723234352.214459-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: fix not reading DSC disable fuse in
 GLK
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We were using GRAPHICS_VER() to handle SKL_DFSM register, which means we
were not handling GLK correctly since that has GRAPHICS_VER == 9, but
DISPLAY_VER == 10. Switch the entire branch to check DISPLAY_VER
which makes it more in line with Bspec.

Even though the Bspec has an exception for RKL in
TGL_DFSM_PIPE_D_DISABLE, we don't have to do anything as the bit has
disable semantic and RKL doesn't have pipe D.

Bspec: 50075, 7548
Fixes: 2b5a4562edd0 ("drm/i915/display: Simplify GLK display version tests")
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index d5cf5977938a..99b51c292942 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -335,7 +335,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->pipe_mask &= ~BIT(PIPE_C);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
-	} else if (HAS_DISPLAY(dev_priv) && GRAPHICS_VER(dev_priv) >= 9) {
+	} else if (HAS_DISPLAY(dev_priv) && DISPLAY_VER(dev_priv) >= 9) {
 		u32 dfsm = intel_de_read(dev_priv, SKL_DFSM);
 
 		if (dfsm & SKL_DFSM_PIPE_A_DISABLE) {
@@ -350,7 +350,8 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 			info->pipe_mask &= ~BIT(PIPE_C);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
 		}
-		if (GRAPHICS_VER(dev_priv) >= 12 &&
+
+		if (DISPLAY_VER(dev_priv) >= 12 &&
 		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
 			info->pipe_mask &= ~BIT(PIPE_D);
 			info->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
@@ -362,10 +363,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_DISPLAY_PM_DISABLE)
 			info->display.has_fbc = 0;
 
-		if (GRAPHICS_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
+		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			info->display.has_dmc = 0;
 
-		if (GRAPHICS_VER(dev_priv) >= 10 &&
+		if (DISPLAY_VER(dev_priv) >= 10 &&
 		    (dfsm & CNL_DFSM_DISPLAY_DSC_DISABLE))
 			info->display.has_dsc = 0;
 	}
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
