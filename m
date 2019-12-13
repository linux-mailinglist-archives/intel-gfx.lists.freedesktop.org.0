Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC35311E7C6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 17:09:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 220896EAFD;
	Fri, 13 Dec 2019 16:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C78D76EAFD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 16:09:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19570095-1500050 for multiple; Fri, 13 Dec 2019 16:09:23 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
In-Reply-To: <20191213155152.69182-1-venkata.s.dhanalakota@intel.com>
Message-ID: <157625336045.7535.4716622584112654192@skylake-alporthouse-com>
Date: Fri, 13 Dec 2019 16:09:20 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Register sysctl path
 globally
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

Quoting Venkata Sandeep Dhanalakota (2019-12-13 15:51:51)
> We do not require to register the sysctl paths per instance,
> so making registration global.
> 
> v2: make sysctl path register and unregister function driver
>     specific (Tvrtko and Lucas).
> 
> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c        |  9 ++++++++-
>  drivers/gpu/drm/i915/i915_perf.c       | 18 ++++++++++++++----
>  drivers/gpu/drm/i915/i915_perf.h       |  2 ++
>  drivers/gpu/drm/i915/i915_perf_types.h |  1 -
>  4 files changed, 24 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index bba6b50e6beb..4b33128070da 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -30,6 +30,7 @@
>  #include "display/intel_fbdev.h"
>  
>  #include "i915_drv.h"
> +#include "i915_perf.h"
>  #include "i915_globals.h"
>  #include "i915_selftest.h"
>  
> @@ -1051,7 +1052,12 @@ static int __init i915_init(void)
>                 return 0;
>         }
>  
> -       return pci_register_driver(&i915_pci_driver);
> +       err = pci_register_driver(&i915_pci_driver);
> +       if (err)
> +               return err;
> +
> +       i915_perf_sysctl_register();
> +       return 0;
>  }
>  
>  static void __exit i915_exit(void)
> @@ -1059,6 +1065,7 @@ static void __exit i915_exit(void)
>         if (!i915_pci_driver.driver.owner)
>                 return;
>  
> +       i915_perf_sysctl_unregister();
>         pci_unregister_driver(&i915_pci_driver);
>         i915_globals_exit();
>  }
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 8d2e37949f46..4abd7623ef2d 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -387,6 +387,8 @@ struct i915_oa_config_bo {
>         struct i915_vma *vma;
>  };
>  
> +static struct ctl_table_header *sysctl_header;
> +
>  static enum hrtimer_restart oa_poll_check_timer_cb(struct hrtimer *hrtimer);
>  
>  void i915_oa_config_release(struct kref *ref)
> @@ -4228,7 +4230,7 @@ static struct ctl_table dev_root[] = {
>  };
>  
>  /**
> - * i915_perf_init - initialize i915-perf state on module load
> + * i915_perf_init - initialize i915-perf state on module bind
>   * @i915: i915 device instance
>   *
>   * Initializes i915-perf state without exposing anything to userspace.
> @@ -4345,7 +4347,6 @@ void i915_perf_init(struct drm_i915_private *i915)
>  
>                 oa_sample_rate_hard_limit = 1000 *
>                         (RUNTIME_INFO(i915)->cs_timestamp_frequency_khz / 2);
> -               perf->sysctl_header = register_sysctl_table(dev_root);
>  
>                 mutex_init(&perf->metrics_lock);
>                 idr_init(&perf->metrics_idr);
> @@ -4381,6 +4382,17 @@ static int destroy_config(int id, void *p, void *data)
>         return 0;
>  }
>  
> +void i915_perf_sysctl_register(void)
> +{
> +       sysctl_header = register_sysctl_table(dev_root);
> +}
> +
> +void i915_perf_sysctl_unregister(void)
> +{
> +       if (sysctl_header)
> +               unregister_sysctl_table(sysctl_header);

unregister_sysctl_table() is NULL-safe.

Other than that,
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
