Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D641C3BC8
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 15:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5756E41A;
	Mon,  4 May 2020 13:54:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D379B6E41A
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 13:54:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21106944-1500050 for multiple; Mon, 04 May 2020 14:54:40 +0100
MIME-Version: 1.0
In-Reply-To: <20200504135030.19210-1-chris@chris-wilson.co.uk>
References: <20200504135030.19210-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158860047762.11660.349952004124805618@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 04 May 2020 14:54:37 +0100
Subject: Re: [Intel-gfx] Wait-for-submit on future syncobj
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
Cc: kenneth@whitecape.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-05-04 14:50:24)
> A simplified example of out-of-order execution that is required by iris:
> 
>         struct drm_i915_gem_exec_object2 obj = {
>                 .offset = 24 << 20,
>                 .handle = future_submit_batch(i915, 24 << 20),
>                 .flags = EXEC_OBJECT_PINNED,
>         };
>         struct drm_i915_gem_exec_fence fence = {
>                 .handle = syncobj_create(i915, 0),
>         };
>         struct drm_i915_gem_execbuffer2 execbuf  = {
>                 .buffers_ptr = to_user_pointer(&obj),
>                 .buffer_count = 1,
>                 .cliprects_ptr = to_user_pointer(&fence),
>                 .num_cliprects = 1,
>                 .flags = engine | I915_EXEC_FENCE_ARRAY,
>         };
>         uint32_t result;
>         int out;
> 
>         /*
>          * Here we submit client A waiting on client B, but internally client
>          * B has a semaphore that waits on client A. This relies on timeslicing
>          * to reorder B before A, even though userspace has asked to submit

A before B
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
