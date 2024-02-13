Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A00E8539FD
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 19:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8562910E03D;
	Tue, 13 Feb 2024 18:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KLJc3aIY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F85810E03D
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 18:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707849411; x=1739385411;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=aweioUcqDPnfMicz/SBnCOgr075Vo+BAkwKpEdSRhFI=;
 b=KLJc3aIYfCbO3TCqt+uYGGoFYcBD+9qLYS9hQl2a3yoGtVeWwRj4/M+p
 G1CXco1HZZoIbSqyK5dGDMRBcf1TZAaSJEWrLEnV+49bkgI/R/DyRPcj1
 S6o/cVebrrCpF9Gz/aVPQBVNf5idcB2OuUaeo89coU94loG4HlB/qdqfI
 2cEv09SYz7El7TMv0xozlGthUnU5381B3z7Rz/Fmx4x/dJclk7+Y7y+LJ
 UWpRqF46uIT4xBuy+BZIhM6D6MmnNQeiNE5De3hIaEr+4y5YEE4YPjp6A
 456lM9znQuODl2jYKv4k9mdfr7dxGzTkacA0DqiEaiiZsyQZIpudDGOtS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1777959"
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="1777959"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:36:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,157,1705392000"; 
   d="scan'208";a="2869152"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.50])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 10:36:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [PATCH 2/2] i915/pmu: Cleanup pending events on unbind
In-Reply-To: <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240213180302.47266-1-umesh.nerlige.ramappa@intel.com>
 <20240213180302.47266-3-umesh.nerlige.ramappa@intel.com>
Date: Tue, 13 Feb 2024 20:36:43 +0200
Message-ID: <87sf1w6wjo.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Feb 2024, Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com=
> wrote:
> Once a user opens an fd for a perf event, if the driver undergoes a
> function level reset (FLR), the resources are not cleaned up as
> expected. For this discussion FLR is defined as a PCI unbind followed by
> a bind. perf_pmu_unregister() would cleanup everything, but when the user
> closes the perf fd, perf_release is executed and we encounter null
> pointer dereferences and/or list corruption in that path which require a
> reboot to recover.
>
> The only approach that worked to resolve this was to close the file
> associated with the event such that the relevant cleanup happens w.r.t.
> the open file. To do so, use the event->owner task and find the file
> relevant to the event and close it. This relies on the
> file->private_data matching the event object.
>
> Note:
> - Closing the event file is a delayed work that gets queued to system_wq.
> The close is seen to happen when kernel returns to user space following
> the unbind.
>
> - perf framework will access the pmu object after the last event has
> been destroyed. The drm device is refcounted in the init and destroy
> hooks, so this causes a use after free if we are releasing the drm
> device reference after unbind has been called. To work around this, we
> take an extra reference in the unbind path and release it using a
> delayed work in the destroy patch. The delayed work is queued to
> system_wq.
>
> Ref: https://lore.kernel.org/lkml/20240115170120.662220-1-tvrtko.ursulin@=
linux.intel.com/T/#me72abfa2771e6fc94b167ce47efdbf391cc313ab
>
> Opens:
> - Synchronization may be needed between i915_pmu_unregister and
> i915_pmu_event_destroy to avoid any races.
>
> - If unbind and bind happen from the same process the event fd is closed
> after bind completes. This means that the cleanup would not happen
> until bind completes. In this case, i915 loads fine, but pmu
> registration fails with an error that the sysfs entries are already
> present. There is no solution feasible here. Since this is not a fatal
> error (reloading i915 works fine) and the usual case is to have bind and
> unbind in separate processes, there is no intention to solve this.
>
> Other solutions/aspects tried:
> - Call perf_event_disable() followed by perf_event_release_kernel() in
> the unbind path to clean up the events. This still causes issues when
> user closes the fd since perf_event_release_kernel() is called again and
> fails requiring reboot.
>
> - Close all event fds in unbind and wait for the close to complete by
> checking if list is empty. This wait does not work since the files
> are actually closed when unbind returns to user space.
>
> Testing:
> - New IGT tests have been added for this and are run with KASAN and
>   kmemleak enabled.
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 96 ++++++++++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_pmu.h | 15 ++++++
>  2 files changed, 110 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_=
pmu.c
> index 4d2a289f848a..2f365c7f5db7 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -4,6 +4,8 @@
>   * Copyright =C2=A9 2017-2018 Intel Corporation
>   */
>=20=20
> +#include <linux/fdtable.h>
> +#include <linux/fs.h>
>  #include <linux/pm_runtime.h>
>=20=20
>  #include "gt/intel_engine.h"
> @@ -573,9 +575,21 @@ static void i915_pmu_event_destroy(struct perf_event=
 *event)
