Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BF0140DFB
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 16:36:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25B566F5FC;
	Fri, 17 Jan 2020 15:36:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03C516F5FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 15:36:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19918370-1500050 
 for multiple; Fri, 17 Jan 2020 15:35:56 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 15:35:53 +0000
Message-Id: <20200117153554.3104278-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: Wean gvt off
 dev_priv->engine[]
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

Stop trying to escape out of the gvt layer to find the engine that we
initially setup for use with gvt. Record the engines during initialisation
and use them henceforth.

add/remove: 1/4 grow/shrink: 22/28 up/down: 341/-1410 (-1069)

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gvt/cmd_parser.c   | 204 ++++++++++----------
 drivers/gpu/drm/i915/gvt/debugfs.c      |  36 +---
 drivers/gpu/drm/i915/gvt/execlist.c     |  99 +++++-----
 drivers/gpu/drm/i915/gvt/execlist.h     |   5 +-
 drivers/gpu/drm/i915/gvt/handlers.c     |  92 +++++-----
 drivers/gpu/drm/i915/gvt/mmio.h         |   4 +-
 drivers/gpu/drm/i915/gvt/mmio_context.c | 108 ++++++-----
 drivers/gpu/drm/i915/gvt/mmio_context.h |   5 +-
 drivers/gpu/drm/i915/gvt/sched_policy.c |  13 +-
 drivers/gpu/drm/i915/gvt/scheduler.c    | 235 +++++++++++-------------
 drivers/gpu/drm/i915/gvt/scheduler.h    |   9 +-
 11 files changed, 365 insertions(+), 445 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/cmd_parser.c b/drivers/gpu/drm/i915/gvt/cmd_parser.c
index 21a176cd8acc..ad5b9b16d36e 100644
--- a/drivers/gpu/drm/i915/gvt/cmd_parser.c
+++ b/drivers/gpu/drm/i915/gvt/cmd_parser.c
@@ -462,7 +462,7 @@ enum {
 
 struct parser_exec_state {
 	struct intel_vgpu *vgpu;
-	int ring_id;
+	const struct intel_engine_cs *engine;
 
 	int buf_type;
 
@@ -635,39 +635,42 @@ static const struct decode_info *ring_decode_info[I915_NUM_ENGINES][8] = {
 	},
 };
 
-static inline u32 get_opcode(u32 cmd, int ring_id)
+static inline u32 get_opcode(u32 cmd, const struct intel_engine_cs *engine)
 {
 	const struct decode_info *d_info;
 
-	d_info = ring_decode_info[ring_id][CMD_TYPE(cmd)];
+	d_info = ring_decode_info[engine->id][CMD_TYPE(cmd)];
 	if (d_info == NULL)
 		return INVALID_OP;
 
 	return cmd >> (32 - d_info->op_len);
 }
 
-static inline const struct cmd_info *find_cmd_entry(struct intel_gvt *gvt,
-		unsigned int opcode, int ring_id)
+static inline const struct cmd_info *
+find_cmd_entry(struct intel_gvt *gvt, unsigned int opcode,
+	       const struct intel_engine_cs *engine)
 {
 	struct cmd_entry *e;
 
 	hash_for_each_possible(gvt->cmd_table, e, hlist, opcode) {
-		if (opcode == e->info->opcode && e->info->rings & BIT(ring_id))
+		if (opcode == e->info->opcode &&
+		    e->info->rings & engine->mask)
 			return e->info;
 	}
 	return NULL;
 }
 
-static inline const struct cmd_info *get_cmd_info(struct intel_gvt *gvt,
-		u32 cmd, int ring_id)
+static inline const struct cmd_info *
+get_cmd_info(struct intel_gvt *gvt, u32 cmd,
+	     const struct intel_engine_cs *engine)
 {
 	u32 opcode;
 
-	opcode = get_opcode(cmd, ring_id);
+	opcode = get_opcode(cmd, engine);
 	if (opcode == INVALID_OP)
 		return NULL;
 
-	return find_cmd_entry(gvt, opcode, ring_id);
+	return find_cmd_entry(gvt, opcode, engine);
 }
 
 static inline u32 sub_op_val(u32 cmd, u32 hi, u32 low)
@@ -675,12 +678,12 @@ static inline u32 sub_op_val(u32 cmd, u32 hi, u32 low)
 	return (cmd >> low) & ((1U << (hi - low + 1)) - 1);
 }
 
