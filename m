Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E6E3C5E88
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 16:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209F489CAA;
	Mon, 12 Jul 2021 14:42:08 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com
 [IPv6:2a00:1450:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B330789C9C
 for <Intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 14:42:06 +0000 (UTC)
Received: by mail-wr1-x42c.google.com with SMTP id k4so19658470wrc.8
 for <Intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 07:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=LLdrdAX/sieQxKFN+rBmNQf+DqHagqzLI3c34cxuMTk=;
 b=SrxufnDLGk34FGh/yzAGxpGqHQHB7elxjhl86O5tKUHNq1pPQt6VftQo8LtF+tQfqu
 B8oU8QnS1etc8O3jDUYJuN9O6YMZ7xkb0UKwo0/HlRgijqKKb/FFiPefDGVd52GsmPtO
 rwHsKWyVnL5Z9DqzcTuhCCOR62pn/spE4efK4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=LLdrdAX/sieQxKFN+rBmNQf+DqHagqzLI3c34cxuMTk=;
 b=IGCSkjEqjk4l/b/9dQFRGpaTDXy0TFKLDp4OAlKLq8+LUGwi5PbBVcvAMlR1Ud9Atx
 TPNUdl1TiABGwTItdszpjFhfU1s29llAloEO83ahwzr55P6n93CFwrO36icaLgsNWo+W
 p7so7SYNdMuHYvK8OcHpcxC5Tzt0rkE6LCyfIhTmH0FTpHdBhlcqHElJ/xc/SWWeEm8G
 +AMKj4w5lWU3HsZXV6G65A6faKtf7ov7h06tOlf78hvc3CLAH4tua3qERCiUqht9djxB
 dpKiXnKCijFW6Hldr4pQwNBWE6leXf2orozM2UqbhR6jzEIpEYfyJeKiELcTexE7JE9K
 UQ6A==
X-Gm-Message-State: AOAM532fF3sP9WBdY7dIxePJYdawFQOErcaIqD1cs+I1rnIFsHwGIRNX
 /r8sf8rWoFeDroMyBYFOXQWj4sFEVa7CuA==
X-Google-Smtp-Source: ABdhPJxwEnNzVbm+B41O+Mu4yAKjdp4HkdyzIUSF8hI39WrF2L7Q8iPaZ5s07ZiflmOckAtZkhpX6g==
X-Received: by 2002:adf:cf10:: with SMTP id o16mr27349389wrj.426.1626100925332; 
 Mon, 12 Jul 2021 07:42:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s13sm10689713wrm.13.2021.07.12.07.42.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 07:42:04 -0700 (PDT)
Date: Mon, 12 Jul 2021 16:42:03 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YOxUuxLqpIDEsmMT@phenom.ffwll.local>
References: <20210712121719.891536-1-tvrtko.ursulin@linux.intel.com>
 <20210712121719.891536-2-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210712121719.891536-2-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915: Explicitly track DRM clients
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 12, 2021 at 01:17:12PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> =

> Tracking DRM clients more explicitly will allow later patches to
> accumulate past and current GPU usage in a centralised place and also
> consolidate access to owning task pid/name.
> =

> Unique client id is also assigned for the purpose of distinguishing/
> consolidating between multiple file descriptors owned by the same process.
> =

> v2:
>  Chris Wilson:
>  * Enclose new members into dedicated structs.
>  * Protect against failed sysfs registration.
> =

> v3:
>  * sysfs_attr_init.
> =

> v4:
>  * Fix for internal clients.
> =

> v5:
>  * Use cyclic ida for client id. (Chris)
>  * Do not leak pid reference. (Chris)
>  * Tidy code with some locals.
> =

> v6:
>  * Use xa_alloc_cyclic to simplify locking. (Chris)
>  * No need to unregister individial sysfs files. (Chris)
>  * Rebase on top of fpriv kref.
>  * Track client closed status and reflect in sysfs.
> =

> v7:
>  * Make drm_client more standalone concept.
> =

> v8:
>  * Simplify sysfs show. (Chris)
>  * Always track name and pid.
> =

> v9:
>  * Fix cyclic id assignment.
> =

> v10:
>  * No need for a mutex around xa_alloc_cyclic.
>  * Refactor sysfs into own function.
>  * Unregister sysfs before freeing pid and name.
>  * Move clients setup into own function.
> =

> v11:
>  * Call clients init directly from driver init. (Chris)
> =

> v12:
>  * Do not fail client add on id wrap. (Maciej)
> =

> v13 (Lucas): Rebase.
> =

> v14:
>  * Dropped sysfs bits.
> =

> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk> # v11
> Reviewed-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com> # v11
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

On the implementation: I'm not clear why this is a separate object. All
that seems to achieve is make the lifetim fun we have in here even more
annoying, for not real gain?

What's the reasons for this separate i915_drm_client struct? The commit
message talks about de-duping these within the same process, but with
fdinfo I'm not seeing the relevance of this anymore.

Also, with the fdinfo approach, why do we still need to even track the
pid? That can be all figured out from proc now, with much cleaner
semantics.
-Daniel

> ---
>  drivers/gpu/drm/i915/Makefile          |   5 +-
>  drivers/gpu/drm/i915/i915_drm_client.c | 113 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drm_client.h |  61 +++++++++++++
>  drivers/gpu/drm/i915/i915_drv.c        |   6 ++
>  drivers/gpu/drm/i915/i915_drv.h        |   5 ++
>  drivers/gpu/drm/i915/i915_gem.c        |  21 ++++-
>  6 files changed, 206 insertions(+), 5 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_drm_client.c
>  create mode 100644 drivers/gpu/drm/i915/i915_drm_client.h
> =

> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 10b3bb6207ba..784f99ca11fc 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -33,8 +33,9 @@ subdir-ccflags-y +=3D -I$(srctree)/$(src)
>  # Please keep these build lists sorted!
>  =

>  # core driver code
> -i915-y +=3D i915_drv.o \
> -	  i915_config.o \
> +i915-y +=3D i915_config.o \
> +	  i915_drm_client.o \
> +	  i915_drv.o \
>  	  i915_irq.o \
>  	  i915_getparam.o \
>  	  i915_mitigations.o \
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i91=
5/i915_drm_client.c
> new file mode 100644
> index 000000000000..83080d9836b0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -0,0 +1,113 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#include <linux/kernel.h>
> +#include <linux/slab.h>
> +#include <linux/types.h>
> +
> +#include "i915_drm_client.h"
> +#include "i915_gem.h"
> +#include "i915_utils.h"
> +
> +void i915_drm_clients_init(struct i915_drm_clients *clients,
> +			   struct drm_i915_private *i915)
> +{
> +	clients->i915 =3D i915;
> +
> +	clients->next_id =3D 0;
> +	xa_init_flags(&clients->xarray, XA_FLAGS_ALLOC);
> +}
> +
> +static int
> +__i915_drm_client_register(struct i915_drm_client *client,
> +			   struct task_struct *task)
> +{
> +	char *name;
> +
> +	name =3D kstrdup(task->comm, GFP_KERNEL);
> +	if (!name)
> +		return -ENOMEM;
> +
> +	client->pid =3D get_task_pid(task, PIDTYPE_PID);
> +	client->name =3D name;
> +
> +	return 0;
> +}
> +
> +static void __i915_drm_client_unregister(struct i915_drm_client *client)
> +{
> +	put_pid(fetch_and_zero(&client->pid));
> +	kfree(fetch_and_zero(&client->name));
> +}
> +
> +static void __rcu_i915_drm_client_free(struct work_struct *wrk)
> +{
> +	struct i915_drm_client *client =3D
> +		container_of(wrk, typeof(*client), rcu.work);
> +
> +	xa_erase(&client->clients->xarray, client->id);
> +
> +	__i915_drm_client_unregister(client);
> +
> +	kfree(client);
> +}
> +
> +struct i915_drm_client *
> +i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct=
 *task)