>  {
>  	struct i915_pmu *pmu =3D event_to_pmu(event);
>  	struct drm_i915_private *i915 =3D pmu_to_i915(pmu);
> +	struct i915_event *e =3D event->pmu_private;
>=20=20
>  	drm_WARN_ON(&i915->drm, event->parent);
>=20=20
> +	if (e) {
> +		event->pmu_private =3D NULL;
> +		list_del(&e->link);
> +		kfree(e);
> +	}
> +
> +	if (i915->pmu.closed && list_empty(&i915->pmu.initialized_events)) {
> +		pmu_teardown(&i915->pmu);
> +		mod_delayed_work(system_wq, &i915->pmu.work, 50);
> +	}
> +
>  	drm_dev_put(&i915->drm);
>  }
>=20=20
> @@ -684,6 +698,14 @@ static int i915_pmu_event_init(struct perf_event *ev=
ent)
>  		return ret;
>=20=20
>  	if (!event->parent) {
> +		struct i915_event *e =3D kzalloc(sizeof(*e), GFP_KERNEL);
> +
> +		if (!e)
> +			return -ENOMEM;
> +
> +		e->event =3D event;
> +		list_add(&e->link, &pmu->initialized_events);
> +		event->pmu_private =3D e;
>  		drm_dev_get(&i915->drm);
>  		event->destroy =3D i915_pmu_event_destroy;
>  	}
> @@ -1256,6 +1278,14 @@ void i915_pmu_exit(void)
>  		cpuhp_remove_multi_state(cpuhp_slot);
>  }
>=20=20
> +static void i915_pmu_release(struct work_struct *work)
> +{
> +	struct i915_pmu *pmu =3D container_of(work, typeof(*pmu), work.work);
> +	struct drm_i915_private *i915 =3D container_of(pmu, typeof(*i915), pmu);
> +
> +	drm_dev_put(&i915->drm);
> +}
> +
>  void i915_pmu_register(struct drm_i915_private *i915)
>  {
>  	struct i915_pmu *pmu =3D &i915->pmu;
> @@ -1313,6 +1343,9 @@ void i915_pmu_register(struct drm_i915_private *i91=
5)
>  	pmu->base.read		=3D i915_pmu_event_read;
>  	pmu->base.event_idx	=3D i915_pmu_event_event_idx;
>=20=20
> +	INIT_LIST_HEAD(&pmu->initialized_events);
> +	INIT_DELAYED_WORK(&pmu->work, i915_pmu_release);
> +
>  	ret =3D perf_pmu_register(&pmu->base, pmu->name, -1);
>  	if (ret)
>  		goto err_groups;
> @@ -1337,6 +1370,64 @@ void i915_pmu_register(struct drm_i915_private *i9=
15)
>  	drm_notice(&i915->drm, "Failed to register PMU!\n");
>  }
>=20=20
> +/* Ref: close_fd() */
> +static unsigned int __open_files(struct fdtable *fdt)
> +{
> +	unsigned int size =3D fdt->max_fds;
> +	unsigned int i;
> +
> +	for (i =3D size / BITS_PER_LONG; i > 0; ) {
> +		if (fdt->open_fds[--i])
> +			break;
> +	}
> +	return (i + 1) * BITS_PER_LONG;
> +}
> +
> +static void close_event_file(struct perf_event *event)
> +{
> +	unsigned int max_open_fds, fd;
> +	struct files_struct *files;
> +	struct task_struct *task;
> +	struct fdtable *fdt;
> +
> +	task =3D event->owner;
> +	if (!task)
> +		return;
> +
> +	files =3D task->files;
> +	if (!files)
> +		return;
> +
> +	spin_lock(&files->file_lock);
> +	fdt =3D files_fdtable(files);
> +	max_open_fds =3D __open_files(fdt);
> +	for (fd =3D 0; fd < max_open_fds; fd++) {
> +		struct file *file =3D fdt->fd[fd];
> +
> +		if (!file || file->private_data !=3D event)
> +			continue;
> +
> +		rcu_assign_pointer(fdt->fd[fd], NULL);
> +		__clear_bit(fd, fdt->open_fds);
> +		__clear_bit(fd / BITS_PER_LONG, fdt->full_fds_bits);
> +		if (fd < files->next_fd)
> +			files->next_fd =3D fd;
> +		filp_close(file, files);
> +		break;
> +	}
> +	spin_unlock(&files->file_lock);
> +}
> +
> +static void cleanup_events(struct i915_pmu *pmu)
> +{
> +	struct drm_i915_private *i915 =3D container_of(pmu, typeof(*i915), pmu);
> +	struct i915_event *e, *tmp;
> +
> +	drm_dev_get(&i915->drm);
> +	list_for_each_entry_safe(e, tmp, &pmu->initialized_events, link)
> +		close_event_file(e->event);
> +}
> +
>  void i915_pmu_unregister(struct drm_i915_private *i915)
>  {
>  	struct i915_pmu *pmu =3D &i915->pmu;
> @@ -1354,5 +1445,8 @@ void i915_pmu_unregister(struct drm_i915_private *i=
915)
>=20=20
>  	hrtimer_cancel(&pmu->timer);
>=20=20
> -	pmu_teardown(pmu);
> +	if (list_empty(&pmu->initialized_events))
> +		pmu_teardown(pmu);
> +	else
> +		cleanup_events(pmu);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_=
pmu.h
> index 41af038c3738..6f62e820f34d 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -55,6 +55,11 @@ struct i915_pmu_sample {
>  	u64 cur;
>  };
>=20=20
> +struct i915_event {
> +	struct perf_event *event;
> +	struct list_head link;
> +};
> +

Nobody needs this outside of i915_pmu.c.

>  struct i915_pmu {
>  	/**
>  	 * @cpuhp: Struct used for CPU hotplug handling.
> @@ -152,6 +157,16 @@ struct i915_pmu {
>  	 * @pmu_attr: Memory block holding device attributes.
>  	 */
>  	void *pmu_attr;
> +
> +	/**
> +	 * @initialized_events: List of initialized events
> +	 */
> +	struct list_head initialized_events;
> +
> +	/**
> +	 * @work: worker to delay release of drm device reference=20
> +	 */
> +	struct delayed_work work;
>  };
>=20=20
>  #ifdef CONFIG_PERF_EVENTS

--=20
Jani Nikula, Intel
