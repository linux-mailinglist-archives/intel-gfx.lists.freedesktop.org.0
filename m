Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 707403D9814
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 00:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 569496EB46;
	Wed, 28 Jul 2021 22:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C206E9FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Jul 2021 22:00:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="212786407"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212786407"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="663663285"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 15:00:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Jul 2021 14:59:43 -0700
Message-Id: <20210728215946.1573015-23-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210728215946.1573015-1-lucas.demarchi@intel.com>
References: <20210728215946.1573015-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 22/25] drm/i915: switch num_scalers/num_sprites
 to consider DISPLAY_VER
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

The numbers of scalers and sprites depend on the display version, so use
it instead of GRAPHICS_VER. We were mixing both, which let me confused
while removing CNL and GRAPHICS_VER == 10.

v2 (Rodrigo): Switch IS_GEMINILAKE to DISPLAY_VER == 10
v3 (Lucas): Change check to DISPLAY_VER >= 9, to cover the GLK's num_scalers,
otherwise it remains set to 0.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 99b51c292942..b674d03e6047 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -267,10 +267,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (IS_ADLS_DISPLAY_STEP(dev_priv, STEP_A0, STEP_A2))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 0;
-	else if (GRAPHICS_VER(dev_priv) >= 10) {
+	else if (DISPLAY_VER(dev_priv) >= 11) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_scalers[pipe] = 2;
-	} else if (GRAPHICS_VER(dev_priv) == 9) {
+	} else if (DISPLAY_VER(dev_priv) >= 9) {
 		runtime->num_scalers[PIPE_A] = 2;
 		runtime->num_scalers[PIPE_B] = 2;
 		runtime->num_scalers[PIPE_C] = 1;
@@ -281,10 +281,10 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	if (DISPLAY_VER(dev_priv) >= 13 || HAS_D12_PLANE_MINIMIZATION(dev_priv))
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 4;
-	else if (GRAPHICS_VER(dev_priv) >= 11)
+	else if (DISPLAY_VER(dev_priv) >= 11)
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 6;
-	else if (GRAPHICS_VER(dev_priv) == 10 || IS_GEMINILAKE(dev_priv))
+	else if (DISPLAY_VER(dev_priv) == 10)
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 3;
 	else if (IS_BROXTON(dev_priv)) {
@@ -303,7 +303,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 2;
-	} else if (GRAPHICS_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
+	} else if (DISPLAY_VER(dev_priv) >= 5 || IS_G4X(dev_priv)) {
 		for_each_pipe(dev_priv, pipe)
 			runtime->num_sprites[pipe] = 1;
 	}
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
