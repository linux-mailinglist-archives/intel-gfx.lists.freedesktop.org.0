Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9491197867
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 12:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1206E053;
	Mon, 30 Mar 2020 10:09:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63DB76E053
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 10:09:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20737936-1500050 for multiple; Mon, 30 Mar 2020 11:09:22 +0100
MIME-Version: 1.0
In-Reply-To: <20200330091411.37357-1-lionel.g.landwerlin@intel.com>
References: <20200330091411.37357-1-lionel.g.landwerlin@intel.com>
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158556296041.3228.10327206845355852563@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 11:09:20 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: don't read head/tail
 pointers outside critical section
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

Quoting Lionel Landwerlin (2020-03-30 10:14:11)
> Reading or writing those fields should only happen under
> stream->oa_buffer.ptr_lock.

Writing, yes. Reading as a pair, sure. There are other ways you can
ensure that the tail/head are read as one, but fair enough.

> Signed-off-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> Fixes: d1df41eb72ef ("drm/i915/perf: rework aging tail workaround")
> ---
>  drivers/gpu/drm/i915/i915_perf.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index c74ebac50015..ec9421f02ebd 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -463,6 +463,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>         u32 gtt_offset = i915_ggtt_offset(stream->oa_buffer.vma);
>         int report_size = stream->oa_buffer.format_size;
>         unsigned long flags;
> +       bool pollin;
>         u32 hw_tail;
>         u64 now;
>  
> @@ -532,10 +533,13 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>                 stream->oa_buffer.aging_timestamp = now;
>         }
>  
> +       pollin = OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
> +                         stream->oa_buffer.head - gtt_offset) >= report_size;
> +
> +

Bonus \n

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

>         spin_unlock_irqrestore(&stream->oa_buffer.ptr_lock, flags);
>  
> -       return OA_TAKEN(stream->oa_buffer.tail - gtt_offset,
> -                       stream->oa_buffer.head - gtt_offset) >= report_size;
> +       return pollin;

You could always leave the calculation here, and just have the read
inside.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
