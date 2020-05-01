Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E1B31C18DE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 17:02:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B77FC6ECC6;
	Fri,  1 May 2020 15:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A92936ECC6;
 Fri,  1 May 2020 15:01:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21084445-1500050 for multiple; Fri, 01 May 2020 16:01:54 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHNw98i2TMn+n_up_u_zaic=Lu5piUzK1UJgkkwaBQRzLg@mail.gmail.com>
References: <20200430194151.1003933-1-chris@chris-wilson.co.uk>
 <CAM0jSHNw98i2TMn+n_up_u_zaic=Lu5piUzK1UJgkkwaBQRzLg@mail.gmail.com>
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158834531454.27785.1407101439353791135@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 01 May 2020 16:01:54 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_mmap_gtt: Simulate gdb
 inspecting a GTT mmap using ptrace()
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-05-01 15:58:29)
> On Thu, 30 Apr 2020 at 20:42, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > +       ptrace(PTRACE_ATTACH, pid, NULL, NULL);
> > +       for (int i = 0; i < OBJECT_SIZE / sizeof(long); i++) {
> > +               long ret;
> > +
> > +               ret = ptrace(PTRACE_PEEKDATA, pid, gtt + i);
> > +               igt_assert_eq_u64(ret, CC);
> > +               cpy[i] = ret;
> > +
> > +               ret = ptrace(PTRACE_POKEDATA, pid, gtt + i, AA);
> > +               igt_assert_eq(ret, 0l);
> 
> igt_assert_eq_u64() ?

In this case it will either be 0 or -1 + errno.

So "%d" vs "%llx" should not affect debugging.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
