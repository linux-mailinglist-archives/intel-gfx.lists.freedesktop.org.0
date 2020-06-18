Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814361FEE8B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 11:23:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6428C6E98C;
	Thu, 18 Jun 2020 09:23:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 328F36E98C
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 09:23:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21535327-1500050 for multiple; Thu, 18 Jun 2020 10:23:01 +0100
MIME-Version: 1.0
In-Reply-To: <a05d07a2-8f65-cfbd-2c16-83bfe81cfdd3@linux.intel.com>
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-3-tvrtko.ursulin@linux.intel.com>
 <159241302236.19488.10161905992897259551@build.alporthouse.com>
 <a05d07a2-8f65-cfbd-2c16-83bfe81cfdd3@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159247217901.4042.14297182857579041618@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 18 Jun 2020 10:22:59 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t 02/10] gem_wsim: Buffer objects
 working sets and complex dependencies
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

Quoting Tvrtko Ursulin (2020-06-18 10:05:56)
> 
> On 17/06/2020 17:57, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-06-17 17:01:12)
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Add support for defining buffer object working sets and targetting them as
> >> data dependencies. For more information please see the README file.
> >>
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> ---
> >>   benchmarks/gem_wsim.c                   | 453 +++++++++++++++++++++---
> >>   benchmarks/wsim/README                  |  59 +++
> >>   benchmarks/wsim/cloud-gaming-60fps.wsim |  11 +
> >>   benchmarks/wsim/composited-ui.wsim      |   7 +
> >>   4 files changed, 476 insertions(+), 54 deletions(-)
> >>   create mode 100644 benchmarks/wsim/cloud-gaming-60fps.wsim
> >>   create mode 100644 benchmarks/wsim/composited-ui.wsim
> >>
> >> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
> >> index 02fe8f5a5e69..9e5bfe6a36d4 100644
> >> --- a/benchmarks/gem_wsim.c
> >> +++ b/benchmarks/gem_wsim.c
> >> @@ -88,14 +88,21 @@ enum w_type
> >>          LOAD_BALANCE,
> >>          BOND,
> >>          TERMINATE,
> >> -       SSEU
> >> +       SSEU,
> >> +       WORKINGSET,
> >> +};
> >> +
> >> +struct dep_entry {
> >> +       int target;
> >> +       bool write;
> >> +       int working_set; /* -1 = step dependecy, >= 0 working set id */
> >>   };
> >>   
> >>   struct deps
> >>   {
> >>          int nr;
> >>          bool submit_fence;
> >> -       int *list;
> >> +       struct dep_entry *list;
> >>   };
> >>   
> >>   struct w_arg {
> >> @@ -110,6 +117,14 @@ struct bond {
> >>          enum intel_engine_id master;
> >>   };
> >>   
> >> +struct working_set {
> >> +       int id;
> >> +       bool shared;
> >> +       unsigned int nr;
> >> +       uint32_t *handles;
> >> +       unsigned long *sizes;
> >> +};
> >> +
> >>   struct workload;
> >>   
> >>   struct w_step
> >> @@ -143,6 +158,7 @@ struct w_step
> >>                          enum intel_engine_id bond_master;
> >>                  };
> >>                  int sseu;
> >> +               struct working_set working_set;
> >>          };
> >>   
> >>          /* Implementation details */
> >> @@ -193,6 +209,9 @@ struct workload
> >>          unsigned int nr_ctxs;
> >>          struct ctx *ctx_list;
> >>   
> >> +       struct working_set **working_sets; /* array indexed by set id */
> >> +       int max_working_set_id;
> >> +
> >>          int sync_timeline;
> >>          uint32_t sync_seqno;
> >>   
> >> @@ -281,11 +300,120 @@ print_engine_calibrations(void)
> >>          printf("\n");
> >>   }
> >>   
> >> +static void add_dep(struct deps *deps, struct dep_entry entry)
> >> +{
> >> +       deps->list = realloc(deps->list, sizeof(*deps->list) * (deps->nr + 1));
> >> +       igt_assert(deps->list);
> >> +
> >> +       deps->list[deps->nr++] = entry;
> >> +}
> >> +
> >> +
> >> +static int
> >> +parse_dependency(unsigned int nr_steps, struct w_step *w, char *str)
> >> +{
> >> +       struct dep_entry entry = { .working_set = -1 };
> >> +       bool submit_fence = false;
> >> +       char *s;
> >> +
> >> +       switch (str[0]) {
> >> +       case '-':
> >> +               if (str[1] < '0' || str[1] > '9')
> >> +                       return -1;
> >> +
> >> +               entry.target = atoi(str);
> >> +               if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
> >> +                       return -1;
> > 
> > add_dep for N steps ago, using a handle.
> > 
> >> +
> >> +               add_dep(&w->data_deps, entry);
> >> +
> >> +               break;
> >> +       case 's':
> >> +               submit_fence = true;
> >> +               /* Fall-through. */
> >> +       case 'f':
> >> +               /* Multiple fences not yet supported. */
> >> +               igt_assert_eq(w->fence_deps.nr, 0);
> >> +
> >> +               entry.target = atoi(++str);
> >> +               if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
> >> +                       return -1;
> >> +
> >> +               add_dep(&w->fence_deps, entry);
> >> +
> >> +               w->fence_deps.submit_fence = submit_fence;
> > 
> > add_dep for N steps ago, using the out-fence from that step
> > [A post processing steps adds emit_fence to the earlier steps.]
> > 
> >> +               break;
> >> +       case 'w':
> >> +               entry.write = true;
> > 
> > Got confused for a moment as I was expecting the submit_fence
> > fallthrough pattern.
> >> +               /* Fall-through. */
> >> +       case 'r':
> >> +               /*
> >> +                * [rw]N-<str>
> >> +                * r1-<str> or w2-<str>, where N is working set id.
> >> +                */
> >> +               s = index(++str, '-');
> >> +               if (!s)
> >> +                       return -1;
> >> +
> >> +               entry.working_set = atoi(str);
> > 
> > if (entry.working_set < 0)
> >       return -1;
> 
> Yep.
> 
> > 
> >> +
> >> +               if (parse_working_set_deps(w->wrk, &w->data_deps, entry, ++s))
> >> +                       return -1;
> > 
> > The new one...
> > 
> >> +static int
> >> +parse_working_set_deps(struct workload *wrk,
> >> +                      struct deps *deps,
> >> +                      struct dep_entry _entry,
> >> +                      char *str)
> >> +{
> >> +       /*
> >> +        * 1 - target handle index in the specified working set.
> >> +        * 2-4 - range
> >> +        */
> >> +       struct dep_entry entry = _entry;
> >> +       char *s;
> >> +
> >> +       s = index(str, '-');
> >> +       if (s) {
> >> +               int from, to;
> >> +
> >> +               from = atoi(str);
> >> +               if (from < 0)
> >> +                       return -1;
> >> +
> >> +               to = atoi(++s);
> >> +               if (to <= 0)
> >> +                       return -1;
> > 
> > if to < from, we add nothing. Is that worth the error?
> 
> Yep.
> 
> > 
> >> +
> >> +               for (entry.target = from; entry.target <= to; entry.target++)
> >> +                       add_dep(deps, entry);
> >> +       } else {
> >> +               entry.target = atoi(str);
> >> +               if (entry.target < 0)
> >> +                       return -1;
> >> +
> >> +               add_dep(deps, entry);
> > 
> > 
> >> +       }
> >> +
> >> +       return 0;
> >> +}
> >> +
> >> +               break;
> >> +       default:
> >> +               return -1;
> >> +       };
> >> +
> >> +       return 0;
> >> +}
> >> +
> >>   static int
> >>   parse_dependencies(unsigned int nr_steps, struct w_step *w, char *_desc)
> >>   {
> >>          char *desc = strdup(_desc);
> >>          char *token, *tctx = NULL, *tstart = desc;
> >> +       int ret = 0;
> >> +
> >> +       if (!strcmp(_desc, "0"))
> >> +               goto out;
> > 
> > Hang on, what this special case?
> 
> For no dependencies.
> 
> If I move the check to parse_dependency then dependency of "0/0/0/0" 
> would be silently accepted. It wouldn't be a big deal, who cares, but I 
> thought it is better to be more strict.

It was just not clear at this point what is being matched, what the
meaning of 0 is.

/* 0 refers to self, a degenerate dependency */
?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