> +{
> +	struct i915_drm_client *client;
> +	int ret;
> +
> +	client =3D kzalloc(sizeof(*client), GFP_KERNEL);
> +	if (!client)
> +		return ERR_PTR(-ENOMEM);
> +
> +	kref_init(&client->kref);
> +	client->clients =3D clients;
> +	INIT_RCU_WORK(&client->rcu, __rcu_i915_drm_client_free);
> +
> +	ret =3D xa_alloc_cyclic(&clients->xarray, &client->id, client,
> +			      xa_limit_32b, &clients->next_id, GFP_KERNEL);
> +	if (ret < 0)
> +		goto err_id;
> +
> +	ret =3D __i915_drm_client_register(client, task);
> +	if (ret)
> +		goto err_register;
> +
> +	return client;
> +
> +err_register:
> +	xa_erase(&clients->xarray, client->id);
> +err_id:
> +	kfree(client);
> +
> +	return ERR_PTR(ret);
> +}
> +
> +void __i915_drm_client_free(struct kref *kref)
> +{
> +	struct i915_drm_client *client =3D
> +		container_of(kref, typeof(*client), kref);
> +
> +	queue_rcu_work(system_wq, &client->rcu);
> +}
> +
> +void i915_drm_client_close(struct i915_drm_client *client)
> +{
> +	GEM_BUG_ON(READ_ONCE(client->closed));
> +	WRITE_ONCE(client->closed, true);
> +	i915_drm_client_put(client);
> +}
> +
> +void i915_drm_clients_fini(struct i915_drm_clients *clients)
> +{
> +	while (!xa_empty(&clients->xarray)) {
> +		rcu_barrier();
> +		flush_workqueue(system_wq);
> +	}
> +
> +	xa_destroy(&clients->xarray);
> +}
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i91=
5/i915_drm_client.h
> new file mode 100644
> index 000000000000..396f1e336b3f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -0,0 +1,61 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =A9 2020 Intel Corporation
> + */
> +
> +#ifndef __I915_DRM_CLIENT_H__
> +#define __I915_DRM_CLIENT_H__
> +
> +#include <linux/kref.h>
> +#include <linux/pid.h>
> +#include <linux/rcupdate.h>
> +#include <linux/sched.h>
> +#include <linux/xarray.h>
> +
> +struct drm_i915_private;
> +
> +struct i915_drm_clients {
> +	struct drm_i915_private *i915;
> +
> +	struct xarray xarray;
> +	u32 next_id;
> +};
> +
> +struct i915_drm_client {
> +	struct kref kref;
> +
> +	struct rcu_work rcu;
> +
> +	unsigned int id;
> +	struct pid *pid;
> +	char *name;
> +	bool closed;
> +
> +	struct i915_drm_clients *clients;
> +};
> +
> +void i915_drm_clients_init(struct i915_drm_clients *clients,
> +			   struct drm_i915_private *i915);
> +
> +static inline struct i915_drm_client *
> +i915_drm_client_get(struct i915_drm_client *client)
> +{
> +	kref_get(&client->kref);
> +	return client;
> +}
> +
> +void __i915_drm_client_free(struct kref *kref);
> +
> +static inline void i915_drm_client_put(struct i915_drm_client *client)
> +{
> +	kref_put(&client->kref, __i915_drm_client_free);
> +}
> +
> +void i915_drm_client_close(struct i915_drm_client *client);
> +
> +struct i915_drm_client *i915_drm_client_add(struct i915_drm_clients *cli=
ents,
> +					    struct task_struct *task);
> +
> +void i915_drm_clients_fini(struct i915_drm_clients *clients);
> +
> +#endif /* !__I915_DRM_CLIENT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
drv.c
> index 30d8cd8c69b1..8247dcc7586e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -68,6 +68,7 @@
>  #include "gt/intel_rc6.h"
>  =

