Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3972F4B1B56
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 02:36:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77C4610E994;
	Fri, 11 Feb 2022 01:36:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D14B10E1F5
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 01:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644543398; x=1676079398;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BjQSMQQink+trZyTfFNsqOKgwMv2NzLsmazpPmSbylE=;
 b=c8ACU0BdES7mQlgy50cjyuBxY9kaZQ3J+kdQpSMBQyPtov9LoaFp9uuQ
 QcdEUSh6DpugPfquqDBKUY2nVMRfdRNcoXtWy0lBvsi6u1N8qbzwfy1HS
 SJnPU4Sepa+1a+IwxA6rEUJclTQj4vpeK/zJQSf8tgitNAtU12Cv5us2M
 k2GRnhcX6PH7u2mg5sr1GOemwvewtQ/KwbUk82sGTnXOuLwBZjFitFS9M
 P/VpYa1rHB9u7Cvt/OoWS4Vi+SQHQltkJdcXGt9ne+aQ1R9SHBO8X5JDR
 GLYEe/GxWd2t6RUO0TsV7Qt9Z8XZskoEEzvENWQwK7ciO5A09uPagBI+u Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="248467167"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="248467167"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 17:36:37 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="586178649"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154)
 ([10.165.21.154])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 17:36:37 -0800
Date: Thu, 10 Feb 2022 17:36:29 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Alan Previn <alan.previn.teres.alexis@intel.com>
Message-ID: <20220211013629.GA34157@unerlige-ril-10.165.21.154>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-8-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220126104822.3653079-8-alan.previn.teres.alexis@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915/guc: Extract GuC error
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

On Wed, Jan 26, 2022 at 02:48:19AM -0800, Alan Previn wrote:
>- Upon the G2H Notify-Err-Capture event, parse through the
>  GuC Log Buffer (error-capture-region) and dynamically allocate
>  capture-nodes, A single node represents a single "engine-
>  instance-capture-dump" and contains at least 3 register lists:
>  global, engine-class and engine-instance. An internal link
>  list is maintained to store one or more nodes.
>- The G2G error-capture notification event happens before the
>  corresponding G2H context-reset that triggers the
>  i915_gpu_coredump (where we want to avoid memory allocation
>  moving forward).
>- Because the link-list node allocations happen before the call
>  to i915_gpu_codedump, duplicate global and engine-class register
>  lists for each engine-instance register dump if we find
>  dependent-engine resets in a engine-capture-group.
>- Later when i915_gpu_coredump calls into capture_engine, (in
>  the subsequent patch) we dettach the matching node (guc-id,
>  LRCA, etc) from the link list above and attach it to
>  i915_gpu_coredump's intel_engine_coredump structure when have
>  matching LRCA/guc-id/engine-instance.
>- Finally, when we reset GuC submission lets also parse
>  all outstanding capture data here too.
>
>Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
>---
> .../gpu/drm/i915/gt/uc/abi/guc_actions_abi.h  |   7 +
> drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h |  52 +-
> .../gpu/drm/i915/gt/uc/intel_guc_capture.c    | 517 +++++++++++++++++-
> .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   1 +
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    |  26 +-
> drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |   4 +
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  14 +-
> 7 files changed, 608 insertions(+), 13 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>index 7afdadc7656f..82a69f54cddb 100644
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
>+#define INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_MASK      0x1

MASK is not needed. See below