-static inline void print_opcode(u32 cmd, int ring_id)
+static inline void print_opcode(u32 cmd, const struct intel_engine_cs *engine)
 {
 	const struct decode_info *d_info;
 	int i;
 
-	d_info = ring_decode_info[ring_id][CMD_TYPE(cmd)];
+	d_info = ring_decode_info[engine->id][CMD_TYPE(cmd)];
 	if (d_info == NULL)
 		return;
 
@@ -709,10 +712,11 @@ static void parser_exec_state_dump(struct parser_exec_state *s)
 	int cnt = 0;
 	int i;
 
-	gvt_dbg_cmd("  vgpu%d RING%d: ring_start(%08lx) ring_end(%08lx)"
-			" ring_head(%08lx) ring_tail(%08lx)\n", s->vgpu->id,
-			s->ring_id, s->ring_start, s->ring_start + s->ring_size,
-			s->ring_head, s->ring_tail);
+	gvt_dbg_cmd("  vgpu%d RING%s: ring_start(%08lx) ring_end(%08lx)"
+		    " ring_head(%08lx) ring_tail(%08lx)\n",
+		    s->vgpu->id, s->engine->name,
+		    s->ring_start, s->ring_start + s->ring_size,
+		    s->ring_head, s->ring_tail);
 
 	gvt_dbg_cmd("  %s %s ip_gma(%08lx) ",
 			s->buf_type == RING_BUFFER_INSTRUCTION ?
@@ -729,7 +733,7 @@ static void parser_exec_state_dump(struct parser_exec_state *s)
 			s->ip_va, cmd_val(s, 0), cmd_val(s, 1),
 			cmd_val(s, 2), cmd_val(s, 3));
 
-	print_opcode(cmd_val(s, 0), s->ring_id);
+	print_opcode(cmd_val(s, 0), s->engine);
 
 	s->ip_va = (u32 *)((((u64)s->ip_va) >> 12) << 12);
 
@@ -840,7 +844,6 @@ static int force_nonpriv_reg_handler(struct parser_exec_state *s,
 	unsigned int data;
 	u32 ring_base;
 	u32 nopid;
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
 
 	if (!strcmp(cmd, "lri"))
 		data = cmd_val(s, index + 1);
@@ -850,7 +853,7 @@ static int force_nonpriv_reg_handler(struct parser_exec_state *s,
 		return -EINVAL;
 	}
 
-	ring_base = dev_priv->engine[s->ring_id]->mmio_base;
+	ring_base = s->engine->mmio_base;
 	nopid = i915_mmio_reg_offset(RING_NOPID(ring_base));
 
 	if (!intel_gvt_in_force_nonpriv_whitelist(gvt, data) &&
@@ -926,9 +929,9 @@ static int cmd_reg_handler(struct parser_exec_state *s,
 	 * update reg values in it into vregs, so LRIs in workload with
 	 * inhibit context will restore with correct values
 	 */
-	if (IS_GEN(gvt->dev_priv, 9) &&
-			intel_gvt_mmio_is_in_ctx(gvt, offset) &&
-			!strncmp(cmd, "lri", 3)) {
+	if (IS_GEN(s->engine->i915, 9) &&
+	    intel_gvt_mmio_is_in_ctx(gvt, offset) &&
+	    !strncmp(cmd, "lri", 3)) {
 		intel_gvt_hypervisor_read_gpa(s->vgpu,
 			s->workload->ring_context_gpa + 12, &ctx_sr_ctl, 4);
 		/* check inhibit context */
@@ -964,7 +967,6 @@ static int cmd_handler_lri(struct parser_exec_state *s)
 {
 	int i, ret = 0;
 	int cmd_len = cmd_length(s);
-	struct intel_gvt *gvt = s->vgpu->gvt;
 	u32 valid_len = CMD_LEN(1);
 
 	/*
@@ -979,8 +981,8 @@ static int cmd_handler_lri(struct parser_exec_state *s)
 	}
 
 	for (i = 1; i < cmd_len; i += 2) {
-		if (IS_BROADWELL(gvt->dev_priv) && s->ring_id != RCS0) {
-			if (s->ring_id == BCS0 &&
+		if (IS_BROADWELL(s->engine->i915) && s->engine->id != RCS0) {
+			if (s->engine->id == BCS0 &&
 			    cmd_reg(s, i) == i915_mmio_reg_offset(DERRMR))
 				ret |= 0;
 			else
@@ -1001,9 +1003,9 @@ static int cmd_handler_lrr(struct parser_exec_state *s)
 	int cmd_len = cmd_length(s);
 
 	for (i = 1; i < cmd_len; i += 2) {
-		if (IS_BROADWELL(s->vgpu->gvt->dev_priv))
+		if (IS_BROADWELL(s->engine->i915))
 			ret |= ((cmd_reg_inhibit(s, i) ||
-					(cmd_reg_inhibit(s, i + 1)))) ?
+				 (cmd_reg_inhibit(s, i + 1)))) ?
 				-EBADRQC : 0;
 		if (ret)
 			break;
@@ -1029,7 +1031,7 @@ static int cmd_handler_lrm(struct parser_exec_state *s)
 	int cmd_len = cmd_length(s);
 
 	for (i = 1; i < cmd_len;) {
-		if (IS_BROADWELL(gvt->dev_priv))
+		if (IS_BROADWELL(s->engine->i915))
 			ret |= (cmd_reg_inhibit(s, i)) ? -EBADRQC : 0;
 		if (ret)
 			break;
@@ -1141,7 +1143,7 @@ static int cmd_handler_pipe_control(struct parser_exec_state *s)
 				if (ret)
 					return ret;
 				if (index_mode) {
-					hws_pga = s->vgpu->hws_pga[s->ring_id];
+					hws_pga = s->vgpu->hws_pga[s->engine->id];
 					gma = hws_pga + gma;
 					patch_value(s, cmd_ptr(s, 2), gma);
 					val = cmd_val(s, 1) & (~(1 << 21));
@@ -1155,15 +1157,15 @@ static int cmd_handler_pipe_control(struct parser_exec_state *s)
 		return ret;
 
 	if (cmd_val(s, 1) & PIPE_CONTROL_NOTIFY)
-		set_bit(cmd_interrupt_events[s->ring_id].pipe_control_notify,
-				s->workload->pending_events);
+		set_bit(cmd_interrupt_events[s->engine->id].pipe_control_notify,
+			s->workload->pending_events);
 	return 0;
 }
 
 static int cmd_handler_mi_user_interrupt(struct parser_exec_state *s)
 {
-	set_bit(cmd_interrupt_events[s->ring_id].mi_user_interrupt,
-			s->workload->pending_events);
+	set_bit(cmd_interrupt_events[s->engine->id].mi_user_interrupt,
+		s->workload->pending_events);
 	patch_value(s, cmd_ptr(s, 0), MI_NOOP);
 	return 0;
 }
@@ -1213,7 +1215,7 @@ struct plane_code_mapping {
 static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = s->engine->i915;
 	struct plane_code_mapping gen8_plane_code[] = {
 		[0] = {PIPE_A, PLANE_A, PRIMARY_A_FLIP_DONE},
 		[1] = {PIPE_B, PLANE_A, PRIMARY_B_FLIP_DONE},
@@ -1259,7 +1261,7 @@ static int gen8_decode_mi_display_flip(struct parser_exec_state *s,
 static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = s->engine->i915;
 	struct intel_vgpu *vgpu = s->vgpu;
 	u32 dword0 = cmd_val(s, 0);
 	u32 dword1 = cmd_val(s, 1);
@@ -1318,13 +1320,12 @@ static int skl_decode_mi_display_flip(struct parser_exec_state *s,
 static int gen8_check_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
 	u32 stride, tile;
 
 	if (!info->async_flip)
 		return 0;
 
-	if (INTEL_GEN(dev_priv) >= 9) {
+	if (INTEL_GEN(s->engine->i915) >= 9) {
 		stride = vgpu_vreg_t(s->vgpu, info->stride_reg) & GENMASK(9, 0);
 		tile = (vgpu_vreg_t(s->vgpu, info->ctrl_reg) &
 				GENMASK(12, 10)) >> 10;
@@ -1347,7 +1348,7 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 		struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
+	struct drm_i915_private *dev_priv = s->engine->i915;
 	struct intel_vgpu *vgpu = s->vgpu;
 
 	set_mask_bits(&vgpu_vreg_t(vgpu, info->surf_reg), GENMASK(31, 12),
@@ -1378,11 +1379,9 @@ static int gen8_update_plane_mmio_from_mi_display_flip(
 static int decode_mi_display_flip(struct parser_exec_state *s,
 		struct mi_display_flip_command_info *info)
 {
-	struct drm_i915_private *dev_priv = s->vgpu->gvt->dev_priv;
-
-	if (IS_BROADWELL(dev_priv))
+	if (IS_BROADWELL(s->engine->i915))
 		return gen8_decode_mi_display_flip(s, info);
-	if (INTEL_GEN(dev_priv) >= 9)
+	if (INTEL_GEN(s->engine->i915) >= 9)
 		return skl_decode_mi_display_flip(s, info);
 
 	return -ENODEV;
@@ -1667,7 +1666,7 @@ static int cmd_handler_mi_flush_dw(struct parser_exec_state *s)
 		if (ret)
 			return ret;
 		if (index_mode) {
-			hws_pga = s->vgpu->hws_pga[s->ring_id];
+			hws_pga = s->vgpu->hws_pga[s->engine->id];
 			gma = hws_pga + gma;
 			patch_value(s, cmd_ptr(s, 1), gma);
 			val = cmd_val(s, 0) & (~(1 << 21));
@@ -1676,8 +1675,8 @@ static int cmd_handler_mi_flush_dw(struct parser_exec_state *s)
 	}
 	/* Check notify bit */
 	if ((cmd_val(s, 0) & (1 << 8)))
-		set_bit(cmd_interrupt_events[s->ring_id].mi_flush_dw,
-				s->workload->pending_events);
+		set_bit(cmd_interrupt_events[s->engine->id].mi_flush_dw,
+			s->workload->pending_events);
 	return ret;
 }
 
@@ -1725,12 +1724,18 @@ static int copy_gma_to_hva(struct intel_vgpu *vgpu, struct intel_vgpu_mm *mm,
 static int batch_buffer_needs_scan(struct parser_exec_state *s)
 {
 	/* Decide privilege based on address space */
-	if (cmd_val(s, 0) & (1 << 8) &&
-			!(s->vgpu->scan_nonprivbb & (1 << s->ring_id)))
+	if (cmd_val(s, 0) & BIT(8) &&
+	    !(s->vgpu->scan_nonprivbb & s->engine->mask))
 		return 0;
+
 	return 1;
 }
 
+static const char *repr_addr_type(unsigned int type)
+{
+	return type == PPGTT_BUFFER ? "ppgtt" : "ggtt";
+}
+
 static int find_bb_size(struct parser_exec_state *s,
 			unsigned long *bb_size,
 			unsigned long *bb_end_cmd_offset)
@@ -1753,24 +1758,24 @@ static int find_bb_size(struct parser_exec_state *s,
 		return -EFAULT;
 
 	cmd = cmd_val(s, 0);
-	info = get_cmd_info(s->vgpu->gvt, cmd, s->ring_id);
+	info = get_cmd_info(s->vgpu->gvt, cmd, s->engine);
 	if (info == NULL) {
-		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\n",
-				cmd, get_opcode(cmd, s->ring_id),
-				(s->buf_addr_type == PPGTT_BUFFER) ?
-				"ppgtt" : "ggtt", s->ring_id, s->workload);
+		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %s, workload=%p\n",
+			     cmd, get_opcode(cmd, s->engine),
+			     repr_addr_type(s->buf_addr_type),
+			     s->engine->name, s->workload);
 		return -EBADRQC;
 	}
 	do {
 		if (copy_gma_to_hva(s->vgpu, mm,
-				gma, gma + 4, &cmd) < 0)
+				    gma, gma + 4, &cmd) < 0)
 			return -EFAULT;
-		info = get_cmd_info(s->vgpu->gvt, cmd, s->ring_id);
+		info = get_cmd_info(s->vgpu->gvt, cmd, s->engine);
 		if (info == NULL) {
-			gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\n",
-				cmd, get_opcode(cmd, s->ring_id),
-				(s->buf_addr_type == PPGTT_BUFFER) ?
-				"ppgtt" : "ggtt", s->ring_id, s->workload);
+			gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %s, workload=%p\n",
+				     cmd, get_opcode(cmd, s->engine),
+				     repr_addr_type(s->buf_addr_type),
+				     s->engine->name, s->workload);
 			return -EBADRQC;
 		}
 
@@ -1799,12 +1804,12 @@ static int audit_bb_end(struct parser_exec_state *s, void *va)
 	u32 cmd = *(u32 *)va;
 	const struct cmd_info *info;
 
-	info = get_cmd_info(s->vgpu->gvt, cmd, s->ring_id);
+	info = get_cmd_info(s->vgpu->gvt, cmd, s->engine);
 	if (info == NULL) {
-		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\n",
-			cmd, get_opcode(cmd, s->ring_id),
-			(s->buf_addr_type == PPGTT_BUFFER) ?
-			"ppgtt" : "ggtt", s->ring_id, s->workload);
+		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %s, workload=%p\n",
+			     cmd, get_opcode(cmd, s->engine),
+			     repr_addr_type(s->buf_addr_type),
+			     s->engine->name, s->workload);
 		return -EBADRQC;
 	}
 
@@ -1857,7 +1862,7 @@ static int perform_bb_shadow(struct parser_exec_state *s)
 	if (bb->ppgtt)
 		start_offset = gma & ~I915_GTT_PAGE_MASK;
 
-	bb->obj = i915_gem_object_create_shmem(s->vgpu->gvt->dev_priv,
+	bb->obj = i915_gem_object_create_shmem(s->engine->i915,
 					       round_up(bb_size + start_offset,
 							PAGE_SIZE));
 	if (IS_ERR(bb->obj)) {
@@ -2666,25 +2671,25 @@ static int cmd_parser_exec(struct parser_exec_state *s)
 	if (cmd == MI_NOOP)
 		info = &cmd_info[mi_noop_index];
 	else
-		info = get_cmd_info(s->vgpu->gvt, cmd, s->ring_id);
+		info = get_cmd_info(s->vgpu->gvt, cmd, s->engine);
 
 	if (info == NULL) {
-		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %d, workload=%p\n",
-				cmd, get_opcode(cmd, s->ring_id),
-				(s->buf_addr_type == PPGTT_BUFFER) ?
-				"ppgtt" : "ggtt", s->ring_id, s->workload);
+		gvt_vgpu_err("unknown cmd 0x%x, opcode=0x%x, addr_type=%s, ring %s, workload=%p\n",
+			     cmd, get_opcode(cmd, s->engine),
+			     repr_addr_type(s->buf_addr_type),
+			     s->engine->name, s->workload);
 		return -EBADRQC;
 	}
 
 	s->info = info;
 
-	trace_gvt_command(vgpu->id, s->ring_id, s->ip_gma, s->ip_va,
+	trace_gvt_command(vgpu->id, s->engine->id, s->ip_gma, s->ip_va,
 			  cmd_length(s), s->buf_type, s->buf_addr_type,
 			  s->workload, info->name);
 
 	if ((info->flag & F_LEN_MASK) == F_LEN_VAR_FIXED) {
 		ret = gvt_check_valid_cmd_length(cmd_length(s),
-			info->valid_len);
+						 info->valid_len);
 		if (ret)
 			return ret;
 	}
@@ -2781,7 +2786,7 @@ static int scan_workload(struct intel_vgpu_workload *workload)
 	s.buf_type = RING_BUFFER_INSTRUCTION;
 	s.buf_addr_type = GTT_BUFFER;
 	s.vgpu = workload->vgpu;
-	s.ring_id = workload->ring_id;
+	s.engine = workload->engine;
 	s.ring_start = workload->rb_start;
 	s.ring_size = _RING_CTL_BUF_SIZE(workload->rb_ctl);
 	s.ring_head = gma_head;
@@ -2790,8 +2795,7 @@ static int scan_workload(struct intel_vgpu_workload *workload)
 	s.workload = workload;
 	s.is_ctx_wa = false;
 
-	if ((bypass_scan_mask & (1 << workload->ring_id)) ||
-		gma_head == gma_tail)
+	if (bypass_scan_mask & workload->engine->mask || gma_head == gma_tail)
 		return 0;
 
 	ret = ip_gma_set(&s, gma_head);
@@ -2830,7 +2834,7 @@ static int scan_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 	s.buf_type = RING_BUFFER_INSTRUCTION;
 	s.buf_addr_type = GTT_BUFFER;
 	s.vgpu = workload->vgpu;
-	s.ring_id = workload->ring_id;
+	s.engine = workload->engine;
 	s.ring_start = wa_ctx->indirect_ctx.guest_gma;
 	s.ring_size = ring_size;
 	s.ring_head = gma_head;
@@ -2855,7 +2859,6 @@ static int shadow_workload_ring_buffer(struct intel_vgpu_workload *workload)
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	unsigned long gma_head, gma_tail, gma_top, guest_rb_size;
 	void *shadow_ring_buffer_va;
-	int ring_id = workload->ring_id;
 	int ret;
 
 	guest_rb_size = _RING_CTL_BUF_SIZE(workload->rb_ctl);
@@ -2868,21 +2871,21 @@ static int shadow_workload_ring_buffer(struct intel_vgpu_workload *workload)
 	gma_tail = workload->rb_start + workload->rb_tail;
 	gma_top = workload->rb_start + guest_rb_size;
 
-	if (workload->rb_len > s->ring_scan_buffer_size[ring_id]) {
+	if (workload->rb_len > s->ring_scan_buffer_size[workload->engine->id]) {
 		void *p;
 
 		/* realloc the new ring buffer if needed */
-		p = krealloc(s->ring_scan_buffer[ring_id], workload->rb_len,
-				GFP_KERNEL);
+		p = krealloc(s->ring_scan_buffer[workload->engine->id],
+			     workload->rb_len, GFP_KERNEL);
 		if (!p) {
 			gvt_vgpu_err("fail to re-alloc ring scan buffer\n");
 			return -ENOMEM;
 		}
-		s->ring_scan_buffer[ring_id] = p;
-		s->ring_scan_buffer_size[ring_id] = workload->rb_len;
+		s->ring_scan_buffer[workload->engine->id] = p;
+		s->ring_scan_buffer_size[workload->engine->id] = workload->rb_len;
 	}
 
-	shadow_ring_buffer_va = s->ring_scan_buffer[ring_id];
+	shadow_ring_buffer_va = s->ring_scan_buffer[workload->engine->id];
 
 	/* get shadow ring buffer va */
 	workload->shadow_ring_buffer_va = shadow_ring_buffer_va;
@@ -2940,7 +2943,7 @@ static int shadow_indirect_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 	int ret = 0;
 	void *map;
 
-	obj = i915_gem_object_create_shmem(workload->vgpu->gvt->dev_priv,
+	obj = i915_gem_object_create_shmem(workload->engine->i915,
 					   roundup(ctx_size + CACHELINE_BYTES,
 						   PAGE_SIZE));
 	if (IS_ERR(obj))
@@ -3029,30 +3032,14 @@ int intel_gvt_scan_and_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 	return 0;
 }
 
-static const struct cmd_info *find_cmd_entry_any_ring(struct intel_gvt *gvt,
-		unsigned int opcode, unsigned long rings)
-{
-	const struct cmd_info *info = NULL;
-	unsigned int ring;
-
-	for_each_set_bit(ring, &rings, I915_NUM_ENGINES) {
-		info = find_cmd_entry(gvt, opcode, ring);
-		if (info)
-			break;
-	}
-	return info;
-}
-
 static int init_cmd_table(struct intel_gvt *gvt)
 {
+	unsigned int gen_type = intel_gvt_get_device_type(gvt);
 	int i;
-	struct cmd_entry *e;
-	const struct cmd_info *info;
-	unsigned int gen_type;
-
-	gen_type = intel_gvt_get_device_type(gvt);
 
 	for (i = 0; i < ARRAY_SIZE(cmd_info); i++) {
+		struct cmd_entry *e;
+
 		if (!(cmd_info[i].devices & gen_type))
 			continue;
 
@@ -3061,23 +3048,16 @@ static int init_cmd_table(struct intel_gvt *gvt)
 			return -ENOMEM;
 
 		e->info = &cmd_info[i];
-		info = find_cmd_entry_any_ring(gvt,
-				e->info->opcode, e->info->rings);
-		if (info) {
-			gvt_err("%s %s duplicated\n", e->info->name,
-					info->name);
-			kfree(e);
-			return -EEXIST;
-		}
 		if (cmd_info[i].opcode == OP_MI_NOOP)
 			mi_noop_index = i;
 
 		INIT_HLIST_NODE(&e->hlist);
 		add_cmd_entry(gvt, e);
 		gvt_dbg_cmd("add %-30s op %04x flag %x devs %02x rings %02x\n",
-				e->info->name, e->info->opcode, e->info->flag,
-				e->info->devices, e->info->rings);
+			    e->info->name, e->info->opcode, e->info->flag,
+			    e->info->devices, e->info->rings);
 	}
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index 285f6011a537..874ee1de6b49 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -128,6 +128,7 @@ static int
 vgpu_scan_nonprivbb_get(void *data, u64 *val)
 {
 	struct intel_vgpu *vgpu = (struct intel_vgpu *)data;
+
 	*val = vgpu->scan_nonprivbb;
 	return 0;
 }
@@ -142,42 +143,7 @@ static int
 vgpu_scan_nonprivbb_set(void *data, u64 val)
 {
 	struct intel_vgpu *vgpu = (struct intel_vgpu *)data;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	enum intel_engine_id id;
-	char buf[128], *s;
-	int len;
-
-	val &= (1 << I915_NUM_ENGINES) - 1;
-
-	if (vgpu->scan_nonprivbb == val)
-		return 0;
-
-	if (!val)
-		goto done;
-
-	len = sprintf(buf,
-		"gvt: vgpu %d turns on non-privileged batch buffers scanning on Engines:",
-		vgpu->id);
-
-	s = buf + len;
-
-	for (id = 0; id < I915_NUM_ENGINES; id++) {
-		struct intel_engine_cs *engine;
-
-		engine = dev_priv->engine[id];
-		if (engine && (val & (1 << id))) {
-			len = snprintf(s, 4, "%d, ", engine->id);
-			s += len;
-		} else
-			val &=  ~(1 << id);
-	}
-
-	if (val)
-		sprintf(s, "low performance expected.");
-
-	pr_warn("%s\n", buf);
 
-done:
 	vgpu->scan_nonprivbb = val;
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/gvt/execlist.c b/drivers/gpu/drm/i915/gvt/execlist.c
index d6e7a1189bad..b8aa07c8bcc0 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.c
+++ b/drivers/gpu/drm/i915/gvt/execlist.c
@@ -39,8 +39,7 @@
 #define _EL_OFFSET_STATUS_BUF   0x370
 #define _EL_OFFSET_STATUS_PTR   0x3A0
 
-#define execlist_ring_mmio(gvt, ring_id, offset) \
-	(gvt->dev_priv->engine[ring_id]->mmio_base + (offset))
+#define execlist_ring_mmio(e, offset) ((e)->mmio_base + (offset))
 
 #define valid_context(ctx) ((ctx)->valid)
 #define same_context(a, b) (((a)->context_id == (b)->context_id) && \
@@ -54,12 +53,12 @@ static int context_switch_events[] = {
 	[VECS0] = VECS_AS_CONTEXT_SWITCH,
 };
 
-static int ring_id_to_context_switch_event(unsigned int ring_id)
+static int to_context_switch_event(const struct intel_engine_cs *engine)
 {
-	if (WARN_ON(ring_id >= ARRAY_SIZE(context_switch_events)))
+	if (WARN_ON(engine->id >= ARRAY_SIZE(context_switch_events)))
 		return -EINVAL;
 
-	return context_switch_events[ring_id];
+	return context_switch_events[engine->id];
 }
 
 static void switch_virtual_execlist_slot(struct intel_vgpu_execlist *execlist)
@@ -93,9 +92,8 @@ static void emulate_execlist_status(struct intel_vgpu_execlist *execlist)
 	struct execlist_ctx_descriptor_format *desc = execlist->running_context;
 	struct intel_vgpu *vgpu = execlist->vgpu;
 	struct execlist_status_format status;
-	int ring_id = execlist->ring_id;
-	u32 status_reg = execlist_ring_mmio(vgpu->gvt,
-			ring_id, _EL_OFFSET_STATUS);
+	u32 status_reg =
+		execlist_ring_mmio(execlist->engine, _EL_OFFSET_STATUS);
 
 	status.ldw = vgpu_vreg(vgpu, status_reg);
 	status.udw = vgpu_vreg(vgpu, status_reg + 4);
@@ -124,21 +122,19 @@ static void emulate_execlist_status(struct intel_vgpu_execlist *execlist)
 }
 
 static void emulate_csb_update(struct intel_vgpu_execlist *execlist,
-		struct execlist_context_status_format *status,
-		bool trigger_interrupt_later)
+			       struct execlist_context_status_format *status,
+			       bool trigger_interrupt_later)
 {
 	struct intel_vgpu *vgpu = execlist->vgpu;
-	int ring_id = execlist->ring_id;
 	struct execlist_context_status_pointer_format ctx_status_ptr;
 	u32 write_pointer;
 	u32 ctx_status_ptr_reg, ctx_status_buf_reg, offset;
 	unsigned long hwsp_gpa;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 
-	ctx_status_ptr_reg = execlist_ring_mmio(vgpu->gvt, ring_id,
-			_EL_OFFSET_STATUS_PTR);
-	ctx_status_buf_reg = execlist_ring_mmio(vgpu->gvt, ring_id,
-			_EL_OFFSET_STATUS_BUF);
+	ctx_status_ptr_reg =
+		execlist_ring_mmio(execlist->engine, _EL_OFFSET_STATUS_PTR);
+	ctx_status_buf_reg =
+		execlist_ring_mmio(execlist->engine, _EL_OFFSET_STATUS_BUF);
 
 	ctx_status_ptr.dw = vgpu_vreg(vgpu, ctx_status_ptr_reg);
 
@@ -161,26 +157,24 @@ static void emulate_csb_update(struct intel_vgpu_execlist *execlist,
 
 	/* Update the CSB and CSB write pointer in HWSP */
 	hwsp_gpa = intel_vgpu_gma_to_gpa(vgpu->gtt.ggtt_mm,
-					 vgpu->hws_pga[ring_id]);
+					 vgpu->hws_pga[execlist->engine->id]);
 	if (hwsp_gpa != INTEL_GVT_INVALID_ADDR) {
 		intel_gvt_hypervisor_write_gpa(vgpu,
-			hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 +
-			write_pointer * 8,
-			status, 8);
+					       hwsp_gpa + I915_HWS_CSB_BUF0_INDEX * 4 + write_pointer * 8,
+					       status, 8);
 		intel_gvt_hypervisor_write_gpa(vgpu,
-			hwsp_gpa +
-			intel_hws_csb_write_index(dev_priv) * 4,
-			&write_pointer, 4);
+					       hwsp_gpa + intel_hws_csb_write_index(execlist->engine->i915) * 4,
+					       &write_pointer, 4);
 	}
 
 	gvt_dbg_el("vgpu%d: w pointer %u reg %x csb l %x csb h %x\n",
-		vgpu->id, write_pointer, offset, status->ldw, status->udw);
+		   vgpu->id, write_pointer, offset, status->ldw, status->udw);
 
 	if (trigger_interrupt_later)
 		return;
 
 	intel_vgpu_trigger_virtual_event(vgpu,
-			ring_id_to_context_switch_event(execlist->ring_id));
+					 to_context_switch_event(execlist->engine));
 }
 
 static int emulate_execlist_ctx_schedule_out(
@@ -261,9 +255,8 @@ static struct intel_vgpu_execlist_slot *get_next_execlist_slot(
 		struct intel_vgpu_execlist *execlist)
 {
 	struct intel_vgpu *vgpu = execlist->vgpu;
-	int ring_id = execlist->ring_id;
-	u32 status_reg = execlist_ring_mmio(vgpu->gvt, ring_id,
-			_EL_OFFSET_STATUS);
+	u32 status_reg =
+		execlist_ring_mmio(execlist->engine, _EL_OFFSET_STATUS);
 	struct execlist_status_format status;
 
 	status.ldw = vgpu_vreg(vgpu, status_reg);
@@ -379,7 +372,6 @@ static int prepare_execlist_workload(struct intel_vgpu_workload *workload)
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	struct execlist_ctx_descriptor_format ctx[2];
-	int ring_id = workload->ring_id;
 	int ret;
 
 	if (!workload->emulate_schedule_in)
@@ -388,7 +380,8 @@ static int prepare_execlist_workload(struct intel_vgpu_workload *workload)
 	ctx[0] = *get_desc_from_elsp_dwords(&workload->elsp_dwords, 0);
 	ctx[1] = *get_desc_from_elsp_dwords(&workload->elsp_dwords, 1);
 
-	ret = emulate_execlist_schedule_in(&s->execlist[ring_id], ctx);
+	ret = emulate_execlist_schedule_in(&s->execlist[workload->engine->id],
+					   ctx);
 	if (ret) {
 		gvt_vgpu_err("fail to emulate execlist schedule in\n");
 		return ret;
@@ -399,21 +392,21 @@ static int prepare_execlist_workload(struct intel_vgpu_workload *workload)
 static int complete_execlist_workload(struct intel_vgpu_workload *workload)
 {
 	struct intel_vgpu *vgpu = workload->vgpu;
-	int ring_id = workload->ring_id;
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct intel_vgpu_execlist *execlist = &s->execlist[ring_id];
+	struct intel_vgpu_execlist *execlist =
+		&s->execlist[workload->engine->id];
 	struct intel_vgpu_workload *next_workload;
-	struct list_head *next = workload_q_head(vgpu, ring_id)->next;
+	struct list_head *next = workload_q_head(vgpu, workload->engine)->next;
 	bool lite_restore = false;
 	int ret = 0;
 
-	gvt_dbg_el("complete workload %p status %d\n", workload,
-			workload->status);
+	gvt_dbg_el("complete workload %p status %d\n",
+		   workload, workload->status);
 
-	if (workload->status || (vgpu->resetting_eng & BIT(ring_id)))
+	if (workload->status || vgpu->resetting_eng & workload->engine->mask)
 		goto out;
 
-	if (!list_empty(workload_q_head(vgpu, ring_id))) {
+	if (!list_empty(workload_q_head(vgpu, workload->engine))) {
 		struct execlist_ctx_descriptor_format *this_desc, *next_desc;
 
 		next_workload = container_of(next,
@@ -436,14 +429,15 @@ static int complete_execlist_workload(struct intel_vgpu_workload *workload)
 	return ret;
 }
 
-static int submit_context(struct intel_vgpu *vgpu, int ring_id,
-		struct execlist_ctx_descriptor_format *desc,
-		bool emulate_schedule_in)
+static int submit_context(struct intel_vgpu *vgpu,
+			  const struct intel_engine_cs *engine,
+			  struct execlist_ctx_descriptor_format *desc,
+			  bool emulate_schedule_in)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	struct intel_vgpu_workload *workload = NULL;
 
-	workload = intel_vgpu_create_workload(vgpu, ring_id, desc);
+	workload = intel_vgpu_create_workload(vgpu, engine, desc);
 	if (IS_ERR(workload))
 		return PTR_ERR(workload);
 
@@ -452,19 +446,20 @@ static int submit_context(struct intel_vgpu *vgpu, int ring_id,
 	workload->emulate_schedule_in = emulate_schedule_in;
 
 	if (emulate_schedule_in)
-		workload->elsp_dwords = s->execlist[ring_id].elsp_dwords;
+		workload->elsp_dwords = s->execlist[engine->id].elsp_dwords;
 
 	gvt_dbg_el("workload %p emulate schedule_in %d\n", workload,
-			emulate_schedule_in);
+		   emulate_schedule_in);
 
 	intel_vgpu_queue_workload(workload);
 	return 0;
 }
 
-int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu, int ring_id)
+int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu,
+			       const struct intel_engine_cs *engine)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct intel_vgpu_execlist *execlist = &s->execlist[ring_id];
+	struct intel_vgpu_execlist *execlist = &s->execlist[engine->id];
 	struct execlist_ctx_descriptor_format *desc[2];
 	int i, ret;
 
@@ -489,7 +484,7 @@ int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu, int ring_id)
 	for (i = 0; i < ARRAY_SIZE(desc); i++) {
 		if (!desc[i]->valid)
 			continue;
-		ret = submit_context(vgpu, ring_id, desc[i], i == 0);
+		ret = submit_context(vgpu, engine, desc[i], i == 0);
 		if (ret) {
 			gvt_vgpu_err("failed to submit desc %d\n", i);
 			return ret;
@@ -504,22 +499,22 @@ int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu, int ring_id)
 	return -EINVAL;
 }
 
-static void init_vgpu_execlist(struct intel_vgpu *vgpu, int ring_id)
+static void init_vgpu_execlist(struct intel_vgpu *vgpu,
+			       const struct intel_engine_cs *engine)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct intel_vgpu_execlist *execlist = &s->execlist[ring_id];
+	struct intel_vgpu_execlist *execlist = &s->execlist[engine->id];
 	struct execlist_context_status_pointer_format ctx_status_ptr;
 	u32 ctx_status_ptr_reg;
 
 	memset(execlist, 0, sizeof(*execlist));
 
 	execlist->vgpu = vgpu;
-	execlist->ring_id = ring_id;
+	execlist->engine = engine;
 	execlist->slot[0].index = 0;
 	execlist->slot[1].index = 1;
 
-	ctx_status_ptr_reg = execlist_ring_mmio(vgpu->gvt, ring_id,
-			_EL_OFFSET_STATUS_PTR);
+	ctx_status_ptr_reg = execlist_ring_mmio(engine, _EL_OFFSET_STATUS_PTR);
 	ctx_status_ptr.dw = vgpu_vreg(vgpu, ctx_status_ptr_reg);
 	ctx_status_ptr.read_ptr = 0;
 	ctx_status_ptr.write_ptr = 0x7;
@@ -549,7 +544,7 @@ static void reset_execlist(struct intel_vgpu *vgpu,
 	intel_engine_mask_t tmp;
 
 	for_each_engine_masked(engine, &dev_priv->gt, engine_mask, tmp)
-		init_vgpu_execlist(vgpu, engine->id);
+		init_vgpu_execlist(vgpu, engine);
 }
 
 static int init_execlist(struct intel_vgpu *vgpu,
diff --git a/drivers/gpu/drm/i915/gvt/execlist.h b/drivers/gpu/drm/i915/gvt/execlist.h
index 5c0c1fd30c83..d62cd14605a3 100644
--- a/drivers/gpu/drm/i915/gvt/execlist.h
+++ b/drivers/gpu/drm/i915/gvt/execlist.h
@@ -170,16 +170,17 @@ struct intel_vgpu_execlist {
 	struct intel_vgpu_execlist_slot *running_slot;
 	struct intel_vgpu_execlist_slot *pending_slot;
 	struct execlist_ctx_descriptor_format *running_context;
-	int ring_id;
 	struct intel_vgpu *vgpu;
 	struct intel_vgpu_elsp_dwords elsp_dwords;
+	const struct intel_engine_cs *engine;
 };
 
 void intel_vgpu_clean_execlist(struct intel_vgpu *vgpu);
 
 int intel_vgpu_init_execlist(struct intel_vgpu *vgpu);
 
-int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu, int ring_id);
+int intel_vgpu_submit_execlist(struct intel_vgpu *vgpu,
+			       const struct intel_engine_cs *engine);
 
 void intel_vgpu_reset_execlist(struct intel_vgpu *vgpu,
 			       intel_engine_mask_t engine_mask);
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6d28d72e6c7e..83834b824b28 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -142,25 +142,25 @@ static int new_mmio_info(struct intel_gvt *gvt,
 }
 
 /**
- * intel_gvt_render_mmio_to_ring_id - convert a mmio offset into ring id
+ * intel_gvt_render_mmio_to_engine - convert a mmio offset into the engine
  * @gvt: a GVT device
  * @offset: register offset
  *
  * Returns:
- * Ring ID on success, negative error code if failed.
+ * The engine containing the offset within its mmio page.
  */
-int intel_gvt_render_mmio_to_ring_id(struct intel_gvt *gvt,
-		unsigned int offset)
+const struct intel_engine_cs *
+intel_gvt_render_mmio_to_engine(struct intel_gvt *gvt, unsigned int offset)
 {
 	enum intel_engine_id id;
 	struct intel_engine_cs *engine;
 
 	offset &= ~GENMASK(11, 0);
-	for_each_engine(engine, gvt->dev_priv, id) {
+	for_each_engine(engine, gvt->dev_priv, id)
 		if (engine->mmio_base == offset)
-			return id;
-	}
-	return -ENODEV;
+			return engine;
+
+	return NULL;
 }
 
 #define offset_to_fence_num(offset) \
@@ -514,28 +514,23 @@ static int force_nonpriv_write(struct intel_vgpu *vgpu,
 	unsigned int offset, void *p_data, unsigned int bytes)
 {
 	u32 reg_nonpriv = (*(u32 *)p_data) & REG_GENMASK(25, 2);
-	int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);
-	u32 ring_base;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	int ret = -EINVAL;
+	const struct intel_engine_cs *engine =
+		intel_gvt_render_mmio_to_engine(vgpu->gvt, offset);
 
-	if ((bytes != 4) || ((offset & (bytes - 1)) != 0) || ring_id < 0) {
-		gvt_err("vgpu(%d) ring %d Invalid FORCE_NONPRIV offset %x(%dB)\n",
-			vgpu->id, ring_id, offset, bytes);
-		return ret;
+	if (bytes != 4 || !IS_ALIGNED(offset, bytes) || !engine) {
+		gvt_err("vgpu(%d) Invalid FORCE_NONPRIV offset %x(%dB)\n",
+			vgpu->id, offset, bytes);
+		return -EINVAL;
 	}
 
-	ring_base = dev_priv->engine[ring_id]->mmio_base;
-
-	if (in_whitelist(reg_nonpriv) ||
-		reg_nonpriv == i915_mmio_reg_offset(RING_NOPID(ring_base))) {
-		ret = intel_vgpu_default_mmio_write(vgpu, offset, p_data,
-			bytes);
-	} else
+	if (!in_whitelist(reg_nonpriv) ||
+	    reg_nonpriv != i915_mmio_reg_offset(RING_NOPID(engine->mmio_base))) {
 		gvt_err("vgpu(%d) Invalid FORCE_NONPRIV write %x at offset %x\n",
-			vgpu->id, *(u32 *)p_data, offset);
+			vgpu->id, reg_nonpriv, offset);
+		return -EINVAL;
+	}
 
-	return 0;
+	return intel_vgpu_default_mmio_write(vgpu, offset, p_data, bytes);
 }
 
 static int ddi_buf_ctl_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
@@ -1478,7 +1473,8 @@ static int hws_pga_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	u32 value = *(u32 *)p_data;
-	int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);
+	const struct intel_engine_cs *engine =
+		intel_gvt_render_mmio_to_engine(vgpu->gvt, offset);
 
 	if (!intel_gvt_ggtt_validate_range(vgpu, value, I915_GTT_PAGE_SIZE)) {
 		gvt_vgpu_err("write invalid HWSP address, reg:0x%x, value:0x%x\n",
@@ -1490,12 +1486,12 @@ static int hws_pga_write(struct intel_vgpu *vgpu, unsigned int offset,
 	 * update the VM CSB status correctly. Here listed registers can
 	 * support BDW, SKL or other platforms with same HWSP registers.
 	 */
-	if (unlikely(ring_id < 0 || ring_id >= I915_NUM_ENGINES)) {
+	if (unlikely(!engine)) {
 		gvt_vgpu_err("access unknown hardware status page register:0x%x\n",
 			     offset);
 		return -EINVAL;
 	}
-	vgpu->hws_pga[ring_id] = value;
+	vgpu->hws_pga[engine->id] = value;
 	gvt_dbg_mmio("VM(%d) write: 0x%x to HWSP: 0x%x\n",
 		     vgpu->id, value, offset);
 
@@ -1655,22 +1651,20 @@ static int mmio_read_from_hw(struct intel_vgpu *vgpu,
 {
 	struct intel_gvt *gvt = vgpu->gvt;
 	struct drm_i915_private *dev_priv = gvt->dev_priv;
-	int ring_id;
-	u32 ring_base;
+	const struct intel_engine_cs *engine =
+		intel_gvt_render_mmio_to_engine(gvt, offset);
 
-	ring_id = intel_gvt_render_mmio_to_ring_id(gvt, offset);
 	/**
 	 * Read HW reg in following case
 	 * a. the offset isn't a ring mmio
 	 * b. the offset's ring is running on hw.
 	 * c. the offset is ring time stamp mmio
 	 */
-	if (ring_id >= 0)
-		ring_base = dev_priv->engine[ring_id]->mmio_base;
 
-	if (ring_id < 0 || vgpu  == gvt->scheduler.engine_owner[ring_id] ||
-	    offset == i915_mmio_reg_offset(RING_TIMESTAMP(ring_base)) ||
-	    offset == i915_mmio_reg_offset(RING_TIMESTAMP_UDW(ring_base))) {
+	if (!engine ||
+	    vgpu == gvt->scheduler.engine_owner[engine->id] ||
+	    offset == i915_mmio_reg_offset(RING_TIMESTAMP(engine->mmio_base)) ||
+	    offset == i915_mmio_reg_offset(RING_TIMESTAMP_UDW(engine->mmio_base))) {
 		mmio_hw_access_pre(dev_priv);
 		vgpu_vreg(vgpu, offset) = I915_READ(_MMIO(offset));
 		mmio_hw_access_post(dev_priv);
@@ -1682,22 +1676,23 @@ static int mmio_read_from_hw(struct intel_vgpu *vgpu,
 static int elsp_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
-	int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);
+	const struct intel_engine_cs *engine =
+		intel_gvt_render_mmio_to_engine(vgpu->gvt, offset);
 	struct intel_vgpu_execlist *execlist;
 	u32 data = *(u32 *)p_data;
 	int ret = 0;
 
-	if (WARN_ON(ring_id < 0 || ring_id >= I915_NUM_ENGINES))
+	if (WARN_ON(!engine))
 		return -EINVAL;
 
-	execlist = &vgpu->submission.execlist[ring_id];
+	execlist = &vgpu->submission.execlist[engine->id];
 
 	execlist->elsp_dwords.data[3 - execlist->elsp_dwords.index] = data;
 	if (execlist->elsp_dwords.index == 3) {
-		ret = intel_vgpu_submit_execlist(vgpu, ring_id);
+		ret = intel_vgpu_submit_execlist(vgpu, engine);
 		if(ret)
-			gvt_vgpu_err("fail submit workload on ring %d\n",
-				ring_id);
+			gvt_vgpu_err("fail submit workload on ring %s\n",
+				     engine->name);
 	}
 
 	++execlist->elsp_dwords.index;
@@ -1709,7 +1704,8 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 		void *p_data, unsigned int bytes)
 {
 	u32 data = *(u32 *)p_data;
-	int ring_id = intel_gvt_render_mmio_to_ring_id(vgpu->gvt, offset);
+	const struct intel_engine_cs *engine =
+		intel_gvt_render_mmio_to_engine(vgpu->gvt, offset);
 	bool enable_execlist;
 	int ret;
 
@@ -1743,16 +1739,16 @@ static int ring_mode_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 			|| (data & _MASKED_BIT_DISABLE(GFX_RUN_LIST_ENABLE))) {
 		enable_execlist = !!(data & GFX_RUN_LIST_ENABLE);
 
-		gvt_dbg_core("EXECLIST %s on ring %d\n",
-				(enable_execlist ? "enabling" : "disabling"),
-				ring_id);
+		gvt_dbg_core("EXECLIST %s on ring %s\n",
+			     (enable_execlist ? "enabling" : "disabling"),
+			     engine->name);
 
 		if (!enable_execlist)
 			return 0;
 
 		ret = intel_vgpu_select_submission_ops(vgpu,
-			       BIT(ring_id),
-			       INTEL_VGPU_EXECLIST_SUBMISSION);
+						       engine->mask,
+						       INTEL_VGPU_EXECLIST_SUBMISSION);
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/i915/gvt/mmio.h b/drivers/gpu/drm/i915/gvt/mmio.h
index 2e68f4b02c94..cc4812648bf4 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.h
+++ b/drivers/gpu/drm/i915/gvt/mmio.h
@@ -69,8 +69,8 @@ struct intel_gvt_mmio_info {
 	struct hlist_node node;
 };
 
-int intel_gvt_render_mmio_to_ring_id(struct intel_gvt *gvt,
-		unsigned int reg);
+const struct intel_engine_cs *
+intel_gvt_render_mmio_to_engine(struct intel_gvt *gvt, unsigned int reg);
 unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt);
 bool intel_gvt_match_device(struct intel_gvt *gvt, unsigned long device);
 
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.c b/drivers/gpu/drm/i915/gvt/mmio_context.c
index aaf15916d29a..182145e74812 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.c
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.c
@@ -214,13 +214,11 @@ restore_context_mmio_for_inhibit(struct intel_vgpu *vgpu,
 	*cs++ = MI_LOAD_REGISTER_IMM(count);
 	for (mmio = gvt->engine_mmio_list.mmio;
 	     i915_mmio_reg_valid(mmio->reg); mmio++) {
-		if (mmio->ring_id != ring_id ||
-		    !mmio->in_context)
+		if (mmio->id != ring_id || !mmio->in_context)
 			continue;
 
 		*cs++ = i915_mmio_reg_offset(mmio->reg);
-		*cs++ = vgpu_vreg_t(vgpu, mmio->reg) |
-				(mmio->mask << 16);
+		*cs++ = vgpu_vreg_t(vgpu, mmio->reg) | (mmio->mask << 16);
 		gvt_dbg_core("add lri reg pair 0x%x:0x%x in inhibit ctx, vgpu:%d, rind_id:%d\n",
 			      *(cs-2), *(cs-1), vgpu->id, ring_id);
 	}
@@ -344,10 +342,10 @@ static u32 gen8_tlb_mmio_offset_list[] = {
 	[VECS0] = 0x4270,
 };
 
-static void handle_tlb_pending_event(struct intel_vgpu *vgpu, int ring_id)
+static void handle_tlb_pending_event(struct intel_vgpu *vgpu,
+				     const struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	struct intel_uncore *uncore = &dev_priv->uncore;
+	struct intel_uncore *uncore = engine->uncore;
 	struct intel_vgpu_submission *s = &vgpu->submission;
 	u32 *regs = vgpu->gvt->engine_mmio_list.tlb_mmio_offset_list;
 	u32 cnt = vgpu->gvt->engine_mmio_list.tlb_mmio_offset_list_cnt;
@@ -357,13 +355,13 @@ static void handle_tlb_pending_event(struct intel_vgpu *vgpu, int ring_id)
 	if (!regs)
 		return;
 
-	if (WARN_ON(ring_id >= cnt))
+	if (WARN_ON(engine->id >= cnt))
 		return;
 
-	if (!test_and_clear_bit(ring_id, (void *)s->tlb_handle_pending))
+	if (!test_and_clear_bit(engine->id, (void *)s->tlb_handle_pending))
 		return;
 
-	reg = _MMIO(regs[ring_id]);
+	reg = _MMIO(regs[engine->id]);
 
 	/* WaForceWakeRenderDuringMmioTLBInvalidate:skl
 	 * we need to put a forcewake when invalidating RCS TLB caches,
@@ -372,30 +370,27 @@ static void handle_tlb_pending_event(struct intel_vgpu *vgpu, int ring_id)
 	 */
 	fw = intel_uncore_forcewake_for_reg(uncore, reg,
 					    FW_REG_READ | FW_REG_WRITE);
-	if (ring_id == RCS0 && INTEL_GEN(dev_priv) >= 9)
+	if (engine->id == RCS0 && INTEL_GEN(engine->i915) >= 9)
 		fw |= FORCEWAKE_RENDER;
 
 	intel_uncore_forcewake_get(uncore, fw);
 
 	intel_uncore_write_fw(uncore, reg, 0x1);
 
-	if (wait_for_atomic((intel_uncore_read_fw(uncore, reg) == 0), 50))
-		gvt_vgpu_err("timeout in invalidate ring (%d) tlb\n", ring_id);
+	if (wait_for_atomic(intel_uncore_read_fw(uncore, reg) == 0, 50))
+		gvt_vgpu_err("timeout in invalidate ring %s tlb\n",
+			     engine->name);
 	else
 		vgpu_vreg_t(vgpu, reg) = 0;
 
 	intel_uncore_forcewake_put(uncore, fw);
 
-	gvt_dbg_core("invalidate TLB for ring %d\n", ring_id);
+	gvt_dbg_core("invalidate TLB for ring %s\n", engine->name);
 }
 
 static void switch_mocs(struct intel_vgpu *pre, struct intel_vgpu *next,
-			int ring_id)
+			const struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv;
-	i915_reg_t offset, l3_offset;
-	u32 old_v, new_v;
-
 	u32 regs[] = {
 		[RCS0]  = 0xc800,
 		[VCS0]  = 0xc900,
@@ -403,36 +398,38 @@ static void switch_mocs(struct intel_vgpu *pre, struct intel_vgpu *next,
 		[BCS0]  = 0xcc00,
 		[VECS0] = 0xcb00,
 	};
+	struct intel_uncore *uncore = engine->uncore;
+	i915_reg_t offset, l3_offset;
+	u32 old_v, new_v;
 	int i;
 
-	dev_priv = pre ? pre->gvt->dev_priv : next->gvt->dev_priv;
-	if (WARN_ON(ring_id >= ARRAY_SIZE(regs)))
+	if (WARN_ON(engine->id >= ARRAY_SIZE(regs)))
 		return;
 
-	if (ring_id == RCS0 && IS_GEN(dev_priv, 9))
+	if (engine->id == RCS0 && IS_GEN(engine->i915, 9))
 		return;
 
 	if (!pre && !gen9_render_mocs.initialized)
-		load_render_mocs(dev_priv);
+		load_render_mocs(engine->i915);
 
-	offset.reg = regs[ring_id];
+	offset.reg = regs[engine->id];
 	for (i = 0; i < GEN9_MOCS_SIZE; i++) {
 		if (pre)
 			old_v = vgpu_vreg_t(pre, offset);
 		else
-			old_v = gen9_render_mocs.control_table[ring_id][i];
+			old_v = gen9_render_mocs.control_table[engine->id][i];
 		if (next)
 			new_v = vgpu_vreg_t(next, offset);
 		else
-			new_v = gen9_render_mocs.control_table[ring_id][i];
+			new_v = gen9_render_mocs.control_table[engine->id][i];
 
 		if (old_v != new_v)
-			I915_WRITE_FW(offset, new_v);
+			intel_uncore_write_fw(uncore, offset, new_v);
 
 		offset.reg += 4;
 	}
 
-	if (ring_id == RCS0) {
+	if (engine->id == RCS0) {
 		l3_offset.reg = 0xb020;
 		for (i = 0; i < GEN9_MOCS_SIZE / 2; i++) {
 			if (pre)
@@ -445,7 +442,7 @@ static void switch_mocs(struct intel_vgpu *pre, struct intel_vgpu *next,
 				new_v = gen9_render_mocs.l3cc_table[i];
 
 			if (old_v != new_v)
-				I915_WRITE_FW(l3_offset, new_v);
+				intel_uncore_write_fw(uncore, l3_offset, new_v);
 
 			l3_offset.reg += 4;
 		}
@@ -467,38 +464,40 @@ bool is_inhibit_context(struct intel_context *ce)
 /* Switch ring mmio values (context). */
 static void switch_mmio(struct intel_vgpu *pre,
 			struct intel_vgpu *next,
-			int ring_id)
+			const struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv;
+	struct intel_uncore *uncore = engine->uncore;
 	struct intel_vgpu_submission *s;
 	struct engine_mmio *mmio;
 	u32 old_v, new_v;
 
-	dev_priv = pre ? pre->gvt->dev_priv : next->gvt->dev_priv;
-	if (INTEL_GEN(dev_priv) >= 9)
-		switch_mocs(pre, next, ring_id);
+	if (INTEL_GEN(engine->i915) >= 9)
+		switch_mocs(pre, next, engine);
 
-	for (mmio = dev_priv->gvt->engine_mmio_list.mmio;
+	for (mmio = engine->i915->gvt->engine_mmio_list.mmio;
 	     i915_mmio_reg_valid(mmio->reg); mmio++) {
-		if (mmio->ring_id != ring_id)
+		if (mmio->id != engine->id)
 			continue;
 		/*
 		 * No need to do save or restore of the mmio which is in context
 		 * state image on gen9, it's initialized by lri command and
 		 * save or restore with context together.
 		 */
-		if (IS_GEN(dev_priv, 9) && mmio->in_context)
+		if (IS_GEN(engine->i915, 9) && mmio->in_context)
 			continue;
 
 		// save
 		if (pre) {
-			vgpu_vreg_t(pre, mmio->reg) = I915_READ_FW(mmio->reg);
+			vgpu_vreg_t(pre, mmio->reg) =
+				intel_uncore_read_fw(uncore, mmio->reg);
 			if (mmio->mask)
 				vgpu_vreg_t(pre, mmio->reg) &=
-						~(mmio->mask << 16);
+					~(mmio->mask << 16);
 			old_v = vgpu_vreg_t(pre, mmio->reg);
-		} else
-			old_v = mmio->value = I915_READ_FW(mmio->reg);
+		} else {
+			old_v = mmio->value =
+				intel_uncore_read_fw(uncore, mmio->reg);
+		}
 
 		// restore
 		if (next) {
@@ -509,12 +508,12 @@ static void switch_mmio(struct intel_vgpu *pre,
 			 * itself.
 			 */
 			if (mmio->in_context &&
-			    !is_inhibit_context(s->shadow[ring_id]))
+			    !is_inhibit_context(s->shadow[engine->id]))
 				continue;
 
 			if (mmio->mask)
 				new_v = vgpu_vreg_t(next, mmio->reg) |
-							(mmio->mask << 16);
+					(mmio->mask << 16);
 			else
 				new_v = vgpu_vreg_t(next, mmio->reg);
 		} else {
@@ -526,7 +525,7 @@ static void switch_mmio(struct intel_vgpu *pre,
 				new_v = mmio->value;
 		}
 
-		I915_WRITE_FW(mmio->reg, new_v);
+		intel_uncore_write_fw(uncore, mmio->reg, new_v);
 
 		trace_render_mmio(pre ? pre->id : 0,
 				  next ? next->id : 0,
@@ -536,39 +535,36 @@ static void switch_mmio(struct intel_vgpu *pre,
 	}
 
 	if (next)
-		handle_tlb_pending_event(next, ring_id);
+		handle_tlb_pending_event(next, engine);
 }
 
 /**
  * intel_gvt_switch_render_mmio - switch mmio context of specific engine
  * @pre: the last vGPU that own the engine
  * @next: the vGPU to switch to
- * @ring_id: specify the engine
+ * @engine: the engine
  *
  * If pre is null indicates that host own the engine. If next is null
  * indicates that we are switching to host workload.
  */
 void intel_gvt_switch_mmio(struct intel_vgpu *pre,
-			   struct intel_vgpu *next, int ring_id)
+			   struct intel_vgpu *next,
+			   const struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv;
-
 	if (WARN_ON(!pre && !next))
 		return;
 
-	gvt_dbg_render("switch ring %d from %s to %s\n", ring_id,
+	gvt_dbg_render("switch ring %s from %s to %s\n", engine->name,
 		       pre ? "vGPU" : "host", next ? "vGPU" : "HOST");
 
-	dev_priv = pre ? pre->gvt->dev_priv : next->gvt->dev_priv;
-
 	/**
 	 * We are using raw mmio access wrapper to improve the
 	 * performace for batch mmio read/write, so we need
 	 * handle forcewake mannually.
 	 */
-	intel_uncore_forcewake_get(&dev_priv->uncore, FORCEWAKE_ALL);
-	switch_mmio(pre, next, ring_id);
-	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
+	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
+	switch_mmio(pre, next, engine);
+	intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
 }
 
 /**
@@ -595,7 +591,7 @@ void intel_gvt_init_engine_mmio_context(struct intel_gvt *gvt)
 	for (mmio = gvt->engine_mmio_list.mmio;
 	     i915_mmio_reg_valid(mmio->reg); mmio++) {
 		if (mmio->in_context) {
-			gvt->engine_mmio_list.ctx_mmio_count[mmio->ring_id]++;
+			gvt->engine_mmio_list.ctx_mmio_count[mmio->id]++;
 			intel_gvt_mmio_set_in_ctx(gvt, mmio->reg.reg);
 		}
 	}
diff --git a/drivers/gpu/drm/i915/gvt/mmio_context.h b/drivers/gpu/drm/i915/gvt/mmio_context.h
index f7eaa442403f..970704b18f23 100644
--- a/drivers/gpu/drm/i915/gvt/mmio_context.h
+++ b/drivers/gpu/drm/i915/gvt/mmio_context.h
@@ -37,7 +37,7 @@
 #define __GVT_RENDER_H__
 
 struct engine_mmio {
-	int ring_id;
+	enum intel_engine_id id;
 	i915_reg_t reg;
 	u32 mask;
 	bool in_context;
@@ -45,7 +45,8 @@ struct engine_mmio {
 };
 
 void intel_gvt_switch_mmio(struct intel_vgpu *pre,
-			   struct intel_vgpu *next, int ring_id);
+			   struct intel_vgpu *next,
+			   const struct intel_engine_cs *engine);
 
 void intel_gvt_init_engine_mmio_context(struct intel_gvt *gvt);
 
diff --git a/drivers/gpu/drm/i915/gvt/sched_policy.c b/drivers/gpu/drm/i915/gvt/sched_policy.c
index 2369d4a9af94..737096a82e14 100644
--- a/drivers/gpu/drm/i915/gvt/sched_policy.c
+++ b/drivers/gpu/drm/i915/gvt/sched_policy.c
@@ -40,7 +40,7 @@ static bool vgpu_has_pending_workload(struct intel_vgpu *vgpu)
 	struct intel_engine_cs *engine;
 
 	for_each_engine(engine, vgpu->gvt->dev_priv, i) {
-		if (!list_empty(workload_q_head(vgpu, i)))
+		if (!list_empty(workload_q_head(vgpu, engine)))
 			return true;
 	}
 
@@ -444,9 +444,10 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
 {
 	struct intel_gvt_workload_scheduler *scheduler =
 		&vgpu->gvt->scheduler;
-	int ring_id;
 	struct vgpu_sched_data *vgpu_data = vgpu->sched_data;
 	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
+	struct intel_engine_cs *engine;
+	enum intel_engine_id id;
 
 	if (!vgpu_data->active)
 		return;
@@ -467,10 +468,10 @@ void intel_vgpu_stop_schedule(struct intel_vgpu *vgpu)
 
 	intel_runtime_pm_get(&dev_priv->runtime_pm);
 	spin_lock_bh(&scheduler->mmio_context_lock);
-	for (ring_id = 0; ring_id < I915_NUM_ENGINES; ring_id++) {
-		if (scheduler->engine_owner[ring_id] == vgpu) {
-			intel_gvt_switch_mmio(vgpu, NULL, ring_id);
-			scheduler->engine_owner[ring_id] = NULL;
+	for_each_engine(engine, &vgpu->gvt->dev_priv->gt, id) {
+		if (scheduler->engine_owner[engine->id] == vgpu) {
+			intel_gvt_switch_mmio(vgpu, NULL, engine);
+			scheduler->engine_owner[engine->id] = NULL;
 		}
 	}
 	spin_unlock_bh(&scheduler->mmio_context_lock);
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 685d1e04a5ff..b1ee4baf0f2b 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -98,7 +98,7 @@ static void sr_oa_regs(struct intel_vgpu_workload *workload,
 		i915_mmio_reg_offset(EU_PERF_CNTL6),
 	};
 
-	if (workload->ring_id != RCS0)
+	if (workload->engine->id != RCS0)
 		return;
 
 	if (save) {
@@ -128,7 +128,6 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 {
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct intel_gvt *gvt = vgpu->gvt;
-	int ring_id = workload->ring_id;
 	struct drm_i915_gem_object *ctx_obj =
 		workload->req->context->state->obj;
 	struct execlist_ring_context *shadow_ring_context;
@@ -154,7 +153,7 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	COPY_REG_MASKED(ctx_ctrl);
 	COPY_REG(ctx_timestamp);
 
-	if (ring_id == RCS0) {
+	if (workload->engine->id == RCS0) {
 		COPY_REG(bb_per_ctx_ptr);
 		COPY_REG(rcs_indirect_ctx);
 		COPY_REG(rcs_indirect_ctx_offset);
@@ -175,14 +174,14 @@ static int populate_shadow_context(struct intel_vgpu_workload *workload)
 	if (IS_RESTORE_INHIBIT(shadow_ring_context->ctx_ctrl.val))
 		return 0;
 
-	gvt_dbg_sched("ring id %d workload lrca %x", ring_id,
-			workload->ctx_desc.lrca);
-
-	context_page_num = gvt->dev_priv->engine[ring_id]->context_size;
+	gvt_dbg_sched("ring %s workload lrca %x",
+		      workload->engine->name,
+		      workload->ctx_desc.lrca);
 
+	context_page_num = workload->engine->context_size;
 	context_page_num = context_page_num >> PAGE_SHIFT;
 
-	if (IS_BROADWELL(gvt->dev_priv) && ring_id == RCS0)
+	if (IS_BROADWELL(gvt->dev_priv) && workload->engine->id == RCS0)
 		context_page_num = 19;
 
 	i = 2;
@@ -210,38 +209,43 @@ static inline bool is_gvt_request(struct i915_request *rq)
 	return intel_context_force_single_submission(rq->context);
 }
 
-static void save_ring_hw_state(struct intel_vgpu *vgpu, int ring_id)
+static void save_ring_hw_state(struct intel_vgpu *vgpu,
+			       const struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	u32 ring_base = dev_priv->engine[ring_id]->mmio_base;
+	struct intel_uncore *uncore = engine->uncore;
 	i915_reg_t reg;
 
-	reg = RING_INSTDONE(ring_base);
-	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) = I915_READ_FW(reg);
-	reg = RING_ACTHD(ring_base);
-	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) = I915_READ_FW(reg);
-	reg = RING_ACTHD_UDW(ring_base);
-	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) = I915_READ_FW(reg);
+	reg = RING_INSTDONE(engine->mmio_base);
+	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) =
+		intel_uncore_read(uncore, reg);
+
+	reg = RING_ACTHD(engine->mmio_base);
+	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) =
+		intel_uncore_read(uncore, reg);
+
+	reg = RING_ACTHD_UDW(engine->mmio_base);
+	vgpu_vreg(vgpu, i915_mmio_reg_offset(reg)) =
+		intel_uncore_read(uncore, reg);
 }
 
 static int shadow_context_status_change(struct notifier_block *nb,
 		unsigned long action, void *data)
 {
-	struct i915_request *req = data;
+	struct i915_request *rq = data;
 	struct intel_gvt *gvt = container_of(nb, struct intel_gvt,
-				shadow_ctx_notifier_block[req->engine->id]);
+				shadow_ctx_notifier_block[rq->engine->id]);
 	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
-	enum intel_engine_id ring_id = req->engine->id;
+	enum intel_engine_id ring_id = rq->engine->id;
 	struct intel_vgpu_workload *workload;
 	unsigned long flags;
 
-	if (!is_gvt_request(req)) {
+	if (!is_gvt_request(rq)) {
 		spin_lock_irqsave(&scheduler->mmio_context_lock, flags);
 		if (action == INTEL_CONTEXT_SCHEDULE_IN &&
 		    scheduler->engine_owner[ring_id]) {
 			/* Switch ring from vGPU to host. */
 			intel_gvt_switch_mmio(scheduler->engine_owner[ring_id],
-					      NULL, ring_id);
+					      NULL, rq->engine);
 			scheduler->engine_owner[ring_id] = NULL;
 		}
 		spin_unlock_irqrestore(&scheduler->mmio_context_lock, flags);
@@ -259,7 +263,7 @@ static int shadow_context_status_change(struct notifier_block *nb,
 		if (workload->vgpu != scheduler->engine_owner[ring_id]) {
 			/* Switch ring from host to vGPU or vGPU to vGPU. */
 			intel_gvt_switch_mmio(scheduler->engine_owner[ring_id],
-					      workload->vgpu, ring_id);
+					      workload->vgpu, rq->engine);
 			scheduler->engine_owner[ring_id] = workload->vgpu;
 		} else
 			gvt_dbg_sched("skip ring %d mmio switch for vgpu%d\n",
@@ -268,11 +272,11 @@ static int shadow_context_status_change(struct notifier_block *nb,
 		atomic_set(&workload->shadow_ctx_active, 1);
 		break;
 	case INTEL_CONTEXT_SCHEDULE_OUT:
-		save_ring_hw_state(workload->vgpu, ring_id);
+		save_ring_hw_state(workload->vgpu, rq->engine);
 		atomic_set(&workload->shadow_ctx_active, 0);
 		break;
 	case INTEL_CONTEXT_SCHEDULE_PREEMPTED:
-		save_ring_hw_state(workload->vgpu, ring_id);
+		save_ring_hw_state(workload->vgpu, rq->engine);
 		break;
 	default:
 		WARN_ON(1);
@@ -391,7 +395,7 @@ intel_gvt_workload_req_alloc(struct intel_vgpu_workload *workload)
 	if (workload->req)
 		return 0;
 
-	rq = i915_request_create(s->shadow[workload->ring_id]);
+	rq = i915_request_create(s->shadow[workload->engine->id]);
 	if (IS_ERR(rq)) {
 		gvt_vgpu_err("fail to allocate gem request\n");
 		return PTR_ERR(rq);
@@ -420,15 +424,16 @@ int intel_gvt_scan_and_shadow_workload(struct intel_vgpu_workload *workload)
 	if (workload->shadow)
 		return 0;
 
-	if (!test_and_set_bit(workload->ring_id, s->shadow_ctx_desc_updated))
-		shadow_context_descriptor_update(s->shadow[workload->ring_id],
+	if (!test_and_set_bit(workload->engine->id, s->shadow_ctx_desc_updated))
+		shadow_context_descriptor_update(s->shadow[workload->engine->id],
 						 workload);
 
 	ret = intel_gvt_scan_and_shadow_ringbuffer(workload);
 	if (ret)
 		return ret;
 
-	if (workload->ring_id == RCS0 && workload->wa_ctx.indirect_ctx.size) {
+	if (workload->engine->id == RCS0 &&
+	    workload->wa_ctx.indirect_ctx.size) {
 		ret = intel_gvt_scan_and_shadow_wa_ctx(&workload->wa_ctx);
 		if (ret)
 			goto err_shadow;
@@ -436,6 +441,7 @@ int intel_gvt_scan_and_shadow_workload(struct intel_vgpu_workload *workload)
 
 	workload->shadow = true;
 	return 0;
+
 err_shadow:
 	release_shadow_wa_ctx(&workload->wa_ctx);
 	return ret;
@@ -567,12 +573,8 @@ static int prepare_shadow_wa_ctx(struct intel_shadow_wa_ctx *wa_ctx)
 
 static void update_vreg_in_ctx(struct intel_vgpu_workload *workload)
 {
-	struct intel_vgpu *vgpu = workload->vgpu;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
-	u32 ring_base;
-
-	ring_base = dev_priv->engine[workload->ring_id]->mmio_base;
-	vgpu_vreg_t(vgpu, RING_START(ring_base)) = workload->rb_start;
+	vgpu_vreg_t(workload->vgpu, RING_START(workload->engine->mmio_base)) =
+		workload->rb_start;
 }
 
 static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
@@ -608,7 +610,6 @@ static int prepare_workload(struct intel_vgpu_workload *workload)
 {
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	int ring = workload->ring_id;
 	int ret = 0;
 
 	ret = intel_vgpu_pin_mm(workload->shadow_mm);
@@ -625,7 +626,7 @@ static int prepare_workload(struct intel_vgpu_workload *workload)
 
 	update_shadow_pdps(workload);
 
-	set_context_ppgtt_from_shadow(workload, s->shadow[ring]);
+	set_context_ppgtt_from_shadow(workload, s->shadow[workload->engine->id]);
 
 	ret = intel_vgpu_sync_oos_pages(workload->vgpu);
 	if (ret) {
@@ -677,11 +678,10 @@ static int dispatch_workload(struct intel_vgpu_workload *workload)
 {
 	struct intel_vgpu *vgpu = workload->vgpu;
 	struct i915_request *rq;
-	int ring_id = workload->ring_id;
 	int ret;
 
-	gvt_dbg_sched("ring id %d prepare to dispatch workload %p\n",
-		ring_id, workload);
+	gvt_dbg_sched("ring id %s prepare to dispatch workload %p\n",
+		      workload->engine->name, workload);
 
 	mutex_lock(&vgpu->vgpu_lock);
 
@@ -710,8 +710,8 @@ static int dispatch_workload(struct intel_vgpu_workload *workload)
 	}
 
 	if (!IS_ERR_OR_NULL(workload->req)) {
-		gvt_dbg_sched("ring id %d submit workload to i915 %p\n",
-				ring_id, workload->req);
+		gvt_dbg_sched("ring id %s submit workload to i915 %p\n",
+			      workload->engine->name, workload->req);
 		i915_request_add(workload->req);
 		workload->dispatched = true;
 	}
@@ -722,8 +722,8 @@ static int dispatch_workload(struct intel_vgpu_workload *workload)
 	return ret;
 }
 
-static struct intel_vgpu_workload *pick_next_workload(
-		struct intel_gvt *gvt, int ring_id)
+static struct intel_vgpu_workload *
+pick_next_workload(struct intel_gvt *gvt, struct intel_engine_cs *engine)
 {
 	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
 	struct intel_vgpu_workload *workload = NULL;
@@ -735,27 +735,27 @@ static struct intel_vgpu_workload *pick_next_workload(
 	 * bail out
 	 */
 	if (!scheduler->current_vgpu) {
-		gvt_dbg_sched("ring id %d stop - no current vgpu\n", ring_id);
+		gvt_dbg_sched("ring %s stop - no current vgpu\n", engine->name);
 		goto out;
 	}
 
 	if (scheduler->need_reschedule) {
-		gvt_dbg_sched("ring id %d stop - will reschedule\n", ring_id);
+		gvt_dbg_sched("ring %s stop - will reschedule\n", engine->name);
 		goto out;
 	}
 
 	if (!scheduler->current_vgpu->active ||
-	    list_empty(workload_q_head(scheduler->current_vgpu, ring_id)))
+	    list_empty(workload_q_head(scheduler->current_vgpu, engine)))
 		goto out;
 
 	/*
 	 * still have current workload, maybe the workload disptacher
 	 * fail to submit it for some reason, resubmit it.
 	 */
-	if (scheduler->current_workload[ring_id]) {
-		workload = scheduler->current_workload[ring_id];
-		gvt_dbg_sched("ring id %d still have current workload %p\n",
-				ring_id, workload);
+	if (scheduler->current_workload[engine->id]) {
+		workload = scheduler->current_workload[engine->id];
+		gvt_dbg_sched("ring %s still have current workload %p\n",
+			      engine->name, workload);
 		goto out;
 	}
 
@@ -765,13 +765,14 @@ static struct intel_vgpu_workload *pick_next_workload(
 	 * will wait the current workload is finished when trying to
 	 * schedule out a vgpu.
 	 */
-	scheduler->current_workload[ring_id] = container_of(
-			workload_q_head(scheduler->current_vgpu, ring_id)->next,
-			struct intel_vgpu_workload, list);
+	scheduler->current_workload[engine->id] =
+		list_first_entry(workload_q_head(scheduler->current_vgpu,
+						 engine),
+				 struct intel_vgpu_workload, list);
 
-	workload = scheduler->current_workload[ring_id];
+	workload = scheduler->current_workload[engine->id];
 
-	gvt_dbg_sched("ring id %d pick new workload %p\n", ring_id, workload);
+	gvt_dbg_sched("ring %s pick new workload %p\n", engine->name, workload);
 
 	atomic_inc(&workload->vgpu->submission.running_workload_num);
 out:
@@ -783,14 +784,12 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 {
 	struct i915_request *rq = workload->req;
 	struct intel_vgpu *vgpu = workload->vgpu;
-	struct intel_gvt *gvt = vgpu->gvt;
 	struct drm_i915_gem_object *ctx_obj = rq->context->state->obj;
 	struct execlist_ring_context *shadow_ring_context;
 	struct page *page;
 	void *src;
 	unsigned long context_gpa, context_page_num;
 	int i;
-	struct drm_i915_private *dev_priv = gvt->dev_priv;
 	u32 ring_base;
 	u32 head, tail;
 	u16 wrap_count;
@@ -811,14 +810,14 @@ static void update_guest_context(struct intel_vgpu_workload *workload)
 
 	head = (wrap_count << RB_HEAD_WRAP_CNT_OFF) | tail;
 
-	ring_base = dev_priv->engine[workload->ring_id]->mmio_base;
+	ring_base = rq->engine->mmio_base;
 	vgpu_vreg_t(vgpu, RING_TAIL(ring_base)) = tail;
 	vgpu_vreg_t(vgpu, RING_HEAD(ring_base)) = head;
 
 	context_page_num = rq->engine->context_size;
 	context_page_num = context_page_num >> PAGE_SHIFT;
 
-	if (IS_BROADWELL(gvt->dev_priv) && rq->engine->id == RCS0)
+	if (IS_BROADWELL(rq->i915) && rq->engine->id == RCS0)
 		context_page_num = 19;
 
 	i = 2;
@@ -966,54 +965,47 @@ static void complete_current_workload(struct intel_gvt *gvt, int ring_id)
 	mutex_unlock(&vgpu->vgpu_lock);
 }
 
-struct workload_thread_param {
-	struct intel_gvt *gvt;
-	int ring_id;
-};
-
-static int workload_thread(void *priv)
+static int workload_thread(void *arg)
 {
-	struct workload_thread_param *p = (struct workload_thread_param *)priv;
-	struct intel_gvt *gvt = p->gvt;
-	int ring_id = p->ring_id;
+	struct intel_engine_cs *engine = arg;
+	const bool need_force_wake = INTEL_GEN(engine->i915) >= 9;
+	struct intel_gvt *gvt = engine->i915->gvt;
 	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
 	struct intel_vgpu_workload *workload = NULL;
 	struct intel_vgpu *vgpu = NULL;
 	int ret;
-	bool need_force_wake = (INTEL_GEN(gvt->dev_priv) >= 9);
 	DEFINE_WAIT_FUNC(wait, woken_wake_function);
-	struct intel_runtime_pm *rpm = &gvt->dev_priv->runtime_pm;
-
-	kfree(p);
 
-	gvt_dbg_core("workload thread for ring %d started\n", ring_id);
+	gvt_dbg_core("workload thread for ring %s started\n", engine->name);
 
 	while (!kthread_should_stop()) {
-		add_wait_queue(&scheduler->waitq[ring_id], &wait);
+		intel_wakeref_t wakeref;
+
+		add_wait_queue(&scheduler->waitq[engine->id], &wait);
 		do {
-			workload = pick_next_workload(gvt, ring_id);
+			workload = pick_next_workload(gvt, engine);
 			if (workload)
 				break;
 			wait_woken(&wait, TASK_INTERRUPTIBLE,
 				   MAX_SCHEDULE_TIMEOUT);
 		} while (!kthread_should_stop());
-		remove_wait_queue(&scheduler->waitq[ring_id], &wait);
+		remove_wait_queue(&scheduler->waitq[engine->id], &wait);
 
 		if (!workload)
 			break;
 
-		gvt_dbg_sched("ring id %d next workload %p vgpu %d\n",
-				workload->ring_id, workload,
-				workload->vgpu->id);
+		gvt_dbg_sched("ring %s next workload %p vgpu %d\n",
+			      engine->name, workload,
+			      workload->vgpu->id);
 
-		intel_runtime_pm_get(rpm);
+		wakeref = intel_runtime_pm_get(engine->uncore->rpm);
 
-		gvt_dbg_sched("ring id %d will dispatch workload %p\n",
-				workload->ring_id, workload);
+		gvt_dbg_sched("ring %s will dispatch workload %p\n",
+			      engine->name, workload);
 
 		if (need_force_wake)
-			intel_uncore_forcewake_get(&gvt->dev_priv->uncore,
-					FORCEWAKE_ALL);
+			intel_uncore_forcewake_get(engine->uncore,
+						   FORCEWAKE_ALL);
 		/*
 		 * Update the vReg of the vGPU which submitted this
 		 * workload. The vGPU may use these registers for checking
@@ -1030,21 +1022,21 @@ static int workload_thread(void *priv)
 			goto complete;
 		}
 
-		gvt_dbg_sched("ring id %d wait workload %p\n",
-				workload->ring_id, workload);
+		gvt_dbg_sched("ring %s wait workload %p\n",
+			      engine->name, workload);
 		i915_request_wait(workload->req, 0, MAX_SCHEDULE_TIMEOUT);
 
 complete:
 		gvt_dbg_sched("will complete workload %p, status: %d\n",
-				workload, workload->status);
+			      workload, workload->status);
 
-		complete_current_workload(gvt, ring_id);
+		complete_current_workload(gvt, engine->id);
 
 		if (need_force_wake)
-			intel_uncore_forcewake_put(&gvt->dev_priv->uncore,
-					FORCEWAKE_ALL);
+			intel_uncore_forcewake_put(engine->uncore,
+						   FORCEWAKE_ALL);
 
-		intel_runtime_pm_put_unchecked(rpm);
+		intel_runtime_pm_put(engine->uncore->rpm, wakeref);
 		if (ret && (vgpu_is_vm_unhealthy(ret)))
 			enter_failsafe_mode(vgpu, GVT_FAILSAFE_GUEST_ERR);
 	}
@@ -1084,7 +1076,6 @@ void intel_gvt_clean_workload_scheduler(struct intel_gvt *gvt)
 int intel_gvt_init_workload_scheduler(struct intel_gvt *gvt)
 {
 	struct intel_gvt_workload_scheduler *scheduler = &gvt->scheduler;
-	struct workload_thread_param *param = NULL;
 	struct intel_engine_cs *engine;
 	enum intel_engine_id i;
 	int ret;
@@ -1096,17 +1087,8 @@ int intel_gvt_init_workload_scheduler(struct intel_gvt *gvt)
 	for_each_engine(engine, gvt->dev_priv, i) {
 		init_waitqueue_head(&scheduler->waitq[i]);
 
-		param = kzalloc(sizeof(*param), GFP_KERNEL);
-		if (!param) {
-			ret = -ENOMEM;
-			goto err;
-		}
-
-		param->gvt = gvt;
-		param->ring_id = i;
-
-		scheduler->thread[i] = kthread_run(workload_thread, param,
-			"gvt workload %d", i);
+		scheduler->thread[i] = kthread_run(workload_thread, engine,
+						   "gvt:%s", engine->name);
 		if (IS_ERR(scheduler->thread[i])) {
 			gvt_err("fail to create workload thread\n");
 			ret = PTR_ERR(scheduler->thread[i]);
@@ -1118,11 +1100,11 @@ int intel_gvt_init_workload_scheduler(struct intel_gvt *gvt)
 		atomic_notifier_chain_register(&engine->context_status_notifier,
 					&gvt->shadow_ctx_notifier_block[i]);
 	}
+
 	return 0;
+
 err:
 	intel_gvt_clean_workload_scheduler(gvt);
-	kfree(param);
-	param = NULL;
 	return ret;
 }
 
@@ -1230,7 +1212,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 
 	i915_context_ppgtt_root_save(s, ppgtt);
 
-	for_each_engine(engine, i915, i) {
+	for_each_engine(engine, &i915->gt, i) {
 		struct intel_context *ce;
 
 		INIT_LIST_HEAD(&s->workload_q_head[i]);
@@ -1282,7 +1264,7 @@ int intel_vgpu_setup_submission(struct intel_vgpu *vgpu)
 
 out_shadow_ctx:
 	i915_context_ppgtt_root_restore(s, ppgtt);
-	for_each_engine(engine, i915, i) {
+	for_each_engine(engine, &i915->gt, i) {
 		if (IS_ERR(s->shadow[i]))
 			break;
 
@@ -1441,7 +1423,7 @@ static int prepare_mm(struct intel_vgpu_workload *workload)
 /**
  * intel_vgpu_create_workload - create a vGPU workload
  * @vgpu: a vGPU
- * @ring_id: ring index
+ * @engine: the engine
  * @desc: a guest context descriptor
  *
  * This function is called when creating a vGPU workload.
@@ -1452,14 +1434,14 @@ static int prepare_mm(struct intel_vgpu_workload *workload)
  *
  */
 struct intel_vgpu_workload *
-intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
+intel_vgpu_create_workload(struct intel_vgpu *vgpu,
+			   const struct intel_engine_cs *engine,
 			   struct execlist_ctx_descriptor_format *desc)
 {
 	struct intel_vgpu_submission *s = &vgpu->submission;
-	struct list_head *q = workload_q_head(vgpu, ring_id);
+	struct list_head *q = workload_q_head(vgpu, engine);
 	struct intel_vgpu_workload *last_workload = NULL;
 	struct intel_vgpu_workload *workload = NULL;
-	struct drm_i915_private *dev_priv = vgpu->gvt->dev_priv;
 	u64 ring_context_gpa;
 	u32 head, tail, start, ctl, ctx_ctl, per_ctx, indirect_ctx;
 	u32 guest_head;
@@ -1486,10 +1468,10 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 	list_for_each_entry_reverse(last_workload, q, list) {
 
 		if (same_context(&last_workload->ctx_desc, desc)) {
-			gvt_dbg_el("ring id %d cur workload == last\n",
-					ring_id);
+			gvt_dbg_el("ring %s cur workload == last\n",
+				   engine->name);
 			gvt_dbg_el("ctx head %x real head %lx\n", head,
-					last_workload->rb_tail);
+				   last_workload->rb_tail);
 			/*
 			 * cannot use guest context head pointer here,
 			 * as it might not be updated at this time
@@ -1499,7 +1481,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 		}
 	}
 
-	gvt_dbg_el("ring id %d begin a new workload\n", ring_id);
+	gvt_dbg_el("ring %s begin a new workload\n", engine->name);
 
 	/* record some ring buffer register values for scan and shadow */
 	intel_gvt_hypervisor_read_gpa(vgpu, ring_context_gpa +
@@ -1519,7 +1501,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 	if (IS_ERR(workload))
 		return workload;
 
-	workload->ring_id = ring_id;
+	workload->engine = engine;
 	workload->ctx_desc = *desc;
 	workload->ring_context_gpa = ring_context_gpa;
 	workload->rb_head = head;
@@ -1528,7 +1510,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 	workload->rb_start = start;
 	workload->rb_ctl = ctl;
 
-	if (ring_id == RCS0) {
+	if (engine->id == RCS0) {
 		intel_gvt_hypervisor_read_gpa(vgpu, ring_context_gpa +
 			RING_CTX_OFF(bb_per_ctx_ptr.val), &per_ctx, 4);
 		intel_gvt_hypervisor_read_gpa(vgpu, ring_context_gpa +
@@ -1566,8 +1548,8 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 		}
 	}
 
-	gvt_dbg_el("workload %p ring id %d head %x tail %x start %x ctl %x\n",
-			workload, ring_id, head, tail, start, ctl);
+	gvt_dbg_el("workload %p ring %s head %x tail %x start %x ctl %x\n",
+		   workload, engine->name, head, tail, start, ctl);
 
 	ret = prepare_mm(workload);
 	if (ret) {
@@ -1578,10 +1560,11 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 	/* Only scan and shadow the first workload in the queue
 	 * as there is only one pre-allocated buf-obj for shadow.
 	 */
-	if (list_empty(workload_q_head(vgpu, ring_id))) {
-		intel_runtime_pm_get(&dev_priv->runtime_pm);
-		ret = intel_gvt_scan_and_shadow_workload(workload);
-		intel_runtime_pm_put_unchecked(&dev_priv->runtime_pm);
+	if (list_empty(q)) {
+		intel_wakeref_t wakeref;
+
+		with_intel_runtime_pm(engine->gt->uncore->rpm, wakeref)
+			ret = intel_gvt_scan_and_shadow_workload(workload);
 	}
 
 	if (ret) {
@@ -1601,7 +1584,7 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
 void intel_vgpu_queue_workload(struct intel_vgpu_workload *workload)
 {
 	list_add_tail(&workload->list,
-		workload_q_head(workload->vgpu, workload->ring_id));
+		      workload_q_head(workload->vgpu, workload->engine));
 	intel_gvt_kick_schedule(workload->vgpu->gvt);
-	wake_up(&workload->vgpu->gvt->scheduler.waitq[workload->ring_id]);
+	wake_up(&workload->vgpu->gvt->scheduler.waitq[workload->engine->id]);
 }
diff --git a/drivers/gpu/drm/i915/gvt/scheduler.h b/drivers/gpu/drm/i915/gvt/scheduler.h
index c50d14a9ce85..bf7fc0ca4cb1 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.h
+++ b/drivers/gpu/drm/i915/gvt/scheduler.h
@@ -79,7 +79,7 @@ struct intel_shadow_wa_ctx {
 
 struct intel_vgpu_workload {
 	struct intel_vgpu *vgpu;
-	int ring_id;
+	const struct intel_engine_cs *engine;
 	struct i915_request *req;
 	/* if this workload has been dispatched to i915? */
 	bool dispatched;
@@ -129,8 +129,8 @@ struct intel_vgpu_shadow_bb {
 	bool ppgtt;
 };
 
-#define workload_q_head(vgpu, ring_id) \
-	(&(vgpu->submission.workload_q_head[ring_id]))
+#define workload_q_head(vgpu, e) \
+	(&(vgpu)->submission.workload_q_head[(e)->id])
 
 void intel_vgpu_queue_workload(struct intel_vgpu_workload *workload);
 
@@ -155,7 +155,8 @@ extern const struct intel_vgpu_submission_ops
 intel_vgpu_execlist_submission_ops;
 
 struct intel_vgpu_workload *
-intel_vgpu_create_workload(struct intel_vgpu *vgpu, int ring_id,
+intel_vgpu_create_workload(struct intel_vgpu *vgpu,
+			   const struct intel_engine_cs *engine,
 			   struct execlist_ctx_descriptor_format *desc);
 
 void intel_vgpu_destroy_workload(struct intel_vgpu_workload *workload);
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
