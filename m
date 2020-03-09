Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FF217EB48
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 22:35:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F86A6E4BA;
	Mon,  9 Mar 2020 21:35:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FC36E4BA
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 21:35:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20501501-1500050 for multiple; Mon, 09 Mar 2020 21:34:41 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158378968022.16414.13552854522311222381@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 09 Mar 2020 21:34:40 +0000
Subject: Re: [Intel-gfx] [RFC 01/12] drm/i915: Expose list of clients in
 sysfs
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

Quoting Tvrtko Ursulin (2020-03-09 18:31:18)
> +struct i915_drm_client *
> +i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
> +{
> +       struct i915_drm_client *client;
> +       int ret;
> +
> +       client = kzalloc(sizeof(*client), GFP_KERNEL);
> +       if (!client)
> +               return ERR_PTR(-ENOMEM);
> +
> +       kref_init(&client->kref);
> +       client->clients = clients;
> +
> +       ret = mutex_lock_interruptible(&clients->lock);
> +       if (ret)
> +               goto err_id;
> +       ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
> +                             xa_limit_32b, &clients->next_id, GFP_KERNEL);

So what's next_id used for that explains having the over-arching mutex?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
