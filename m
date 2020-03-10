Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3EDD17F707
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 13:04:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 499DD6E1CD;
	Tue, 10 Mar 2020 12:04:46 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D736E1CD
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 12:04:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 05:04:44 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="353610838"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 05:04:43 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
 <158384050785.16414.7982219438580665617@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <488dc425-7786-655d-3c8e-c5dc7bb61b1a@linux.intel.com>
Date: Tue, 10 Mar 2020 12:04:39 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158384050785.16414.7982219438580665617@build.alporthouse.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/03/2020 11:41, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:18)
>> +static int
>> +__i915_drm_client_register(struct i915_drm_client *client,
>> +                          struct task_struct *task)
>> +{
>> +       struct i915_drm_clients *clients = client->clients;
>> +       struct device_attribute *attr;
>> +       int ret = -ENOMEM;
>> +       char idstr[32];
>> +
>> +       client->pid = get_task_pid(task, PIDTYPE_PID);
>> +
>> +       client->name = kstrdup(task->comm, GFP_KERNEL);
>> +       if (!client->name)
>> +               goto err_name;
>> +
>> +       if (!clients->root)
>> +               return 0; /* intel_fbdev_init registers a client before sysfs */
>> +
>> +       snprintf(idstr, sizeof(idstr), "%u", client->id);
>> +       client->root = kobject_create_and_add(idstr, clients->root);
>> +       if (!client->root)
>> +               goto err_client;
>> +
>> +       attr = &client->attr.name;
>> +       sysfs_attr_init(&attr->attr);
>> +       attr->attr.name = "name";
>> +       attr->attr.mode = 0444;
>> +       attr->show = show_client_name;
>> +
>> +       ret = sysfs_create_file(client->root, (struct attribute *)attr);
>> +       if (ret)
>> +               goto err_attr;
>> +
>> +       attr = &client->attr.pid;
>> +       sysfs_attr_init(&attr->attr);
>> +       attr->attr.name = "pid";
>> +       attr->attr.mode = 0444;
>> +       attr->show = show_client_pid;
>> +
>> +       ret = sysfs_create_file(client->root, (struct attribute *)attr);
>> +       if (ret)
>> +               goto err_attr;
> 
> How do we think we will extend this (e.g. for client/1/(trace,debug))?
> 
> i915_drm_client_add_attr() ?
> 
> Or should we put all the attr here and make them known a priori?
> 
> I think I prefer i915_drm_client_add_attr, but that will also require a
> notification chain? And that smells like overengineering.
> 
> At any rate we have 2 other definite users around the corner for the
> client sysfs, so we should look at what API suits us.

It sounds acceptable to me to just call their setup from here. 
__i915_drm_client_register sounds clear enough place.

We potentially just split the function into "client core" and "add-on 
users" for better readability:

__i915_drm_client_register
{
	...register_client();

	...register_client_busy(client, ...);

	...register_client_xxx(client, ...);
}

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
