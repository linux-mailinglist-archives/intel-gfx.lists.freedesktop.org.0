Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27788C70B5B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A770B10E686;
	Wed, 19 Nov 2025 18:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2LZ5/Mf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A99C910E686;
 Wed, 19 Nov 2025 18:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578405; x=1795114405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MhtJQNSm/iaA1bSY5/PI+du8hktq745Sub+ExRDfisA=;
 b=M2LZ5/MfIAJqz6Kc+6a1gUtCd088kFSgtoNn6R7X65XvI8CQNOjCaVWe
 QuMvK16rdFC08HuCBed9NANuWRC5OJMNtpGcxe33oQhwD9tAMLxoD8Hj1
 815FkVVLUJ1MkkFH5J4e7RvZOKOp4TNihF563ARX8F/1vpACJkbm7pByP
 iPhn/c832CvFMu8b9MafSQUzlWpEYkgJSOz+m+32nd7ML4xgrRvEgWhY2
 OZBU86DO8R7kNroaHxyu9mhyZJzBIyL+g2BSdPwnlAr5ndNPk0trGfX83
 b00T9ZTJtIkZTsY8W3ePHeM2OeOuPySSTL4JXaE22j2pl7pEi3DjLb2Vh w==;
X-CSE-ConnectionGUID: 5Y4yQ7/bRB2q+kJbt1xATw==
X-CSE-MsgGUID: CkC83RlbTrOpHNBk51XTFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="53205184"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="53205184"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:24 -0800
X-CSE-ConnectionGUID: u8tbRxM4RGuJSFTkRMGPIw==
X-CSE-MsgGUID: ddRmSdAyTXWQcKjC8fCadg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="190387693"
Received: from aschofie-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.124.221.119])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:24 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to polling
 read"
Date: Wed, 19 Nov 2025 20:53:10 +0200
Message-ID: <20251119185310.10428-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

This reverts commit 5a9b0c7418448ed3766f61ba0a71d08f259c3181.

The switch from AUX interrupts to pollign was very hand-wavy.
Yes, there have been some situations in CI on a few platforms
where the AUX hardware seemingly forgets to signal the timeout,
but those have been happening after we switched to polling as
well. So I don't think we have any conclusive evidence that
polling actually helps here.

Someone really should root cause the actual problem, and see
if there is a proper workaround we could implemnt (eg. disabling
clock gating/etc.). In the meantime just go back to using the
interrupt for AUX completion.

If the hardware fails to signal the timeout we will just hit
the wait_event_timeout() software timeout instead. I suppose
we could try to tune the software timeout to more closely
match the expected hardware timeout. Might need to use
wait_event_hrtimeout() or something to avoid jiffies
granularity issues...

The AUX polling is also a hinderance towards using poll_timeout_us()
because we have a very long timeout, but would need a fairly short
polling interval to keep AUX transfer reasonably fast. Someone would
need to come up with good numbers in a somewhat scientific way.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_aux.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 809799f63e32..d1a93e4a59b5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_de.h"
+#include "intel_display_jiffies.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_dp.h"
@@ -60,16 +61,17 @@ intel_dp_aux_wait_done(struct intel_dp *intel_dp)
 	i915_reg_t ch_ctl = intel_dp->aux_ch_ctl_reg(intel_dp);
 	const unsigned int timeout_ms = 10;
 	u32 status;
-	int ret;
+	bool done;
 
-	ret = intel_de_wait_ms(display, ch_ctl,
-			       DP_AUX_CH_CTL_SEND_BUSY, 0,
-			       timeout_ms, &status);
+#define C (((status = intel_de_read_notrace(display, ch_ctl)) & DP_AUX_CH_CTL_SEND_BUSY) == 0)
+	done = wait_event_timeout(display->gmbus.wait_queue, C,
+				  msecs_to_jiffies_timeout(timeout_ms));
 
-	if (ret == -ETIMEDOUT)
+	if (!done)
 		drm_err(display->drm,
 			"%s: did not complete or timeout within %ums (status 0x%08x)\n",
 			intel_dp->aux.name, timeout_ms, status);
+#undef C
 
 	return status;
 }
-- 
2.49.1

