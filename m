Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B4AF6058B7
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 09:34:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AA8410E375;
	Thu, 20 Oct 2022 07:34:41 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78AD410E375
 for <Intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666251278; x=1697787278;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Syu+tYKA13QsLD5OSljEgCHd+p/AphJBrPyjOMTUU1A=;
 b=mByjNvnWJ4r37/pI0jX+jp9V5pTMEcSSsqO1Puuan4NvuQcgMvrFQ2x5
 DQcBVpKjbqmjLrEAKiopyzoSgumbuv5ECmyZEEUdAH0yVtpxKYoVwi4OS
 2QBAPQSbfp+nx5aSFbom65QohYPg5NqbOy92dwDf5prnzDMcSf/UOCunh
 4SYc/kCV79pf0FJbL3tz35rCxN0K0+o18GrOFepb/Z5H/0WkxghDy+tZK
 XjXIyWBHH/Y7LcDw9d4+wPB+hNxZG9cEw0cbaM2t7arl/Qnc2K5K6rHwF
 F2Mahs3twUqtOexowtbBZFnayjKWLbC3UoNczs/GHNEuioJOwuSmtzjL2 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="287033479"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287033479"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 00:34:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660759258"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="660759258"
Received: from aasthash-mobl.ger.corp.intel.com (HELO [10.213.232.117])
 ([10.213.232.117])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 00:34:34 -0700
Message-ID: <391a77ea-1120-eb23-31f9-e7a14d84b10e@linux.intel.com>
Date: Thu, 20 Oct 2022 08:34:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Intel-gfx@lists.freedesktop.org
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
 <20221019173254.3361334-3-tvrtko.ursulin@linux.intel.com>
 <77499370-bb0e-7f7e-ac1b-ad14f47578d9@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <77499370-bb0e-7f7e-ac1b-ad14f47578d9@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC 02/17] drm: Track clients per owning process
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/10/2022 07:40, Christian König wrote:
> Am 19.10.22 um 19:32 schrieb Tvrtko Ursulin:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> To enable propagation of settings from the cgroup drm controller to 
>> drm we
>> need to start tracking which processes own which drm clients.
>>
>> Implement that by tracking the struct pid pointer of the owning 
>> process in
>> a new XArray, pointing to a structure containing a list of associated
>> struct drm_file pointers.
>>
>> Clients are added and removed under the filelist mutex and RCU list
>> operations are used below it to allow for lockless lookup.
> 
> That won't work easily like this. The problem is that file_priv->pid is 
> usually not accurate these days:
> 
>  From the debugfs clients file:
> 
>        systemd-logind   773   0   y    y     0          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>               firefox  2945 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                chrome 35940 128   n    n  1000          0
>                chrome 35940   0   n    y  1000          1
>                chrome 35940   0   n    y  1000          2
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
>                  Xorg  1639 128   n    n  1000          0
> 
> This is with glxgears and a bunch other OpenGL applications running.
> 
> The problem is that for most applications the X/Wayland server is now 
> opening the render node. The only exceptions in this case are apps using 
> DRI2 (VA-API?).
> 
> I always wanted to fix this and actually track who is using the file 
> descriptor instead of who opened it, but never had the time to do this.

There's a patch later in the series which allows client records to be 
migrated to a new PID, and then i915 patch to do that when fd is used 
for context create. That approach I think worked well enough in the 
past. So maybe it could be done in the DRM core at some suitable entry 
point.

> I think you need to fix this problem first. And BTW: and unsigned long 
> doesn't work as PID either with containers.

This I am not familiar with so would like to hear more if you could 
point me in the right direction at least.

My assumption was that struct pid *, which is what I store in unsigned 
long, would be unique in a system where there is a single kernel 
running, so as long as lifetimes are correct (released from tracking 
here when fd is closed, which is implicit on process exit) would work. 
You are suggesting that is not so?

Regards,

Tvrtko

