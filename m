Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF3C2B1BCE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:24:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D55C6E4C1;
	Fri, 13 Nov 2020 13:24:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 560D76E4C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 13:24:53 +0000 (UTC)
IronPort-SDR: k2RryFm7hNIQFRG3AkaRdjt1HXz/hW4VkRgq6fO61/G2jR1unDXDnsQhaJ9z8x/jDdWurLL6Cp
 mOmz/37KzoGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="166961098"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="166961098"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:24:53 -0800
IronPort-SDR: 7AIvFUrV/0xHJBnozN1Ie8UKeJeLYIk1FFFPNw0tDbVVSDF6aHpMUqSE90LsJN3KIKISjpu3YJ
 /zcMQmHlJoLg==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="542655060"
Received: from rbrenna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.81.159])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:24:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 15:24:31 +0200
Message-Id: <b1e7b95469101396fba249bf64883cc1ecfd7f78.1605273766.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605273766.git.jani.nikula@intel.com>
References: <cover.1605273766.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/9] drm/i915/debugfs: remove RPS autotuning
 details from i915_rps_boost_info
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
index 77e76b665098..1ae6e022ddd5 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1193,20 +1193,6 @@ static int i915_swizzle_info(struct seq_file *m, void *data)
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
@@ -1233,29 +1219,6 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
 
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
