Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D44141A07
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Jan 2020 23:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8F76E161;
	Sat, 18 Jan 2020 22:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 149BB6E161
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Jan 2020 22:18:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19931254-1500050 for multiple; Sat, 18 Jan 2020 22:17:51 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200118212903.3606443-2-chris@chris-wilson.co.uk>
References: <20200118212903.3606443-1-chris@chris-wilson.co.uk>
 <20200118212903.3606443-2-chris@chris-wilson.co.uk>
Message-ID: <157938587011.2518.12650482906489465852@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 18 Jan 2020 22:17:50 +0000
Subject: Re: [Intel-gfx] [RFC 2/2] drm/i915/gem: Introduce VM_WAIT,
 a futex-lite operation
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
Cc: "Kristian H . Kristensen" <hoegsberg@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-18 21:29:03)
> Currently, we only allow waiting on the forward progress of an individual
> GEM object, or of a GEM execbuf fence. The primary purpose of the fence
> is to provide a scheduling primitive to order the execution flow of
> batches (cf VkSempahore).
> 
> Userspace instead uses values in memory to implement client fences, and
> has to mix busywaiting on the value coupled with a dma_fence in case it
> needs to sleep. It has no intermediate step where it can wait on the
> memory value itself to change, which is required for scenarios where the
> dma_fence may incur too much execution latency.
> 
> The CPU equivalent is a futex-syscall used to setup a waiter/waker based
> on a memory location. This is used to implement an efficient sleep for
> pthread_mutex_t, where the fast uncontended path can be handled entirely
> in userspace.
> 
> This patch implements a similar idea, where we take a virtual address in
> the client's ppGTT and install an interrupt handler to wake up the
> current task when the memory location passes the user supplied filter.
> It also allows the user to emit their own MI_USER_INTERRUPT within their
> batches after updating the value on the GPU to have sub-batch precision
> on the wakeup.
> 
> Opens:
> 
> - on attaching the waiter, we enable interrupts on all engines,
> irrespective of which are active to a VM.
>  * we can optimise when to enable interrupts while the VM is active
>  * we can extend the interface for the user to select which engines may
>    wake us
> 
> - we could return an fd wrapping the comparison operation on the memory
> address if we want to pass the waiter around different processes or
> reuse the waiter (with poll() + read() like timerfd).

The other thing we could do is wrap up the comparator into a dma_fence
so we can use it for scheduling as well.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
