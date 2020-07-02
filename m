Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 024F9212DA4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jul 2020 22:07:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AFE66E136;
	Thu,  2 Jul 2020 20:07:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F6106E136
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jul 2020 20:07:54 +0000 (UTC)
IronPort-SDR: 3DH/96U31cM4J+ABukd7Jc6evsOHBe08l6IgJNICIXKKs2eoWXq1jR2bwJrKZTvmXE2hN6ohbM
 thlP6WAfhHlg==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="144527520"
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="144527520"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2020 13:07:53 -0700
IronPort-SDR: rlAVqHAColaV6nzi+mW0jL3UcdU8tDcT6UtYYeF3z805Bg2xjz7M2ds7sLxrtR55a5avpYEqQs
 6i3+uCFx++Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,305,1589266800"; d="scan'208";a="356565631"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga001.jf.intel.com with ESMTP; 02 Jul 2020 13:07:53 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Jul 2020 13:07:14 -0700
Message-Id: <20200702200714.1278-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: do not read swizzle info if
 unavailable
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since gen8 we don't use swizzle anymore. Don't dump registers related to
it: registers may or may not be there.

v2: pull the rest of driver state reporting before the read out (Chris)

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 9ca94a435b75..94ed442910d6 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1138,13 +1138,20 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	intel_wakeref_t wakeref;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
 	seq_printf(m, "bit6 swizzle for X-tiling = %s\n",
 		   swizzle_string(dev_priv->ggtt.bit_6_swizzle_x));
 	seq_printf(m, "bit6 swizzle for Y-tiling = %s\n",
 		   swizzle_string(dev_priv->ggtt.bit_6_swizzle_y));
 
+	if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
+		seq_puts(m, "L-shaped memory detected\n");
+
+	/* On BDW+, swizzling is not used. See detect_bit_6_swizzle() */
+	if (INTEL_GEN(dev_priv) >= 8 || IS_VALLEYVIEW(dev_priv))
+		return 0;
+
+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+
 	if (IS_GEN_RANGE(dev_priv, 3, 4)) {
 		seq_printf(m, "DDC = 0x%08x\n",
 			   intel_uncore_read(uncore, DCC));
@@ -1173,9 +1180,6 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 			   intel_uncore_read(uncore, DISP_ARB_CTL));
 	}
 
-	if (dev_priv->quirks & QUIRK_PIN_SWIZZLED_PAGES)
-		seq_puts(m, "L-shaped memory detected\n");
-
 	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);
 
 	return 0;
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
