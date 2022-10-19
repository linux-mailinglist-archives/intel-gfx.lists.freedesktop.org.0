Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E81604FD9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 20:45:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96CF910E03A;
	Wed, 19 Oct 2022 18:45:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com
 [IPv6:2607:f8b0:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB1F110E02C
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 18:45:36 +0000 (UTC)
Received: by mail-pf1-x42e.google.com with SMTP id h13so18066432pfr.7
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 11:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
 :reply-to; bh=Shq/ANspULQpM+jmY/ItEvxo0c4euo/Y2Hzyv6LpqQk=;
 b=QvkbNwKv3uL21y9WnQdugb7J5FuBi/nHAZSSHsWuLdEs990fEmSOh9O7zHz869V4k1
 GgKjtfsLhykxTdurNKEH+B2NN1L+qDnACPis99Ozn25iJ48GhoREMe+Rbcj4fXl7OX9O
 R3RUwj2vdPpv61gmRM2FB3ybZpgIn5O+dkdkGidKGn9H9GT2E8L+Dy8JmlRAIVo0gOfx
 JcDhz7+KK+mfo/esXs3dUOBbXyWUWGMU3iDSh4od4UzwFbezsC4+fryQe+ja9oqktBpM
 uJpVpzkWjZcbJWdniEVbFoVGicnafqLSfP0xrD/prDhO0duXJmrdD3uDWYUlsmetI1AW
 0zzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Shq/ANspULQpM+jmY/ItEvxo0c4euo/Y2Hzyv6LpqQk=;
 b=DRQYFebm+kGYR3dDLflevLwHecLNV9oX+J1B1AfzFhlbjOcUFxBnGJ+3ZmQiEJ6/FE
 ZkkwIyr3JQFdZguQR6WK3ZNtuLchMcCWK/Pq47LtQpj+oBjdstzjd2YEfCdEX/eD8WZw
 FUaDgtVL3HxVZIhzXuPuF9EMm2jGj+v0sh3b2cLV4Tb9qzjrV+TR0kqIQiZsD59YEuGj
 sijlrrKMY+hm7YY9d3a97wUQJubbNiaHMqrm1apNNNq78wtlKeZ0NWiqB7RNovWc02ZT
 sz2wcz/O8nbBKQ9VIgkl0NQZfqKuxcpmv/MUlZZs7taOXLOcT8yHuN80QOVLk3hvDk41
 lzJQ==
X-Gm-Message-State: ACrzQf25g+eXYCWd1aPceyuup9w8qe5f6sXb/FOEKRftuz8RGd5h3DKk
 1t+AwWr7O72D1FwMZ2jr27g=
X-Google-Smtp-Source: AMsMyM726GVVscJ6aTLpr7k+YQ2cOomN1frlnHpAi5DC1hViUYKke2LdyyKq/Mjnc/hzRtxcekXmNQ==
X-Received: by 2002:a05:6a00:1905:b0:566:2a02:e1a1 with SMTP id
 y5-20020a056a00190500b005662a02e1a1mr10173939pfi.1.1666205136204; 
 Wed, 19 Oct 2022 11:45:36 -0700 (PDT)
Received: from localhost
 (2603-800c-1a02-1bae-a7fa-157f-969a-4cde.res6.spectrum.com.
 [2603:800c:1a02:1bae:a7fa:157f:969a:4cde])
 by smtp.gmail.com with ESMTPSA id
 ij19-20020a170902ab5300b0017f7628cbddsm11089309plb.30.2022.10.19.11.45.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Oct 2022 11:45:35 -0700 (PDT)
Date: Wed, 19 Oct 2022 08:45:34 -1000
From: Tejun Heo <tj@kernel.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Y1BFziiJdBzsIJWH@slm.duckdns.org>
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 00/17] DRM scheduling cgroup controller
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Intel-gfx@lists.freedesktop.org,
 Johannes Weiner <hannes@cmpxchg.org>, linux-kernel@vger.kernel.org,
 =?iso-8859-1?Q?St=E9phane?= Marchesin <marcheu@chromium.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 cgroups@vger.kernel.org, "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Wed, Oct 19, 2022 at 06:32:37PM +0100, Tvrtko Ursulin wrote:
