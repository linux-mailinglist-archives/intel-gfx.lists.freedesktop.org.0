Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E446A18190C
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 14:03:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 443FC6E97C;
	Wed, 11 Mar 2020 13:03:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 223906E97C
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 13:02:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20521562-1500050 for multiple; Wed, 11 Mar 2020 13:02:56 +0000
MIME-Version: 1.0
In-Reply-To: <20200311125903.1982-1-chris@chris-wilson.co.uk>
References: <20200311125903.1982-1-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158393177543.10732.233554342691472095@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 11 Mar 2020 13:02:55 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gem: Take a copy of the engines
 for context_barrier_task
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

Quoting Chris Wilson (2020-03-11 12:59:03)
> +static inline struct i915_gem_engines *
> +__context_engines_await(const struct i915_gem_context *ctx)
> +{
> +       struct i915_gem_engines *engines;
> +
> +       rcu_read_lock();
> +       do {
> +               engines = rcu_dereference(ctx->engines);
> +               if (!unlikely(engines))
> +                       break;
> +
> +               if (!unlikely(i915_sw_fence_await(&engines->fence)))
> +                       continue;

Pebkac.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
