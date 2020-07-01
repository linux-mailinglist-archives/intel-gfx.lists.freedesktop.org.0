Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 724912112D8
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 20:36:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4AA6E9A5;
	Wed,  1 Jul 2020 18:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D50B6E9A5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 18:36:37 +0000 (UTC)
IronPort-SDR: RMntkVt1UphrQEX6GAwJk9S560GOsWzqr+zx8g7f6+8PfT3ipen3CffbFY/yAthZNibbkkwrv1
 cuSR/SR/14PQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="146667904"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="146667904"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 11:36:36 -0700
IronPort-SDR: pfWj0zuVazEc0CZvQsp9pDSzk65JS6pJJZakTsAIwrnIHBJViDjJkjlVKpknNrisDZ0Y+Bxman
 pyq4PZYiJCZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="281691352"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga006.jf.intel.com with ESMTP; 01 Jul 2020 11:36:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Jul 2020 11:36:26 -0700
Message-Id: <20200701183626.2450-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: do not read swizzle info if
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since gen8 we don't use swizzle anymore. Don't dump registers related to
it: registers may or may not be there.

Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 8594a8ef08ce..d9e56eee0453 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1138,13 +1138,17 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 	struct intel_uncore *uncore = &dev_priv->uncore;
 	intel_wakeref_t wakeref;
 
-	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
-
 	seq_printf(m, "bit6 swizzle for X-tiling = %s\n",
 		   swizzle_string(dev_priv->ggtt.bit_6_swizzle_x));
 	seq_printf(m, "bit6 swizzle for Y-tiling = %s\n",
 		   swizzle_string(dev_priv->ggtt.bit_6_swizzle_y));
 
+	/* On BDW+, swizzling is not used. See detect_bit_6_swizzle() */
+	if (INTEL_GEN(dev_priv) >= 8 || IS_VALLEYVIEW(dev_priv))
+		return 0;
+
+	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
+
 	if (IS_GEN_RANGE(dev_priv, 3, 4)) {
 		seq_printf(m, "DDC = 0x%08x\n",
 			   intel_uncore_read(uncore, DCC));
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
