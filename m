Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DB6C4D6858
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 19:16:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AAA310E708;
	Fri, 11 Mar 2022 18:16:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C5210E617
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 18:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647022590; x=1678558590;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WTWsCno/hr0Rf07q+XNltaCa3HnQkhXbYPoCjI88Xmo=;
 b=Tr9hLxgec6DDrxkofr8mfftaBItaEKwRlaV5bRXtA2cCer7IkEjUk3oj
 ND5t1UXCvJ0L+BLD1wrSXAp3f1lktIQUVin5d1FX5MsfEw86Iuq4Ou06U
 pHR/49tCJwPYqHAet6YZ2g9ZNQ7x8p7oRrnK6uuC80e+F2TYhx4ZkdIUL
 h7igQbb1MGe01sbTrkHjHXQcYb+yzVPa2cVkLw+IERgSXTemIPFaaSY7S
 kKrUVLMLnCaARP8rPBKZ6qnim1PeNfxqRwawUSvWREMrM7AxHBlBqVEgl
 fcpN4H15nDz8hE0Gnr+GD56sNGc/NViBpToMQFeGNtKzZWcjZp82jTK4a g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318846750"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="318846750"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 10:16:27 -0800
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="643061193"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 10:16:27 -0800
Date: Fri, 11 Mar 2022 10:16:26 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220311181626.GF23794@unerlige-ril-10.165.21.154>
References: <20220226095541.1010534-1-alan.previn.teres.alexis@intel.com>
 <20220226095541.1010534-11-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220226095541.1010534-11-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v7 10/13] drm/i915/guc: Extract GuC error
 capture lists on G2H notification.
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Feb 26, 2022 at 01:55:38AM -0800, Alan Previn wrote:
>- Upon the G2H Notify-Err-Capture event, parse through the
>  GuC Log Buffer (error-capture-subregion) and generate one or
>  more capture-nodes. A single node represents a single "engine-
>  instance-capture-dump" and contains at least 3 register lists:
>  global, engine-class and engine-instance. An internal link
>  list is maintained to store one or more nodes.
>- Because the link-list node generation happen before the call
>  to i915_gpu_codedump, duplicate global and engine-class register
>  lists for each engine-instance register dump if we find
>  dependent-engine resets in a engine-capture-group.
>- When i915_gpu_coredump calls into capture_engine, (in a
>  subsequent patch) we detach the matching node (guc-id,
>  LRCA, etc) from the link list above and attach it to
>  i915_gpu_coredump's intel_engine_coredump structure when have
>  matching LRCA/guc-id/engine-instance.
>
>Additional notes to be aware of:
>- GuC generates the error capture dump into the GuC log buffer but
>  this buffer is one big log buffer with 3 independent subregions
>  within it. Each subregion is populated with different content
>  and used in different ways and timings but all regions operate
>  behave as independent ring buffers. Each guc-log subregion
>  (general-logs, crash-dump and error- capture) has it's own
>  guc_log_buffer_state that contain independent read and write
>  pointers.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   7 +
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  56 ++
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 546 +++++++++++++++++-
> .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   1 +
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  26 +-
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   4 +
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  10 +-
> 7 files changed, 639 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>index 7afdadc7656f..ae6448fcaf90 100644
>--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>@@ -173,4 +173,11 @@ enum intel_guc_sleep_state_status {
> #define GUC_LOG_CONTROL_VERBOSITY_MASK	(0xF << GUC_LOG_CONTROL_VERBOSITY_SHIFT)
> #define GUC_LOG_CONTROL_DEFAULT_LOGGING	(1 << 8)
>
>+enum intel_guc_state_capture_event_status {
>+	INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_SUCCESS = 0x0,
>+	INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE = 0x1,
>+};
>+
>+#define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x000000FF
>+
> #endif /* _ABI_GUC_ACTIONS_ABI_H */
>diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>index d5cb7d5d4ca7..2b09aa05d8b7 100644
>--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>@@ -12,6 +12,52 @@
> struct intel_guc;
> struct file;
>
>+/**
>+ * struct __guc_capture_bufstate
>+ *
>+ * Book-keeping structure used to track read and write pointers
>+ * as we extract error capture data from the GuC-log-buffer's
>+ * error-capture region as a stream of dwords.
>+ */
>+struct __guc_capture_bufstate {
>+	u32 size;
>+	void *data;
>+	u32 rd;
>+	u32 wr;
>+};
>+
>+/**
>+ * struct __guc_capture_parsed_output - extracted error capture node
>+ *
>+ * A single unit of extracted error-capture output data grouped together
>+ * at an engine-instance level. We keep these nodes in a linked list.
>+ * See outlist below.
>+ */
>+struct __guc_capture_parsed_output {
>+	/*
>+	 * A single set of 3 capture lists: a global-list
>+	 * an engine-class-list and an engine-instance list.
>+	 * outlist in __guc_capture_parsed_output will keep
>+	 * a linked list of these nodes that will eventually
>+	 * be detached from outlist and attached into to
>+	 * i915_gpu_codedump in response to a context reset
>+	 */
>+	struct list_head link;
>+	bool is_partial;
>+	u32 eng_class;
>+	u32 eng_inst;
>+	u32 guc_id;
>+	u32 lrca;
>+	struct gcap_reg_list_info {
>+		u32 vfid;
>+		u32 num_regs;
>+		struct guc_mmio_reg *regs;
>+	} reginfo[GUC_CAPTURE_LIST_TYPE_MAX];
>+#define GCAP_PARSED_REGLIST_INDEX_GLOBAL   BIT(GUC_CAPTURE_LIST_TYPE_GLOBAL)
>+#define GCAP_PARSED_REGLIST_INDEX_ENGCLASS BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS)
>+#define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
>+};
>+
> /**
>  * struct guc_debug_capture_list_header / struct guc_debug_capture_list
>  *
>@@ -140,6 +186,16 @@ struct __guc_state_capture_priv {
> 	struct __guc_capture_ads_cache ads_cache[GUC_CAPTURE_LIST_INDEX_MAX]
> 						[GUC_CAPTURE_LIST_TYPE_MAX]
> 						[GUC_MAX_ENGINE_CLASSES];
>+
>+	/**
>+	 * @outlist: allocated nodes with parsed engine-instance error capture data
>+	 *
>+	 * A linked list of parsed GuC error-capture output data before
>+	 * reporting with formatting via i915_gpu_coredump. Each node in this linked list shall
>+	 * contain a single engine-capture including global, engine-class and
>+	 * engine-instance register dumps as per guc_capture_parsed_output_node
>+	 */
>+	struct list_head outlist;
> };
>
> #endif /* _INTEL_GUC_CAPTURE_FWIF_H */
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index ed78995bcc35..9308157d9a74 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -14,6 +14,8 @@
> #include "guc_capture_fwif.h"
> #include "intel_guc_fwif.h"
> #include "i915_drv.h"
>+#include "i915_gpu_error.h"
>+#include "i915_irq.h"
> #include "i915_memcpy.h"
> #include "i915_reg.h"
>
>@@ -653,6 +655,9 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
> 	int worst_min_size = 0, num_regs = 0;
> 	size_t tmp = 0;
>
>+	if (!guc->capture.priv)
>+		return -ENODEV;
>+
> 	/*
> 	 * If every single engine-instance suffered a failure in quick succession but
> 	 * were all unrelated, then a burst of multiple error-capture events would dump
>@@ -671,7 +676,7 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
>
> 	for_each_engine(engine, gt, id) {
> 		worst_min_size += sizeof(struct guc_state_capture_group_header_t) +
>-				  (3 * sizeof(struct guc_state_capture_header_t));
>+					 (3 * sizeof(struct guc_state_capture_header_t));
>
> 		if (!intel_guc_capture_getlistsize(guc, 0, GUC_CAPTURE_LIST_TYPE_GLOBAL, 0, &tmp))
> 			num_regs += tmp;
>@@ -691,6 +696,541 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
> 	return (worst_min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER);
> }
>
>+/*
>+ * KMD Init time flows:
>+ * --------------------
>+ *     --> alloc A: GuC input capture regs lists (registered to GuC via ADS).
>+ *                  intel_guc_ads acquires the register lists by calling
>+ *                  intel_guc_capture_list_size and intel_guc_capture_list_get 'n' times,
>+ *                  where n = 1 for global-reg-list +
>+ *                            num_engine_classes for class-reg-list +
>+ *                            num_engine_classes for instance-reg-list
>+ *                               (since all instances of the same engine-class type
>+ *                                have an identical engine-instance register-list).
>+ *                  ADS module also calls separately for PF vs VF.
>+ *
>+ *     --> alloc B: GuC output capture buf (registered via guc_init_params(log_param))
>+ *                  Size = #define CAPTURE_BUFFER_SIZE (warns if on too-small)
>+ *                  Note2: 'x 3' to hold multiple capture groups
>+ *
>+ * GUC Runtime notify capture:
>+ * --------------------------
>+ *     --> G2H STATE_CAPTURE_NOTIFICATION
>+ *                   L--> intel_guc_capture_process
>+ *                           L--> Loop through B (head..tail) and for each engine instance's
>+ *                                err-state-captured register-list we find, we alloc 'C':
>+ *      --> alloc C: A capture-output-node structure that includes misc capture info along
>+ *                   with 3 register list dumps (global, engine-class and engine-instance)
>+ *                   This node is dynamically allocated and populated with the error-capture
>+ *                   data from GuC and then it's added into guc->capture->priv->outlist linked
>+ *                   list. This list is used for matchup and printout by i915_gpu_coredump
>+ *                   and err_print_gt, (when user invokes the error capture sysfs).
>+ */
>+
>+static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>+{
>+	if (buf->rd == buf->wr)
>+		return 0;
>+	if (buf->wr > buf->rd)
>+		return (buf->wr - buf->rd);

nit: For the above 2 conditions:

if (buf->wr >= buf->rd)
	return (buf->wr - buf->rd);

>+	return (buf->size - buf->rd) + buf->wr;
>+}
>+
>+static int guc_capture_buf_cnt_to_end(struct __guc_capture_bufstate *buf)
>+{
>+	if (buf->rd > buf->wr)
>+		return (buf->size - buf->rd);
>+	return (buf->wr - buf->rd);
>+}
>+
>+static int
>+guc_capture_log_remove_dw(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
>+			  u32 *dw)
>+{
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	int tries = 2;
>+	int avail = 0;
>+	u32 *src_data;
>+
>+	if (!guc_capture_buf_cnt(buf))
>+		return 0;
>+
>+	while (tries--) {
>+		avail = guc_capture_buf_cnt_to_end(buf);
>+		if (avail >= sizeof(u32)) {
>+			src_data = (u32 *)(buf->data + buf->rd);
>+			*dw = *src_data;
>+			buf->rd += 4;
>+			return 4;
>+		}
>+		if (avail)
>+			drm_dbg(&i915->drm, "GuC-Cap-Logs not dword aligned, skipping.\n");
>+		buf->rd = 0;

(1) This looks like an understanding between GuC and KMD that GuC will 
not write partial headers at the end of the log buffer if there is no 
space to fit the header. If you encounter such a scenario, you go back 
to the beginning. Right? If so, please add a comment indicating the same 
here.

>+	}
>+
>+	return 0;
>+}
>+
>+static bool
>+guc_capture_data_extracted(struct __guc_capture_bufstate *b,
>+			   int size, void *dest)
>+{
>+	if (guc_capture_buf_cnt_to_end(b) >= size) {
>+		memcpy(dest, (b->data + b->rd), size);
>+		b->rd += size;
>+		return true;
>+	}
>+	return false;
>+}
>+
>+static int
>+guc_capture_log_get_group_hdr(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
>+			      struct guc_state_capture_group_header_t *ghdr)
>+{
>+	int read = 0;
>+	int fullsize = sizeof(struct guc_state_capture_group_header_t);
>+
>+	if (fullsize > guc_capture_buf_cnt(buf))
>+		return -1;
>+
>+	if (guc_capture_data_extracted(buf, fullsize, (void *)ghdr))
>+		return 0;
>+
>+	read += guc_capture_log_remove_dw(guc, buf, &ghdr->owner);
>+	read += guc_capture_log_remove_dw(guc, buf, &ghdr->info);
>+	if (read != fullsize)
>+		return -1;
>+
>+	return 0;
>+}
>+
>+static int
>+guc_capture_log_get_data_hdr(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
>+			     struct guc_state_capture_header_t *hdr)
>+{
>+	int read = 0;
>+	int fullsize = sizeof(struct guc_state_capture_header_t);
>+
>+	if (fullsize > guc_capture_buf_cnt(buf))
>+		return -1;
>+
>+	if (guc_capture_data_extracted(buf, fullsize, (void *)hdr))
>+		return 0;
>+
>+	read += guc_capture_log_remove_dw(guc, buf, &hdr->owner);
>+	read += guc_capture_log_remove_dw(guc, buf, &hdr->info);
>+	read += guc_capture_log_remove_dw(guc, buf, &hdr->lrca);
>+	read += guc_capture_log_remove_dw(guc, buf, &hdr->guc_id);
>+	read += guc_capture_log_remove_dw(guc, buf, &hdr->num_mmios);
>+	if (read != fullsize)
>+		return -1;
>+
>+	return 0;
>+}
>+
>+static int
>+guc_capture_log_get_register(struct intel_guc *guc, struct __guc_capture_bufstate *buf,
>+			     struct guc_mmio_reg *reg)
>+{
>+	int read = 0;
>+	int fullsize = sizeof(struct guc_mmio_reg);
>+
>+	if (fullsize > guc_capture_buf_cnt(buf))
>+		return -1;
>+
>+	if (guc_capture_data_extracted(buf, fullsize, (void *)reg))
>+		return 0;
>+
>+	read += guc_capture_log_remove_dw(guc, buf, &reg->offset);
>+	read += guc_capture_log_remove_dw(guc, buf, &reg->value);
>+	read += guc_capture_log_remove_dw(guc, buf, &reg->flags);
>+	read += guc_capture_log_remove_dw(guc, buf, &reg->mask);
>+	if (read != fullsize)
>+		return -1;
>+
>+	return 0;
>+}
>+
>+static void
>+guc_capture_delete_one_node(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
>+{
>+	int i;
>+
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		if (node->reginfo[i].regs)
>+			kfree(node->reginfo[i].regs);

(2) Check before kfree is not needed here and other places that you use 
kfree.

Ref: https://www.kernel.org/doc/htmldocs/kernel-api/API-kfree.html

>+	}
>+	list_del(&node->link);
>+	kfree(node);
>+}
>+
>+static void
>+guc_capture_delete_nodes(struct intel_guc *guc)
>+{
>+	/*
>+	 * NOTE: At the end of driver operation, we must assume that we
>+	 * have nodes in outlist from unclaimed error capture events
>+	 * that occurred prior to shutdown.
>+	 */
>+	if (!list_empty(&guc->capture.priv->outlist)) {
>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
>+			guc_capture_delete_one_node(guc, n);
>+	}
>+}
>+
>+static void
>+guc_capture_add_node_to_list(struct __guc_capture_parsed_output *node,
>+			     struct list_head *list)
>+{
>+	list_add_tail(&node->link, list);
>+}
>+
>+static void
>+guc_capture_add_node_to_outlist(struct __guc_state_capture_priv *gc,
>+				struct __guc_capture_parsed_output *node)
>+{
>+	guc_capture_add_node_to_list(node, &gc->outlist);
>+}
>+
>+static void
>+guc_capture_init_node(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
>+{
>+	INIT_LIST_HEAD(&node->link);
>+}
>+
>+static struct __guc_capture_parsed_output *
>+guc_capture_alloc_one_node(struct intel_guc *guc)
>+{
>+	struct __guc_capture_parsed_output *new;
>+
>+	new = kzalloc(sizeof(*new), GFP_KERNEL);
>+	if (!new)
>+		return NULL;
>+
>+	guc_capture_init_node(guc, new);
>+
>+	return new;
>+}
>+
>+static struct __guc_capture_parsed_output *
>+guc_capture_clone_node(struct intel_guc *guc, struct __guc_capture_parsed_output *ori,
>+		       u32 keep_reglist_mask)
>+{
>+	struct __guc_capture_parsed_output *new;
>+	int i;
>+
>+	new = guc_capture_alloc_one_node(guc);
>+	if (!new)
>+		return NULL;
>+	if (!ori)
>+		return new;

For readability, I would s/ori/orignal/ if that's what you mean.

>+
>+	new->is_partial = ori->is_partial;
>+
>+	/* copy reg-lists that we want to clone */
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		if (keep_reglist_mask & BIT(i)) {
>+			new->reginfo[i].regs = kcalloc(ori->reginfo[i].num_regs,
>+						       sizeof(struct guc_mmio_reg), GFP_KERNEL);
>+			if (!new->reginfo[i].regs)
>+				goto bail_clone;
>+
>+			memcpy(new->reginfo[i].regs, ori->reginfo[i].regs,
>+			       ori->reginfo[i].num_regs * sizeof(struct guc_mmio_reg));
>+			new->reginfo[i].num_regs = ori->reginfo[i].num_regs;
>+			new->reginfo[i].vfid  = ori->reginfo[i].vfid;
>+
>+			if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS) {
>+				new->eng_class = ori->eng_class;
>+			} else if (i == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>+				new->eng_inst = ori->eng_inst;
>+				new->guc_id = ori->guc_id;
>+				new->lrca = ori->lrca;
>+			}
>+		}
>+	}
>+
>+	return new;
>+
>+bail_clone:
>+	for (i = 0; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		if (new->reginfo[i].regs)
>+			kfree(new->reginfo[i].regs);
>+	}
>+	kfree(new);
>+	return NULL;
>+}
>+
>+static int
>+guc_capture_extract_reglists(struct intel_guc *guc, struct __guc_capture_bufstate *buf)
>+{
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	struct guc_state_capture_group_header_t ghdr = {0};
>+	struct guc_state_capture_header_t hdr = {0};
>+	struct __guc_capture_parsed_output *node = NULL;
>+	struct guc_mmio_reg *regs = NULL;
>+	int i, numlists, numregs, ret = 0;
>+	enum guc_capture_type datatype;
>+	struct guc_mmio_reg tmp;
>+	bool is_partial = false;
>+
>+	i = guc_capture_buf_cnt(buf);
>+	if (!i)
>+		return -ENODATA;
>+	if (i % sizeof(u32)) {
>+		drm_warn(&i915->drm, "GuC Capture new entries unaligned\n");
>+		ret = -EIO;
>+		goto bailout;
>+	}
>+
>+	/* first get the capture group header */
>+	if (guc_capture_log_get_group_hdr(guc, buf, &ghdr)) {
>+		ret = -EIO;
>+		goto bailout;
>+	}
>+	/*
>+	 * we would typically expect a layout as below where n would be expected to be
>+	 * anywhere between 3 to n where n > 3 if we are seeing multiple dependent engine
>+	 * instances being reset together.
>+	 * ____________________________________________
>+	 * | Capture Group                            |
>+	 * | ________________________________________ |
>+	 * | | Capture Group Header:                | |
>+	 * | |  - num_captures = 5                  | |
>+	 * | |______________________________________| |
>+	 * | ________________________________________ |
>+	 * | | Capture1:                            | |
>+	 * | |  Hdr: GLOBAL, numregs=a              | |
>+	 * | | ____________________________________ | |
>+	 * | | | Reglist                          | | |
>+	 * | | | - reg1, reg2, ... rega           | | |
>+	 * | | |__________________________________| | |
>+	 * | |______________________________________| |
>+	 * | ________________________________________ |
>+	 * | | Capture2:                            | |
>+	 * | |  Hdr: CLASS=RENDER/COMPUTE, numregs=b| |
>+	 * | | ____________________________________ | |
>+	 * | | | Reglist                          | | |
>+	 * | | | - reg1, reg2, ... regb           | | |
>+	 * | | |__________________________________| | |
>+	 * | |______________________________________| |
>+	 * | ________________________________________ |
>+	 * | | Capture3:                            | |
>+	 * | |  Hdr: INSTANCE=RCS, numregs=c        | |
>+	 * | | ____________________________________ | |
>+	 * | | | Reglist                          | | |
>+	 * | | | - reg1, reg2, ... regc           | | |
>+	 * | | |__________________________________| | |
>+	 * | |______________________________________| |
>+	 * | ________________________________________ |
>+	 * | | Capture4:                            | |
>+	 * | |  Hdr: CLASS=RENDER/COMPUTE, numregs=d| |
>+	 * | | ____________________________________ | |
>+	 * | | | Reglist                          | | |
>+	 * | | | - reg1, reg2, ... regd           | | |
>+	 * | | |__________________________________| | |
>+	 * | |______________________________________| |
>+	 * | ________________________________________ |
>+	 * | | Capture5:                            | |
>+	 * | |  Hdr: INSTANCE=CCS0, numregs=e       | |
>+	 * | | ____________________________________ | |
>+	 * | | | Reglist                          | | |
>+	 * | | | - reg1, reg2, ... rege           | | |
>+	 * | | |__________________________________| | |
>+	 * | |______________________________________| |
>+	 * |__________________________________________|
>+	 */
>+	is_partial = FIELD_GET(CAP_GRP_HDR_CAPTURE_TYPE, ghdr.info);
>+	numlists = FIELD_GET(CAP_GRP_HDR_NUM_CAPTURES, ghdr.info);
>+
>+	while (numlists--) {
>+		if (guc_capture_log_get_data_hdr(guc, buf, &hdr)) {
>+			ret = -EIO;
>+			break;
>+		}
>+
>+		datatype = FIELD_GET(CAP_HDR_CAPTURE_TYPE, hdr.info);
>+		if (datatype > GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE) {
>+			/* unknown capture type - skip over to next capture set */
>+			numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>+			while (numregs--) {
>+				if (guc_capture_log_get_register(guc, buf, &tmp)) {
>+					ret = -EIO;
>+					break;
>+				}
>+			}
>+			continue;
>+		} else if (node) {
>+			/*
>+			 * Based on the current capture type and what we have so far,
>+			 * decide if we should add the current node into the internal
>+			 * linked list for match-up when i915_gpu_coredump calls later
>+			 * (and alloc a blank node for the next set of reglists)
>+			 * or continue with the same node or clone the current node
>+			 * but only retain the global or class registers (such as the
>+			 * case of dependent engine resets).
>+			 */
>+			if (datatype == GUC_CAPTURE_LIST_TYPE_GLOBAL) {
>+				guc_capture_add_node_to_outlist(guc->capture.priv, node);
>+				node = NULL;
>+			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
>+				/* Add to list, clone node and duplicate global list */
>+				guc_capture_add_node_to_outlist(guc->capture.priv, node);
>+				node = guc_capture_clone_node(guc, node,
>+							      GCAP_PARSED_REGLIST_INDEX_GLOBAL);
>+			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
>+				/* Add to list, clone node and duplicate global + class lists */
>+				guc_capture_add_node_to_outlist(guc->capture.priv, node);
>+				node = guc_capture_clone_node(guc, node,
>+							      (GCAP_PARSED_REGLIST_INDEX_GLOBAL |
>+							      GCAP_PARSED_REGLIST_INDEX_ENGCLASS));
>+			}
>+		}
>+
>+		if (!node) {
>+			node = guc_capture_alloc_one_node(guc);
>+			if (!node) {
>+				ret = -ENOMEM;
>+				break;
>+			}
>+			if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL)
>+				drm_dbg(&i915->drm, "GuC Capture missing global dump: %08x!\n",
>+					datatype);
>+		}
>+		node->is_partial = is_partial;
>+		node->reginfo[datatype].vfid = FIELD_GET(CAP_HDR_CAPTURE_VFID, hdr.owner);
>+		switch (datatype) {
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>+			node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, hdr.info);
>+			node->eng_inst = FIELD_GET(CAP_HDR_ENGINE_INSTANCE, hdr.info);
>+			node->lrca = hdr.lrca;
>+			node->guc_id = hdr.guc_id;
>+			break;
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>+			node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, hdr.info);
>+			break;
>+		default:
>+			break;
>+		}
>+
>+		regs = NULL;
>+		numregs = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>+		if (numregs) {
>+			regs = kcalloc(numregs, sizeof(struct guc_mmio_reg), GFP_KERNEL);
>+			if (!regs) {
>+				ret = -ENOMEM;
>+				break;
>+			}
>+		}
>+		node->reginfo[datatype].num_regs = numregs;
>+		node->reginfo[datatype].regs = regs;
>+		i = 0;
>+		while (numregs--) {
>+			if (guc_capture_log_get_register(guc, buf, &regs[i++])) {
>+				ret = -EIO;
>+				break;
>+			}
>+		}
>+	}
>+
>+bailout:
>+	if (node) {
>+		/* If we have data, add to linked list for match-up when i915_gpu_coredump calls */
>+		for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+			if (node->reginfo[i].regs) {
>+				guc_capture_add_node_to_outlist(guc->capture.priv, node);
>+				node = NULL;
>+				break;
>+			}
>+		}
>+		if (node) /* else free it */
>+			kfree(node);
>+	}
>+	return ret;
>+}
>+
>+static int __guc_capture_flushlog_complete(struct intel_guc *guc)
>+{
>+	u32 action[] = {
>+		INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE,
>+		2
>+	};
>+
>+	return intel_guc_send(guc, action, ARRAY_SIZE(action));
>+}
>+
>+static void __guc_capture_process_output(struct intel_guc *guc)
>+{
>+	unsigned int buffer_size, read_offset, write_offset, full_count;
>+	struct intel_uc *uc = container_of(guc, typeof(*uc), guc);
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	struct guc_log_buffer_state log_buf_state_local;
>+	struct guc_log_buffer_state *log_buf_state;
>+	struct __guc_capture_bufstate buf;
>+	void *src_data = NULL;
>+	bool new_overflow;
>+	int ret;
>+
>+	log_buf_state = guc->log.buf_addr +
>+			(sizeof(struct guc_log_buffer_state) * GUC_CAPTURE_LOG_BUFFER);
>+	src_data = guc->log.buf_addr + intel_guc_get_log_buffer_offset(GUC_CAPTURE_LOG_BUFFER);
>+
>+	/*
>+	 * Make a copy of the state structure, inside GuC log buffer
>+	 * (which is uncached mapped), on the stack to avoid reading
>+	 * from it multiple times.
>+	 */
>+	memcpy(&log_buf_state_local, log_buf_state, sizeof(struct guc_log_buffer_state));
>+	buffer_size = intel_guc_get_log_buffer_size(GUC_CAPTURE_LOG_BUFFER);
>+	read_offset = log_buf_state_local.read_ptr;
>+	write_offset = log_buf_state_local.sampled_write_ptr;
>+	full_count = log_buf_state_local.buffer_full_cnt;
>+
>+	/* Bookkeeping stuff */
>+	guc->log.stats[GUC_CAPTURE_LOG_BUFFER].flush += log_buf_state_local.flush_to_file;
>+	new_overflow = intel_guc_check_log_buf_overflow(&guc->log, GUC_CAPTURE_LOG_BUFFER,
>+							full_count);
>+
>+	/* Now copy the actual logs. */
>+	if (unlikely(new_overflow)) {
>+		/* copy the whole buffer in case of overflow */
>+		read_offset = 0;
>+		write_offset = buffer_size;
>+	} else if (unlikely((read_offset > buffer_size) ||
>+			(write_offset > buffer_size))) {
>+		drm_err(&i915->drm, "invalid GuC log capture buffer state!\n");
>+		/* copy whole buffer as offsets are unreliable */
>+		read_offset = 0;
>+		write_offset = buffer_size;
>+	}
>+
>+	buf.size = buffer_size;
>+	buf.rd = read_offset;
>+	buf.wr = write_offset;
>+	buf.data = src_data;
>+
>+	if (!uc->reset_in_progress) {
>+		do {
>+			ret = guc_capture_extract_reglists(guc, &buf);
>+		} while (ret >= 0);
>+	}
>+
>+	/* Update the state of log buffer err-cap state */
>+	log_buf_state->read_ptr = write_offset;
>+	log_buf_state->flush_to_file = 0;
>+	__guc_capture_flushlog_complete(guc);
>+}
>+
>+void intel_guc_capture_process(struct intel_guc *guc)
>+{
>+	if (guc->capture.priv)
>+		__guc_capture_process_output(guc);
>+}
>+
> static void
> guc_capture_free_ads_cache(struct __guc_state_capture_priv *gc)
> {
>@@ -715,6 +1255,8 @@ void intel_guc_capture_destroy(struct intel_guc *guc)
>
> 	guc_capture_free_ads_cache(guc->capture.priv);
>
>+	guc_capture_delete_nodes(guc);
>+
> 	if (guc->capture.priv->extlists) {
> 		guc_capture_free_extlists(guc->capture.priv->extlists);
> 		kfree(guc->capture.priv->extlists);
>@@ -732,5 +1274,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
>
> 	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
>
>+	INIT_LIST_HEAD(&guc->capture.priv->outlist);
>+
> 	return 0;
> }
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>index 24a11f33f7d9..3c79460c7ca5 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>@@ -12,6 +12,7 @@ struct file;
> struct guc_gt_system_info;
> struct intel_guc;
>
>+void intel_guc_capture_process(struct intel_guc *guc);
> int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
> int intel_guc_capture_getlist(struct intel_guc *guc, u32 owner, u32 type, u32 classid,
> 			      struct file **fileptr);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>index e9a865c2f4cb..8d59a11ec595 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>@@ -158,9 +158,9 @@ static void *guc_get_write_buffer(struct intel_guc_log *log)
> 	return relay_reserve(log->relay.channel, 0);
> }
>
>-static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
>-				       enum guc_log_buffer_type type,
>-				       unsigned int full_cnt)
>+bool intel_guc_check_log_buf_overflow(struct intel_guc_log *log,
>+				      enum guc_log_buffer_type type,
>+				      unsigned int full_cnt)
> {
> 	unsigned int prev_full_cnt = log->stats[type].sampled_overflow;
> 	bool overflow = false;
>@@ -183,7 +183,7 @@ static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
> 	return overflow;
> }
>
>-static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
>+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type)
> {
> 	switch (type) {
> 	case GUC_DEBUG_LOG_BUFFER:
>@@ -199,6 +199,20 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
> 	return 0;
> }
>
>+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type)
>+{
>+	enum guc_log_buffer_type i;
>+	size_t offset = PAGE_SIZE;/* for the log_buffer_states */
>+
>+	for (i = GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; ++i) {
>+		if (i == type)
>+			break;
>+		offset += intel_guc_get_log_buffer_size(i);
>+	}
>+
>+	return offset;
>+}
>+
> static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
> {
> 	unsigned int buffer_size, read_offset, write_offset, bytes_to_copy, full_cnt;
>@@ -243,14 +257,14 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
> 		 */
> 		memcpy(&log_buf_state_local, log_buf_state,
> 		       sizeof(struct guc_log_buffer_state));
>-		buffer_size = guc_get_log_buffer_size(type);
>+		buffer_size = intel_guc_get_log_buffer_size(type);
> 		read_offset = log_buf_state_local.read_ptr;
> 		write_offset = log_buf_state_local.sampled_write_ptr;
> 		full_cnt = log_buf_state_local.buffer_full_cnt;
>
> 		/* Bookkeeping stuff */
> 		log->stats[type].flush += log_buf_state_local.flush_to_file;
>-		new_overflow = guc_check_log_buf_overflow(log, type, full_cnt);
>+		new_overflow = intel_guc_check_log_buf_overflow(log, type, full_cnt);
>
> 		/* Update the state of shared log buffer */
> 		log_buf_state->read_ptr = write_offset;
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>index e1345fca7729..18007e639be9 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>@@ -67,6 +67,10 @@ struct intel_guc_log {
> };
>
> void intel_guc_log_init_early(struct intel_guc_log *log);
>+bool intel_guc_check_log_buf_overflow(struct intel_guc_log *log, enum guc_log_buffer_type type,
>+				      unsigned int full_cnt);
>+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type);
>+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
> int intel_guc_log_create(struct intel_guc_log *log);
> void intel_guc_log_destroy(struct intel_guc_log *log);
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index ab3cea352fb3..870b48456e9c 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -25,6 +25,7 @@
> #include "gt/intel_ring.h"
>
> #include "intel_guc_ads.h"
>+#include "intel_guc_capture.h"
> #include "intel_guc_submission.h"
>
> #include "i915_drv.h"
>@@ -4070,17 +4071,18 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
> int intel_guc_error_capture_process_msg(struct intel_guc *guc,
> 					const u32 *msg, u32 len)
> {
>-	int status;
>+	u32 status;
>
> 	if (unlikely(len != 1)) {
> 		drm_dbg(&guc_to_gt(guc)->i915->drm, "Invalid length %u", len);
> 		return -EPROTO;
> 	}
>
>-	status = msg[0];
>-	drm_info(&guc_to_gt(guc)->i915->drm, "Got error capture: status = %d", status);
>+	status = msg[0] & INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK;
>+	if (status == INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE)
>+		drm_warn(&guc_to_gt(guc)->i915->drm, "G2H-Error capture no space");
>
>-	/* FIXME: Do something with the capture */
>+	intel_guc_capture_process(guc);
>
> 	return 0;
> }

With (1) and (2) taken care of, this is:

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Regards,
Umesh

>-- 
>2.25.1
>
