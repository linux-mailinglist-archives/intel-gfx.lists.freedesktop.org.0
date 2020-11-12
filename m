Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D322B042C
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Nov 2020 12:45:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D791F6E204;
	Thu, 12 Nov 2020 11:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C0A6E204
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Nov 2020 11:45:10 +0000 (UTC)
IronPort-SDR: BkKnrzzWAEtZM/EHJdZyh38XbnOoMjU6lq/s34ZAKBCm3Mn0T4FFbiy+VS071PksiaptEcgbzi
 l3stK+ogSd5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9802"; a="234458593"
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="234458593"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 03:45:10 -0800
IronPort-SDR: GVniXixfFticK8yRCmPX1GxdPwbyqB5jpmFULOOezmpqHtYJhI2McoEjhjG3oF4dMqNxcqdbTX
 h4AS44lkY/mg==
X-IronPort-AV: E=Sophos;i="5.77,471,1596524400"; d="scan'208";a="532119022"
Received: from mghidovi-mobl1.ti.intel.com (HELO localhost) ([10.251.81.155])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Nov 2020 03:45:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Nov 2020 13:44:37 +0200
Message-Id: <6bd3045daa74b5789881b690ff0908bb486f34ce.1605181350.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1605181350.git.jani.nikula@intel.com>
References: <cover.1605181350.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/debugfs: replace
 I915_READ()+I915_WRITE() with intel_uncore_rmw()
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Remove the last I915_WRITE() use in i915_debugfs.c.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 7cbca268cb61..151734a1a496 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1562,13 +1562,9 @@ i915_cache_sharing_set(void *data, u64 val)
 	drm_dbg(&dev_priv->drm,
 		"Manually setting uncore sharing to %llu\n", val);
 	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref) {
-		u32 snpcr;
-
 		/* Update the cache sharing policy here as well */
-		snpcr = I915_READ(GEN6_MBCUNIT_SNPCR);
-		snpcr &= ~GEN6_MBC_SNPCR_MASK;
-		snpcr |= val << GEN6_MBC_SNPCR_SHIFT;
-		I915_WRITE(GEN6_MBCUNIT_SNPCR, snpcr);
+		intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR,
+				 GEN6_MBC_SNPCR_MASK, val << GEN6_MBC_SNPCR_SHIFT);
 	}
 
 	return 0;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
