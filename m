Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D36613887
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 14:58:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1CF10E2C1;
	Mon, 31 Oct 2022 13:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E7010E2B6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667224642; x=1698760642;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6HgsB+3uX4o/T9mnYwKSEmIzWgy+pw+GmUZzvESRPJg=;
 b=BXXraac5rKpi0oLamiRa8jtO7c0oYIctr9G7j3Uf8US5YLSU1y6tC65n
 qvccQKvh5YvRHaOLbhqQjwj/1Vx0LrhvMwM4KM2MZ18tF47yAWz+JCTl6
 zPcbWrJ42Kaoyab7TIrcj/1+kU4jv7v97Ej8L1TKdfuREW4z5MrKOjFAx
 3kUC0mLVFBuXmHYh/EbVzcv82/Q+sSPLfzAptXom3Lwp175+NCuiTdrG4
 UCS7GBg3WpufsVw4JFuy+pv1XBehTl5LDOswAltqcSLTacfB1LEaKAZo2
 U3eukG0sCc7QwygRCv2Yz7pI4leTEH2PvP3bC1zFwBf4tiM9fgvNuIHNG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="307624851"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="307624851"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 06:57:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="633532188"
X-IronPort-AV: E=Sophos;i="5.95,228,1661842800"; d="scan'208";a="633532188"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 31 Oct 2022 06:57:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 31 Oct 2022 15:57:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Oct 2022 15:57:02 +0200
Message-Id: <20221031135703.14670-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
References: <20221031135703.14670-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/6] drm/i915/selftests: Test RING_TIMESTAMP on
 gen4/5
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

Now that we actually know the cs timestamp frequency on gen4/5
let's run the corresponding test.

On g4x/ilk we must read the udw of the 64bit timestamp
register. Details in {g4x,gen5)_read_clock_frequency().

The one extra caveat is that on i965 (or at least CL, don't
recall if I ever tested on BW) we must read the register
twice to get an up to date value. For some unknown reason
the first read tends to return a stale value.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_gt_pm.c | 36 ++++++++++--------------
 1 file changed, 15 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
index be94f863bdef..b46425aeb2f0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/selftest_gt_pm.c
@@ -36,6 +36,19 @@ static int cmp_u32(const void *A, const void *B)
 		return 0;
 }
 
+static u32 read_timestamp(struct intel_engine_cs *engine)
+{
+	struct drm_i915_private *i915 = engine->i915;
+
+	/* On i965 the first read tends to give a stale value */
+	ENGINE_READ_FW(engine, RING_TIMESTAMP);
+
+	if (GRAPHICS_VER(i915) == 5 || IS_G4X(i915))
+		return ENGINE_READ_FW(engine, RING_TIMESTAMP_UDW);
+	else
+		return ENGINE_READ_FW(engine, RING_TIMESTAMP);
+}
+
 static void measure_clocks(struct intel_engine_cs *engine,
 			   u32 *out_cycles, ktime_t *out_dt)
 {
@@ -45,13 +58,13 @@ static void measure_clocks(struct intel_engine_cs *engine,
 
 	for (i = 0; i < 5; i++) {
 		local_irq_disable();
-		cycles[i] = -ENGINE_READ_FW(engine, RING_TIMESTAMP);
+		cycles[i] = -read_timestamp(engine);
 		dt[i] = ktime_get();
 
 		udelay(1000);
 
 		dt[i] = ktime_sub(ktime_get(), dt[i]);
-		cycles[i] += ENGINE_READ_FW(engine, RING_TIMESTAMP);
+		cycles[i] += read_timestamp(engine);
 		local_irq_enable();
 	}
 
@@ -78,25 +91,6 @@ static int live_gt_clocks(void *arg)
 	if (GRAPHICS_VER(gt->i915) < 4) /* Any CS_TIMESTAMP? */
 		return 0;
 
-	if (GRAPHICS_VER(gt->i915) == 5)
-		/*
-		 * XXX CS_TIMESTAMP low dword is dysfunctional?
-		 *
-		 * Ville's experiments indicate the high dword still works,
-		 * but at a correspondingly reduced frequency.
-		 */
-		return 0;
-
-	if (GRAPHICS_VER(gt->i915) == 4)
-		/*
-		 * XXX CS_TIMESTAMP appears gibberish
-		 *
-		 * Ville's experiments indicate that it mostly appears 'stuck'
-		 * in that we see the register report the same cycle count
-		 * for a couple of reads.
-		 */
-		return 0;
-
 	intel_gt_pm_get(gt);
 	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
 
-- 
2.37.4

