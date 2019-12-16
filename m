Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6C12172E
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 19:34:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E48F6E503;
	Mon, 16 Dec 2019 18:34:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70346E503
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 18:34:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 10:34:29 -0800
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="209396333"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Dec 2019 10:34:28 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
 <157650071542.2428.8379097773696203670@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <31f99b94-ac03-741b-1ffe-7bac39320341@linux.intel.com>
Date: Mon, 16 Dec 2019 18:34:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157650071542.2428.8379097773696203670@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in
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


On 16/12/2019 12:51, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-16 12:07:01)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Expose a list of clients with open file handles in sysfs.
>>
>> This will be a basis for a top-like utility showing per-client and per-
>> engine GPU load.
>>
>> Currently we only expose each client's pid and name under opaque numbered
>> directories in /sys/class/drm/card0/clients/.
>>
>> For instance:
>>
>> /sys/class/drm/card0/clients/3/name: Xorg
>> /sys/class/drm/card0/clients/3/pid: 5664
>>
>> v2:
>>   Chris Wilson:
>>   * Enclose new members into dedicated structs.
>>   * Protect against failed sysfs registration.
>>
>> v3:
>>   * sysfs_attr_init.
>>
>> v4:
>>   * Fix for internal clients.
>>
>> v5:
>>   * Use cyclic ida for client id. (Chris)
> 
> I think we are now in the age of xa_alloc_cyclic(). At least the
> immediate benefit is that we don't have to worry about the ida locking.

Also spin locks and GFP_KERNEL in the current patch do not mix well. Use 
with caution until I send the updated version out.

Regards,

Tvrtko


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
