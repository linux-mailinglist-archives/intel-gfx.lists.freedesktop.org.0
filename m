Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D84AC1FD328
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 19:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30B6D6E9DB;
	Wed, 17 Jun 2020 17:09:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65F36E9DB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 17:09:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21528162-1500050 for multiple; Wed, 17 Jun 2020 18:09:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200617160120.16555-10-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-10-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159241374015.19488.9326114327906198949@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Jun 2020 18:09:00 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 09/10] gem_wsim: Implement device
 selection
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

Quoting Tvrtko Ursulin (2020-06-17 17:01:19)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> New command line options -L and -D <device> can respectively be used to
> list and select a GPU when more than one is present.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  benchmarks/gem_wsim.c | 62 +++++++++++++++++++++++++++++++------------
>  1 file changed, 45 insertions(+), 17 deletions(-)
> 
> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> index 96ee923fb699..ca07b670bd42 100644
> --- a/benchmarks/gem_wsim.c
> +++ b/benchmarks/gem_wsim.c
> @@ -43,6 +43,7 @@
>  #include <pthread.h>
>  #include <math.h>
>  
> +#include "igt_device_scan.h"
>  #include "intel_chipset.h"
>  #include "intel_reg.h"
>  #include "drm.h"
> @@ -2593,7 +2594,9 @@ static void print_help(void)
>  "  -S                Synchronize the sequence of random batch durations between\n"
>  "                    clients.\n"
>  "  -d                Sync between data dependencies in userspace.\n"
> -"  -f <scale>        Scale factor for batch durations."
> +"  -f <scale>        Scale factor for batch durations.\n"
> +"  -L                List GPUs.\n"
> +"  -D <gpu>          One of the GPUs from -L."

This is unlike you, I was expecting a range!
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
