Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 189391FEE4B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2020 11:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E136EB2A;
	Thu, 18 Jun 2020 09:06:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C304F6EB2A
 for <Intel-gfx@lists.freedesktop.org>; Thu, 18 Jun 2020 09:05:59 +0000 (UTC)
IronPort-SDR: c90+vbiuUmA8KCFUBK8t7RC5i3C4aHcjvNdG0IKLtiOEEQUeYf588EIt+qbD9LxnejxkO9RfCL
 JXBFZSp1lIwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9655"; a="141578567"
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="141578567"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 02:05:59 -0700
IronPort-SDR: 7rTVCH96vmSc8PBtuVH1E41DcZjkH7KJeFZv4A7Lx2YvSUWqalonEgiWgRb5zU6WX6AQqcritY
 74GMbgRPymDg==
X-IronPort-AV: E=Sophos;i="5.73,526,1583222400"; d="scan'208";a="450571381"
Received: from ttulbure-mobl.ger.corp.intel.com (HELO [10.252.33.49])
 ([10.252.33.49])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2020 02:05:58 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
 <20200617160120.16555-3-tvrtko.ursulin@linux.intel.com>
 <159241302236.19488.10161905992897259551@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <a05d07a2-8f65-cfbd-2c16-83bfe81cfdd3@linux.intel.com>
