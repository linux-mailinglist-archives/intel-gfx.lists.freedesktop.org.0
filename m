Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6571CD4EA
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2020 11:30:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628F089DDD;
	Mon, 11 May 2020 09:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4389D89DDD;
 Mon, 11 May 2020 09:30:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21157819-1500050 for multiple; Mon, 11 May 2020 10:30:14 +0100
MIME-Version: 1.0
In-Reply-To: <c391b824f21dd36956fbf95740e9ea4ba7548a24.camel@linux.intel.com>
References: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
 <20200508135631.8099-3-janusz.krzysztofik@linux.intel.com>
 <158896045063.30605.10719204340280805143@build.alporthouse.com>
 <c391b824f21dd36956fbf95740e9ea4ba7548a24.camel@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Message-ID: <158918941310.1729.18360602872865292077@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 11 May 2020 10:30:13 +0100
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2] tests/gem_exec_nop:
 Remove submission batching
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-05-11 09:51:12)
> Hi Chris,
> 
> On Fri, 2020-05-08 at 18:54 +0100, Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-05-08 14:56:31)
> > >  static double nop_on_ring(int fd, uint32_t handle,
> > >                           const struct intel_execution_engine2 *e, int timeout,
> > > -                         unsigned long *out)
> > > +                         unsigned long *count)
> > >  {
> > >         struct drm_i915_gem_execbuffer2 execbuf;
> > >         struct drm_i915_gem_exec_object2 obj;
> > >         struct timespec start, now;
> > > -       unsigned long count;
> > > +       unsigned long total;
> > > +
> > > +       igt_assert(*count);
> > >  
> > >         memset(&obj, 0, sizeof(obj));
> > >         obj.handle = handle;
> > > @@ -93,18 +95,18 @@ static double nop_on_ring(int fd, uint32_t handle,
> > >         }
> > >         intel_detect_and_clear_missed_interrupts(fd);
> > >  
> > > -       count = 0;
> > > +       total = 0;
> > >         clock_gettime(CLOCK_MONOTONIC, &start);
> > >         do {
> > > -               for (int loop = 0; loop < 1024; loop++)
> > > +               for (int loop = 0; loop < *count; loop++)
> > 
> > This unnerves me. I expect to get this wrong when writing new callers.
> > 
> > There's no great reason to even have 1024 here, we can survive with
> > doing clock_gettime() every iteration, and just accept it as part of the
> > systematic cost.
> 
> Thanks for fixing this and merging the change.
> 
> Following our discussion on IRC which I probably didn't understand
> precisely enough but maybe have a better understanding now after having
> it reread, how about still addressing the "headless" requirement for
> better precision with the following hunk?
> 
> @@ -373,10 +372,12 @@ stable_nop_on_ring(int fd, uint32_t handle,
>         while (reps--) {
>                 unsigned long count;
>                 double time;
>  
>                 time = nop_on_ring(fd, handle, e, timeout, &count);
> +               igt_skip_on_f(count < 1000 * timeout,
> +                             "submicrosecond precision of time measurement\n");

Yes. I just can't remember off the top of my head what order of
magnitude the error was -- I think it was around an extra 100us (50x
worse latency).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
