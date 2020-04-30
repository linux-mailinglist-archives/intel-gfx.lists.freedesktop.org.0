Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3CF1C04DA
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2020 20:33:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D909F6E1B5;
	Thu, 30 Apr 2020 18:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7BB06E1B5;
 Thu, 30 Apr 2020 18:33:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21075318-1500050 for multiple; Thu, 30 Apr 2020 19:33:04 +0100
MIME-Version: 1.0
In-Reply-To: <20200430182859.892899-1-chris@chris-wilson.co.uk>
References: <20200430180102.879208-1-chris@chris-wilson.co.uk>
 <20200430182859.892899-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158827158298.7361.15827919911139778418@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 30 Apr 2020 19:33:02 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/perf_pmu: Attempt to unload i915
 while the PMU is active
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-30 19:28:59)
> +static void test_unload(void)
> +{
> +       igt_fork(child, 1) {
...
> +               igt_debug("Read %d events from perf and trial unload\n", count);
> +               pmu_read_multi(fd, count, buf);
> +               igt_assert_eq(unload_i915(), -EBUSY);
> +               pmu_read_multi(fd, count, buf);
> +               sleep(2);
> +
> +               igt_debug("Close perf\n");
> +               close(fd);
> +
> +               free(buf);
> +       }
> +       igt_waitchildren();
> +
> +       igt_debug("Final unload\n");
> +       sleep(5);
> +       igt_assert_eq(unload_i915(), 0);

The sleeps are not required, the child process is enough to kick the
perf_event_destroy.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