>  #include "i915_debugfs.h"
> +#include "i915_drm_client.h"
>  #include "i915_drv.h"
>  #include "i915_ioc32.h"
>  #include "i915_irq.h"
> @@ -343,6 +344,8 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>  =

>  	intel_gt_init_early(&dev_priv->gt, dev_priv);
>  =

> +	i915_drm_clients_init(&dev_priv->clients, dev_priv);
> +
>  	i915_gem_init_early(dev_priv);
>  =

>  	/* This must be called before any calls to HAS_PCH_* */
> @@ -362,6 +365,7 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>  =

>  err_gem:
>  	i915_gem_cleanup_early(dev_priv);
> +	i915_drm_clients_fini(&dev_priv->clients);
>  	intel_gt_driver_late_release(&dev_priv->gt);
>  	intel_region_ttm_device_fini(dev_priv);
>  err_ttm:
> @@ -381,6 +385,7 @@ static void i915_driver_late_release(struct drm_i915_=
private *dev_priv)
>  	intel_irq_fini(dev_priv);
>  	intel_power_domains_cleanup(dev_priv);
>  	i915_gem_cleanup_early(dev_priv);
> +	i915_drm_clients_fini(&dev_priv->clients);
>  	intel_gt_driver_late_release(&dev_priv->gt);
>  	intel_region_ttm_device_fini(dev_priv);
>  	vlv_suspend_cleanup(dev_priv);
> @@ -996,6 +1001,7 @@ static void i915_driver_postclose(struct drm_device =
*dev, struct drm_file *file)
>  	struct drm_i915_file_private *file_priv =3D file->driver_priv;
>  =

