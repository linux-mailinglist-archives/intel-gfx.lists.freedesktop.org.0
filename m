Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5409E31A9DD
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Feb 2021 05:28:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BE46E39B;
	Sat, 13 Feb 2021 04:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5E3A6E2E3
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Feb 2021 04:28:09 +0000 (UTC)
IronPort-SDR: D/ZoFrZ1G3cjyB1i/iZey+w6bmErqCl+k1vtyOj0uByJw7zpLh8iEygmT2KGEK/xTyY1KDycEt
 8Ca0cdp3Ty+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="246573779"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="246573779"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
IronPort-SDR: MPmMHTFypdKKm1p3DiePLGGRCGegDD+aY7bGiFvRkXrVK9gRazWTiC+n+tEqdbun6FAyHpjPCF
 xLLDJhAEZ+aA==
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="511516607"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 20:28:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 Feb 2021 20:27:56 -0800
Message-Id: <20210213042756.953007-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210213042756.953007-1-lucas.demarchi@intel.com>
References: <20210213042756.953007-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 4/4] drm/i915: move intel_init_audio_hooks inside
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

intel_init_audio_hooks() sets up hooks in the display struct and only
makes sense when we have display. Move it inside
intel_init_display_hooks() so it isn't called when we don't have
display.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 +
 drivers/gpu/drm/i915/i915_drv.c              | 2 --
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index bb814126d4a3..0dc5cb36667a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -12478,6 +12478,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
 void intel_init_display_hooks(struct drm_i915_private *dev_priv)
 {
 	intel_init_cdclk_hooks(dev_priv);
+	intel_init_audio_hooks(dev_priv);
 
 	intel_dpll_init_clock_hook(dev_priv);
 
diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
index 8c5d46ba847b..3edd5e47ad68 100644
--- a/drivers/gpu/drm/i915/i915_drv.c
+++ b/drivers/gpu/drm/i915/i915_drv.c
@@ -46,7 +46,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "display/intel_acpi.h"
-#include "display/intel_audio.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_csr.h"
@@ -353,7 +352,6 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
 	intel_irq_init(dev_priv);
 	intel_init_display_hooks(dev_priv);
 	intel_init_clock_gating_hooks(dev_priv);
-	intel_init_audio_hooks(dev_priv);
 
 	intel_detect_preproduction_hw(dev_priv);
 
-- 
2.29.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