...
> DRM static priority interface files
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
>   drm.priority_levels
> 	One of:
> 	 1) And integer representing the minimum number of discrete priority
> 	    levels for the whole group.
> 	    Optionally followed by an asterisk ('*') indicating some DRM clients
> 	    in the group support more than the minimum number.
> 	 2) '0'- indicating one or more DRM clients in the group has no support
> 	    for static priority control.
> 	 3) 'n/a' - when there are no DRM clients in the configured group.
> 
>   drm.priority
> 	A read-write integer between -10000 and 10000 (inclusive) representing
> 	an abstract static priority level.
> 
>   drm.effective_priority
> 	Read only integer showing the current effective priority level for the
> 	group. Effective meaning taking into account the chain of inherited

From interface POV, this is a lot worse than the second proposal and I'd
really like to avoid this. Even if we go with mapping user priority
configuration to per-driver priorities, I'd much prefer if the interface
presented to user is weight based and let each driver try to match the
resulting hierarchical weight (ie. the absolute proportion a given cgroup
should have at the point in time) as best as they can rather than exposing
opaque priority numbers to userspace whose meaning isn't defined at all.

> DRM scheduling soft limits interface files
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
>   drm.weight
> 	Standard cgroup weight based control [1, 10000] used to configure the
> 	relative distributing of GPU time between the sibling groups.

Please take a look at io.weight. This can follow the same convention to
express both global and per-device weights.

>   drm.period_us
> 	An integer representing the period with which the controller should look
> 	at the GPU usage by the group and potentially send the over/under budget
> 	signal.
> 	Value of zero (defaul) disables the soft limit checking.

Can we not do period_us or at least make it a per-driver tuning parameter
exposed as module param? Weight, users can easily understand and configure.
period_us is a lot more an implementation detail. If we want to express the
trade-off between latency and bandwidth at the interface, we prolly should
encode the latency requirement in a more canonical way but let's leave that
for the future.

>   drm.budget_supported
> 	One of:
> 	 1) 'yes' - when all DRM clients in the group support the functionality.
> 	 2) 'no' - when at least one of the DRM clients does not support the
> 		   functionality.
> 	 3) 'n/a' - when there are no DRM clients in the group.

Yeah, I'm not sure about this. This isn't a per-cgroup property to begin
with and I'm not sure 'no' meaning at least one device not supporting is
intuitive. The distinction between 'no' and 'n/a' is kinda weird too. Please
drop this.

Another basic interface question. Is everyone happy with the drm prefix or
should it be something like gpu? Also, in the future, if there's a consensus
around how to control gpu memory, what prefix would that take?

> The second proposal is a little bit more advanced in concept and also a little
> bit less finished. Interesting thing is that it builds upon the per client GPU
> utilisation work which landed recently for a few drivers. So my thinking is that
> in principle, an intersect of drivers which support both that and some sort of
> priority scheduling control, could also in theory support this.
> 
> Another really interesting angle for this controller is that it mimics the same
> control menthod used by the CPU scheduler. That is the proportional/weight based
> GPU time budgeting. Which makes it easy to configure and does not need a new
> mental model.
> 
> However, as the introduction mentions, GPUs are much more heterogenous and
> therefore the controller uses very "soft" wording as to what it promises. The
> general statement is that it can define budgets, notify clients when they are
> over them, and let individual drivers implement best effort handling of those
> conditions.
> 
> Delegation of duties in the implementation goes likes this:
> 
>  * DRM cgroup controller implements the control files and the scanning loop.
>  * DRM core is required to track all DRM clients belonging to processes so it
>    can answer when asked how much GPU time is a process using.
>  * DRM core also provides a call back which the controller will call when a
>    certain process is over budget.
>  * Individual drivers need to implement two similar hooks, but which work for
>    a single DRM client. Over budget callback and GPU utilisation query.
> 
> What I have demonstrated in practice is that when wired to i915, in a really
> primitive way where the over-budget condition simply lowers the scheduling
> priority, the concept can be almost equally effective as the static priority
> control. I say almost because the design where budget control depends on the
> periodic usage scanning has a fundamental delay, so responsiveness will depend
> on the scanning period, which may or may not be a problem for a particular use
> case.
> 
> The unfinished part is the GPU budgeting split which currently does not
> propagate unused bandwith to children, neither can share it with siblings. But
> this is not due fundamental reasons, just to avoid spending too much time on it
> too early.

Rather than doing it hierarchically on the spot, it's usually a lot cheaper
and easier to calculate the flattened hierarchical weight per leaf cgroup
and divide the bandwidth according to the eventual portions. For an example,
please take a look at block/blk-iocost.c.

I don't know much about the drm driver side, so can't comment much on it but
I do really like the idea of having the core implementation determining who
should get how much and then letting each driver enforce the target. That
seems a lot more robust and generic than trying to somehow coax and expose
per-driver priority implementations directly.

Thanks.

-- 
tejun
