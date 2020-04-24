Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 584F11B7AF7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 18:01:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A03A6EAB0;
	Fri, 24 Apr 2020 16:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35ECF6EAAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 16:01:11 +0000 (UTC)
IronPort-SDR: XkSJwQgk1DG5vRn6+WeAhYGfEb1qoW2jBgzKGkdY+eeGAS5nykA8j3i5yKpAWDMiJMkoutMVlx
 LDI6AQR9gsEw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:01:08 -0700
IronPort-SDR: ncXpNv2O6SkaS6oY1BZ0s/CQb+vnZaJunoXLl8m+3J6axEG0Q3+Yu8JZtlNgFCtw2IAT+wft2f
 PeiavWBjBcig==
X-IronPort-AV: E=Sophos;i="5.73,311,1583222400"; d="scan'208";a="430809046"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2020 09:01:07 -0700
Message-ID: <cef4c88bf9b9c95379e9b36cc125816a08962bdc.camel@linux.intel.com>
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
Date: Fri, 24 Apr 2020 18:01:04 +0200
In-Reply-To: <20200424152412.5928-1-chris@chris-wilson.co.uk>
References: <20200424152412.5928-1-chris@chris-wilson.co.uk>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
User-Agent: Evolution 3.32.5 (3.32.5-1.fc30) 
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Lazily acquire the device
 wakeref for freeing objects
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

Hi Chris,

On Fri, 2020-04-24 at 16:24 +0100, Chris Wilson wrote:
> We only need the device wakeref on freeing the objects if we have to
> unbind the object from the global GTT, or otherwise update device
> information. If the objects are clean, we never need the wakeref, so
> avoid taking until required.
> 
> For this to be effective in preventing us from waking the device after
> it is unbind, we also need to mark the GGTT as closed on device removal.
> The GGTT will be rebuilt from scratch the next time we need to open it
> (on binding a new device).

Thanks for taking car of this issue.  Your solution looks very
promising to me at a first glance, but let me review it more thoroughly
and test it before I'm able to respond with an ack or R-b.

Thanks,
Janusz

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c   | 3 +++
>  drivers/gpu/drm/i915/gem/i915_gem_object.c | 3 ---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 9 +++++++--
>  drivers/gpu/drm/i915/gt/intel_gtt.h        | 1 +
>  drivers/gpu/drm/i915/i915_drv.c            | 1 +
>  drivers/gpu/drm/i915/i915_vma.c            | 3 ++-
>  6 files changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index b39c24dae64e..c6cead6f2b3e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -421,6 +421,9 @@ static void i915_gem_object_release_mmap_gtt(struct drm_i915_gem_object *obj)
>  	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>  	intel_wakeref_t wakeref;
>  
> +	if (!atomic_read(&i915->ggtt.vm.open))
> +		return;
> +
>  	/*
>  	 * Serialisation between user GTT access and our code depends upon
>  	 * revoking the CPU's PTE whilst the mutex is held. The next user
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 9d1d0131f7c2..99356c00c19e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -162,9 +162,7 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  				    struct llist_node *freed)
>  {
>  	struct drm_i915_gem_object *obj, *on;
> -	intel_wakeref_t wakeref;
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  	llist_for_each_entry_safe(obj, on, freed, freed) {
>  		struct i915_mmap_offset *mmo, *mn;
>  
> @@ -224,7 +222,6 @@ static void __i915_gem_free_objects(struct drm_i915_private *i915,
>  		call_rcu(&obj->rcu, __i915_gem_free_object_rcu);
>  		cond_resched();
>  	}
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  }
>  
>  void i915_gem_flush_free_objects(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 66165b10256e..b65545182ef5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -681,8 +681,6 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
>  {
>  	struct i915_vma *vma, *vn;
>  
> -	atomic_set(&ggtt->vm.open, 0);
> -
>  	rcu_barrier(); /* flush the RCU'ed__i915_vm_release */
>  	flush_workqueue(ggtt->vm.i915->wq);
>  
> @@ -709,6 +707,13 @@ static void ggtt_cleanup_hw(struct i915_ggtt *ggtt)
>  		io_mapping_fini(&ggtt->iomap);
>  }
>  
> +void i915_ggtt_driver_remove(struct drm_i915_private *i915)
> +{
> +	struct i915_ggtt *ggtt = &i915->ggtt;
> +
> +	atomic_set(&ggtt->vm.open, 0);
> +}
> +
>  /**
>   * i915_ggtt_driver_release - Clean up GGTT hardware initialization
>   * @i915: i915 device
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index d93ebdf3fa0e..f140ce5c171a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -501,6 +501,7 @@ int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>  void i915_ggtt_enable_guc(struct i915_ggtt *ggtt);
>  void i915_ggtt_disable_guc(struct i915_ggtt *ggtt);
>  int i915_init_ggtt(struct drm_i915_private *i915);
> +void i915_ggtt_driver_remove(struct drm_i915_private *i915);
>  void i915_ggtt_driver_release(struct drm_i915_private *i915);
>  
>  static inline bool i915_ggtt_has_aperture(const struct i915_ggtt *ggtt)
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 2d62efd9316f..bdf97a1cb7cc 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -768,6 +768,7 @@ static void i915_driver_hw_remove(struct drm_i915_private *dev_priv)
>  
>  	i915_perf_fini(dev_priv);
>  
> +	i915_ggtt_driver_remove(dev_priv);
>  	if (pdev->msi_enabled)
>  		pci_disable_msi(pdev);
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index fc14ebf9a0b7..6fe56ad2a542 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1319,7 +1319,8 @@ int i915_vma_unbind(struct i915_vma *vma)
>  		return -EAGAIN;
>  	}
>  
> -	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND))
> +	if (i915_vma_is_bound(vma, I915_VMA_GLOBAL_BIND) &&
> +	    atomic_read(&vma->vm->open))
>  		/* XXX not always required: nop_clear_range */
>  		wakeref = intel_runtime_pm_get(&vm->i915->runtime_pm);
>  

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
