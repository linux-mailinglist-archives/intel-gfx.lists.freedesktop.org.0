Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 352AA1A1ED1
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 12:31:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4606EA1B;
	Wed,  8 Apr 2020 10:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEE56EA1B
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 10:31:29 +0000 (UTC)
IronPort-SDR: gvCvsyEGLmVEWZk9H1xJog12k9Op6Di2rDmAnS0Amme+gZmqDcAK8GdQu12hn+4Gqt87ARlfRK
 h2JgFrk/6Xrg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2020 03:31:29 -0700
IronPort-SDR: QaSo/20g385IBQqO2n5GveluznN63d4JgB3wepcYvPcl4+AdT2BqgWe8X2irQdD9K+DEE2Zpf7
 utfo/0GwxZjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,357,1580803200"; d="scan'208";a="269714678"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga002.jf.intel.com with ESMTP; 08 Apr 2020 03:31:28 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id DEB775C0D80; Wed,  8 Apr 2020 13:29:43 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200407221832.15465-1-chris@chris-wilson.co.uk>
References: <20200407221832.15465-1-chris@chris-wilson.co.uk>
Date: Wed, 08 Apr 2020 13:29:43 +0300
Message-ID: <87r1wynuco.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Mark up racy read of
 intel_ring.head
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> The intel_ring.head is updated as the requests are retired, but is
> sampled at any time as we submit requests. Furthermore, it tracks
> RING_HEAD which is inherently asynchronous.
>
> [  148.630314] BUG: KCSAN: data-race in execlists_dequeue [i915] / i915_request_retire [i915]
> [  148.630349]
> [  148.630374] write to 0xffff8881f4e28ddc of 4 bytes by task 90 on cpu 2:
> [  148.630752]  i915_request_retire+0xed/0x770 [i915]
> [  148.631123]  retire_requests+0x7a/0xd0 [i915]
> [  148.631491]  engine_retire+0xa6/0xe0 [i915]
> [  148.631523]  process_one_work+0x3af/0x640
> [  148.631552]  worker_thread+0x80/0x670
> [  148.631581]  kthread+0x19a/0x1e0
> [  148.631609]  ret_from_fork+0x1f/0x30
> [  148.631629]
> [  148.631652] read to 0xffff8881f4e28ddc of 4 bytes by task 14288 on cpu 3:
> [  148.632019]  execlists_dequeue+0x1300/0x1680 [i915]
> [  148.632384]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [  148.632770]  execlists_submit_request+0x38e/0x3c0 [i915]
> [  148.633146]  submit_notify+0x8f/0xc0 [i915]
> [  148.633512]  __i915_sw_fence_complete+0x5d/0x3e0 [i915]
> [  148.633875]  i915_sw_fence_complete+0x58/0x80 [i915]
> [  148.634238]  i915_sw_fence_commit+0x16/0x20 [i915]
> [  148.634613]  __i915_request_queue+0x60/0x70 [i915]
> [  148.634985]  i915_gem_do_execbuffer+0x2de0/0x42b0 [i915]
> [  148.635366]  i915_gem_execbuffer2_ioctl+0x2ab/0x580 [i915]
> [  148.635400]  drm_ioctl_kernel+0xe9/0x130
> [  148.635429]  drm_ioctl+0x27d/0x45e
> [  148.635456]  ksys_ioctl+0x89/0xb0
> [  148.635482]  __x64_sys_ioctl+0x42/0x60
> [  148.635510]  do_syscall_64+0x6e/0x2c0
> [  148.635542]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
>
> [  645.071436] BUG: KCSAN: data-race in gen8_emit_fini_breadcrumb [i915] / i915_request_retire [i915]
> [  645.071456]
> [  645.071467] write to 0xffff8881efe403dc of 4 bytes by task 14668 on cpu 3:
> [  645.071647]  i915_request_retire+0xed/0x770 [i915]
> [  645.071824]  i915_request_create+0x6c/0x160 [i915]
> [  645.072000]  i915_gem_do_execbuffer+0x206d/0x42b0 [i915]
> [  645.072177]  i915_gem_execbuffer2_ioctl+0x2ab/0x580 [i915]
> [  645.072194]  drm_ioctl_kernel+0xe9/0x130
> [  645.072208]  drm_ioctl+0x27d/0x45e
> [  645.072222]  ksys_ioctl+0x89/0xb0
> [  645.072235]  __x64_sys_ioctl+0x42/0x60
> [  645.072248]  do_syscall_64+0x6e/0x2c0
> [  645.072263]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> [  645.072275]
> [  645.072285] read to 0xffff8881efe403dc of 4 bytes by interrupt on cpu 2:
> [  645.072458]  gen8_emit_fini_breadcrumb+0x158/0x300 [i915]
> [  645.072636]  __i915_request_submit+0x204/0x430 [i915]
> [  645.072809]  execlists_dequeue+0x8e1/0x1680 [i915]
> [  645.072982]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [  645.073154]  execlists_submit_request+0x38e/0x3c0 [i915]
> [  645.073330]  submit_notify+0x8f/0xc0 [i915]
> [  645.073499]  __i915_sw_fence_complete+0x5d/0x3e0 [i915]
> [  645.073668]  i915_sw_fence_wake+0xc2/0x130 [i915]
> [  645.073836]  __i915_sw_fence_complete+0x2cf/0x3e0 [i915]
> [  645.074006]  i915_sw_fence_complete+0x58/0x80 [i915]
> [  645.074175]  dma_i915_sw_fence_wake+0x3e/0x80 [i915]
> [  645.074344]  signal_irq_work+0x62f/0x710 [i915]
> [  645.074360]  irq_work_run_list+0xd7/0x110
> [  645.074373]  irq_work_run+0x1d/0x50
> [  645.074386]  smp_irq_work_interrupt+0x21/0x30
> [  645.074400]  irq_work_interrupt+0xf/0x20
> [  645.074414]  _raw_spin_unlock_irqrestore+0x34/0x40
> [  645.074585]  execlists_submission_tasklet+0xde/0x170 [i915]
> [  645.074602]  tasklet_action_common.isra.0+0x42/0x90
> [  645.074617]  __do_softirq+0xc8/0x206
> [  645.074629]  irq_exit+0xcd/0xe0
> [  645.074642]  do_IRQ+0x44/0xc0
> [  645.074654]  ret_from_intr+0x0/0x1c
> [  645.074667]  finish_task_switch+0x73/0x230
> [  645.074679]  __schedule+0x1c5/0x4c0
> [  645.074691]  schedule+0x45/0xb0
> [  645.074704]  worker_thread+0x194/0x670
> [  645.074716]  kthread+0x19a/0x1e0
> [  645.074729]  ret_from_fork+0x1f/0x30
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_ring.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.h b/drivers/gpu/drm/i915/gt/intel_ring.h
> index 5bdce24994aa..cc0ebca65167 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.h
> @@ -88,6 +88,8 @@ static inline u32 intel_ring_offset(const struct i915_request *rq, void *addr)
>  static inline void
>  assert_ring_tail_valid(const struct intel_ring *ring, unsigned int tail)
>  {
> +	unsigned int head = READ_ONCE(ring->head);
> +
>  	GEM_BUG_ON(!intel_ring_offset_valid(ring, tail));
>  
>  	/*
> @@ -105,8 +107,7 @@ assert_ring_tail_valid(const struct intel_ring *ring, unsigned int tail)
>  	 * into the same cacheline as ring->head.
>  	 */
>  #define cacheline(a) round_down(a, CACHELINE_BYTES)
> -	GEM_BUG_ON(cacheline(tail) == cacheline(ring->head) &&
> -		   tail < ring->head);
> +	GEM_BUG_ON(cacheline(tail) == cacheline(head) && tail < head);
>  #undef cacheline
>  }
>  
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
