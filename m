Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9149112B41E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2019 12:01:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22AC6E431;
	Fri, 27 Dec 2019 11:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C4F66E433
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2019 11:00:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19704016-1500050 for multiple; Fri, 27 Dec 2019 11:00:22 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191224084300.5435-1-ramalingam.c@intel.com>
References: <20191224084300.5435-1-ramalingam.c@intel.com>
Message-ID: <157744442124.14652.8587269441847899016@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 27 Dec 2019 11:00:21 +0000
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/lmem: debugfs for LMEM details
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

Quoting Ramalingam C (2019-12-24 08:43:00)
> From: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> 
> Debugfs i915_gem_object is extended to enable the IGTs to
> detect the LMEM's availability and the total size of LMEM.
> 
> v2: READ_ONCE is used [Chris]
> v3: %pa is used for printing the resource [Chris]
> v4: All regions' details added to debugfs [Chris]
> 
> Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c        | 12 +++++++++++-
>  drivers/gpu/drm/i915/intel_memory_region.c | 19 ++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_memory_region.h |  4 ++++
>  3 files changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index d28468eaed57..35f8db7690a5 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -367,13 +367,23 @@ static void print_context_stats(struct seq_file *m,
>  static int i915_gem_object_info(struct seq_file *m, void *data)
>  {
>         struct drm_i915_private *i915 = node_to_i915(m->private);
> +       struct intel_memory_region *mem;
> +       enum intel_region_id id;
>  
>         seq_printf(m, "%u shrinkable [%u free] objects, %llu bytes\n",
>                    i915->mm.shrink_count,
>                    atomic_read(&i915->mm.free_count),
>                    i915->mm.shrink_memory);
>  
> -       seq_putc(m, '\n');

Keep the newline before the switch to context info and after the general
memory info.

> +       for (id = INTEL_REGION_SMEM; id < INTEL_REGION_UNKNOWN; id++) {

We don't have a for_each_memregion() yet?

#define for_each_memory_region(mr, i915, id) \
	for (id = 0; id < ARRAY_SIZE((i915)->mm.regions); id++) \
		for_each_if(mr = i915->mm.regions[id])

> +               mem = i915->mm.regions[id];
> +               if (!mem)
> +                       continue;
> +
> +               seq_printf(m, "%s total: %pa bytes, available %pa bytes\n",
> +                          intel_get_mem_region_name(mem), &mem->total,
> +                          &mem->avail);
> +       }
>  
>         print_context_stats(m, i915);
>  
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
> index e24c280e5930..824aa13e993d 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/intel_memory_region.c
> @@ -10,6 +10,20 @@
>  #define REGION_MAP(type, inst) \
>         BIT((type) + INTEL_MEMORY_TYPE_SHIFT) | BIT(inst)
>  
> +char *intel_get_mem_region_name(struct intel_memory_region *mem)

const char. But as this does not scale, just put a char name[8] into
intel_memory_region and populate it on init.

> +{
> +       switch (MEMORY_TYPE_FROM_REGION(mem->id)) {
> +       case INTEL_REGION_SMEM:
> +               return "SYSTEM MEM";

WHY ALL THE SHOUTING OF DIFFERING NAMES?

Just system, local, stolen would do.

> +       case INTEL_REGION_LMEM:
> +               return "LOCAL MEM";
> +       case INTEL_REGION_STOLEN:
> +               return "STOLEN MEM";
> +       default:
> +               return NULL;
> +       }
> +}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
