Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 745B91238D9
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 22:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE836E147;
	Tue, 17 Dec 2019 21:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D25366E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 21:49:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 13:49:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="217654962"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga006.jf.intel.com with ESMTP; 17 Dec 2019 13:49:45 -0800
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [10.249.135.250])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 xBHLnhkl016050; Tue, 17 Dec 2019 21:49:44 GMT
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
 <20191217012316.13271-5-daniele.ceraolospurio@intel.com>
Date: Tue, 17 Dec 2019 22:49:43 +0100
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.0cypk5zoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20191217012316.13271-5-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/guc: Remove function
 pointers for send/receive calls
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 17 Dec 2019 02:23:14 +0100, Daniele Ceraolo Spurio  
<daniele.ceraolospurio@intel.com> wrote:

> Since we started using CT buffers on all gens, the function pointers can
> only be set to either the _nop() or the _ct() functions. Since the
> _nop() case applies to when the CT are disabled, we can just handle that
> case in the _ct() functions and call them directly.
>
> v2: keep intel_guc_send() and make the CT send/receive functions work on
>     intel_guc_ct. (Michal)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 14 -------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc.h        | 18 ++++-------------
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     | 16 ++++++++++-----
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h     |  9 +++++++--
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 -
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 20 +++++++------------
>  6 files changed, 29 insertions(+), 49 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 922a19635d20..daebfec0034c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -177,8 +177,6 @@ void intel_guc_init_early(struct intel_guc *guc)
> 	mutex_init(&guc->send_mutex);
>  	spin_lock_init(&guc->irq_lock);
> -	guc->send = intel_guc_send_nop;
> -	guc->handler = intel_guc_to_host_event_handler_nop;
>  	if (INTEL_GEN(i915) >= 11) {
>  		guc->notify = gen11_guc_raise_irq;
>  		guc->interrupts.reset = gen11_reset_guc_interrupts;
> @@ -403,18 +401,6 @@ void intel_guc_fini(struct intel_guc *guc)
>  	intel_uc_fw_cleanup_fetch(&guc->fw);
>  }
> -int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32  
> len,
> -		       u32 *response_buf, u32 response_buf_size)
> -{
> -	WARN(1, "Unexpected send: action=%#x\n", *action);
> -	return -ENODEV;
> -}
> -
> -void intel_guc_to_host_event_handler_nop(struct intel_guc *guc)
> -{
> -	WARN(1, "Unexpected event: no suitable handler\n");
> -}
> -
>  /*
>   * This function implements the MMIO based host to GuC interface.
>   */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> index cd09c912e361..253b1ac7716e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> @@ -70,13 +70,6 @@ struct intel_guc {
>  	/* To serialize the intel_guc_send actions */
>  	struct mutex send_mutex;
> -	/* GuC's FW specific send function */
> -	int (*send)(struct intel_guc *guc, const u32 *data, u32 len,
> -		    u32 *response_buf, u32 response_buf_size);
> -
> -	/* GuC's FW specific event handler function */
> -	void (*handler)(struct intel_guc *guc);
> -
>  	/* GuC's FW specific notify function */
>  	void (*notify)(struct intel_guc *guc);
>  };
> @@ -84,14 +77,15 @@ struct intel_guc {
>  static
>  inline int intel_guc_send(struct intel_guc *guc, const u32 *action, u32  
> len)
>  {
> -	return guc->send(guc, action, len, NULL, 0);
> +	return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
>  }
> static inline int
>  intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action,  
> u32 len,
>  			   u32 *response_buf, u32 response_buf_size)
>  {
> -	return guc->send(guc, action, len, response_buf, response_buf_size);
> +	return intel_guc_ct_send(&guc->ct, action, len,
> +				 response_buf, response_buf_size);
>  }
> static inline void intel_guc_notify(struct intel_guc *guc)
> @@ -101,7 +95,7 @@ static inline void intel_guc_notify(struct intel_guc  
> *guc)
> static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
>  {
> -	guc->handler(guc);
> +	intel_guc_ct_event_handler(&guc->ct);
>  }
> /* GuC addresses above GUC_GGTT_TOP also don't map through the GTT */
> @@ -136,12 +130,8 @@ void intel_guc_init_send_regs(struct intel_guc  
> *guc);
>  void intel_guc_write_params(struct intel_guc *guc);
>  int intel_guc_init(struct intel_guc *guc);
>  void intel_guc_fini(struct intel_guc *guc);
> -int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32  
> len,
> -		       u32 *response_buf, u32 response_buf_size);
>  int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32  
> len,
>  			u32 *response_buf, u32 response_buf_size);
> -void intel_guc_to_host_event_handler(struct intel_guc *guc);
> -void intel_guc_to_host_event_handler_nop(struct intel_guc *guc);
>  int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
>  				       const u32 *payload, u32 len);
>  int intel_guc_sample_forcewake(struct intel_guc *guc);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index f22cd9b2311b..c6f971a049f9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -510,13 +510,18 @@ static int ct_send(struct intel_guc_ct *ct,
>  /*
>   * Command Transport (CT) buffer based GuC send function.
>   */
> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
> +int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32  
> len,
>  		      u32 *response_buf, u32 response_buf_size)
>  {
> -	struct intel_guc_ct *ct = &guc->ct;
> +	struct intel_guc *guc = ct_to_guc(ct);
>  	u32 status = ~0; /* undefined */
>  	int ret;
> +	if (unlikely(!ct->enabled)) {
> +		WARN(1, "Unexpected send: action=%#x\n", *action);
> +		return -ENODEV;
> +	}
> +
>  	mutex_lock(&guc->send_mutex);
> 	ret = ct_send(ct, action, len, response_buf, response_buf_size,  
> &status);
> @@ -787,15 +792,16 @@ static int ct_handle_request(struct intel_guc_ct  
> *ct, const u32 *msg)
>   * When we're communicating with the GuC over CT, GuC uses events
>   * to notify us about new messages being posted on the RECV buffer.
>   */
> -void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
> +void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>  {
> -	struct intel_guc_ct *ct = &guc->ct;
>  	struct intel_guc_ct_buffer *ctb = &ct->ctbs[CTB_RECV];
>  	u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the header */
>  	int err = 0;
> -	if (!ct->enabled)
> +	if (unlikely(!ct->enabled)) {
> +		WARN(1, "Unexpected GuC event received while CT disabled!\n");

hmm, maybe we should just return false to indicate that we didn't
process that G2H event and decide in irq_handler what to do with that?
but not a blocker, so

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

Michal

>  		return;
> +	}
> 	do {
>  		err = ctb_read(ctb, msg);
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 29a026dc3a13..3e7fe237cfa5 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -65,8 +65,13 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct);
>  int intel_guc_ct_enable(struct intel_guc_ct *ct);
>  void intel_guc_ct_disable(struct intel_guc_ct *ct);
> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
> +static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
> +{
> +	return ct->enabled;
> +}
> +
> +int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32  
> len,
>  		      u32 *response_buf, u32 response_buf_size);
> -void intel_guc_to_host_event_handler_ct(struct intel_guc *guc);
> +void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
> #endif /* _INTEL_GUC_CT_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index af04ed6e48d9..44a7d2e736a7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -43,7 +43,6 @@
>   * Firmware writes a success/fail code back to the action register after
>   * processes the request. The kernel driver polls waiting for this  
> update and
>   * then proceeds.
> - * See intel_guc_send()
>   *
>   * Work Items:
>   * There are several types of work items that the host may place into a
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c  
> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 6e17e449e0a8..782b8f95183f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -123,6 +123,11 @@ static void __uc_free_load_err_log(struct intel_uc  
> *uc)
>  		i915_gem_object_put(log);
>  }
> +static inline bool guc_communication_enabled(struct intel_guc *guc)
> +{
> +	return intel_guc_ct_enabled(&guc->ct);
> +}
> +
>  /*
>   * Events triggered while CT buffers are disabled are logged in the  
> SCRATCH_15
>   * register using the same bits used in the CT message payload. Since  
> our
> @@ -158,7 +163,7 @@ static void guc_handle_mmio_msg(struct intel_guc  
> *guc)
>  	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> 	/* we need communication to be enabled to reply to GuC */
> -	GEM_BUG_ON(guc->handler == intel_guc_to_host_event_handler_nop);
> +	GEM_BUG_ON(!guc_communication_enabled(guc));
> 	if (!guc->mmio_msg)
>  		return;
> @@ -185,11 +190,6 @@ static void guc_disable_interrupts(struct intel_guc  
> *guc)
>  	guc->interrupts.disable(guc);
>  }
> -static inline bool guc_communication_enabled(struct intel_guc *guc)
> -{
> -	return guc->send != intel_guc_send_nop;
> -}
> -
>  static int guc_enable_communication(struct intel_guc *guc)
>  {
>  	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
> @@ -205,9 +205,6 @@ static int guc_enable_communication(struct intel_guc  
> *guc)
>  	if (ret)
>  		return ret;
> -	guc->send = intel_guc_send_ct;
> -	guc->handler = intel_guc_to_host_event_handler_ct;
> -
>  	/* check for mmio messages received before/during the CT enable */
>  	guc_get_mmio_msg(guc);
>  	guc_handle_mmio_msg(guc);
> @@ -216,7 +213,7 @@ static int guc_enable_communication(struct intel_guc  
> *guc)
> 	/* check for CT messages received before we enabled interrupts */
>  	spin_lock_irq(&i915->irq_lock);
> -	intel_guc_to_host_event_handler_ct(guc);
> +	intel_guc_ct_event_handler(&guc->ct);
>  	spin_unlock_irq(&i915->irq_lock);
> 	DRM_INFO("GuC communication enabled\n");
> @@ -235,9 +232,6 @@ static void guc_disable_communication(struct  
> intel_guc *guc)
> 	guc_disable_interrupts(guc);
> -	guc->send = intel_guc_send_nop;
> -	guc->handler = intel_guc_to_host_event_handler_nop;
> -
>  	intel_guc_ct_disable(&guc->ct);
> 	/*
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
