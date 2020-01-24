Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 195C614851E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 13:25:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129A76E33D;
	Fri, 24 Jan 2020 12:25:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC8A6E33D;
 Fri, 24 Jan 2020 12:25:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19994714-1500050 for multiple; Fri, 24 Jan 2020 12:25:27 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200124121759.22308-2-tvrtko.ursulin@linux.intel.com>
References: <20200124121759.22308-1-tvrtko.ursulin@linux.intel.com>
 <20200124121759.22308-2-tvrtko.ursulin@linux.intel.com>
Message-ID: <157986872522.2524.9769178618376317607@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 24 Jan 2020 12:25:25 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/2]
 tests/i915/gem_exec_parallel:Set engine map to default context
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-01-24 12:17:59)
> From: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> 
> Set the potential engine map of the parent client's default
> context to the newly created DRM client's default context.
> Without doing so there is a mismatch between the intended
> and actual engine used by the *-fds subtests.
> 
> v2: Fix FDS flags check
> 
> Tvrtko:
> v3: Use new helper gem_context_copy_engines.
> 
> Signed-off-by: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  tests/i915/gem_exec_parallel.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
> index cfbe78070873..0d4d6c6283e0 100644
> --- a/tests/i915/gem_exec_parallel.c
> +++ b/tests/i915/gem_exec_parallel.c
> @@ -83,10 +83,12 @@ static void *thread(void *data)
>                 pthread_cond_wait(t->cond, t->mutex);
>         pthread_mutex_unlock(t->mutex);
>  
> -       if (t->flags & FDS)
> +       if (t->flags & FDS) {
>                 fd = drm_open_driver(DRIVER_INTEL);
> -       else
> +               gem_context_copy_engines(t->fd, 0, fd, 0);

Makes sense,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
