Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1583B57E81
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Sep 2025 16:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE91010E2E0;
	Mon, 15 Sep 2025 14:13:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="bMNjLMb9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A7010E2E0
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 14:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1757945621;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wVdn0DPWHUbkLEPLdY+zWqs5jFzexOcoSsUmWxZ7iDA=;
 b=bMNjLMb9BRZprUHsvr4UdIWPGiYFnJi93Zci2KISesavcnfxy6mIoCO0CYuV2wKYhrtmPC
 k9DLiqizxe3G9silnCMWMCrkXOdnKvg8/Bk6RCHGBse+L1Uq6VZgj3+bMwfJZ/CvFU57Kk
 5sjr+rGM0VH0G621b5y5/sTvRzmb7rI=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-471-XpQt23sfM9ygpw-MGlyy5w-1; Mon, 15 Sep 2025 10:13:36 -0400
X-MC-Unique: XpQt23sfM9ygpw-MGlyy5w-1
X-Mimecast-MFC-AGG-ID: XpQt23sfM9ygpw-MGlyy5w_1757945610
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-7fff4abc97cso1089142185a.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Sep 2025 07:13:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757945610; x=1758550410;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:subject:user-agent:mime-version:date:message-id:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wVdn0DPWHUbkLEPLdY+zWqs5jFzexOcoSsUmWxZ7iDA=;
 b=M/MgW0ylTz5i3wwdvGXQUJrWf/zZiivOch4AErD5Hkz2P48UZBtPPyKin5N8B5+wS+
 NxzZ0FYdbMq4wUsfgfteS/EoWaFPPIGylmakdQjdpOXV5Ewu++CT3uvSFhZe8+XpaxLS
 cHdMTbFXjp9A3zjA/ZgclyGDxw7OyM1ZihBLE7HMY2f0RbjBtaTKNqiJb4sqgkjmt2X6
 ZFTtpXqroOLeVl5mgj2ncC01F5PBh1ZYRb+oxWlDf9WyAu84RSRxvhzDlF/OgQuPfKNq
 8B5yvu+u9J403caU4TH1l49tAYHmQGdOfIAo9m81kTF5NDvGXTfAq1mAf7thVFzFqrPm
 fBog==
X-Forwarded-Encrypted: i=1;
 AJvYcCX1oYbxactJ69SfYp3qb7x5sXJptuw7eWKjnvYPsI8nNsmzNCOYSbFZRMJZqAqamIBjlhmhrI9eFrw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzDY846uix7RTCEHV+ZEla24FdGCk+Fq8K42QyK3MmbBJM9F0R0
 9MCBgVUrGpxA1wKDef9PEBCkXuD8Oc1izKXj5TvzmApljWDArwCQuAZZieXVRSGlv7DrZyUBOmA
 spjo6kDBl9H1UbHS470GPNJpKOCeJpaj3gk34U2H3LfxNFgv4Fg4hZJGSf3LTcaXmn8mkyQ==
X-Gm-Gg: ASbGnctx3bWr00lBNSZaWR+myvcgzWL9+10NtQ6v7OpH5v7iertjUXYyQu95oCrECQK
 RV78/dTdCZjRC0e8rirG2ONaT/H5VcKdzscfvIR3fzC0GpLcovstZvreKuZyjkNTA8HB+H8Y8it
 09m7wXX055XsqAY2PJ9hUN+MwwagBAgzHCmh7v8A9fPk8qT/CK6hw0VRv7yAygh1lVBNwNuqCGr
 n63TVBm3+0YUWWIHzFGaBr0To0hAYoiPnbnBokHa0wbXoFxkO9B3LahqeD9GDICA+s/JA1uNZLw
 GKG753aeOvvFrQW1XVwNQ7BrL1kHB9DRg3HVd5a++Nw5V7Ef3rIWWiKDTmQALX1zGuWKALOcRUD
 Jz1BdkIV6gg==