>  	i915_gem_context_close(file);
> +	i915_drm_client_close(file_priv->client);
>  =

>  	kfree_rcu(file_priv, rcu);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index c4747f4407ef..338d384c31eb 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -96,6 +96,7 @@
>  #include "intel_wakeref.h"
>  #include "intel_wopcm.h"
>  =

> +#include "i915_drm_client.h"
>  #include "i915_gem.h"
>  #include "i915_gem_gtt.h"
>  #include "i915_gpu_error.h"
> @@ -284,6 +285,8 @@ struct drm_i915_file_private {
>  	/** ban_score: Accumulated score of all ctx bans and fast hangs. */
>  	atomic_t ban_score;
>  	unsigned long hang_timestamp;
> +
> +	struct i915_drm_client *client;
>  };
>  =

>  /* Interface history:
> @@ -1218,6 +1221,8 @@ struct drm_i915_private {
>  =

>  	struct i915_pmu pmu;
>  =

> +	struct i915_drm_clients clients;
> +
>  	struct i915_hdcp_comp_master *hdcp_master;
>  	bool hdcp_comp_added;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_=
gem.c
> index 590efc8b0265..ea6c88a99ed2 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1179,25 +1179,40 @@ void i915_gem_cleanup_early(struct drm_i915_priva=
te *dev_priv)
>  int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file)
>  {
>  	struct drm_i915_file_private *file_priv;
> -	int ret;
> +	struct i915_drm_client *client;
> +	int ret =3D -ENOMEM;
>  =

>  	DRM_DEBUG("\n");
>  =

>  	file_priv =3D kzalloc(sizeof(*file_priv), GFP_KERNEL);
>  	if (!file_priv)
> -		return -ENOMEM;
> +		goto err_alloc;
> +
> +	client =3D i915_drm_client_add(&i915->clients, current);
> +	if (IS_ERR(client)) {
> +		ret =3D PTR_ERR(client);
> +		goto err_client;
> +	}
>  =

>  	file->driver_priv =3D file_priv;
>  	file_priv->dev_priv =3D i915;
>  	file_priv->file =3D file;
> +	file_priv->client =3D client;
>  =

>  	file_priv->bsd_engine =3D -1;
>  	file_priv->hang_timestamp =3D jiffies;
>  =

>  	ret =3D i915_gem_context_open(i915, file);
>  	if (ret)
> -		kfree(file_priv);
> +		goto err_context;
> +
> +	return 0;
>  =

> +err_context:
> +	i915_drm_client_close(client);
> +err_client:
> +	kfree(file_priv);
> +err_alloc:
>  	return ret;
>  }
>  =

> -- =

> 2.30.2
> =


-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