>+
> #endif /* _ABI_GUC_ACTIONS_ABI_H */
>diff --git a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>index 495cdb0228c6..14c497f12621 100644
>--- a/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>+++ b/drivers/gpu/drm/i915/gt/uc/guc_capture_fwif.h
>@@ -29,7 +29,8 @@ struct __guc_mmio_reg_descr_group {
> };
>
> struct guc_state_capture_header_t {
>-	u32 reserved1;
>+	u32 owner;
>+		#define CAP_HDR_CAPTURE_VFID GENMASK(7, 0)

I would start #define at first column (no indents) like other code in 
the driver/kernel. Likewise at other places.

> 	u32 info;
> 		#define CAP_HDR_CAPTURE_TYPE GENMASK(3, 0) /* see enum guc_capture_type */
> 		#define CAP_HDR_ENGINE_CLASS GENMASK(7, 4) /* see GUC_MAX_ENGINE_CLASSES */
>@@ -52,7 +53,8 @@ enum guc_capture_group_types {
> };
>
> struct guc_state_capture_group_header_t {
>-	u32 reserved1;
>+	u32 owner;
>+		#define CAP_GRP_HDR_CAPTURE_VFID GENMASK(7, 0)
> 	u32 info;
> 		#define CAP_GRP_HDR_NUM_CAPTURES GENMASK(7, 0)
> 		#define CAP_GRP_HDR_CAPTURE_TYPE GENMASK(15, 8) /* guc_capture_group_types */
>@@ -63,11 +65,57 @@ struct guc_state_capture_group_t {
> 	struct guc_state_capture_t capture_entries[0];
> } __packed;
>
>+struct __guc_capture_parsed_output {
>+	/*
>+	 * a single set of 3 capture lists: a global-list
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
>+		u32 num;

s/num/num_regs/ ?

>+		struct guc_mmio_reg *regs;
>+	} reginfo[GUC_CAPTURE_LIST_TYPE_MAX];
>+	#define GCAP_PARSED_REGLIST_INDEX_GLOBAL   BIT(GUC_CAPTURE_LIST_TYPE_GLOBAL)
>+	#define GCAP_PARSED_REGLIST_INDEX_ENGCLASS BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS)
>+	#define GCAP_PARSED_REGLIST_INDEX_ENGINST  BIT(GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE)
>+};
>+
>+#define MAX_NODE_LINKLIST_THRESHOLD     24
>+	/* The maximum number of allocated __guc_capture_parsed_output nodes
>+	 * that we shall keep in outlist. If we receive an error-capture
>+	 * notification and need to allocate another node but have hit this
>+	 * threshold, we shall free the oldest entry and add a new one (FIFO).
>+	 */

needs kernel comment style for multi-line comment (blank line to start 
with).

>+
>+struct __guc_capture_bufstate {
>+	unsigned int size;
>+	void *data;
>+	unsigned int rd;
>+	unsigned int wr;

s/unsigned int/u32/

>+};
>+
> struct __guc_state_capture_priv {
> 	struct __guc_mmio_reg_descr_group *reglists;
> 	u16 num_instance_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
> 	u16 num_class_regs[GUC_CAPTURE_LIST_INDEX_MAX][GUC_MAX_ENGINE_CLASSES];
> 	u16 num_global_regs[GUC_CAPTURE_LIST_INDEX_MAX];
>+	/* An interim linked list of parsed GuC error-capture-output before
>+	 * reporting with formatting. Each node in this linked list shall
>+	 * contain a single engine-capture including global, engine-class and
>+	 * engine-instance register dumps as per guc_capture_parsed_output_node
>+	 */

kernel comment style ^ same as above

>+	struct list_head outlist;
>+	int listcount; /* see MAX_NODE_LINKLIST_THRESHOLD */
> };
>
> #endif /* _INTEL_GUC_CAPTURE_FWIF_H */
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>index e7f99d051636..0b6d743712a6 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
>@@ -12,6 +12,8 @@
> #include "guc_capture_fwif.h"
> #include "intel_guc_fwif.h"
> #include "i915_drv.h"
>+#include "i915_gpu_error.h"
>+#include "i915_irq.h"
> #include "i915_memcpy.h"
>
> /*
>@@ -660,6 +662,9 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
> 	int worst_min_size = 0, num_regs = 0;
> 	u16 tmp = 0;
>
>+	if (!guc->capture.priv)
>+		return -ENODEV;
>+
> 	/*
> 	 * If every single engine-instance suffered a failure in quick succession but
> 	 * were all unrelated, then a burst of multiple error-capture events would dump
>@@ -698,8 +703,518 @@ int intel_guc_capture_output_min_size_est(struct intel_guc *guc)
> 	return (worst_min_size * GUC_CAPTURE_OVERBUFFER_MULTIPLIER);
> }
>
>+/*
>+ * KMD Init time flows:
>+ * --------------------
>+ *     --> alloc A: GuC input capture regs lists (registered via ADS)
>+ *                  List acquired via intel_guc_capture_list_count + intel_guc_capture_list_init
>+ *                  Size = global-reg-list + (class-reg-list) + (num-instances x instance-reg-list)
>+ *                  Device tables carry: 1x global, 1x per-class, 1x per-instance)
>+ *                  Caller needs to call per-class and per-instance multiplie times
>+ *
>+ *     --> alloc B: GuC output capture buf (registered via guc_init_params(log_param))
>+ *                  Size = #define CAPTURE_BUFFER_SIZE (warns if on too-small)
>+ *                  Note2: 'x 3' to hold multiple capture groups
>+ *
>+ *
>+ * GUC Runtime notify capture:
>+ * --------------------------
>+ *     --> G2H STATE_CAPTURE_NOTIFICATION
>+ *                   L--> intel_guc_capture_store_snapshot
>+ *                           L--> Loop through B (head..tail) and for each engine instance
>+ *                                register we find:
>+ *      --> alloc C: A capture-output-node structure that includes misc capture info along
>+ *                   with 3 register list dumps (global, engine-class and engine-
>+ *                   instance). This node id added to a linked list stored in
>+ *                   guc->capture->priv for matchup and printout when triggered by
>+ *                   i915_gpu_coredump and err_print_gt (via error capture sysfs) later.
>+ */
>+
>+static int guc_capture_buf_cnt(struct __guc_capture_bufstate *buf)
>+{
>+	if (buf->rd == buf->wr)
>+		return 0;
>+	if (buf->wr > buf->rd)
>+		return (buf->wr - buf->rd);
>+	return (buf->size - buf->rd) + buf->wr;
>+}

Is this a circular buffer shared between GuC and kmd? Since the size is 
a power of 2, the above function is simply:

static u32 guc_capture_buf_count(struct __guc_capture_bufstate *buf)
{
	return (buf->wr - buf->rd) & (buf->size - 1);
}

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

Shouldn't this be avail = guc_capture_buf_cnt(buf)?

>+		if (avail >= sizeof(u32)) {
>+			src_data = (u32 *)(buf->data + buf->rd);
>+			*dw = *src_data;
>+			buf->rd += 4;
>+			return 4;
>+		}
>+		if (avail)
>+			drm_warn(&i915->drm, "GuC-Cap-Logs not dword aligned, skipping.\n");

this can be a debug message rather than a warn.

>+		buf->rd = 0;
>+	}
>+
>+	return 0;
>+}
>+
>+static bool
>+guc_capture_data_extracted(struct __guc_capture_bufstate *b,
>+			   int s, void *p)

s/s/size/
s/p/dest/

>+{
>+	if (guc_capture_buf_cnt_to_end(b) >= s) {
>+		memcpy(p, (b->data + b->rd), s);
>+		b->rd += s;
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
>+guc_capture_del_all_nodes(struct intel_guc *guc)
>+{
>+	int i;
>+
>+	if (!list_empty(&guc->capture.priv->outlist)) {
>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link) {
>+			for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+				if (n->reginfo[i].regs)
>+					kfree(n->reginfo[i].regs);
>+			}
>+			list_del(&n->link);
>+			kfree(n);
>+		}
>+	}
>+	guc->capture.priv->listcount = 0;
>+}
>+
>+static void
>+guc_capture_del_node(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
>+{
>+	int i;
>+	struct __guc_capture_parsed_output *found = NULL;
>+
>+	if (!list_empty(&guc->capture.priv->outlist)) {
>+		struct __guc_capture_parsed_output *n, *ntmp;
>+
>+		if (node) {
>+			found = node;
>+		} else {
>+			/* traverse down and get the oldest entry */
>+			list_for_each_entry_safe(n, ntmp, &guc->capture.priv->outlist, link)
>+				found = n;
>+		}
>+		if (found) {
>+			for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+				if (found->reginfo[i].regs)
>+					kfree(found->reginfo[i].regs);
>+			}
>+			list_del(&found->link);
>+			kfree(found);
>+			--guc->capture.priv->listcount;
>+		}
>+	}
>+}
>+
>+static void
>+guc_capture_add_node_to_list(struct intel_guc *guc, struct __guc_capture_parsed_output *node)
>+{
>+	GEM_BUG_ON(guc->capture.priv->listcount > MAX_NODE_LINKLIST_THRESHOLD);
>+
>+	if (guc->capture.priv->listcount == MAX_NODE_LINKLIST_THRESHOLD) {
>+		/* discard oldest node */
>+		guc_capture_del_node(guc, NULL);
>+	}
>+
>+	++guc->capture.priv->listcount;
>+	list_add_tail(&node->link, &guc->capture.priv->outlist);
>+}
>+
>+static struct __guc_capture_parsed_output *
>+guc_capture_create_node(struct intel_guc *guc, struct __guc_capture_parsed_output *ori,
>+			u32 keep_reglist_mask)
>+{
>+	struct __guc_capture_parsed_output *new;
>+	int i;
>+
>+	new = kzalloc(sizeof(*new), GFP_KERNEL);
>+	if (!new)
>+		return NULL;
>+	INIT_LIST_HEAD(&new->link);
>+	if (!ori)
>+		return new;
>+	memcpy(new, ori, sizeof(*new));
>+
>+	/* reallocate individual reg-list pointers */
>+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		new->reginfo[i].regs = NULL;
>+		new->reginfo[i].num = 0;
>+	}
>+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
>+		if (keep_reglist_mask & BIT(i)) {
>+			new->reginfo[i].regs = kcalloc(ori->reginfo[i].num,
>+						       sizeof(struct guc_mmio_reg), GFP_KERNEL);
>+			if (!new->reginfo[i].regs)
>+				goto bail_clone;
>+			memcpy(new->reginfo[i].regs, ori->reginfo[i].regs, ori->reginfo[i].num *
>+			       sizeof(struct guc_mmio_reg));
>+			new->reginfo[i].num = ori->reginfo[i].num;
>+		}
>+	}
>+
>+	return new;
>+
>+bail_clone:
>+	for (i = GUC_CAPTURE_LIST_TYPE_GLOBAL; i < GUC_CAPTURE_LIST_TYPE_MAX; ++i) {
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
>+	int i, numlists, numreg, ret = 0;
>+	bool is_partial = false;
>+	enum guc_capture_type datatype;
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
>+	if (is_partial)
>+		drm_warn(&i915->drm, "GuC Capture group is partial\n");

I don't see a whole lot of value in warning of a partial capture group 
here. If you could print this information during log dump or if this is 
shared with the user in any way, that should be enough.

>+	numlists = FIELD_GET(CAP_GRP_HDR_NUM_CAPTURES, ghdr.info);
>+	while (numlists--) {
>+
>+		numreg = 0;
>+		regs = NULL;

The above 2 initializations are not needed as both are being initialized 
below.

>+		if (guc_capture_log_get_data_hdr(guc, buf, &hdr)) {
>+			ret = -EIO;
>+			break;
>+		}
>+
>+		datatype = FIELD_GET(CAP_HDR_CAPTURE_TYPE, hdr.info);
>+		if (node) {
>+			/* Based on the current capture type and what we have so far,
>+			 * decide if we should add the current node into the internal
>+			 * linked list for match-up when i915_gpu_coredump calls later
>+			 * (and alloc a blank node for the next set of reglists)
>+			 * or continue with the same node or clone the current node
>+			 * but only retain the global or class registers (such as the
>+			 * case of dependent engine resets).
>+			 */
>+			if (datatype == GUC_CAPTURE_LIST_TYPE_GLOBAL) {
>+				guc_capture_add_node_to_list(guc, node);
>+				node = NULL;
>+			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS &&
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS].regs) {
>+				/* Add to list, clone node and duplicate global list */
>+				guc_capture_add_node_to_list(guc, node);
>+				node = guc_capture_create_node(guc, node,
>+							       GCAP_PARSED_REGLIST_INDEX_GLOBAL);
>+			} else if (datatype == GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE &&
>+				   node->reginfo[GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE].regs) {
>+				/* Add to list, clone node and duplicate global + class lists */
>+				guc_capture_add_node_to_list(guc, node);
>+				node = guc_capture_create_node(guc, node,
>+							       (GCAP_PARSED_REGLIST_INDEX_GLOBAL |
>+							       GCAP_PARSED_REGLIST_INDEX_ENGCLASS));
>+			}
>+		}
>+
>+		if (!node) {
>+			node = guc_capture_create_node(guc, NULL, 0);
>+			if (!node) {
>+				ret = -ENOMEM;
>+				break;
>+			}
>+			if (datatype != GUC_CAPTURE_LIST_TYPE_GLOBAL)
>+				drm_dbg(&i915->drm, "GuC Capture missing global dump: %08x!\n",
>+					datatype);
>+		}
>+		node->is_partial = is_partial;
>+		switch (datatype) {
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_INSTANCE:
>+			node->eng_inst = FIELD_GET(CAP_HDR_ENGINE_INSTANCE, hdr.info);
>+			node->lrca = hdr.lrca;
>+			node->guc_id = hdr.guc_id;
>+			node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, hdr.info);
>+			break;
>+		case GUC_CAPTURE_LIST_TYPE_ENGINE_CLASS:
>+			node->eng_class = FIELD_GET(CAP_HDR_ENGINE_CLASS, hdr.info);
>+			break;
>+		default:
>+			break;
>+		}
>+		regs = NULL;
>+		numreg = FIELD_GET(CAP_HDR_NUM_MMIOS, hdr.num_mmios);
>+		if (numreg) {
>+			regs = kcalloc(numreg, sizeof(*regs), GFP_KERNEL);
>+			if (!regs) {
>+				ret = -ENOMEM;
>+				break;
>+			}
>+		}
>+		node->reginfo[datatype].num = numreg;
>+		node->reginfo[datatype].regs = regs;
>+		node->reginfo[datatype].vfid = FIELD_GET(CAP_HDR_CAPTURE_VFID, hdr.info);
>+		i = 0;
>+		while (numreg--) {
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
>+				guc_capture_add_node_to_list(guc, node);
>+				node = NULL;
>+				break;
>+			}
>+		}
>+		if (node)
>+			kfree(node);
>+	}
>+	return ret;
>+}
>+
>+static void __guc_capture_store_snapshot_work(struct intel_guc *guc)
>+{
>+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
>+	unsigned int buffer_size, read_offset, write_offset, full_count;
>+	struct guc_log_buffer_state *log_buf_state;
>+	struct guc_log_buffer_state log_buf_state_local;
>+	void *src_data = NULL;
>+	bool new_overflow;
>+	struct __guc_capture_bufstate buf;
>+	int ret;
>+
>+	/* Lock to get the pointer to GuC capture-log-buffer-state */
>+	mutex_lock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
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
>+	guc->log_state[GUC_CAPTURE_LOG_BUFFER].flush += log_buf_state_local.flush_to_file;
>+	new_overflow = intel_guc_check_log_buf_overflow(guc,
>+							&guc->log_state[GUC_CAPTURE_LOG_BUFFER],
>+							full_count);

I am not sure how the overflow logic works here and whether it is 
applicable to the error capture buffer. Is the guc log buffer one big 
buffer where the error capture is just a portion of that buffer? If so, 
is the wrap around applicable to just the errorcapture buffer or to the 
whole buffer?

Also what is the wrap_offset field in struct guc_log_buffer_state?

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
>+	/*  */
>+	do {
>+		ret = guc_capture_extract_reglists(guc, &buf);
>+	} while (ret >= 0);
>+
>+	/* Update the state of shared log buffer */
>+	log_buf_state->read_ptr = write_offset;
>+	log_buf_state->flush_to_file = 0;
>+
>+	mutex_unlock(&guc->log_state[GUC_CAPTURE_LOG_BUFFER].lock);
>+}
>+
>+void intel_guc_capture_store_snapshot(struct intel_guc *guc)
>+{
>+	if (guc->capture.priv)
>+		__guc_capture_store_snapshot_work(guc);
>+}
>+
> void intel_guc_capture_destroy(struct intel_guc *guc)
> {
>+	if (!guc->capture.priv)
>+		return;
>+
>+	guc_capture_del_all_nodes(guc);
> 	guc_capture_clear_ext_regs(guc->capture.priv->reglists);
> 	kfree(guc->capture.priv);
> 	guc->capture.priv = NULL;
>@@ -710,7 +1225,7 @@ int intel_guc_capture_init(struct intel_guc *guc)
> 	guc->capture.priv = kzalloc(sizeof(*guc->capture.priv), GFP_KERNEL);
> 	if (!guc->capture.priv)
> 		return -ENOMEM;
>+	INIT_LIST_HEAD(&guc->capture.priv->outlist);
> 	guc->capture.priv->reglists = guc_capture_get_device_reglist(guc);
>-
> 	return 0;
> }
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>index 4d3e5221128c..c240a4cc046b 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.h
>@@ -14,6 +14,7 @@ struct guc_gt_system_info;
>
> int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u32 blob_ggtt,
> 				 u32 capture_offset, struct guc_gt_system_info *sysinfo);
>+void intel_guc_capture_store_snapshot(struct intel_guc *guc);
> int intel_guc_capture_output_min_size_est(struct intel_guc *guc);
> void intel_guc_capture_destroy(struct intel_guc *guc);
> int intel_guc_capture_init(struct intel_guc *guc);
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>index d6b1a3c0fb15..194b17e8c2ae 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>@@ -157,9 +157,9 @@ static void *guc_get_write_buffer(struct intel_guc_log *log)
> 	return relay_reserve(log->relay.channel, 0);
> }
>
>-static bool guc_check_log_buf_overflow(struct intel_guc *guc,
>-				       struct intel_guc_log_stats *log_state,
>-				       unsigned int full_cnt)
>+bool intel_guc_check_log_buf_overflow(struct intel_guc *guc,
>+				      struct intel_guc_log_stats *log_state,
>+				      unsigned int full_cnt)
> {
> 	unsigned int prev_full_cnt = log_state->sampled_overflow;
> 	bool overflow = false;
>@@ -182,7 +182,7 @@ static bool guc_check_log_buf_overflow(struct intel_guc *guc,
> 	return overflow;
> }
>
>-static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
>+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type)
> {
> 	switch (type) {
> 	case GUC_DEBUG_LOG_BUFFER:
>@@ -198,6 +198,20 @@ static unsigned int guc_get_log_buffer_size(enum guc_log_buffer_type type)
> 	return 0;
> }
>
>+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type)
>+{
>+	enum guc_log_buffer_type i;
>+	size_t offset = PAGE_SIZE;/* for the log_buffer_states */
>+
>+	for (i = GUC_DEBUG_LOG_BUFFER; i < GUC_MAX_LOG_BUFFER; i++) {
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
> 	struct intel_guc *guc = log_to_guc(log);
>@@ -247,14 +261,14 @@ static void _guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
> 		mutex_lock(&logstate->lock);
> 		memcpy(&log_buf_state_local, log_buf_state,
> 		       sizeof(struct guc_log_buffer_state));
>-		buffer_size = guc_get_log_buffer_size(type);
>+		buffer_size = intel_guc_get_log_buffer_size(type);
> 		read_offset = log_buf_state_local.read_ptr;
> 		write_offset = log_buf_state_local.sampled_write_ptr;
> 		full_cnt = log_buf_state_local.buffer_full_cnt;
>
> 		/* Bookkeeping stuff */
> 		logstate->flush += log_buf_state_local.flush_to_file;
>-		new_overflow = guc_check_log_buf_overflow(guc, logstate, full_cnt);
>+		new_overflow = intel_guc_check_log_buf_overflow(guc, logstate, full_cnt);
>
> 		/* Update the state of shared log buffer */
> 		log_buf_state->read_ptr = write_offset;
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>index b6e8e9ee37b7..f16de816447d 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.h
>@@ -68,6 +68,10 @@ struct intel_guc_log {
> };
>
> void intel_guc_log_init_early(struct intel_guc_log *log);
>+bool intel_guc_check_log_buf_overflow(struct intel_guc *guc, struct intel_guc_log_stats *state,
>+				      unsigned int full_cnt);
>+unsigned int intel_guc_get_log_buffer_size(enum guc_log_buffer_type type);
>+size_t intel_guc_get_log_buffer_offset(enum guc_log_buffer_type type);
> int intel_guc_log_create(struct intel_guc_log *log);
> void intel_guc_log_destroy(struct intel_guc_log *log);
>
>diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>index db9615dcb0ec..c19d6d682394 100644
>--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>@@ -24,6 +24,7 @@
> #include "gt/intel_ring.h"
>
> #include "intel_guc_ads.h"
>+#include "intel_guc_capture.h"
> #include "intel_guc_submission.h"
>
> #include "i915_drv.h"
>@@ -1444,6 +1445,8 @@ void intel_guc_submission_reset_prepare(struct intel_guc *guc)
> 	flush_work(&guc->ct.requests.worker);
>
> 	scrub_guc_desc_for_outstanding_g2h(guc);
>+
>+	intel_guc_capture_store_snapshot(guc);
> }
>
> static struct intel_engine_cs *
>@@ -4016,17 +4019,20 @@ int intel_guc_context_reset_process_msg(struct intel_guc *guc,
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

The interface is clearly defining valid values as 0 or 1, so we can drop 
the mask here and return/log an error if msg[0] is invalid.

>+	if (status == INTEL_GUC_STATE_CAPTURE_EVENT_STATUS_NOSPACE)
>+		drm_warn(&guc_to_gt(guc)->i915->drm, "G2H-Error capture no space");
>+	else
>+		drm_info(&guc_to_gt(guc)->i915->drm, "G2H-Received error capture");

Considering you return an error for an invalid value above, you may drop 
the else part.

Regards,
Umesh

>
>-	/* FIXME: Do something with the capture */
>+	intel_guc_capture_store_snapshot(guc);
>
> 	return 0;
> }
>-- 
>2.25.1
>
