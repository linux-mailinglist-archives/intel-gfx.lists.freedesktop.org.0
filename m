Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0513B886
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 04:59:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CFB06E84C;
	Wed, 15 Jan 2020 03:59:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8F06E844;
 Wed, 15 Jan 2020 03:59:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 19:52:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,321,1574150400"; 
 d="scan'208,217";a="242720389"
Received: from plaxmina-desktop.iind.intel.com ([10.106.124.119])
 by orsmga002.jf.intel.com with ESMTP; 14 Jan 2020 19:52:46 -0800
From: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
To: jani.nikula@intel.com, daniel@ffwll.ch, sam@ravnborg.org,
 sudeep.dutt@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>
Date: Wed, 15 Jan 2020 09:14:54 +0530
Message-Id: <20200115034455.17658-11-pankaj.laxminarayan.bharadiya@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
References: <20200115034455.17658-1-pankaj.laxminarayan.bharadiya@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [ [PATCH v2 10/10] drm/i915: Make WARN* drm specific
 where uncore or stream ptr is available
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drm specific WARN* calls include device information in the
backtrace, so we know what device the warnings originate from.

Covert all the calls of WARN* with device specific drm_WARN*
variants in functions where intel_uncore/i915_perf_stream  struct
pointer is readily available.

The conversion was done automatically with below coccinelle semantic
patch. checkpatch errors/warnings are fixed manually.

@@
identifier func, T;
@@
func(...) {
...
struct intel_uncore *T = ...;
<...
(
-WARN(
+drm_WARN(&T->i915->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->i915->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->i915->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->i915->drm,
...)
)
...>

}

@@
identifier func, T;
@@
func(struct intel_uncore *T,...) {
<...
(
-WARN(
+drm_WARN(&T->i915->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&T->i915->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&T->i915->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&T->i915->drm,
...)
)
...>

}

@@
identifier func, T;
@@
func(struct i915_perf_stream *T,...) {
+struct drm_i915_private *i915 = T->perf->i915;
<+...
(
-WARN(
+drm_WARN(&i915->drm,
...)
|
-WARN_ON(
+drm_WARN_ON(&i915->drm,
...)
|
-WARN_ONCE(
+drm_WARN_ONCE(&i915->drm,
...)
|
-WARN_ON_ONCE(
+drm_WARN_ON_ONCE(&i915->drm,
...)
)
...+>

}

command: ls drivers/gpu/drm/i915/*.c | xargs spatch --sp-file <script> \
					--linux-spacing --in-place

Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
---
 drivers/gpu/drm/i915/i915_gem_fence_reg.c | 11 ++---
 drivers/gpu/drm/i915/i915_irq.c           | 10 +++--
 drivers/gpu/drm/i915/i915_perf.c          | 38 ++++++++++-------
 drivers/gpu/drm/i915/intel_uncore.c       | 52 ++++++++++++-----------
 4 files changed, 61 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem_fence_reg.c b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
index d9c34a23cd67..6c54d78bea7b 100644
--- a/drivers/gpu/drm/i915/i915_gem_fence_reg.c
+++ b/drivers/gpu/drm/i915/i915_gem_fence_reg.c
@@ -237,11 +237,12 @@ static int fence_update(struct i915_fence_reg *fence,
 		if (!i915_vma_is_map_and_fenceable(vma))
 			return -EINVAL;
 
-		if (WARN(!i915_gem_object_get_stride(vma->obj) ||
-			 !i915_gem_object_get_tiling(vma->obj),
-			 "bogus fence setup with stride: 0x%x, tiling mode: %i\n",
-			 i915_gem_object_get_stride(vma->obj),
-			 i915_gem_object_get_tiling(vma->obj)))
+		if (drm_WARN(&uncore->i915->drm,
+			     !i915_gem_object_get_stride(vma->obj) ||
+			     !i915_gem_object_get_tiling(vma->obj),
+			     "bogus fence setup with stride: 0x%x, tiling mode: %i\n",
+			     i915_gem_object_get_stride(vma->obj),
+			     i915_gem_object_get_tiling(vma->obj)))
 			return -EINVAL;
 
 		ret = i915_vma_sync(vma);
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 4b53d776bf7e..94cb25ac504d 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -208,8 +208,9 @@ static void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
 	if (val == 0)
 		return;
 
-	WARN(1, "Interrupt register 0x%x is not zero: 0x%08x\n",
-	     i915_mmio_reg_offset(reg), val);
+	drm_WARN(&uncore->i915->drm, 1,
+		 "Interrupt register 0x%x is not zero: 0x%08x\n",
+		 i915_mmio_reg_offset(reg), val);
 	intel_uncore_write(uncore, reg, 0xffffffff);
 	intel_uncore_posting_read(uncore, reg);
 	intel_uncore_write(uncore, reg, 0xffffffff);
@@ -223,8 +224,9 @@ static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
 	if (val == 0)
 		return;
 
-	WARN(1, "Interrupt register 0x%x is not zero: 0x%08x\n",
-	     i915_mmio_reg_offset(GEN2_IIR), val);
+	drm_WARN(&uncore->i915->drm, 1,
+		 "Interrupt register 0x%x is not zero: 0x%08x\n",
+		 i915_mmio_reg_offset(GEN2_IIR), val);
 	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
 	intel_uncore_posting_read16(uncore, GEN2_IIR);
 	intel_uncore_write16(uncore, GEN2_IIR, 0xffff);
diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 0f556d80ba36..3c4647054557 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -686,7 +686,7 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	u32 taken;
 	int ret = 0;
 
-	if (WARN_ON(!stream->enabled))
+	if (drm_WARN_ON(&uncore->i915->drm, !stream->enabled))
 		return -EIO;
 
 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
@@ -718,10 +718,11 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 	 * only be incremented by multiples of the report size (notably also
 	 * all a power of two).
 	 */
-	if (WARN_ONCE(head > OA_BUFFER_SIZE || head % report_size ||
-		      tail > OA_BUFFER_SIZE || tail % report_size,
-		      "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
-		      head, tail))
+	if (drm_WARN_ONCE(&uncore->i915->drm,
+			  head > OA_BUFFER_SIZE || head % report_size ||
+			  tail > OA_BUFFER_SIZE || tail % report_size,
+			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
+			  head, tail))
 		return -EIO;
 
 
@@ -742,7 +743,8 @@ static int gen8_append_oa_reports(struct i915_perf_stream *stream,
 		 * here would imply a driver bug that would result
 		 * in an overrun.
 		 */
-		if (WARN_ON((OA_BUFFER_SIZE - head) < report_size)) {
+		if (drm_WARN_ON(&uncore->i915->drm,
+				(OA_BUFFER_SIZE - head) < report_size)) {
 			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
@@ -896,7 +898,7 @@ static int gen8_oa_read(struct i915_perf_stream *stream,
 	i915_reg_t oastatus_reg;
 	int ret;
 
-	if (WARN_ON(!stream->oa_buffer.vaddr))
+	if (drm_WARN_ON(&uncore->i915->drm, !stream->oa_buffer.vaddr))
 		return -EIO;
 
 	oastatus_reg = IS_GEN(stream->perf->i915, 12) ?
@@ -986,7 +988,7 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 	u32 taken;
 	int ret = 0;
 
-	if (WARN_ON(!stream->enabled))
+	if (drm_WARN_ON(&uncore->i915->drm, !stream->enabled))
 		return -EIO;
 
 	spin_lock_irqsave(&stream->oa_buffer.ptr_lock, flags);
@@ -1015,10 +1017,11 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 	 * only be incremented by multiples of the report size (notably also
 	 * all a power of two).
 	 */
-	if (WARN_ONCE(head > OA_BUFFER_SIZE || head % report_size ||
-		      tail > OA_BUFFER_SIZE || tail % report_size,
-		      "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
-		      head, tail))
+	if (drm_WARN_ONCE(&uncore->i915->drm,
+			  head > OA_BUFFER_SIZE || head % report_size ||
+			  tail > OA_BUFFER_SIZE || tail % report_size,
+			  "Inconsistent OA buffer pointers: head = %u, tail = %u\n",
+			  head, tail))
 		return -EIO;
 
 
@@ -1036,7 +1039,8 @@ static int gen7_append_oa_reports(struct i915_perf_stream *stream,
 		 * here would imply a driver bug that would result
 		 * in an overrun.
 		 */
-		if (WARN_ON((OA_BUFFER_SIZE - head) < report_size)) {
+		if (drm_WARN_ON(&uncore->i915->drm,
+				(OA_BUFFER_SIZE - head) < report_size)) {
 			DRM_ERROR("Spurious OA head ptr: non-integral report offset\n");
 			break;
 		}
@@ -1110,7 +1114,7 @@ static int gen7_oa_read(struct i915_perf_stream *stream,
 	u32 oastatus1;
 	int ret;
 
-	if (WARN_ON(!stream->oa_buffer.vaddr))
+	if (drm_WARN_ON(&uncore->i915->drm, !stream->oa_buffer.vaddr))
 		return -EIO;
 
 	oastatus1 = intel_uncore_read(uncore, GEN7_OASTATUS1);
@@ -1575,11 +1579,12 @@ static void gen12_init_oa_buffer(struct i915_perf_stream *stream)
 
 static int alloc_oa_buffer(struct i915_perf_stream *stream)
 {
+	struct drm_i915_private *i915 = stream->perf->i915;
 	struct drm_i915_gem_object *bo;
 	struct i915_vma *vma;
 	int ret;
 
-	if (WARN_ON(stream->oa_buffer.vma))
+	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.vma))
 		return -ENODEV;
 
 	BUILD_BUG_ON_NOT_POWER_OF_2(OA_BUFFER_SIZE);
@@ -2718,6 +2723,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 			       struct drm_i915_perf_open_param *param,
 			       struct perf_open_properties *props)
 {
+	struct drm_i915_private *i915 = stream->perf->i915;
 	struct i915_perf *perf = stream->perf;
 	int format_size;
 	int ret;
@@ -2774,7 +2780,7 @@ static int i915_oa_stream_init(struct i915_perf_stream *stream,
 	stream->sample_size += format_size;
 
 	stream->oa_buffer.format_size = format_size;
-	if (WARN_ON(stream->oa_buffer.format_size == 0))
+	if (drm_WARN_ON(&i915->drm, stream->oa_buffer.format_size == 0))
 		return -EINVAL;
 
 	stream->hold_preemption = props->hold_preemption;
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 7a5a1461b9c0..abb18b90d7c3 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -324,8 +324,9 @@ static void __gen6_gt_wait_for_thread_c0(struct intel_uncore *uncore)
 	 * w/a for a sporadic read returning 0 by waiting for the GT
 	 * thread to wake up.
 	 */
-	WARN_ONCE(wait_for_atomic_us(gt_thread_status(uncore) == 0, 5000),
-		  "GT thread status wait timed out\n");
+	drm_WARN_ONCE(&uncore->i915->drm,
+		      wait_for_atomic_us(gt_thread_status(uncore) == 0, 5000),
+		      "GT thread status wait timed out\n");
 }
 
 static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
@@ -441,7 +442,7 @@ intel_uncore_forcewake_reset(struct intel_uncore *uncore)
 		cond_resched();
 	}
 
-	WARN_ON(active_domains);
+	drm_WARN_ON(&uncore->i915->drm, active_domains);
 
 	fw = uncore->fw_domains_active;
 	if (fw)
@@ -757,9 +758,9 @@ void assert_forcewakes_inactive(struct intel_uncore *uncore)
 	if (!uncore->funcs.force_wake_get)
 		return;
 
-	WARN(uncore->fw_domains_active,
-	     "Expected all fw_domains to be inactive, but %08x are still on\n",
-	     uncore->fw_domains_active);
+	drm_WARN(&uncore->i915->drm, uncore->fw_domains_active,
+		 "Expected all fw_domains to be inactive, but %08x are still on\n",
+		 uncore->fw_domains_active);
 }
 
 void assert_forcewakes_active(struct intel_uncore *uncore,
@@ -779,9 +780,9 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
 	assert_rpm_wakelock_held(uncore->rpm);
 
 	fw_domains &= uncore->fw_domains;
-	WARN(fw_domains & ~uncore->fw_domains_active,
-	     "Expected %08x fw_domains to be active, but %08x are off\n",
-	     fw_domains, fw_domains & ~uncore->fw_domains_active);
+	drm_WARN(&uncore->i915->drm, fw_domains & ~uncore->fw_domains_active,
+		 "Expected %08x fw_domains to be active, but %08x are off\n",
+		 fw_domains, fw_domains & ~uncore->fw_domains_active);
 
 	/*
 	 * Check that the caller has an explicit wakeref and we don't mistake
@@ -794,9 +795,9 @@ void assert_forcewakes_active(struct intel_uncore *uncore,
 		if (uncore->fw_domains_timer & domain->mask)
 			expect++; /* pending automatic release */
 
-		if (WARN(actual < expect,
-			 "Expected domain %d to be held awake by caller, count=%d\n",
-			 domain->id, actual))
+		if (drm_WARN(&uncore->i915->drm, actual < expect,
+			     "Expected domain %d to be held awake by caller, count=%d\n",
+			     domain->id, actual))
 			break;
 	}
 
@@ -866,9 +867,9 @@ find_fw_domain(struct intel_uncore *uncore, u32 offset)
 	if (entry->domains == FORCEWAKE_ALL)
 		return uncore->fw_domains;
 
-	WARN(entry->domains & ~uncore->fw_domains,
-	     "Uninitialized forcewake domain(s) 0x%x accessed at 0x%x\n",
-	     entry->domains & ~uncore->fw_domains, offset);
+	drm_WARN(&uncore->i915->drm, entry->domains & ~uncore->fw_domains,
+		 "Uninitialized forcewake domain(s) 0x%x accessed at 0x%x\n",
+		 entry->domains & ~uncore->fw_domains, offset);
 
 	return entry->domains;
 }
@@ -1158,10 +1159,11 @@ __unclaimed_reg_debug(struct intel_uncore *uncore,
 		      const bool read,
 		      const bool before)
 {
-	if (WARN(check_for_unclaimed_mmio(uncore) && !before,
-		 "Unclaimed %s register 0x%x\n",
-		 read ? "read from" : "write to",
-		 i915_mmio_reg_offset(reg)))
+	if (drm_WARN(&uncore->i915->drm,
+		     check_for_unclaimed_mmio(uncore) && !before,
+		     "Unclaimed %s register 0x%x\n",
+		     read ? "read from" : "write to",
+		     i915_mmio_reg_offset(reg)))
 		/* Only report the first N failures */
 		i915_modparams.mmio_debug--;
 }
@@ -1436,8 +1438,8 @@ static int __fw_domain_init(struct intel_uncore *uncore,
 	if (!d)
 		return -ENOMEM;
 
-	WARN_ON(!i915_mmio_reg_valid(reg_set));
-	WARN_ON(!i915_mmio_reg_valid(reg_ack));
+	drm_WARN_ON(&uncore->i915->drm, !i915_mmio_reg_valid(reg_set));
+	drm_WARN_ON(&uncore->i915->drm, !i915_mmio_reg_valid(reg_ack));
 
 	d->uncore = uncore;
 	d->wake_count = 0;
@@ -1482,8 +1484,8 @@ static void fw_domain_fini(struct intel_uncore *uncore,
 		return;
 
 	uncore->fw_domains &= ~BIT(domain_id);
-	WARN_ON(d->wake_count);
-	WARN_ON(hrtimer_cancel(&d->timer));
+	drm_WARN_ON(&uncore->i915->drm, d->wake_count);
+	drm_WARN_ON(&uncore->i915->drm, hrtimer_cancel(&d->timer));
 	kfree(d);
 }
 
@@ -2108,7 +2110,7 @@ intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
 {
 	enum forcewake_domains fw_domains = 0;
 
-	WARN_ON(!op);
+	drm_WARN_ON(&uncore->i915->drm, !op);
 
 	if (!intel_uncore_has_forcewake(uncore))
 		return 0;
@@ -2119,7 +2121,7 @@ intel_uncore_forcewake_for_reg(struct intel_uncore *uncore,
 	if (op & FW_REG_WRITE)
 		fw_domains |= uncore->funcs.write_fw_domains(uncore, reg);
 
-	WARN_ON(fw_domains & ~uncore->fw_domains);
+	drm_WARN_ON(&uncore->i915->drm, fw_domains & ~uncore->fw_domains);
 
 	return fw_domains;
 }
-- 
2.23.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
