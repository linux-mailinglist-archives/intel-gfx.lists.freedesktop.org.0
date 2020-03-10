Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE76617F5FB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:17:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3757C6E08A;
	Tue, 10 Mar 2020 11:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F11806E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:17:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20507245-1500050 for multiple; Tue, 10 Mar 2020 11:17:02 +0000
MIME-Version: 1.0
In-Reply-To: <20200306133852.3420322-7-chris@chris-wilson.co.uk>
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-7-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158383902154.16414.418483971502793066@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 11:17:01 +0000
Subject: Re: [Intel-gfx] [PATCH 07/17] drm/i915/perf: Schedule oa_config
 after modifying the contexts
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

Quoting Chris Wilson (2020-03-06 13:38:42)
>  static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>  {
> -       struct i915_request *rq;
> +       struct i915_active *active;
> +       int err;
>  
> -       rq = stream->perf->ops.enable_metric_set(stream);
> -       if (IS_ERR(rq))
> -               return PTR_ERR(rq);
> +       active = i915_active_create();
> +       if (!active)
> +               return -ENOMEM;
>  
> -       i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> -       i915_request_put(rq);
> +       err = stream->perf->ops.enable_metric_set(stream, active);
> +       if (err == 0)
> +               i915_active_wait(active, TASK_UNINTERRUPTIBLE);

Why UNINTERRUPTIBLE you might ask?

Because if you've demonstrated that by having scheduled the oa config
update that by not waiting for the change, the machine becomes unusable,
that seems like a risk not worth taking.

Hence why the i915_request_wait() was uninterruptible and the
i915_active_wait() keeps the uninterruptible nature.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