X-Received: by 2002:a05:6214:1c48:b0:783:aeed:f585 with SMTP id
 6a1803df08f44-783aeedf838mr35484406d6.14.1757945610164; 
 Mon, 15 Sep 2025 07:13:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTppRgm9Zr+i6yKV7XaF5zz8E26tx9E9U11cHDaiNozJpKImHlUxPb0H8lw3W3qvOa9oFD+g==
X-Received: by 2002:a05:6214:1c48:b0:783:aeed:f585 with SMTP id
 6a1803df08f44-783aeedf838mr35483486d6.14.1757945609106; 
 Mon, 15 Sep 2025 07:13:29 -0700 (PDT)
Received: from ?IPV6:2601:188:c180:4250:ecbe:130d:668d:951d?
 ([2601:188:c180:4250:ecbe:130d:668d:951d])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-78903aec245sm7995186d6.23.2025.09.15.07.13.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 15 Sep 2025 07:13:27 -0700 (PDT)
From: Waiman Long <llong@redhat.com>
X-Google-Original-From: Waiman Long <longman@redhat.com>
Message-ID: <69af79b6-a4f2-4007-aef4-fcaeeadd3f99@redhat.com>
Date: Mon, 15 Sep 2025 10:13:26 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] rcu: Remove redundant rcu_read_lock/unlock() in
 spin_lock critical sections
To: pengdonglin <dolinux.peng@gmail.com>, tj@kernel.org, tony.luck@intel.com, 
 jani.nikula@linux.intel.com, ap420073@gmail.com, jv@jvosburgh.net,
 freude@linux.ibm.com, bcrl@kvack.org, trondmy@kernel.org, kees@kernel.org
Cc: bigeasy@linutronix.de, linux-kernel@vger.kernel.org,
 linux-rt-devel@lists.linux.dev, linux-nfs@vger.kernel.org,
 linux-aio@kvack.org, linux-fsdevel@vger.kernel.org,
 linux-security-module@vger.kernel.org, netdev@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org,
 linux-s390@vger.kernel.org, cgroups@vger.kernel.org,
 Hillf Danton <hdanton@sina.com>, "Paul E . McKenney" <paulmck@kernel.org>,
 pengdonglin <pengdonglin@xiaomi.com>
