Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C94992F00FD
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Jan 2021 16:50:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD716E027;
	Sat,  9 Jan 2021 15:50:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61E36E027
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Jan 2021 15:50:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23547768-1500050 
 for multiple; Sat, 09 Jan 2021 15:49:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  9 Jan 2021 15:49:29 +0000
Message-Id: <20210109154931.10098-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Limit VFE threads based on GT
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
Cc: Randy Wright <rwright@hpe.com>, Chris Wilson <chris@chris-wilson.co.uk>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

MEDIA_STATE_VFE only accepts the 'maximum number of threads' in the
range [0, n-1] where n is #EU * (#threads/EU) with the number of threads
based on plaform and the number of EU based on the number of slices and
subslices. This is a fixed number per platform/gt, so appropriately
limit the number of threads we spawn to match the device.

v2: Oversaturate the system with tasks to force execution on every HW
thread; if the thread idles it is returned to the pool and may be reused
again before an unused thread.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2024
Fixes: 47f8253d2b89 ("drm/i915/gen7: Clear all EU/L3 residual contexts")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Prathap Kumar Valsan <prathap.kumar.valsan@intel.com>
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Cc: Jon Bloomfield <jon.bloomfield@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Randy Wright <rwright@hpe.com>
Cc: stable@vger.kernel.org # v5.7+
---
 drivers/gpu/drm/i915/gt/gen7_renderclear.c | 91 ++++++++++++----------
 1 file changed, 49 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen7_renderclear.c b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
index d93d85cd3027..3ea7c9cc0f3d 100644
--- a/drivers/gpu/drm/i915/gt/gen7_renderclear.c
+++ b/drivers/gpu/drm/i915/gt/gen7_renderclear.c
@@ -7,8 +7,6 @@
 #include "i915_drv.h"
 #include "intel_gpu_commands.h"
 
-#define MAX_URB_ENTRIES 64
-#define STATE_SIZE (4 * 1024)
 #define GT3_INLINE_DATA_DELAYS 0x1E00
 #define batch_advance(Y, CS) GEM_BUG_ON((Y)->end != (CS))
 
@@ -34,38 +32,57 @@ struct batch_chunk {
 };
 
 struct batch_vals {
-	u32 max_primitives;
-	u32 max_urb_entries;
-	u32 cmd_size;
-	u32 state_size;
+	u32 max_threads;
 	u32 state_start;
-	u32 batch_size;
+	u32 surface_start;
 	u32 surface_height;
 	u32 surface_width;
-	u32 scratch_size;
-	u32 max_size;
+	u32 size;
 };
 
