Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 135E017EC9C
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 00:26:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158876E129;
	Mon,  9 Mar 2020 23:26:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D836E129
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 23:26:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 16:26:37 -0700
X-IronPort-AV: E=Sophos;i="5.70,535,1574150400"; d="scan'208";a="231106598"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 Mar 2020 16:26:36 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-2-tvrtko.ursulin@linux.intel.com>
 <158378968022.16414.13552854522311222381@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ee5b6168-4e0a-6bbc-731e-a7391cc96397@linux.intel.com>
Date: Mon, 9 Mar 2020 23:26:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158378968022.16414.13552854522311222381@build.alporthouse.com>
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


On 09/03/2020 21:34, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:18)
>> +struct i915_drm_client *
>> +i915_drm_client_add(struct i915_drm_clients *clients, struct task_struct *task)
>> +{
>> +       struct i915_drm_client *client;
>> +       int ret;
>> +
>> +       client = kzalloc(sizeof(*client), GFP_KERNEL);
>> +       if (!client)
>> +               return ERR_PTR(-ENOMEM);
>> +
>> +       kref_init(&client->kref);
>> +       client->clients = clients;
>> +
>> +       ret = mutex_lock_interruptible(&clients->lock);
>> +       if (ret)
>> +               goto err_id;
>> +       ret = xa_alloc_cyclic(&clients->xarray, &client->id, client,
>> +                             xa_limit_32b, &clients->next_id, GFP_KERNEL);
> 
> So what's next_id used for that explains having the over-arching mutex?

It's to give out client id's "cyclically" - before I apparently 
misunderstood what xa_alloc_cyclic is supposed to do - I thought after 
giving out id 1 it would give out 2 next, even if 1 was returned to the 
pool in the meantime. But it doesn't, I need to track the start point 
for the next search with "next".

I want this to make intel_gpu_top's life easier, so it doesn't have to 
deal with id recycling for all practical purposes.

And a peek into xa implementation told me the internal lock is not 
protecting "next.

I could stick with one lock and not use the internal one if I used it on 
release path as well.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
