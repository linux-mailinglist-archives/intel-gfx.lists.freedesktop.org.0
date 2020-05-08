Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D2AC1CB664
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 19:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D7266EB3F;
	Fri,  8 May 2020 17:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5FA6E271;
 Fri,  8 May 2020 17:54:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21154357-1500050 for multiple; Fri, 08 May 2020 18:54:13 +0100
MIME-Version: 1.0
In-Reply-To: <20200508135631.8099-3-janusz.krzysztofik@linux.intel.com>
References: <20200508135631.8099-1-janusz.krzysztofik@linux.intel.com>
 <20200508135631.8099-3-janusz.krzysztofik@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158896045063.30605.10719204340280805143@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 08 May 2020 18:54:10 +0100
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

Quoting Janusz Krzysztofik (2020-05-08 14:56:31)
>  static double nop_on_ring(int fd, uint32_t handle,
>                           const struct intel_execution_engine2 *e, int timeout,
> -                         unsigned long *out)
> +                         unsigned long *count)
>  {
>         struct drm_i915_gem_execbuffer2 execbuf;
>         struct drm_i915_gem_exec_object2 obj;
>         struct timespec start, now;
> -       unsigned long count;
> +       unsigned long total;
> +
> +       igt_assert(*count);
>  
>         memset(&obj, 0, sizeof(obj));
>         obj.handle = handle;
> @@ -93,18 +95,18 @@ static double nop_on_ring(int fd, uint32_t handle,
>         }
>         intel_detect_and_clear_missed_interrupts(fd);
>  
> -       count = 0;
> +       total = 0;
>         clock_gettime(CLOCK_MONOTONIC, &start);
>         do {
> -               for (int loop = 0; loop < 1024; loop++)
> +               for (int loop = 0; loop < *count; loop++)

This unnerves me. I expect to get this wrong when writing new callers.

There's no great reason to even have 1024 here, we can survive with
doing clock_gettime() every iteration, and just accept it as part of the
systematic cost.

>                         gem_execbuf(fd, &execbuf);
>  
> -               count += 1024;
> +               total += *count;
>                 clock_gettime(CLOCK_MONOTONIC, &now);
>         } while (elapsed(&start, &now) < timeout);
>         igt_assert_eq(intel_detect_and_clear_missed_interrupts(fd), 0);
>  
> -       *out = count;
> +       *count = total;
>         return elapsed(&start, &now);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
