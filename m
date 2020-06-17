Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA311FD323
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 19:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD9F6E9C8;
	Wed, 17 Jun 2020 17:07:54 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 73F316E9DB
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 17:07:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21528150-1500050 for multiple; Wed, 17 Jun 2020 18:07:23 +0100
MIME-Version: 1.0
In-Reply-To: <20200617160120.16555-8-tvrtko.ursulin@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-8-tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <159241364264.19488.3379036675234090722@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Jun 2020 18:07:22 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 07/10] gem_wsim: Log max and active
 working set sizes in verbose mode
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

Quoting Tvrtko Ursulin (2020-06-17 17:01:17)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> It is useful to know how much memory workload is allocating.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  benchmarks/gem_wsim.c | 100 +++++++++++++++++++++++++++++++++++++++---
>  1 file changed, 95 insertions(+), 5 deletions(-)
> 
> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> index 025385a144b8..96ee923fb699 100644
> --- a/benchmarks/gem_wsim.c
> +++ b/benchmarks/gem_wsim.c
> @@ -852,7 +852,8 @@ static uint64_t engine_list_mask(const char *_str)
>         return mask;
>  }
>  
> -static void allocate_working_set(struct workload *wrk, struct working_set *set);
> +static unsigned long
> +allocate_working_set(struct workload *wrk, struct working_set *set);
>  
>  static long __duration(long dur, double scale)
>  {
> @@ -1270,8 +1271,14 @@ add_step:
>          * Allocate shared working sets.
>          */
>         for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
> -               if (w->type == WORKINGSET && w->working_set.shared)
> -                       allocate_working_set(wrk, &w->working_set);
> +               if (w->type == WORKINGSET && w->working_set.shared) {
> +                       unsigned long total =
> +                               allocate_working_set(wrk, &w->working_set);
> +
> +                       if (verbose > 1)
> +                               printf("%u: %lu bytes in shared working set %u\n",
> +                                      wrk->id, total, w->working_set.id);
> +               }
>         }

The total total might be nice; although that doesn't reflect usage so
might be misleading as to what is the active RSS is at any time.
  
>         wrk->max_working_set_id = -1;
> @@ -1731,8 +1738,10 @@ get_buffer_size(struct workload *wrk, const struct work_buffer_size *sz)
>                        (sz->max + 1 - sz->min);
>  }
>  
> -static void allocate_working_set(struct workload *wrk, struct working_set *set)
> +static unsigned long
> +allocate_working_set(struct workload *wrk, struct working_set *set)
>  {
> +       unsigned long total = 0;
>         unsigned int i;
>  
>         set->handles = calloc(set->nr, sizeof(*set->handles));
> @@ -1741,7 +1750,82 @@ static void allocate_working_set(struct workload *wrk, struct working_set *set)
>         for (i = 0; i < set->nr; i++) {
>                 set->sizes[i].size = get_buffer_size(wrk, &set->sizes[i]);
>                 set->handles[i] = alloc_bo(fd, set->sizes[i].size);
> +               total += set->sizes[i].size;
> +       }
> +
> +       return total;
> +}
> +
> +static bool
> +find_dep(struct dep_entry *deps, unsigned int nr, struct dep_entry dep)
> +{
> +       unsigned int i;
> +
> +       for (i = 0; i < nr; i++) {
> +               if (deps[i].working_set == dep.working_set &&
> +                   deps[i].target == dep.target)
> +                       return true;
>         }
> +
> +       return false;
> +}
> +
> +static void measure_active_set(struct workload *wrk)
> +{
> +       unsigned long total = 0, batch_sizes = 0;
> +       struct dep_entry *deps = NULL;
> +       unsigned int nr = 0, i, j;
> +       struct w_step *w;
> +
> +       if (verbose < 3)
> +               return;
> +
> +       for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
> +               if (w->type != BATCH)
> +                       continue;
> +
> +               batch_sizes += w->bb_sz;
> +
> +               for (j = 0; j < w->data_deps.nr; j++) {
> +                       struct dep_entry *dep = &w->data_deps.list[j];
> +                       struct dep_entry _dep = *dep;
> +
> +                       if (dep->working_set == -1 && dep->target < 0) {
> +                               int idx = w->idx + dep->target;
> +
> +                               igt_assert(idx >= 0 && idx < w->idx);
> +                               igt_assert(wrk->steps[idx].type == BATCH);
> +
> +                               _dep.target = wrk->steps[idx].obj[0].handle;
> +                       }
> +
> +                       if (!find_dep(deps, nr, _dep)) {
> +                               if (dep->working_set == -1) {
> +                                       total += 4096;
> +                               } else {
> +                                       struct working_set *set;
> +
> +                                       igt_assert(dep->working_set <=
> +                                                  wrk->max_working_set_id);
> +
> +                                       set = wrk->working_sets[dep->working_set];
> +                                       igt_assert(set->nr);
> +                                       igt_assert(dep->target < set->nr);
> +                                       igt_assert(set->sizes[dep->target].size);
> +
> +                                       total += set->sizes[dep->target].size;
> +                               }
> +
> +                               deps = realloc(deps, (nr + 1) * sizeof(*deps));
> +                               deps[nr++] = *dep;
> +                       }
> +               }
> +       }

So a sum of all the unique handles used by all the steps.
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
