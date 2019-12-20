Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB441283AA
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 22:15:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70F5F6E14D;
	Fri, 20 Dec 2019 21:15:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 172636E14D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 21:15:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19651427-1500050 for multiple; Fri, 20 Dec 2019 21:15:27 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191220171224.18107-1-ramalingam.c@intel.com>
References: <20191220171224.18107-1-ramalingam.c@intel.com>
Message-ID: <157687652523.18690.4576833429945446124@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Dec 2019 21:15:25 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/lmem: debugfs for LMEM details
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

Quoting Ramalingam C (2019-12-20 17:12:24)
> From: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> 
> Debugfs i915_gem_object is extended to enable the IGTs to
> detect the LMEM's availability and the total size of LMEM.
> 
> v2: READ_ONCE is used [Chris]
> v3: %pa is used for printing the resource [Chris]
> 
> Signed-off-by: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_debugfs.c        | 6 +++++-
>  drivers/gpu/drm/i915/intel_memory_region.c | 5 ++++-
>  drivers/gpu/drm/i915/intel_memory_region.h | 2 ++
>  3 files changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index d28468eaed57..af11023b4c8d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -373,7 +373,11 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
>                    atomic_read(&i915->mm.free_count),
>                    i915->mm.shrink_memory);
>  
> -       seq_putc(m, '\n');
> +       if (HAS_LMEM(i915)) {
> +               seq_printf(m, "LMEM total: %pa bytes, available %pa bytes\n",
> +                          &i915->mm.regions[INTEL_REGION_LMEM]->total,
> +                          &i915->mm.regions[INTEL_REGION_LMEM]->avail);
> +       }

Note this should be for_each_mem_region()
	seq_printf(m, "%s total: %pa bytes, available %pa bytes\n",
			mem->name, &mem->total, &mem->avail);
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
