Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6D42C82FB
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Nov 2020 12:16:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9CD36E457;
	Mon, 30 Nov 2020 11:16:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D2A6E456
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Nov 2020 11:16:08 +0000 (UTC)
IronPort-SDR: YNa+4IL+e1KVgQRFr9K/vgIFonoPTk+az3rgsCrfmsqZgZ8eHrpjcERzezhBCj6uX0/pljdPzJ
 dlRf2i2Jrwdg==
X-IronPort-AV: E=McAfee;i="6000,8403,9820"; a="236742417"
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="236742417"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:07 -0800
IronPort-SDR: Ks5n/QvVRqDoeNQtUyTYC6cstecBcFik0+YX5RE02BozvlSh52lh3JbSAs+7VE5Pq0nvbQoM40
 YHDxevkKnxzg==
X-IronPort-AV: E=Sophos;i="5.78,381,1599548400"; d="scan'208";a="480618151"
Received: from cshanno1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.44])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2020 03:16:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Nov 2020 13:15:52 +0200
Message-Id: <20201130111601.2817-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 01/10] drm/i915/debugfs: remove RPS
 autotuning details from i915_rps_boost_info
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
Cc: jani.nikula@intel.com, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The information is no longer relevant, so remove it. This also removes
the last users of I915_READ_FW()

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 37 -----------------------------
 1 file changed, 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 263074c2c097..01db495d475b 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1194,20 +1194,6 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
 	return 0;
 }
 
-static const char *rps_power_to_str(unsigned int power)
-{
-	static const char * const strings[] = {
-		[LOW_POWER] = "low power",
-		[BETWEEN] = "mixed",
-		[HIGH_POWER] = "high power",
-	};
-
-	if (power >= ARRAY_SIZE(strings) || !strings[power])
-		return "unknown";
-
-	return strings[power];
-}
-
 static int i915_rps_boost_info(struct seq_file *m, void *data)
 {
 	struct drm_i915_private *dev_priv = node_to_i915(m->private);
@@ -1234,29 +1220,6 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 
 	seq_printf(m, "Wait boosts: %d\n", atomic_read(&rps->boosts));
 
-	if (INTEL_GEN(dev_priv) >= 6 && intel_rps_is_active(rps)) {
-		u32 rpup, rpupei;
-		u32 rpdown, rpdownei;
-
-		intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-		rpup = I915_READ_FW(GEN6_RP_CUR_UP) & GEN6_RP_EI_MASK;
-		rpupei = I915_READ_FW(GEN6_RP_CUR_UP_EI) & GEN6_RP_EI_MASK;
-		rpdown = I915_READ_FW(GEN6_RP_CUR_DOWN) & GEN6_RP_EI_MASK;
-		rpdownei = I915_READ_FW(GEN6_RP_CUR_DOWN_EI) & GEN6_RP_EI_MASK;
-		intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
-
-		seq_printf(m, "\nRPS Autotuning (current \"%s\" window):\n",
-			   rps_power_to_str(rps->power.mode));
-		seq_printf(m, "  Avg. up: %d%% [above threshold? %d%%]\n",
-			   rpup && rpupei ? 100 * rpup / rpupei : 0,
-			   rps->power.up_threshold);
-		seq_printf(m, "  Avg. down: %d%% [below threshold? %d%%]\n",
-			   rpdown && rpdownei ? 100 * rpdown / rpdownei : 0,
-			   rps->power.down_threshold);
-	} else {
-		seq_puts(m, "\nRPS Autotuning inactive\n");
-	}
-
 	return 0;
 }
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
