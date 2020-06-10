Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAB51F5860
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2020 17:54:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14BDE89E11;
	Wed, 10 Jun 2020 15:54:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D845898AF
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 15:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591804476;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Rz1HU+MJqPv86LT11aIGf0qwwos7MWs5V4O+GMnNcQ8=;
 b=d/AtLZTEDM6L3DASIVwqw6WS4fJBNMlLBzhO03L6jp2sM11Z2A5ENQoUF2+xByXGye1Hac
 MT1ICQEcf4RHZU9CMgUJDSOI/jdA7KBNqUWO8bsyQIkwRFnNTWvWrrQzx9zf5G86Jf5Ltc
 8ptMajVApocYTKPZGsmBmk1yTlCCliQ=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-Z69X-X59PQ2UlE-KGncCfA-1; Wed, 10 Jun 2020 11:54:33 -0400
X-MC-Unique: Z69X-X59PQ2UlE-KGncCfA-1
Received: by mail-qk1-f198.google.com with SMTP id 205so2482950qkh.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jun 2020 08:54:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=Rz1HU+MJqPv86LT11aIGf0qwwos7MWs5V4O+GMnNcQ8=;
 b=V0Zl40j8Rkd4hrqiniKcHQo+LF+NN80v4ztolNtqRM5/8URbFYlaKE9WzyYQ1pCrft
 vhIgQ/KCwz6en/IAu/ppStKVyPfqxhjBY0o7rfgsa9JL/id8JMyfBTtx836B9hU4ev9+
 04QZG+uO7JExZ/7MvXtCJ/0ZYgvslqkrwOQ9nDUw/r0Z0WwDlT0Rnkdw7gGWHD2IparC
 5wSZ5m2fDUQU48Ngvw5JC6BfkqcA7gGQxMFXspkoBYc+BC1UsnMJf9mef1Sf44MD1Izm
 D8mkOBFRWShX3EbYJFg1RWP8o2RihnQtkkAmWzsvldeJTXXCkdTMAMsGqnPEbFhYpP4Y
 vGUg==
X-Gm-Message-State: AOAM533jkMAYhFfBlLrQ0nKwTbEkR0Bl5gr2vymKE62VCsP9EmDfa2ns
 LoQyUweGJLFkWY9aVeoyqUqB7AtnoE/qQaj8W/E8ioWCc1sHZB1dnmEPUpVc6M4+PD/5DSyQ/5H
 67az+GxG6p0daHyqJZSCFGoWhy+8s
X-Received: by 2002:ac8:4e4f:: with SMTP id e15mr3908538qtw.318.1591804472811; 
 Wed, 10 Jun 2020 08:54:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy2FbWGNrQWV6QxL8cahz6amxo5yhFnpd6MOOmxUczMpoUYc6ee84eoLXEgwOy00nxhCVglFw==
