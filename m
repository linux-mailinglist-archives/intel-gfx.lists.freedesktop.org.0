Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B58155BD9
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:33:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2FC56EB02;
	Fri,  7 Feb 2020 16:33:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96A026EB02
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:33:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20151048-1500050 for multiple; Fri, 07 Feb 2020 16:33:36 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20200207161331.23447-1-tvrtko.ursulin@linux.intel.com>
 <20200207161331.23447-6-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20200207161331.23447-6-tvrtko.ursulin@linux.intel.com>
Message-ID: <158109321467.16098.12817907526709789256@skylake-alporthouse-com>
Date: Fri, 07 Feb 2020 16:33:34 +0000
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Track per drm client engine
 class busyness
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

Quoting Tvrtko Ursulin (2020-02-07 16:13:30)
>  static inline void
> -__intel_context_stats_start(struct intel_context *ce, ktime_t now)
> +__intel_context_stats_start(struct intel_context *ce,
> +                           struct intel_engine_cs *engine,
> +                           ktime_t now)
>  {
>         struct intel_context_stats *stats = &ce->stats;
> -
> -       if (!stats->active) {
> -               stats->start = now;
> -               stats->active = true;
> +       struct i915_gem_context *ctx;
> +
> +       if (stats->active)
> +               return;
> +
> +       stats->start = now;
> +       stats->active = true;
> +
> +       rcu_read_lock();
> +       ctx = rcu_dereference(ce->gem_context);
> +       if (ctx && ctx->client) {

I'd rather avoid having to dig into the GEM context down here next to
the HW.

First thought would be to keep the stats local on the intel_context and
for the client to chase collate them when the user reads the fd.

Hmm, didn't you structure it like so earlier? What made you change your
mind?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
