Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BAD120256
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 11:28:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C4006E48F;
	Mon, 16 Dec 2019 10:28:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D4F16E48F
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 10:28:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 02:28:05 -0800
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="209258111"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 02:28:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191213200231.71350-1-venkata.s.dhanalakota@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191213200231.71350-1-venkata.s.dhanalakota@intel.com>
Date: Mon, 16 Dec 2019 12:27:59 +0200
Message-ID: <87d0co1s5s.fsf@intel.com>
MIME-Version: 1.0
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
Cc: chris.p.wilson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 13 Dec 2019, Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com> wrote:
> We do not require to register the sysctl paths per instance,
> so making registration global.
>
> v2: make sysctl path register and unregister function driver
>     specific (Tvrtko and Lucas).
>
> v3: remove the NULL-check as unregister_sysctl_table is null
>     safe. (Chris and Lucas)
>
> Cc: Sudeep Dutt <sudeep.dutt@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Venkata Sandeep Dhanalakota <venkata.s.dhanalakota@intel.com>

Chris, I understand that *some* version of this passed IGT, and that the
patch series was re-sent rather too many times over a short period of
time, but please only push versions that actually pass CI.

BR,
Jani.


> ---
>  drivers/gpu/drm/i915/i915_pci.c        |  9 ++++++++-
>  drivers/gpu/drm/i915/i915_perf.c       | 17 +++++++++++++----
>  drivers/gpu/drm/i915/i915_perf.h       |  2 ++
>  drivers/gpu/drm/i915/i915_perf_types.h |  1 -
>  4 files changed, 23 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 877560b1031e..9571611b4b16 100644
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
> @@ -1053,7 +1054,12 @@ static int __init i915_init(void)
>  		return 0;
>  	}
>  
> -	return pci_register_driver(&i915_pci_driver);
> +	err = pci_register_driver(&i915_pci_driver);
> +	if (err)
> +		return err;
> +
> +	i915_perf_sysctl_register();
> +	return 0;
>  }
>  
>  static void __exit i915_exit(void)
> @@ -1061,6 +1067,7 @@ static void __exit i915_exit(void)
>  	if (!i915_pci_driver.driver.owner)
>  		return;
>  
> +	i915_perf_sysctl_unregister();
>  	pci_unregister_driver(&i915_pci_driver);
>  	i915_globals_exit();
>  }
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 8d2e37949f46..3c163a9d69a9 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -387,6 +387,8 @@ struct i915_oa_config_bo {
>  	struct i915_vma *vma;
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
>  		oa_sample_rate_hard_limit = 1000 *
>  			(RUNTIME_INFO(i915)->cs_timestamp_frequency_khz / 2);
> -		perf->sysctl_header = register_sysctl_table(dev_root);
>  
>  		mutex_init(&perf->metrics_lock);
>  		idr_init(&perf->metrics_idr);
> @@ -4381,6 +4382,16 @@ static int destroy_config(int id, void *p, void *data)
>  	return 0;
>  }
>  
> +void i915_perf_sysctl_register(void)
> +{
> +	sysctl_header = register_sysctl_table(dev_root);
> +}
> +
> +void i915_perf_sysctl_unregister(void)
> +{
> +	unregister_sysctl_table(sysctl_header);
> +}
> +
>  /**
>   * i915_perf_fini - Counter part to i915_perf_init()
>   * @i915: i915 device instance
> @@ -4395,8 +4406,6 @@ void i915_perf_fini(struct drm_i915_private *i915)
>  	idr_for_each(&perf->metrics_idr, destroy_config, perf);
>  	idr_destroy(&perf->metrics_idr);
>  
> -	unregister_sysctl_table(perf->sysctl_header);
> -
>  	memset(&perf->ops, 0, sizeof(perf->ops));
>  	perf->i915 = NULL;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_perf.h b/drivers/gpu/drm/i915/i915_perf.h
> index 4ceebce72060..882fdd0a7680 100644
> --- a/drivers/gpu/drm/i915/i915_perf.h
> +++ b/drivers/gpu/drm/i915/i915_perf.h
> @@ -23,6 +23,8 @@ void i915_perf_fini(struct drm_i915_private *i915);
>  void i915_perf_register(struct drm_i915_private *i915);
>  void i915_perf_unregister(struct drm_i915_private *i915);
>  int i915_perf_ioctl_version(void);
> +void i915_perf_sysctl_register(void);
> +void i915_perf_sysctl_unregister(void);
>  
>  int i915_perf_open_ioctl(struct drm_device *dev, void *data,
>  			 struct drm_file *file);
> diff --git a/drivers/gpu/drm/i915/i915_perf_types.h b/drivers/gpu/drm/i915/i915_perf_types.h
> index 74ddc20a0d37..45e581455f5d 100644
> --- a/drivers/gpu/drm/i915/i915_perf_types.h
> +++ b/drivers/gpu/drm/i915/i915_perf_types.h
> @@ -380,7 +380,6 @@ struct i915_perf {
>  	struct drm_i915_private *i915;
>  
>  	struct kobject *metrics_kobj;
> -	struct ctl_table_header *sysctl_header;
>  
>  	/*
>  	 * Lock associated with adding/modifying/removing OA configs

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