> 
> Regards,
> Christian.
> 
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/Makefile     |  1 +
>>   drivers/gpu/drm/drm_cgroup.c | 60 ++++++++++++++++++++++++++++++++++++
>>   drivers/gpu/drm/drm_file.c   | 18 ++++++++---
>>   include/drm/drm_clients.h    | 31 +++++++++++++++++++
>>   include/drm/drm_file.h       |  4 +++
>>   5 files changed, 110 insertions(+), 4 deletions(-)
>>   create mode 100644 drivers/gpu/drm/drm_cgroup.c
>>   create mode 100644 include/drm/drm_clients.h
>>
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index 6e55c47288e4..0719970d17ee 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -59,6 +59,7 @@ drm-$(CONFIG_DRM_LEGACY) += \
>>       drm_scatter.o \
>>       drm_vm.o
>>   drm-$(CONFIG_DRM_LIB_RANDOM) += lib/drm_random.o
>> +drm-$(CONFIG_CGROUP_DRM) += drm_cgroup.o
>>   drm-$(CONFIG_COMPAT) += drm_ioc32.o
>>   drm-$(CONFIG_DRM_PANEL) += drm_panel.o
>>   drm-$(CONFIG_OF) += drm_of.o
>> diff --git a/drivers/gpu/drm/drm_cgroup.c b/drivers/gpu/drm/drm_cgroup.c
>> new file mode 100644
>> index 000000000000..a31ff1d593ab
>> --- /dev/null
>> +++ b/drivers/gpu/drm/drm_cgroup.c
>> @@ -0,0 +1,60 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <drm/drm_drv.h>
>> +#include <drm/drm_clients.h>
>> +
>> +static DEFINE_XARRAY(drm_pid_clients);
>> +
>> +void drm_clients_close(struct drm_file *file_priv)
>> +{
>> +    unsigned long pid = (unsigned long)file_priv->pid;
>> +    struct drm_device *dev = file_priv->minor->dev;
>> +    struct drm_pid_clients *clients;
>> +
>> +    lockdep_assert_held(&dev->filelist_mutex);
>> +
>> +    clients = xa_load(&drm_pid_clients, pid);
>> +    list_del_rcu(&file_priv->clink);
>> +    if (atomic_dec_and_test(&clients->num)) {
>> +        xa_erase(&drm_pid_clients, pid);
>> +        kfree_rcu(clients, rcu);
>> +    }
>> +}
>> +
>> +int drm_clients_open(struct drm_file *file_priv)
>> +{
>> +    unsigned long pid = (unsigned long)file_priv->pid;
>> +    struct drm_device *dev = file_priv->minor->dev;
>> +    struct drm_pid_clients *clients;
>> +    bool new_client = false;
>> +
>> +    lockdep_assert_held(&dev->filelist_mutex);
>> +
>> +    clients = xa_load(&drm_pid_clients, pid);
>> +    if (!clients) {
>> +        clients = kmalloc(sizeof(*clients), GFP_KERNEL);
>> +        if (!clients)
>> +            return -ENOMEM;
>> +        atomic_set(&clients->num, 0);
>> +        INIT_LIST_HEAD(&clients->file_list);
>> +        init_rcu_head(&clients->rcu);
>> +        new_client = true;
>> +    }
>> +    atomic_inc(&clients->num);
>> +    list_add_tail_rcu(&file_priv->clink, &clients->file_list);
>> +    if (new_client) {
>> +        void *xret;
>> +
>> +        xret = xa_store(&drm_pid_clients, pid, clients, GFP_KERNEL);
>> +        if (xa_err(xret)) {
>> +            list_del_init(&file_priv->clink);
>> +            kfree(clients);
>> +            return PTR_ERR(clients);
>> +        }
>> +    }
>> +
>> +    return 0;
>> +}
>> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
>> index a8b4d918e9a3..ce58d5c513db 100644
>> --- a/drivers/gpu/drm/drm_file.c
>> +++ b/drivers/gpu/drm/drm_file.c
>> @@ -40,6 +40,7 @@
>>   #include <linux/slab.h>
>>   #include <drm/drm_client.h>
>> +#include <drm/drm_clients.h>
>>   #include <drm/drm_drv.h>
>>   #include <drm/drm_file.h>
>>   #include <drm/drm_print.h>
>> @@ -298,6 +299,7 @@ static void drm_close_helper(struct file *filp)
>>       mutex_lock(&dev->filelist_mutex);
>>       list_del(&file_priv->lhead);
>> +    drm_clients_close(file_priv);
>>       mutex_unlock(&dev->filelist_mutex);
>>       drm_file_free(file_priv);
>> @@ -349,10 +351,8 @@ static int drm_open_helper(struct file *filp, 
>> struct drm_minor *minor)
>>       if (drm_is_primary_client(priv)) {
>>           ret = drm_master_open(priv);
>> -        if (ret) {
>> -            drm_file_free(priv);
>> -            return ret;
>> -        }
>> +        if (ret)
>> +            goto err_free;
>>       }
>>       filp->private_data = priv;
>> @@ -360,6 +360,9 @@ static int drm_open_helper(struct file *filp, 
>> struct drm_minor *minor)
>>       priv->filp = filp;
>>       mutex_lock(&dev->filelist_mutex);
>> +    ret = drm_clients_open(priv);
>> +    if (ret)
>> +        goto err_unlock;
>>       list_add(&priv->lhead, &dev->filelist);
>>       mutex_unlock(&dev->filelist_mutex);
>> @@ -387,6 +390,13 @@ static int drm_open_helper(struct file *filp, 
>> struct drm_minor *minor)
>>   #endif
>>       return 0;
>> +
>> +err_unlock:
>> +    mutex_unlock(&dev->filelist_mutex);
>> +err_free:
>> +    drm_file_free(priv);
>> +
>> +    return ret;
>>   }
>>   /**
>> diff --git a/include/drm/drm_clients.h b/include/drm/drm_clients.h
>> new file mode 100644
>> index 000000000000..4ae553a03d1e
>> --- /dev/null
>> +++ b/include/drm/drm_clients.h
>> @@ -0,0 +1,31 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#ifndef _DRM_CLIENTS_H_
>> +#define _DRM_CLIENTS_H_
>> +
>> +#include <drm/drm_file.h>
>> +
>> +struct drm_pid_clients {
>> +    atomic_t num;
>> +    struct list_head file_list;
>> +    struct rcu_head rcu;
>> +};
>> +
>> +#if IS_ENABLED(CONFIG_CGROUP_DRM)
>> +void drm_clients_close(struct drm_file *file_priv);
>> +int drm_clients_open(struct drm_file *file_priv);
>> +#else
>> +static inline void drm_clients_close(struct drm_file *file_priv)
>> +{
>> +}
>> +
>> +static inline int drm_clients_open(struct drm_file *file_priv)
>> +{
>> +    return 0;
>> +}
>> +#endif
>> +
>> +#endif
>> diff --git a/include/drm/drm_file.h b/include/drm/drm_file.h
>> index d780fd151789..0965eb111f24 100644
>> --- a/include/drm/drm_file.h
>> +++ b/include/drm/drm_file.h
>> @@ -268,6 +268,10 @@ struct drm_file {
>>       /** @minor: &struct drm_minor for this file. */
>>       struct drm_minor *minor;
>> +#if IS_ENABLED(CONFIG_CGROUP_DRM)
>> +    struct list_head clink;
>> +#endif
>> +
>>       /**
>>        * @object_idr:
>>        *
> 
