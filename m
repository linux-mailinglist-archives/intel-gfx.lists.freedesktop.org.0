Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 308A5127F24
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:19:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B9D66EC53;
	Fri, 20 Dec 2019 15:19:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8029C6EC53
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:19:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19648217-1500050 for multiple; Fri, 20 Dec 2019 15:19:08 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191220151157.3073-1-ramalingam.c@intel.com>
References: <20191220151157.3073-1-ramalingam.c@intel.com>
Message-ID: <157685514650.18690.9555244107317984284@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 20 Dec 2019 15:19:06 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/lmem: debugfs for LMEM details
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

Quoting Ramalingam C (2019-12-20 15:11:57)
> From: Lukasz Fiedorowicz <lukasz.fiedorowicz@intel.com>
> 
> Debugfs i915_gem_object is extended to enable the IGTs to
> detect the LMEM's availability and the total size of LMEM.
> 
> v2: READ_ONCE is used [Chris]
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
> index d28468eaed57..7e8e5112da25 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -373,7 +373,11 @@ static int i915_gem_object_info(struct seq_file *m, void *data)
>                    atomic_read(&i915->mm.free_count),
>                    i915->mm.shrink_memory);
>  
> -       seq_putc(m, '\n');
> +       if (HAS_LMEM(i915)) {
> +               seq_printf(m, "LMEM total: %llu bytes, available %llu bytes\n",
> +                          READ_ONCE(i915->mm.regions[INTEL_REGION_LMEM]->total),
> +                          READ_ONCE(i915->mm.regions[INTEL_REGION_LMEM]->avail));

It has to be %pa &total, &avail. That removes the READ_ONE() :(
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
