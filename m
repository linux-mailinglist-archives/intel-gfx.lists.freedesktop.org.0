Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A03CD1B5E80
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Apr 2020 17:01:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089B36E888;
	Thu, 23 Apr 2020 15:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 708AD6E888
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Apr 2020 15:01:16 +0000 (UTC)
IronPort-SDR: vLFeLs8pp+2HPLQr2J8mzhjGNPzaYDrBdTAxY/pcEGsApv7k/rieyX6K6FkaEUcTcgfNhrBIJ9
 UzTewDQHwO2A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 08:01:06 -0700
IronPort-SDR: T3/WkhDLY/I7n2wL0VMaxOwdHD7UPu5MfCt8dDk+ljnRjzNxEWRkmLzSSa3Y+82+JGYI1h6B/F
 pi85C8ILws+w==
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="430349902"
Received: from dytagah-mobl.amr.corp.intel.com (HELO [10.252.51.48])
 ([10.252.51.48])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 08:01:03 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200423115315.26825-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5ea94a8d-fa79-7687-85f6-c95709c7ad4c@linux.intel.com>
Date: Thu, 23 Apr 2020 16:01:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200423115315.26825-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Carefully order
 virtual_submission_tasklet
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 23/04/2020 12:53, Chris Wilson wrote:
> During the virtual engine's submission tasklet, we take the request and
> insert into the submission queue on each of our siblings. This seems
> quite simply, and so no problems with ordering. However, the sibling
> execlists' submission tasklets may run concurrently with the virtual
> engine's tasklet, submitting the request to HW before the virtual
> finishes its task of telling all the siblings. If this happens, the
> sibling tasklet may *reorder* the ve->sibling[] array that the virtual
> engine tasklet is processing. This can *only* reorder within the
> elements already processed by the virtual engine, nevertheless the
> race is detected by KCSAN:
> 
> [  185.580014] BUG: KCSAN: data-race in execlists_dequeue [i915] / virtual_submission_tasklet [i915]
> [  185.580054]
> [  185.580076] write to 0xffff8881f1919860 of 8 bytes by interrupt on cpu 2:
> [  185.580553]  execlists_dequeue+0x6ad/0x1600 [i915]
> [  185.581044]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [  185.581517]  execlists_submission_tasklet+0xd3/0x170 [i915]
> [  185.581554]  tasklet_action_common.isra.0+0x42/0x90
> [  185.581585]  __do_softirq+0xc8/0x206
> [  185.581613]  run_ksoftirqd+0x15/0x20
> [  185.581641]  smpboot_thread_fn+0x15a/0x270
> [  185.581669]  kthread+0x19a/0x1e0
> [  185.581695]  ret_from_fork+0x1f/0x30
> [  185.581717]
> [  185.581736] read to 0xffff8881f1919860 of 8 bytes by interrupt on cpu 0:
> [  185.582231]  virtual_submission_tasklet+0x10e/0x5c0 [i915]
> [  185.582265]  tasklet_action_common.isra.0+0x42/0x90
> [  185.582291]  __do_softirq+0xc8/0x206
> [  185.582315]  run_ksoftirqd+0x15/0x20
> [  185.582340]  smpboot_thread_fn+0x15a/0x270
> [  185.582368]  kthread+0x19a/0x1e0
> [  185.582395]  ret_from_fork+0x1f/0x30
> [  185.582417]
> 
> We can prevent this race by checking for the ve->request after looking
> up the sibling array.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 7 +++++--
>   1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index fba774a0abbf..dead24aaf45d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -5092,12 +5092,15 @@ static void virtual_submission_tasklet(unsigned long data)
>   		return;
>   
>   	local_irq_disable();
> -	for (n = 0; READ_ONCE(ve->request) && n < ve->num_siblings; n++) {
> -		struct intel_engine_cs *sibling = ve->siblings[n];
> +	for (n = 0; n < ve->num_siblings; n++) {
> +		struct intel_engine_cs *sibling = READ_ONCE(ve->siblings[n]);
>   		struct ve_node * const node = &ve->nodes[sibling->id];
>   		struct rb_node **parent, *rb;
>   		bool first;
>   
> +		if (!READ_ONCE(ve->request))
> +			break; /* already handled by a sibling's tasklet */
> +
>   		if (unlikely(!(mask & sibling->mask))) {
>   			if (!RB_EMPTY_NODE(&node->rb)) {
>   				spin_lock(&sibling->active.lock);
> 

Useful debugging aid!

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
