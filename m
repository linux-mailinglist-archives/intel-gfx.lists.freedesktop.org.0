Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29FEE180892
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 20:52:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915906E397;
	Tue, 10 Mar 2020 19:52:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3156E397
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 19:52:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 12:52:34 -0700
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="236157565"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 12:52:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
 <20200309183129.2296-3-tvrtko.ursulin@linux.intel.com>
 <158386390858.28297.1893347390980964464@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <08d05f00-bf49-dca2-566d-8c11765b46dc@linux.intel.com>
Date: Tue, 10 Mar 2020 19:52:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158386390858.28297.1893347390980964464@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 02/12] drm/i915: Update client name on context
 create
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


On 10/03/2020 18:11, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-09 18:31:19)
>> @@ -92,8 +107,8 @@ __i915_drm_client_register(struct i915_drm_client *client,
>>   static void
>>   __i915_drm_client_unregister(struct i915_drm_client *client)
>>   {
>> -       put_pid(fetch_and_zero(&client->pid));
>> -       kfree(fetch_and_zero(&client->name));
>> +       put_pid(rcu_replace_pointer(client->pid, NULL, true));
>> +       kfree(rcu_replace_pointer(client->name, NULL, true));
> 
> client_unregister is not after an RCU grace period, so what's the
> protection here?

Against concurrent access via sysfs? Hm.. I think kobject_put needs to 
go first and clearing of name and pid last. Will fix this.

Accesses via GEM contexts always have a reference so that should be fine.

RCU business on pid and name is basically only so the two can be 
asynchronously replaced if need to be updated on context create. So 
anyone accessing them sees either old or new, but always valid data.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