References: <20250915134729.1801557-1-dolinux.peng@gmail.com>
In-Reply-To: <20250915134729.1801557-1-dolinux.peng@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: jcdBg_3nXrVq_QEOF14RJ8-E34gNceMws90yyb3VrNM_1757945610
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 9/15/25 9:47 AM, pengdonglin wrote:
> From: pengdonglin <pengdonglin@xiaomi.com>
>
> Per Documentation/RCU/rcu_dereference.rst [1], since Linux 4.20's RCU
> consolidation [2][3], RCU read-side critical sections include:
>    - Explicit rcu_read_lock()
>    - BH/interrupt/preemption-disabling regions
>    - Spinlock critical sections (including CONFIG_PREEMPT_RT kernels [4])
>
> Thus, explicit rcu_read_lock()/unlock() calls within spin_lock*() regions are redundant.
> This patch removes them, simplifying locking semantics while preserving RCU protection.
>
> [1] https://elixir.bootlin.com/linux/v6.17-rc5/source/Documentation/RCU/rcu_dereference.rst#L407
> [2] https://lore.kernel.org/lkml/20180829222021.GA29944@linux.vnet.ibm.com/
> [3] https://lwn.net/Articles/777036/
> [4] https://lore.kernel.org/lkml/6435833a-bdcb-4114-b29d-28b7f436d47d@paulmck-laptop/
>
> Cc: Waiman Long <longman@redhat.com>
> Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Cc: Hillf Danton <hdanton@sina.com>
> Cc: Paul E. McKenney <paulmck@kernel.org>
> Signed-off-by: pengdonglin <pengdonglin@xiaomi.com>
> Signed-off-by: pengdonglin <dolinux.peng@gmail.com>
> ---
> Changes in v2:
>    - Clarified commit message to prevent accidental backport to older kernels
>    - Added lockdep_is_held() to avoid false positives
> ---
>   drivers/acpi/apei/ghes.c                        | 2 --
>   drivers/gpu/drm/i915/gt/intel_ring_submission.c | 2 --
>   drivers/net/amt.c                               | 8 --------
>   drivers/net/bonding/bond_3ad.c                  | 2 --
>   drivers/net/wireless/ath/ath9k/xmit.c           | 2 --
>   drivers/s390/crypto/pkey_base.c                 | 3 ---
>   fs/aio.c                                        | 6 ++----
>   fs/nfs/callback_proc.c                          | 2 --
>   fs/nfs/nfs4state.c                              | 2 --
>   fs/nfs/pnfs.c                                   | 9 ---------
>   fs/nfs/pnfs_dev.c                               | 4 ----
>   ipc/msg.c                                       | 1 -
>   ipc/sem.c                                       | 1 -
>   ipc/shm.c                                       | 1 -
>   ipc/util.c                                      | 2 --
>   kernel/cgroup/cgroup.c                          | 2 --
>   kernel/cgroup/cpuset.c                          | 6 ------
>   kernel/cgroup/debug.c                           | 4 ----
>   net/mac80211/cfg.c                              | 2 --
>   net/mac80211/debugfs.c                          | 2 --
>   net/mac80211/debugfs_netdev.c                   | 2 --
>   net/mac80211/debugfs_sta.c                      | 2 --
>   net/mac80211/sta_info.c                         | 2 --
>   net/ncsi/ncsi-manage.c                          | 2 --
>   security/yama/yama_lsm.c                        | 4 ----
>   25 files changed, 2 insertions(+), 73 deletions(-)
>
  ...
> diff --git a/kernel/cgroup/cpuset.c b/kernel/cgroup/cpuset.c
> index 27adb04df675..9b7e8e8e9411 100644
> --- a/kernel/cgroup/cpuset.c
> +++ b/kernel/cgroup/cpuset.c
> @@ -4073,7 +4073,6 @@ void cpuset_cpus_allowed(struct task_struct *tsk, struct cpumask *pmask)
>   	struct cpuset *cs;
>   
>   	spin_lock_irqsave(&callback_lock, flags);
> -	rcu_read_lock();
>   
>   	cs = task_cs(tsk);
>   	if (cs != &top_cpuset)
> @@ -4095,7 +4094,6 @@ void cpuset_cpus_allowed(struct task_struct *tsk, struct cpumask *pmask)
>   			cpumask_copy(pmask, possible_mask);
>   	}
>   
> -	rcu_read_unlock();
>   	spin_unlock_irqrestore(&callback_lock, flags);
>   }
>   
> @@ -4168,9 +4166,7 @@ nodemask_t cpuset_mems_allowed(struct task_struct *tsk)
>   	unsigned long flags;
>   
>   	spin_lock_irqsave(&callback_lock, flags);
> -	rcu_read_lock();
>   	guarantee_online_mems(task_cs(tsk), &mask);
> -	rcu_read_unlock();
>   	spin_unlock_irqrestore(&callback_lock, flags);
>   
>   	return mask;
> @@ -4265,10 +4261,8 @@ bool cpuset_current_node_allowed(int node, gfp_t gfp_mask)
>   	/* Not hardwall and node outside mems_allowed: scan up cpusets */
>   	spin_lock_irqsave(&callback_lock, flags);
>   
> -	rcu_read_lock();
>   	cs = nearest_hardwall_ancestor(task_cs(current));
>   	allowed = node_isset(node, cs->mems_allowed);
> -	rcu_read_unlock();
>   
>   	spin_unlock_irqrestore(&callback_lock, flags);
>   	return allowed;

For cpuset,

Acked-by: Waiman Long <longman@redhat.com>

