Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F866EA9DC
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 14:03:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92F7310E0A2;
	Fri, 21 Apr 2023 12:03:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D10F410E0A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 12:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682078593; x=1713614593;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hCrFFtCIFN1RSR6RhFdnYV47vH4yhu3fZSMmBkuXrp8=;
 b=ltODIoO94NvcaI1J0us3m0tgVfOon12g6Rd3+545mriOjv/PcxjY+oRv
 847zItsy9YCSILGTTr89mEOBo+l1AlCf9xPbzdPhRmkQbe/XG6pWWeJzR
 UT/ZpUxxVcsXYugNyiNzzVa44kobTI7GtBWtQLyfDbg/LNojrKlT+d0bG
 q4A6rQhZUGpr/rF4u662zrleeRg3UvYL5Wh7RjPzNIvuRcSbgtykxEUOX
 w/NMR47qfYrB+7uHasG7k/MPILASuFYh3HuYW6lzcU9D64H98sFaZOgm2
 Ih8Qpe6BLKhMO1dgftrVOxJlc4ypqjChMhkBEolIkAfAw+ViL3XsibCyB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373900053"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373900053"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 05:03:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="722725404"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="722725404"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 21 Apr 2023 05:03:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 15:03:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 15:02:55 +0300
Message-Id: <20230421120307.24793-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 01/13] drm/i915: Re-init clock gating on coming
 out of PC8+
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

PC8+ clobbers a bunch of displays registers which need to
be restored by hand or else we lost a bunch of workarounds.
The important ones for us are at least CHICKEN_PAR2* and
CHICKEN_PIPESL*.

Curiously at least some CHICKEN_PAR1* registers
are preserved by the hardware/firmware. Unfortunately Bspec
doens't really specify what gets clobbered vs. preserved
so further reverse engieering might be warranted to figure
out the specifics.

Note that PCH_LP_PARTITION_LEVEL_DISABLE is also set by
lpt_init_clock_gating() so the rmw in hsw_disable_pc8()
is now redundant. Remove it.

TODO: I suspect most gt stuff doesn't need this and we should
      finish moving all of them from init_clock_gating() to
      a more appropriate place...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 5150069f3f82..83c44ec3f5ea 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -10,6 +10,7 @@
 #include "i915_reg.h"
 #include "intel_backlight_regs.h"
 #include "intel_cdclk.h"
+#include "intel_clock_gating.h"
 #include "intel_combo_phy.h"
 #include "intel_de.h"
 #include "intel_display_power.h"
@@ -1366,9 +1367,8 @@ static void hsw_disable_pc8(struct drm_i915_private *dev_priv)
 	hsw_restore_lcpll(dev_priv);
 	intel_init_pch_refclk(dev_priv);
 
-	if (HAS_PCH_LPT_LP(dev_priv))
-		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
-			     0, PCH_LP_PARTITION_LEVEL_DISABLE);
+	/* Many display registers don't survive PC8+ */
+	intel_clock_gating_init(dev_priv);
 }
 
 static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
-- 
2.39.2

