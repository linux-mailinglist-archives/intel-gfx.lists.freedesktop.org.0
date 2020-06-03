Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DA51ED86E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 00:12:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDFC89DA3;
	Wed,  3 Jun 2020 22:12:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C50EF89DA3
 for <Intel-gfx@lists.freedesktop.org>; Wed,  3 Jun 2020 22:12:00 +0000 (UTC)
IronPort-SDR: AxjyOOAFe8elHYY4kQaKZnQHbkr5UG2XqDnpPi8vGFVbK1ZBFODd8qE9D7EitO5a8IuIFOvydF
 cgVL38IsEh9w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 15:12:00 -0700
IronPort-SDR: oqz54WFKw9UYUGrHVEn41x/w8PTiPuSGbuNSRb4SbEtIOHzLsGaPGCVi3KiAaO59JnMagkMxah
 4zTkuiiaOERg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,470,1583222400"; d="scan'208";a="471300254"
Received: from daharell-mobl.amr.corp.intel.com (HELO
 cataylo2-MOBL1.amr.corp.intel.com) ([10.254.69.251])
 by fmsmga005.fm.intel.com with ESMTP; 03 Jun 2020 15:11:59 -0700
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Wed,  3 Jun 2020 15:11:50 -0700
Message-Id: <20200603221150.14745-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Implement WA_16011163337
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Clint Taylor <clinton.a.taylor@intel.com>

Set GS Timer to 224. Combine with Wa_1604555607 due to register FF_MODE2
not being able to be read.

V2: Math issue fixed

Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Caz Yokoyama <caz.yokoyama@intel.com>
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 8 ++++----
 drivers/gpu/drm/i915/i915_reg.h             | 2 ++
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 30cd798b9664..a2d5624e5542 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -609,11 +609,11 @@ static void tgl_ctx_workarounds_init(struct intel_engine_cs *engine,
 	 * Wa_1604555607:gen12 and Wa_1608008084:gen12
 	 * FF_MODE2 register will return the wrong value when read. The default
 	 * value for this register is zero for all fields and there are no bit
-	 * masks. So instead of doing a RMW we should just write the TDS timer
-	 * value for Wa_1604555607.
+	 * masks. So instead of doing a RMW we should just write the GS Timer
+	 * and TDS timer values for Wa_1604555607 and Wa_16011163337.
 	 */
-	wa_add(wal, FF_MODE2, FF_MODE2_TDS_TIMER_MASK,
-	       FF_MODE2_TDS_TIMER_128, 0);
+	wa_add(wal, FF_MODE2, FF_MODE2_GS_TIMER_MASK | FF_MODE2_TDS_TIMER_MASK,
+	       FF_MODE2_GS_TIMER_224 | FF_MODE2_TDS_TIMER_128, 0);
 
 	/* WaDisableGPGPUMidThreadPreemption:tgl */
 	WA_SET_FIELD_MASKED(GEN8_CS_CHICKEN1,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 578cfe11cbb9..96d351fbeebb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8004,6 +8004,8 @@ enum {
 #define   PER_PIXEL_ALPHA_BYPASS_EN		(1 << 7)
 
 #define FF_MODE2			_MMIO(0x6604)
+#define   FF_MODE2_GS_TIMER_MASK	REG_GENMASK(31, 24)
+#define   FF_MODE2_GS_TIMER_224		REG_FIELD_PREP(FF_MODE2_GS_TIMER_MASK, 224)
 #define   FF_MODE2_TDS_TIMER_MASK	REG_GENMASK(23, 16)
 #define   FF_MODE2_TDS_TIMER_128	REG_FIELD_PREP(FF_MODE2_TDS_TIMER_MASK, 4)
 
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
