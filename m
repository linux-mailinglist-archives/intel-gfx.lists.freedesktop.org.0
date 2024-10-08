Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A0299596A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 23:44:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B8E110E5F3;
	Tue,  8 Oct 2024 21:44:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CodW3LVb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3668F10E5FE;
 Tue,  8 Oct 2024 21:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728423844; x=1759959844;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fyVBDhzN23ApWs1Kw6GYxoXG45PNeujZx/jSKz2vSew=;
 b=CodW3LVbWofw55WO6MuaZqEfq7qEisfP8vzpU5Mi4w1P86InuLpSEtZD
 uNKEB1fpXQke5lD1gYiCsmWZV5+k8NLsW6wBoyUCTQVl0SPOFvZcHnLJz
 YVZzGNLWYyhnTX5P0wFaWd0aa21JCB4Si1ut98PgT0h+pxKvZ/icaG/bp
 0x5T3IKb6HagZnkLrrDFycoRzh79hxPoR+oECCM3VOFjhoYkuBFHAYw55
 ByMGfVc5fYNMtBDL10EajHwTiM68+vJRGXdoXvDW8tCrn/2OyamIaJTFg
 GjNDghEbo+ITE1NFGA73241bA86VU26xSw27hZRrEIhM+zyl6cp15LR9D A==;
X-CSE-ConnectionGUID: pkSIs8QnQg2BIc6dG6NRgw==
X-CSE-MsgGUID: Au0aB51VR++lTUpy2T5gmw==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27831651"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27831651"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 14:44:04 -0700
X-CSE-ConnectionGUID: 8EYz6P7HRDuT6V/IwTTuQQ==
X-CSE-MsgGUID: o13pZmMeT/CA1Tbbzax1DA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76113143"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 14:44:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 00:44:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 4/4] drm/i915/pmu: Add support for gen2
Date: Wed,  9 Oct 2024 00:43:49 +0300
Message-ID: <20241008214349.23331-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Implement pmu support for gen2 so that one can use intel_gpu_top
on it once again.

Gen2 lacks MI_MODE/MODE_IDLE so we'll have to do a bit more work
to determine the state of the engine:
- to determine if the ring contains unconsumed data we can simply
  compare RING_TAIL vs. RING_HEAD
- also check RING_HEAD vs. ACTHD to catch cases where the hardware
  is still executing a batch buffer but the ring head has already
  caught up with the tail. Not entirely sure if that's actually
  possible or not, but maybe it can happen if the batch buffer is
  initiated from the very end of the ring? But even if not strictly
  necessary there's no real harm in checking anyway.
- MI_WAIT_FOR_EVENT can be detected via a dedicated bit in RING_HEAD

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_regs.h |  2 +-
 drivers/gpu/drm/i915/i915_pmu.c             | 32 +++++++++++++++++----
 2 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index a8eac59e3779..1c4784cb296c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -15,6 +15,7 @@
 #define   HEAD_WRAP_COUNT			0xFFE00000
 #define   HEAD_WRAP_ONE				0x00200000
 #define   HEAD_ADDR				0x001FFFFC
+#define   HEAD_WAIT_I8XX			(1 << 0) /* gen2, PRBx_HEAD */
 #define RING_START(base)			_MMIO((base) + 0x38)
 #define RING_CTL(base)				_MMIO((base) + 0x3c)
 #define   RING_CTL_SIZE(size)			((size) - PAGE_SIZE) /* in bytes -> pages */
@@ -26,7 +27,6 @@
 #define   RING_VALID_MASK			0x00000001
 #define   RING_VALID				0x00000001
 #define   RING_INVALID				0x00000000
-#define   RING_WAIT_I8XX			(1 << 0) /* gen2, PRBx_HEAD */
 #define   RING_WAIT				(1 << 11) /* gen3+, PRBx_CTL */
 #define   RING_WAIT_SEMAPHORE			(1 << 10) /* gen6+ */
 #define RING_SYNC_0(base)			_MMIO((base) + 0x40)
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 67b6cbdeff1d..2eed4c866321 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -356,7 +356,7 @@ static bool exclusive_mmio_access(const struct drm_i915_private *i915)
 	return GRAPHICS_VER(i915) == 7;
 }
 
-static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns)
+static void engine_sample_gen3(struct intel_engine_cs *engine, unsigned int period_ns)
 {
 	struct intel_engine_pmu *pmu = &engine->pmu;
 	bool busy;
@@ -391,6 +391,31 @@ static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns
 		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
 }
 
+static void engine_sample_gen2(struct intel_engine_cs *engine, unsigned int period_ns)
+{
+	struct intel_engine_pmu *pmu = &engine->pmu;
+	u32 tail, head, acthd;
+
+	tail = ENGINE_READ_FW(engine, RING_TAIL);
+	head = ENGINE_READ_FW(engine, RING_HEAD);
+	acthd = ENGINE_READ_FW(engine, ACTHD);
+
+	if (head & HEAD_WAIT_I8XX)
+		add_sample(&pmu->sample[I915_SAMPLE_WAIT], period_ns);
+
+	if (head & HEAD_WAIT_I8XX || head != acthd ||
+	    (head & HEAD_ADDR) != (tail & TAIL_ADDR))
+		add_sample(&pmu->sample[I915_SAMPLE_BUSY], period_ns);
+}
+
+static void engine_sample(struct intel_engine_cs *engine, unsigned int period_ns)
+{
+	if (GRAPHICS_VER(engine->i915) >= 3)
+		engine_sample_gen3(engine, period_ns);
+	else
+		engine_sample_gen2(engine, period_ns);
+}
+
 static void
 engines_sample(struct intel_gt *gt, unsigned int period_ns)
 {
@@ -1243,11 +1268,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
 
 	int ret = -ENOMEM;
 
-	if (GRAPHICS_VER(i915) <= 2) {
-		drm_info(&i915->drm, "PMU not supported for this GPU.");
-		return;
-	}
-
 	spin_lock_init(&pmu->lock);
 	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
 	pmu->timer.function = i915_sample;
-- 
2.45.2