X-Received: by 2002:ac8:4e4f:: with SMTP id e15mr3908509qtw.318.1591804472446; 
 Wed, 10 Jun 2020 08:54:32 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (static-173-76-190-23.bstnma.ftas.verizon.net. [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id d17sm50091qke.101.2020.06.10.08.54.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 10 Jun 2020 08:54:31 -0700 (PDT)
Message-ID: <b7e474f0e80026565e7c7ad60a967f167e518536.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jun 2020 11:54:30 -0400
In-Reply-To: <20200610134704.25270-1-imre.deak@intel.com>
References: <20200607212522.16935-3-imre.deak@intel.com>
 <20200610134704.25270-1-imre.deak@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/dp_mst: Fix flushing the delayed
 port/mstb destroy work
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
Reply-To: lyude@redhat.com
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

my crunch time is over so I can review these on time now :)

one small comment below, although it doesn't stop me from giving my R-B here:

Reviewed-by: Lyude Paul <lyude@redhat.com>


On Wed, 2020-06-10 at 16:47 +0300, Imre Deak wrote:
> Atm, a pending delayed destroy work during module removal will be
> canceled, leaving behind MST ports, mstbs. Fix this by using a dedicated
> workqueue which will be drained of requeued items as well when
> destroying it.
> 
> v2:
> - Check if wq is NULL before calling destroy_workqueue().
> 
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/drm_dp_mst_topology.c | 19 ++++++++++++++++---
>  include/drm/drm_dp_mst_helper.h       |  8 ++++++++
>  2 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c
> b/drivers/gpu/drm/drm_dp_mst_topology.c
> index eff8d6ac0273..a5f67b9db7fa 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -1604,7 +1604,7 @@ static void drm_dp_destroy_mst_branch_device(struct kref
> *kref)
>  	mutex_lock(&mgr->delayed_destroy_lock);
>  	list_add(&mstb->destroy_next, &mgr->destroy_branch_device_list);
>  	mutex_unlock(&mgr->delayed_destroy_lock);
> -	schedule_work(&mgr->delayed_destroy_work);
> +	queue_work(mgr->delayed_destroy_wq, &mgr->delayed_destroy_work);
>  }
>  
>  /**
> @@ -1721,7 +1721,7 @@ static void drm_dp_destroy_port(struct kref *kref)
>  	mutex_lock(&mgr->delayed_destroy_lock);
>  	list_add(&port->next, &mgr->destroy_port_list);
>  	mutex_unlock(&mgr->delayed_destroy_lock);
> -	schedule_work(&mgr->delayed_destroy_work);
> +	queue_work(mgr->delayed_destroy_wq, &mgr->delayed_destroy_work);
>  }
>  
>  /**
> @@ -5182,6 +5182,15 @@ int drm_dp_mst_topology_mgr_init(struct
> drm_dp_mst_topology_mgr *mgr,
>  	INIT_LIST_HEAD(&mgr->destroy_port_list);
>  	INIT_LIST_HEAD(&mgr->destroy_branch_device_list);
>  	INIT_LIST_HEAD(&mgr->up_req_list);
> +
> +	/*
> +	 * delayed_destroy_work will be queued on a dedicated WQ, so that any
> +	 * requeuing will be also flushed when deiniting the topology manager.
> +	 */
> +	mgr->delayed_destroy_wq = alloc_ordered_workqueue("drm_dp_mst_wq", 0);
> +	if (mgr->delayed_destroy_wq == NULL)
> +		return -ENOMEM;
> +
>  	INIT_WORK(&mgr->work, drm_dp_mst_link_probe_work);
>  	INIT_WORK(&mgr->tx_work, drm_dp_tx_work);
>  	INIT_WORK(&mgr->delayed_destroy_work, drm_dp_delayed_destroy_work);
> @@ -5226,7 +5235,11 @@ void drm_dp_mst_topology_mgr_destroy(struct
> drm_dp_mst_topology_mgr *mgr)
>  {
>  	drm_dp_mst_topology_mgr_set_mst(mgr, false);
>  	flush_work(&mgr->work);
> -	cancel_work_sync(&mgr->delayed_destroy_work);
> +	/* The following will also drain any requeued work on the WQ. */
> +	if (mgr->delayed_destroy_wq) {
> +		destroy_workqueue(mgr->delayed_destroy_wq);
> +		mgr->delayed_destroy_wq = NULL;
> +	}

We should definitely cleanup the cleanup in this function, I don't mind
submitting some patches to do it today if you poke me on IRC once you've got
this pushed to drm-misc-next
>  	mutex_lock(&mgr->payload_lock);
>  	kfree(mgr->payloads);
>  	mgr->payloads = NULL;
> diff --git a/include/drm/drm_dp_mst_helper.h b/include/drm/drm_dp_mst_helper.h
> index 9e1ffcd7cb68..17b568c6f4f8 100644
> --- a/include/drm/drm_dp_mst_helper.h
> +++ b/include/drm/drm_dp_mst_helper.h
> @@ -672,6 +672,14 @@ struct drm_dp_mst_topology_mgr {
>  	 * @destroy_branch_device_list.
>  	 */
>  	struct mutex delayed_destroy_lock;
> +
> +	/**
> +	 * @delayed_destroy_wq: Workqueue used for delayed_destroy_work items.
> +	 * A dedicated WQ makes it possible to drain any requeued work items
> +	 * on it.
> +	 */
> +	struct workqueue_struct *delayed_destroy_wq;
> +
>  	/**
>  	 * @delayed_destroy_work: Work item to destroy MST port and branch
>  	 * devices, needed to avoid locking inversion.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
