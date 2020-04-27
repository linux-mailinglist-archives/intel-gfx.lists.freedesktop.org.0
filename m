Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E541BA585
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 15:57:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE25F6E283;
	Mon, 27 Apr 2020 13:57:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 874076E283
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 13:57:30 +0000 (UTC)
IronPort-SDR: ywkzFCFrU5ZajXc1r1T2bxcBVkk15Nd9yDJqM3sK1pFopZygI+dh41utJi2tP+3oa9QGPhnqHy
 c61gM+gx3XOw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 06:57:30 -0700
IronPort-SDR: sWe9gw7FddWCvH7iE0V8keIr0NlQg9POfCjtSUOspjm6zoFs+IJmLCSzYGGrn9JHHhwvcvTQGb
 nEpeQ/wf2LWQ==
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="431783067"
Received: from apopescu-mobl1.ger.corp.intel.com (HELO [10.252.53.226])
 ([10.252.53.226])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 06:57:29 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200421104626.1480208-1-maarten.lankhorst@linux.intel.com>
 <20200421104626.1480208-8-maarten.lankhorst@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <68249f0c-6b21-4a0b-c680-b5752494694f@linux.intel.com>
Date: Mon, 27 Apr 2020 14:57:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200421104626.1480208-8-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/24] drm/i915: Use per object locking in
 execbuf, v8.
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


On 21/04/2020 11:46, Maarten Lankhorst wrote:
> Now that we changed execbuf submission slightly to allow us to do all
> pinning in one place, we can now simply add ww versions on top of
> struct_mutex. All we have to do is a separate path for -EDEADLK
> handling, which needs to unpin all gem bo's before dropping the lock,
> then starting over.
> 
> This finally allows us to do parallel submission, but because not
> all of the pinning code uses the ww ctx yet, we cannot completely
> drop struct_mutex yet.
> 
> Changes since v1:
> - Keep struct_mutex for now. :(
> Changes since v2:
> - Make sure we always lock the ww context in slowpath.
> Changes since v3:
> - Don't call __eb_unreserve_vma in eb_move_to_gpu now; this can be
>    done on normal unlock path.
> - Unconditionally release vmas and context.
> Changes since v4:
> - Rebased on top of struct_mutex reduction.
> Changes since v5:
> - Remove training wheels.
> Changes since v6:
> - Fix accidentally broken -ENOSPC handling.
> Changes since v7:
> - Handle gt buffer pool better.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 330 ++++++++++--------
>   drivers/gpu/drm/i915/i915_gem.c               |   6 +
>   drivers/gpu/drm/i915/i915_gem.h               |   1 +
>   3 files changed, 195 insertions(+), 142 deletions(-)
> 

[snip]

> +static int eb_validate_vmas(struct i915_execbuffer *eb)
> +{
> +	unsigned int i;
> +	int err;
> +
> +	INIT_LIST_HEAD(&eb->unbound);
> +
> +	for (i = 0; i < eb->buffer_count; i++) {
> +		struct drm_i915_gem_exec_object2 *entry = &eb->exec[i];
> +		struct eb_vma *ev = &eb->vma[i];
> +		struct i915_vma *vma = ev->vma;
> +
> +		err = i915_gem_object_lock(vma->obj, &eb->ww);
> +		if (err)
> +			return err;
> +
> +		if (eb_pin_vma(eb, entry, ev)) {

Semi-random place to ask..

Why it is needed to hold all object locks across the whole execbuf?

If it only locked object at a time at this stage - just to pin each vma and the unlock it - that would make it safe to proceed unlocked until the final stage. Which as the today's eb can then lock all objects when updating the obj->resv. As long as it pinned all VMAs they are safe for relocations and so on.

I am thinking if this approach would improve the regressions in some IGTs. Worth a try?

Probably wouldn't help gem_exec_nop/parallel since that one is single object shared between N threads. Not yet sure why that one is hit so hard. Just because of the tracking ww_mutex adds on top of plain mutex? I definitely see more mutex spinning and more sleeping in case of this series which is perhaps unexpected:

tip:

real    0m25.103s
user    0m4.743s
sys     1m39.908s

series:

real    0m25.134s
user    0m1.586s
sys     0m32.950s

While at the same time the series has much worse throughput:

tip:

average (individually): 5.505us
rcs0: 2799616 cycles, 7.145us
vecs0: 2839552 cycles, 7.044us
vcs0: 2283520 cycles, 8.759us
bcs0: 1284096 cycles, 15.580us
vcs1: 2404352 cycles, 8.321us

series:

average (individually): 5.553us
bcs0: 481280 cycles, 41.589us
vcs0: 463872 cycles, 43.162us
vecs0: 460800 cycles, 43.452us
vcs1: 461824 cycles, 43.356us
rcs0: 457728 cycles, 43.746us

tip:

     3.93%  gem_exec_nop     [i915]                    [k] i915_gem_do_execbuffer
     3.59%  gem_exec_nop     [kernel.vmlinux]          [k] mutex_spin_on_owner

series:

     5.49%  gem_exec_nop     [kernel.vmlinux]          [k] mutex_spin_on_owner
     1.03%  gem_exec_nop     [i915]                    [k] i915_gem_do_execbuffer

More spinning, more sleeping, less throughput. And with this test it is effectively single struct_mutex vs single shared object lock. Suggesting ww_mutex is much worse in the contented use case by default, I mean with the single object only. Does that make sense?

[snip]

>   static int eb_move_to_gpu(struct i915_execbuffer *eb)
>   {
>   	const unsigned int count = eb->buffer_count;
> -	struct ww_acquire_ctx acquire;
> -	unsigned int i;
> +	unsigned int i = count;
>   	int err = 0;
>   
> -	ww_acquire_init(&acquire, &reservation_ww_class);
> -
> -	for (i = 0; i < count; i++) {
> -		struct eb_vma *ev = &eb->vma[i];
> -		struct i915_vma *vma = ev->vma;
> -
> -		err = ww_mutex_lock_interruptible(&vma->resv->lock, &acquire);
> -		if (err == -EDEADLK) {
> -			GEM_BUG_ON(i == 0);
> -			do {
> -				int j = i - 1;
> -
> -				ww_mutex_unlock(&eb->vma[j].vma->resv->lock);
> -
> -				swap(eb->vma[i],  eb->vma[j]);
> -			} while (--i);

This pulling of the deadlocky obj to the head of array is not useful in the new scheme?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
