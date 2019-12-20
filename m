Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E9E1276D1
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 08:56:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E15886EBE2;
	Fri, 20 Dec 2019 07:56:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B066B6EBE3
 for <Intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 07:56:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 23:56:28 -0800
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="210741088"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 19 Dec 2019 23:56:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191219180019.25562-1-tvrtko.ursulin@linux.intel.com>
 <20191219180019.25562-4-tvrtko.ursulin@linux.intel.com>
 <157678851938.6469.1830542116916640880@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <88c3d8a8-0a37-036a-5c79-845d3157ecf4@linux.intel.com>
Date: Fri, 20 Dec 2019 07:56:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157678851938.6469.1830542116916640880@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 3/8] drm/i915: Expose list of clients in sysfs
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


On 19/12/2019 20:48, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-19 18:00:14)
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
>>   * Do not leak pid reference. (Chris)
>>   * Tidy code with some locals.
>>
>> v6:
>>   * Use xa_alloc_cyclic to simplify locking. (Chris)
>>   * No need to unregister individial sysfs files. (Chris)
>>   * Rebase on top of fpriv kref.
>>   * Track client closed status and reflect in sysfs.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_drv.h   |  20 +++++
>>   drivers/gpu/drm/i915/i915_gem.c   | 133 ++++++++++++++++++++++++++++--
>>   drivers/gpu/drm/i915/i915_sysfs.c |   8 ++
>>   3 files changed, 155 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 6f13f0c619e9..e1d8361aafd7 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -188,6 +188,7 @@ struct i915_hotplug {
>>   struct drm_i915_private;
>>   struct i915_mm_struct;
>>   struct i915_mmu_object;
>> +struct i915_drm_clients;
>>   
>>   struct drm_i915_file_private {
>>          struct kref kref;
>> @@ -226,6 +227,19 @@ struct drm_i915_file_private {
>>          /** ban_score: Accumulated score of all ctx bans and fast hangs. */
>>          atomic_t ban_score;
>>          unsigned long hang_timestamp;
>> +
>> +       struct i915_drm_client {
> 
> I agree with the distinction here between drm_client and
> gem_client. (This concept will be required beyond GEM.)

So you think I should keep the i915_drm_client naming for these bits 
throughout?

>> +               unsigned int id;
>> +               struct pid *pid;
>> +               char *name;
>> +               bool closed;
>> +
>> +               struct kobject *root;
>> +               struct {
>> +                       struct device_attribute pid;
>> +                       struct device_attribute name;
>> +               } attr;
>> +       } client;
>>   };
>>   
>>   /* Interface history:
>> @@ -1280,6 +1294,12 @@ struct drm_i915_private {
>>   
>>          struct i915_pmu pmu;
>>   
>> +       struct i915_drm_clients {
>> +               struct xarray xarray;
>> +
>> +               struct kobject *root;
>> +       } clients;
> 
> You might as well pull this out into i915_drm_client.[ch]
> Actually make that into a please. :)

Np. Maybe next year though. :)

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
