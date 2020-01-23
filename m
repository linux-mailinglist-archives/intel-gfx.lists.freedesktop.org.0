Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4779F146426
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:09:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FCEA6FB63;
	Thu, 23 Jan 2020 09:09:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 521726FB62;
 Thu, 23 Jan 2020 09:09:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19979029-1500050 for multiple; Thu, 23 Jan 2020 09:09:02 +0000
MIME-Version: 1.0
To: Dale B Stimson <dale.b.stimson@intel.com>, igt-dev@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <225f88d1044053674cbd632998c69c0c677a530e.1579731227.git.dale.b.stimson@intel.com>
References: <cover.1579731227.git.dale.b.stimson@intel.com>
 <76818a8047c4b9da76d0619c7b8f58c89449b4ed.1579731227.git.dale.b.stimson@intel.com>
 <225f88d1044053674cbd632998c69c0c677a530e.1579731227.git.dale.b.stimson@intel.com>
Message-ID: <157977054018.18920.9879323586181021015@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 09:09:00 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] DBS:
 tests/i915/gem_ctx_isolation: use the gem_engine_topology library, part 2
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

Quoting Dale B Stimson (2020-01-22 23:26:57)
> Switch from simple iteration over all potential engines to using
> macro __for_each_physical_engine which only returns engines that are
> actually present.
> 
> For each context (as it is created) call gem_context_set_all_engines
> so that execbuf will interpret the engine specification in the new way.
> 
> Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
> ---
>  tests/i915/gem_ctx_isolation.c | 41 ++++++++++++++++++++++++++--------
>  1 file changed, 32 insertions(+), 9 deletions(-)
> 
> diff --git a/tests/i915/gem_ctx_isolation.c b/tests/i915/gem_ctx_isolation.c
> index 25113b054..31a20ed3a 100644
> --- a/tests/i915/gem_ctx_isolation.c
> +++ b/tests/i915/gem_ctx_isolation.c
> @@ -240,6 +240,25 @@ static bool ignore_register(uint32_t offset)
>         return false;
>  }
>  
> +/*
> + * context_create_plus_all_engines - Same as gem_context_create plus setup.
> + *
> + * This is a convenience function that may be called instead of the sequence
> + * of gem_context_create followed by gem_context_set_all_engines.
> + * If gem_has_engine_topology(), then function gem_context_set_all_engines
> + * indicates that future execbuf calls for this context should interpret the
> + * engine specification in a gem_engine_topology-compatible way.
> + */
> +static uint32_t context_create_plus_all_engines(int fd)
> +{
> +       uint32_t ctx;
> +
> +       ctx = gem_context_create(fd);
> +       gem_context_set_all_engines(fd, ctx);
> +
> +       return ctx;
> +}

gem_context_clone_with_engines() so we can stop assuming that
all-engines is the right answer, because that depends on the conditions
set up by the iterator on the first context.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