+static inline int num_primitives(const struct batch_vals *bv)
+{
+	/*
+	 * We need to oversaturate the GPU with work in order to dispatch
+	 * a shader on every HW thread.
+	 */
+	return bv->max_threads + 2;
+}
+
 static void
 batch_get_defaults(struct drm_i915_private *i915, struct batch_vals *bv)
 {
 	if (IS_HASWELL(i915)) {
-		bv->max_primitives = 280;
-		bv->max_urb_entries = MAX_URB_ENTRIES;
+		switch (INTEL_INFO(i915)->gt) {
+		default:
+		case 1:
+			bv->max_threads = 70;
+			break;
+		case 2:
+			bv->max_threads = 140;
+			break;
+		case 3:
+			bv->max_threads = 280;
+			break;
+		}
 		bv->surface_height = 16 * 16;
 		bv->surface_width = 32 * 2 * 16;
 	} else {
-		bv->max_primitives = 128;
-		bv->max_urb_entries = MAX_URB_ENTRIES / 2;
+		switch (INTEL_INFO(i915)->gt) {
+		default:
+		case 1: /* including vlv */
+			bv->max_threads = 36;
+			break;
+		case 2:
+			bv->max_threads = 128;
+			break;
+		}
 		bv->surface_height = 16 * 8;
 		bv->surface_width = 32 * 16;
 	}
-	bv->cmd_size = bv->max_primitives * 4096;
-	bv->state_size = STATE_SIZE;
-	bv->state_start = bv->cmd_size;
-	bv->batch_size = bv->cmd_size + bv->state_size;
-	bv->scratch_size = bv->surface_height * bv->surface_width;
-	bv->max_size = bv->batch_size + bv->scratch_size;
+	bv->state_start = round_up(SZ_1K + num_primitives(bv) * 64, SZ_4K);
+	bv->surface_start = bv->state_start + SZ_4K;
+	bv->size = bv->surface_start + bv->surface_height * bv->surface_width;
 }
 
 static void batch_init(struct batch_chunk *bc,
@@ -155,7 +172,8 @@ static u32
 gen7_fill_binding_table(struct batch_chunk *state,
 			const struct batch_vals *bv)
 {
-	u32 surface_start = gen7_fill_surface_state(state, bv->batch_size, bv);
+	u32 surface_start =
+		gen7_fill_surface_state(state, bv->surface_start, bv);
 	u32 *cs = batch_alloc_items(state, 32, 8);
 	u32 offset = batch_offset(state, cs);
 
@@ -244,8 +262,7 @@ gen7_emit_vfe_state(struct batch_chunk *batch,
 		    u32 urb_size, u32 curbe_size,
 		    u32 mode)
 {
-	u32 urb_entries = bv->max_urb_entries;
-	u32 threads = bv->max_primitives - 1;
+	u32 threads = bv->max_threads - 1;
 	u32 *cs = batch_alloc_items(batch, 32, 8);
 
 	*cs++ = MEDIA_VFE_STATE | (8 - 2);
@@ -254,7 +271,7 @@ gen7_emit_vfe_state(struct batch_chunk *batch,
 	*cs++ = 0;
 
 	/* number of threads & urb entries for GPGPU vs Media Mode */
-	*cs++ = threads << 16 | urb_entries << 8 | mode << 2;
+	*cs++ = threads << 16 | 1 << 8 | mode << 2;
 
 	*cs++ = 0;
 
@@ -293,17 +310,12 @@ gen7_emit_media_object(struct batch_chunk *batch,
 {
 	unsigned int x_offset = (media_object_index % 16) * 64;
 	unsigned int y_offset = (media_object_index / 16) * 16;
-	unsigned int inline_data_size;
-	unsigned int media_batch_size;
-	unsigned int i;
+	unsigned int pkt = 6 + 3;
 	u32 *cs;
 
-	inline_data_size = 112 * 8;
-	media_batch_size = inline_data_size + 6;
+	cs = batch_alloc_items(batch, 8, pkt);
 
-	cs = batch_alloc_items(batch, 8, media_batch_size);
-
-	*cs++ = MEDIA_OBJECT | (media_batch_size - 2);
+	*cs++ = MEDIA_OBJECT | (pkt - 2);
 
 	/* interface descriptor offset */
 	*cs++ = 0;
@@ -320,8 +332,6 @@ gen7_emit_media_object(struct batch_chunk *batch,
 	*cs++ = (y_offset << 16) | (x_offset);
 	*cs++ = 0;
 	*cs++ = GT3_INLINE_DATA_DELAYS;
-	for (i = 3; i < inline_data_size; i++)
-		*cs++ = 0;
 
 	batch_advance(batch, cs);
 }
@@ -350,8 +360,8 @@ static void emit_batch(struct i915_vma * const vma,
 	u32 interface_descriptor;
 	unsigned int i;
 
-	batch_init(&cmds, vma, start, 0, bv->cmd_size);
-	batch_init(&state, vma, start, bv->state_start, bv->state_size);
+	batch_init(&cmds, vma, start, 0, bv->state_start);
+	batch_init(&state, vma, start, bv->state_start, SZ_4K);
 
 	interface_descriptor =
 		gen7_fill_interface_descriptor(&state, bv,
@@ -359,19 +369,16 @@ static void emit_batch(struct i915_vma * const vma,
 					       &cb_kernel_hsw :
 					       &cb_kernel_ivb,
 					       desc_count);
-	gen7_emit_pipeline_flush(&cmds);
 	batch_add(&cmds, PIPELINE_SELECT | PIPELINE_SELECT_MEDIA);
-	batch_add(&cmds, MI_NOOP);
 	gen7_emit_state_base_address(&cmds, interface_descriptor);
 	gen7_emit_pipeline_flush(&cmds);
 
 	gen7_emit_vfe_state(&cmds, bv, urb_size - 1, 0, 0);
-
 	gen7_emit_interface_descriptor_load(&cmds,
 					    interface_descriptor,
 					    desc_count);
 
-	for (i = 0; i < bv->max_primitives; i++)
+	for (i = 0; i < num_primitives(bv); i++)
 		gen7_emit_media_object(&cmds, i);
 
 	batch_add(&cmds, MI_BATCH_BUFFER_END);
@@ -385,15 +392,15 @@ int gen7_setup_clear_gpr_bb(struct intel_engine_cs * const engine,
 
 	batch_get_defaults(engine->i915, &bv);
 	if (!vma)
-		return bv.max_size;
+		return bv.size;
 
-	GEM_BUG_ON(vma->obj->base.size < bv.max_size);
+	GEM_BUG_ON(vma->obj->base.size < bv.size);
 
 	batch = i915_gem_object_pin_map(vma->obj, I915_MAP_WC);
 	if (IS_ERR(batch))
 		return PTR_ERR(batch);
 
-	emit_batch(vma, memset(batch, 0, bv.max_size), &bv);
+	emit_batch(vma, memset(batch, 0, bv.size), &bv);
 
 	i915_gem_object_flush_map(vma->obj);
 	__i915_gem_object_release_map(vma->obj);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
