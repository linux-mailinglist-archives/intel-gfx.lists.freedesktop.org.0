Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C541BA162
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 12:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00DD66E202;
	Mon, 27 Apr 2020 10:34:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60F8A6E202
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 10:33:59 +0000 (UTC)
IronPort-SDR: zDHcmhn3SEPdGYgWcH9oT1l1CDN8ZyX7l8kUs+sCKb3q4sHQ8oWCF4D1aNGwGD4pQ9iCIM85EX
 4+hs2FGieFhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 03:33:58 -0700
IronPort-SDR: SJcHxy/ZSDcFQg6nLK1zVhL2AqX9V1Zs/iYQ9KYpqsTWzLYNZffc/MpzhJkswsfnhY3vw7BK4F
 gk6sO/05Rn0w==
X-IronPort-AV: E=Sophos;i="5.73,323,1583222400"; d="scan'208";a="431724517"
Received: from apopescu-mobl1.ger.corp.intel.com (HELO [10.252.53.226])
 ([10.252.53.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 03:33:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200426094231.21995-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bdb31486-37aa-cc53-5ac3-603941eb8152@linux.intel.com>
Date: Mon, 27 Apr 2020 11:33:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200426094231.21995-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Check preempt-timeout
 target before submit_ports
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


On 26/04/2020 10:42, Chris Wilson wrote:
> We evaluate *active, which is a pointer into execlists->inflight[]
> during dequeue to decide how long a preempt-timeout we need to apply.
> However, as soon as we do the submit_ports, the HW may send its ACK
> interrupt causing us to promote execlists->pending[] tp
> execlists->inflight[], overwriting the value of *active. We know *active
> is only stable until we submit (as we only submit when there is no
> pending promotion).
> 
> [   16.102328] BUG: KCSAN: data-race in execlists_dequeue+0x1449/0x1600 [i915]
> [   16.102356]
> [   16.102375] race at unknown origin, with read to 0xffff8881e9500488 of 8 bytes by task 429 on cpu 1:
> [   16.102780]  execlists_dequeue+0x1449/0x1600 [i915]
> [   16.103160]  __execlists_submission_tasklet+0x48/0x60 [i915]
> [   16.103540]  execlists_submit_request+0x38e/0x3c0 [i915]
> [   16.103940]  submit_notify+0x8f/0xc0 [i915]
> [   16.104308]  __i915_sw_fence_complete+0x61/0x420 [i915]
> [   16.104683]  i915_sw_fence_complete+0x58/0x80 [i915]
> [   16.105054]  i915_sw_fence_commit+0x16/0x20 [i915]
> [   16.105457]  __i915_request_queue+0x60/0x70 [i915]
> [   16.105843]  i915_gem_do_execbuffer+0x2d6b/0x4230 [i915]
> [   16.106227]  i915_gem_execbuffer2_ioctl+0x2b0/0x580 [i915]
> [   16.106257]  drm_ioctl_kernel+0xe9/0x130
> [   16.106279]  drm_ioctl+0x27d/0x45e
> [   16.106311]  ksys_ioctl+0x89/0xb0
> [   16.106336]  __x64_sys_ioctl+0x42/0x60
> [   16.106370]  do_syscall_64+0x6e/0x2c0
> [   16.106397]  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_lrc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c8014c265ffb..cbd04b74ae2a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -2438,8 +2438,8 @@ static void execlists_dequeue(struct intel_engine_cs *engine)
>   		clear_ports(port + 1, last_port - port);
>   
>   		WRITE_ONCE(execlists->yield, -1);
> -		execlists_submit_ports(engine);
>   		set_preempt_timeout(engine, *active);
> +		execlists_submit_ports(engine);
>   	} else {
>   skip_submit:
>   		ring_set_paused(engine, 0);
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
