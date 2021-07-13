Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC73C6CAD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 10:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E91089DA4;
	Tue, 13 Jul 2021 08:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29597899DB;
 Tue, 13 Jul 2021 08:51:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10043"; a="208308569"
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="208308569"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 01:51:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="429974364"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 13 Jul 2021 01:51:36 -0700
Received: from [10.249.136.128] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.136.128])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 16D8pZDG019899; Tue, 13 Jul 2021 09:51:35 +0100
To: Matthew Brost <matthew.brost@intel.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-24-matthew.brost@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <c2d6ebbf-ea8b-9bde-9e80-9312d16540fc@intel.com>
Date: Tue, 13 Jul 2021 10:51:35 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210624070516.21893-24-matthew.brost@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 23/47] drm/i915/guc: Update GuC debugfs to
 support new GuC
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



On 24.06.2021 09:04, Matthew Brost wrote:
> Update GuC debugfs to support the new GuC structures.
> 
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 22 ++++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  3 ++
>  .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    | 23 +++++++-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 52 +++++++++++++++++++
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  4 ++
>  drivers/gpu/drm/i915/i915_debugfs.c           |  1 +
>  6 files changed, 104 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index e0f92e28350c..4ed074df88e5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -1135,3 +1135,25 @@ void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>  
>  	ct_try_receive_message(ct);
>  }
> +
> +void intel_guc_log_ct_info(struct intel_guc_ct *ct,

this is not "guc log" function, it is "guc ct" one, so:

  void intel_guc_ct_print_info(struct intel_guc_ct *ct,

> +			   struct drm_printer *p)
> +{
> +	if (!ct->enabled) {
> +		drm_puts(p, "CT disabled\n");

nit: maybe

  drm_puts(p, "CT %s\n", enableddisabled(false));

> +		return;
> +	}
> +
> +	drm_printf(p, "H2G Space: %u\n",
> +		   atomic_read(&ct->ctbs.send.space) * 4);

don't you want to print size ?
or GGTT offset ?

> +	drm_printf(p, "Head: %u\n",
> +		   ct->ctbs.send.desc->head);
> +	drm_printf(p, "Tail: %u\n",
> +		   ct->ctbs.send.desc->tail);
> +	drm_printf(p, "G2H Space: %u\n",
> +		   atomic_read(&ct->ctbs.recv.space) * 4);
> +	drm_printf(p, "Head: %u\n",
> +		   ct->ctbs.recv.desc->head);
> +	drm_printf(p, "Tail: %u\n",
> +		   ct->ctbs.recv.desc->tail);

hmm, what about adding helper:

  static void dump_ctb(struct intel_guc_ct_buffer *ctb, *p)
  {
	drm_printf(p, "Size: %u\n", ctb->size);
	drm_printf(p, "Space: %u\n", atomic_read(&ctb->space) * 4);
	drm_printf(p, "Head: %u\n", ctb->desc->head);
	drm_printf(p, "Tail: %u\n", ctb->desc->tail);
  }

and then:

	drm_printf(p, "H2G:\n");
	dump_ctb(&ct->ctbs.send, p);
	drm_printf(p, "G2H:\n");
	dump_ctb(&ct->ctbs.recv, p);

or

	dump_ctb(&ct->ctbs.send, "H2G", p);
	dump_ctb(&ct->ctbs.recv, "G2H", p);
	

> +}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index ab1b79ab960b..f62eb06b32fc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -16,6 +16,7 @@
>  
>  struct i915_vma;
>  struct intel_guc;
> +struct drm_printer;
>  
>  /**
>   * DOC: Command Transport (CT).
> @@ -106,4 +107,6 @@ int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 len,
>  		      u32 *response_buf, u32 response_buf_size, u32 flags);
>  void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
>  
> +void intel_guc_log_ct_info(struct intel_guc_ct *ct, struct drm_printer *p);
> +
>  #endif /* _INTEL_GUC_CT_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> index fe7cb7b29a1e..62b9ce0fafaa 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
> @@ -9,6 +9,8 @@
>  #include "intel_guc.h"
>  #include "intel_guc_debugfs.h"
>  #include "intel_guc_log_debugfs.h"
> +#include "gt/uc/intel_guc_ct.h"
> +#include "gt/uc/intel_guc_submission.h"
>  
>  static int guc_info_show(struct seq_file *m, void *data)
>  {
> @@ -22,16 +24,35 @@ static int guc_info_show(struct seq_file *m, void *data)
>  	drm_puts(&p, "\n");
>  	intel_guc_log_info(&guc->log, &p);
>  
> -	/* Add more as required ... */
> +	if (!intel_guc_submission_is_used(guc))
> +		return 0;
> +
> +	intel_guc_log_ct_info(&guc->ct, &p);
> +	intel_guc_log_submission_info(guc, &p);
>  
>  	return 0;
>  }
>  DEFINE_GT_DEBUGFS_ATTRIBUTE(guc_info);
>  
> +static int guc_registered_contexts_show(struct seq_file *m, void *data)
> +{
> +	struct intel_guc *guc = m->private;
> +	struct drm_printer p = drm_seq_file_printer(m);
> +
> +	if (!intel_guc_submission_is_used(guc))
> +		return -ENODEV;
> +
> +	intel_guc_log_context_info(guc, &p);
> +
> +	return 0;
> +}
> +DEFINE_GT_DEBUGFS_ATTRIBUTE(guc_registered_contexts);
> +
>  void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
>  {
>  	static const struct debugfs_gt_file files[] = {
>  		{ "guc_info", &guc_info_fops, NULL },
> +		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
>  	};
>  
>  	if (!intel_guc_is_supported(guc))
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index d1a28283a9ae..89b3c7e5d15b 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1600,3 +1600,55 @@ int intel_guc_sched_done_process_msg(struct intel_guc *guc,
>  
>  	return 0;
>  }
> +
> +void intel_guc_log_submission_info(struct intel_guc *guc,

use correct prefix:

void intel_guc_submission_print_info(struct intel_guc *guc,

> +				   struct drm_printer *p)
> +{
> +	struct i915_sched_engine *sched_engine = guc->sched_engine;
> +	struct rb_node *rb;
> +	unsigned long flags;
> +
> +	drm_printf(p, "GuC Number Outstanding Submission G2H: %u\n",
> +		   atomic_read(&guc->outstanding_submission_g2h));
> +	drm_printf(p, "GuC tasklet count: %u\n\n",
> +		   atomic_read(&sched_engine->tasklet.count));
> +
> +	spin_lock_irqsave(&sched_engine->lock, flags);
> +	drm_printf(p, "Requests in GuC submit tasklet:\n");
> +	for (rb = rb_first_cached(&sched_engine->queue); rb; rb = rb_next(rb)) {
> +		struct i915_priolist *pl = to_priolist(rb);
> +		struct i915_request *rq;
> +
> +		priolist_for_each_request(rq, pl)
> +			drm_printf(p, "guc_id=%u, seqno=%llu\n",
> +				   rq->context->guc_id,
> +				   rq->fence.seqno);
> +	}
> +	spin_unlock_irqrestore(&sched_engine->lock, flags);
> +	drm_printf(p, "\n");
> +}
> +
> +void intel_guc_log_context_info(struct intel_guc *guc,

use correct prefix:

void intel_guc_submission_print_context_info(struct intel_guc *guc,

Michal

> +				struct drm_printer *p)
> +{
> +	struct intel_context *ce;
> +	unsigned long index;
> +
> +	xa_for_each(&guc->context_lookup, index, ce) {
> +		drm_printf(p, "GuC lrc descriptor %u:\n", ce->guc_id);
> +		drm_printf(p, "\tHW Context Desc: 0x%08x\n", ce->lrc.lrca);
> +		drm_printf(p, "\t\tLRC Head: Internal %u, Memory %u\n",
> +			   ce->ring->head,
> +			   ce->lrc_reg_state[CTX_RING_HEAD]);
> +		drm_printf(p, "\t\tLRC Tail: Internal %u, Memory %u\n",
> +			   ce->ring->tail,
> +			   ce->lrc_reg_state[CTX_RING_TAIL]);
> +		drm_printf(p, "\t\tContext Pin Count: %u\n",
> +			   atomic_read(&ce->pin_count));
> +		drm_printf(p, "\t\tGuC ID Ref Count: %u\n",
> +			   atomic_read(&ce->guc_id_ref));
> +		drm_printf(p, "\t\tSchedule State: 0x%x, 0x%x\n\n",
> +			   ce->guc_state.sched_state,
> +			   atomic_read(&ce->guc_sched_state_no_lock));
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> index 3f7005018939..6453e2bfa151 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h
> @@ -10,6 +10,7 @@
>  
>  #include "intel_guc.h"
>  
> +struct drm_printer;
>  struct intel_engine_cs;
>  
>  void intel_guc_submission_init_early(struct intel_guc *guc);
> @@ -20,6 +21,9 @@ void intel_guc_submission_fini(struct intel_guc *guc);
>  int intel_guc_preempt_work_create(struct intel_guc *guc);
>  void intel_guc_preempt_work_destroy(struct intel_guc *guc);
>  int intel_guc_submission_setup(struct intel_engine_cs *engine);
> +void intel_guc_log_submission_info(struct intel_guc *guc,
> +				   struct drm_printer *p);
> +void intel_guc_log_context_info(struct intel_guc *guc, struct drm_printer *p);
>  
>  static inline bool intel_guc_submission_is_supported(struct intel_guc *guc)
>  {
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 277800987bf8..a9084789deff 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -50,6 +50,7 @@
>  #include "i915_trace.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
> +#include "gt/intel_lrc_reg.h"
>  
>  static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
>  {
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
