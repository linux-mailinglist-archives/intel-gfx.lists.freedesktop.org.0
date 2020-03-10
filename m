Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF95017F681
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 12:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CDAB6E160;
	Tue, 10 Mar 2020 11:42:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 769426E160
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 11:42:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20507626-1500050 for multiple; Tue, 10 Mar 2020 11:41:48 +0000
MIME-Version: 1.0
In-Reply-To: <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158384050785.16414.7982219438580665617@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 10 Mar 2020 11:41:47 +0000
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
> +static int
> +__i915_drm_client_register(struct i915_drm_client *client,
> +                          struct task_struct *task)
> +{
> +       struct i915_drm_clients *clients = client->clients;
> +       struct device_attribute *attr;
> +       int ret = -ENOMEM;
> +       char idstr[32];
> +
> +       client->pid = get_task_pid(task, PIDTYPE_PID);
> +
> +       client->name = kstrdup(task->comm, GFP_KERNEL);
> +       if (!client->name)
> +               goto err_name;
> +
> +       if (!clients->root)
> +               return 0; /* intel_fbdev_init registers a client before sysfs */
> +
> +       snprintf(idstr, sizeof(idstr), "%u", client->id);
> +       client->root = kobject_create_and_add(idstr, clients->root);
> +       if (!client->root)
> +               goto err_client;
> +
> +       attr = &client->attr.name;
> +       sysfs_attr_init(&attr->attr);
> +       attr->attr.name = "name";
> +       attr->attr.mode = 0444;
> +       attr->show = show_client_name;
> +
> +       ret = sysfs_create_file(client->root, (struct attribute *)attr);
> +       if (ret)
> +               goto err_attr;
> +
> +       attr = &client->attr.pid;
> +       sysfs_attr_init(&attr->attr);
> +       attr->attr.name = "pid";
> +       attr->attr.mode = 0444;
> +       attr->show = show_client_pid;
> +
> +       ret = sysfs_create_file(client->root, (struct attribute *)attr);
> +       if (ret)
> +               goto err_attr;

How do we think we will extend this (e.g. for client/1/(trace,debug))?

i915_drm_client_add_attr() ?

Or should we put all the attr here and make them known a priori?

I think I prefer i915_drm_client_add_attr, but that will also require a
notification chain? And that smells like overengineering.

At any rate we have 2 other definite users around the corner for the
client sysfs, so we should look at what API suits us.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