Date: Thu, 18 Jun 2020 10:05:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <159241302236.19488.10161905992897259551@build.alporthouse.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/06/2020 17:57, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-06-17 17:01:12)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Add support for defining buffer object working sets and targetting them as
>> data dependencies. For more information please see the README file.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   benchmarks/gem_wsim.c                   | 453 +++++++++++++++++++++---
>>   benchmarks/wsim/README                  |  59 +++
>>   benchmarks/wsim/cloud-gaming-60fps.wsim |  11 +
>>   benchmarks/wsim/composited-ui.wsim      |   7 +
>>   4 files changed, 476 insertions(+), 54 deletions(-)
>>   create mode 100644 benchmarks/wsim/cloud-gaming-60fps.wsim
>>   create mode 100644 benchmarks/wsim/composited-ui.wsim
>>
>> diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
>> index 02fe8f5a5e69..9e5bfe6a36d4 100644
>> --- a/benchmarks/gem_wsim.c
>> +++ b/benchmarks/gem_wsim.c
>> @@ -88,14 +88,21 @@ enum w_type
>>          LOAD_BALANCE,
>>          BOND,
>>          TERMINATE,
>> -       SSEU
>> +       SSEU,
>> +       WORKINGSET,
>> +};
>> +
>> +struct dep_entry {
>> +       int target;
>> +       bool write;
>> +       int working_set; /* -1 = step dependecy, >= 0 working set id */
>>   };
>>   
>>   struct deps
>>   {
>>          int nr;
>>          bool submit_fence;
>> -       int *list;
>> +       struct dep_entry *list;
>>   };
>>   
>>   struct w_arg {
>> @@ -110,6 +117,14 @@ struct bond {
>>          enum intel_engine_id master;
>>   };
>>   
>> +struct working_set {
>> +       int id;
>> +       bool shared;
>> +       unsigned int nr;
>> +       uint32_t *handles;
>> +       unsigned long *sizes;
>> +};
>> +
>>   struct workload;
>>   
>>   struct w_step
>> @@ -143,6 +158,7 @@ struct w_step
>>                          enum intel_engine_id bond_master;
>>                  };
>>                  int sseu;
>> +               struct working_set working_set;
>>          };
>>   
>>          /* Implementation details */
>> @@ -193,6 +209,9 @@ struct workload
>>          unsigned int nr_ctxs;
>>          struct ctx *ctx_list;
>>   
>> +       struct working_set **working_sets; /* array indexed by set id */
>> +       int max_working_set_id;
>> +
>>          int sync_timeline;
>>          uint32_t sync_seqno;
>>   
>> @@ -281,11 +300,120 @@ print_engine_calibrations(void)
>>          printf("\n");
>>   }
>>   
>> +static void add_dep(struct deps *deps, struct dep_entry entry)
>> +{
>> +       deps->list = realloc(deps->list, sizeof(*deps->list) * (deps->nr + 1));
>> +       igt_assert(deps->list);
>> +
>> +       deps->list[deps->nr++] = entry;
>> +}
>> +
>> +
>> +static int
>> +parse_dependency(unsigned int nr_steps, struct w_step *w, char *str)
>> +{
>> +       struct dep_entry entry = { .working_set = -1 };
>> +       bool submit_fence = false;
>> +       char *s;
>> +
>> +       switch (str[0]) {
>> +       case '-':
>> +               if (str[1] < '0' || str[1] > '9')
>> +                       return -1;
>> +
>> +               entry.target = atoi(str);
>> +               if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
>> +                       return -1;
> 
> add_dep for N steps ago, using a handle.
> 
>> +
>> +               add_dep(&w->data_deps, entry);
>> +
>> +               break;
>> +       case 's':
>> +               submit_fence = true;
>> +               /* Fall-through. */
>> +       case 'f':
>> +               /* Multiple fences not yet supported. */
>> +               igt_assert_eq(w->fence_deps.nr, 0);
>> +
>> +               entry.target = atoi(++str);
>> +               if (entry.target > 0 || ((int)nr_steps + entry.target) < 0)
>> +                       return -1;
>> +
>> +               add_dep(&w->fence_deps, entry);
>> +
>> +               w->fence_deps.submit_fence = submit_fence;
> 
> add_dep for N steps ago, using the out-fence from that step
> [A post processing steps adds emit_fence to the earlier steps.]
> 
>> +               break;
>> +       case 'w':
>> +               entry.write = true;
> 
> Got confused for a moment as I was expecting the submit_fence
> fallthrough pattern.
>> +               /* Fall-through. */
>> +       case 'r':
>> +               /*
>> +                * [rw]N-<str>
>> +                * r1-<str> or w2-<str>, where N is working set id.
>> +                */
>> +               s = index(++str, '-');
>> +               if (!s)
>> +                       return -1;
>> +
>> +               entry.working_set = atoi(str);
> 
> if (entry.working_set < 0)
> 	return -1;

Yep.

> 
>> +
>> +               if (parse_working_set_deps(w->wrk, &w->data_deps, entry, ++s))
>> +                       return -1;
> 
> The new one...
> 
>> +static int
>> +parse_working_set_deps(struct workload *wrk,
>> +                      struct deps *deps,
>> +                      struct dep_entry _entry,
>> +                      char *str)
>> +{
>> +       /*
>> +        * 1 - target handle index in the specified working set.
>> +        * 2-4 - range
>> +        */
>> +       struct dep_entry entry = _entry;
>> +       char *s;
>> +
>> +       s = index(str, '-');
>> +       if (s) {
>> +               int from, to;
>> +
>> +               from = atoi(str);
>> +               if (from < 0)
>> +                       return -1;
>> +
>> +               to = atoi(++s);
>> +               if (to <= 0)
>> +                       return -1;
> 
> if to < from, we add nothing. Is that worth the error?

Yep.

> 
>> +
>> +               for (entry.target = from; entry.target <= to; entry.target++)
>> +                       add_dep(deps, entry);
>> +       } else {
>> +               entry.target = atoi(str);
>> +               if (entry.target < 0)
>> +                       return -1;
>> +
>> +               add_dep(deps, entry);
> 
> 
>> +       }
>> +
>> +       return 0;
>> +}
>> +
>> +               break;
>> +       default:
>> +               return -1;
>> +       };
>> +
>> +       return 0;
>> +}
>> +
>>   static int
>>   parse_dependencies(unsigned int nr_steps, struct w_step *w, char *_desc)
>>   {
>>          char *desc = strdup(_desc);
>>          char *token, *tctx = NULL, *tstart = desc;
>> +       int ret = 0;
>> +
>> +       if (!strcmp(_desc, "0"))
>> +               goto out;
> 
> Hang on, what this special case?

For no dependencies.

If I move the check to parse_dependency then dependency of "0/0/0/0" 
would be silently accepted. It wouldn't be a big deal, who cares, but I 
thought it is better to be more strict.

> 
>>   
>>          igt_assert(desc);
>>          igt_assert(!w->data_deps.nr && w->data_deps.nr == w->fence_deps.nr);
>>   static void __attribute__((format(printf, 1, 2)))
>> @@ -624,6 +722,88 @@ static int parse_engine_map(struct w_step *step, const char *_str)
>>          return 0;
>>   }
>>   
>> +static unsigned long parse_size(char *str)
>> +{
> /* "1234567890[gGmMkK]" */
>> +       const unsigned int len = strlen(str);
>> +       unsigned int mult = 1;
>> +
>> +       if (len == 0)
>> +               return 0;
>> +
>> +       switch (str[len - 1]) {
> 
> T? P? E? Let's plan ahead! :)

Error on unrecognized non-digit? Ok.

> 
>> +       case 'g':
>> +       case 'G':
>> +               mult *= 1024;
>> +               /* Fall-throuogh. */
>> +       case 'm':
>> +       case 'M':
>> +               mult *= 1024;
>> +               /* Fall-throuogh. */
>> +       case 'k':
>> +       case 'K':
>> +               mult *= 1024;
>> +
>> +               str[len - 1] = 0;
>> +       }
>> +
>> +       return atol(str) * mult;
> 
> Negatives?

Ok.

> 
>> +}
>> +
>> +static int add_buffers(struct working_set *set, char *str)
>> +{
>> +       /*
>> +        * 4096
>> +        * 4k
>> +        * 4m
>> +        * 4g
>> +        * 10n4k - 10 4k batches
>> +        */
>> +       unsigned long *sizes, size;
>> +       unsigned int add, i;
>> +       char *n;
>> +
>> +       n = index(str, 'n');
>> +       if (n) {
>> +               *n = 0;
>> +               add = atoi(str);
>> +               if (!add)
>> +                       return -1;
> 
> if (add <= 0) [int add goes without saying then]

Yep.

> 
>> +               str = ++n;
>> +       } else {
>> +               add = 1;
>> +       }
>> +
>> +       size = parse_size(str);
>> +       if (!size)
>> +               return -1;
>> +
>> +       sizes = realloc(set->sizes, (set->nr + add) * sizeof(*sizes));
>> +       if (!sizes)
>> +               return -1;
>> +
>> +       for (i = 0; i < add; i++)
>> +               sizes[set->nr + i] = size;
>> +
>> +       set->nr += add;
>> +       set->sizes = sizes;
>> +
>> +       return 0;
>> +}
> 
>> @@ -1003,6 +1209,51 @@ add_step:
>>                  }
>>          }
>>   
>> +       /*
>> +        * Check no duplicate working set ids.
>> +        */
>> +       for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
>> +               struct w_step *w2;
>> +
>> +               if (w->type != WORKINGSET)
>> +                       continue;
>> +
>> +               for (j = 0, w2 = wrk->steps; j < wrk->nr_steps; w2++, j++) {
>> +                       if (j == i)
>> +                               continue;
>> +                       if (w2->type != WORKINGSET)
>> +                               continue;
>> +
>> +                       check_arg(w->working_set.id == w2->working_set.id,
>> +                                 "Duplicate working set id at %u!\n", j);
>> +               }
>> +       }
>> +
>> +       /*
>> +        * Allocate shared working sets.
>> +        */
>> +       for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
>> +               if (w->type == WORKINGSET && w->working_set.shared)
>> +                       allocate_working_set(&w->working_set);
>> +       }
>> +
>> +       wrk->max_working_set_id = -1;
>> +       for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
>> +               if (w->type == WORKINGSET &&
>> +                   w->working_set.shared &&
>> +                   w->working_set.id > wrk->max_working_set_id)
>> +                       wrk->max_working_set_id = w->working_set.id;
>> +       }
>> +
>> +       wrk->working_sets = calloc(wrk->max_working_set_id + 1,
>> +                                  sizeof(*wrk->working_sets));
>> +       igt_assert(wrk->working_sets);
>> +
>> +       for (i = 0, w = wrk->steps; i < wrk->nr_steps; i++, w++) {
>> +               if (w->type == WORKINGSET && w->working_set.shared)
>> +                       wrk->working_sets[w->working_set.id] = &w->working_set;
>> +       }
> 
> Ok, sharing works by reusing the same set of handles within the process.
> 
> Is there room in the parser namespace for dmabuf sharing?

Plenty of unused characters. :)

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
