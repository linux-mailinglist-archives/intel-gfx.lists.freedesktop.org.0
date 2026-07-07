Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TSFKJV/7TGreswEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:13:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B571BBC4
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 15:13:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=dWjazBt6;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04AC310ECF9;
	Tue,  7 Jul 2026 13:12:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtpout7.mo534.mail-out.ovh.net
 (smtpout7.mo534.mail-out.ovh.net [54.36.140.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6E5410ECFA
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2026 13:12:54 +0000 (UTC)
Received: from director2.derp.mail-out.ovh.net
 (director2.derp.mail-out.ovh.net [79.137.60.36])
 by mo534.mail-out.ovh.net (Postfix) with ESMTPS id 4gvhVC6Qf5z6JcK;
 Tue,  7 Jul 2026 13:12:51 +0000 (UTC)
Received: from director2.derp.mail-out.ovh.net
 (director2.derp.mail-out.ovh.net. [127.0.0.1])
 by director2.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Tue,  7 Jul 2026 13:12:51 +0000 (UTC)
Received: from mta11.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.109.231.53])
 by director2.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gvhVC55kjz1xyV; Tue,  7 Jul 2026 13:12:51 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.11])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta11.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 6586D9A1903;
 Tue,  7 Jul 2026 13:12:49 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
Message-ID: <35e58b52-8b40-424e-8d27-00e0ca34acda@pixelcluster.dev>
Date: Tue, 7 Jul 2026 15:12:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/exec: Add helper to bypass IGNORE_DUPLICATES
 flag
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
References: <20260703-ttm_2_drm_exec-v1-0-43685ac1286b@gmx.de>
 <20260703-ttm_2_drm_exec-v1-1-43685ac1286b@gmx.de>
 <673ae71a1fc4dcce0e6a1655985a141d6f08c06f.camel@linux.intel.com>
 <0f85e12e-7d34-40a8-9efc-0d1a00b7c24c@amd.com>
 <6fac8343dc71b1dbf17e77390cc878cfaeb6d650.camel@linux.intel.com>
 <9a55ba77-6920-427d-9325-ca0e3b8ee94a@amd.com>
Content-Language: en-US
From: Natalie Vock <nat@pixelcluster.dev>
In-Reply-To: <9a55ba77-6920-427d-9325-ca0e3b8ee94a@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
x-ovh-tracer-id: 18109818530335777084
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTGpMHMiR+lV9BG0g8y0r2YN9yKo++eDVO5jx4tO5/nQak9qOI47eseKMoIcSZ62nsQ8OdE5PKzsBipKvfIlVx9gsfZynHGCR9kl6L+2Nb4b5DI490aLOJ701YTtbnnrQKXmE/03XMqw1I+PvFIeiCSj8m8PSMaqxqq0ns7qepNXdNHJFR7QlZZWpzV/eVdNy5XnJ+6To7eqXqAgJ+LaLhGak6FrxMlCWiaVc5Ibzr0BEQdeqmaUoCsEcyoacxj4wjWZngaHCgj5goJPa2I8+0KK5GfBxvZ0l6mJdd72hsGkSf3F0b2vQWVQe8d2sRv3iaFqVvfiOdArPni0Q97UD34yuIsL1N2s+vFsKkHGR9/o2EovG25L6inKQn+SXh4jCA+u8njsQqGqornxTSRLdMfo2CsZinW73WZHVWdPuGYcUyUGOwIFFG/QhO+uvwUf2TSVIp9DIWCedg1bydg2sRA432R/m24W0DsPeVijIARYeY7gXQlU2ZcsLA5+ygN3DZ99ziGuc4qwgkAeH5E/xlyWCmI+nGGhDwm1z1oBdr3rEZmjdFLcYXBuTPeLPJGOyxDxc4ZqBWvX+66eljpK8auN4JKwmOY3yc05oyB4QnnmAnQQ+i3jTcIIwB8bYiMP12+b4vuKB8c2Qy1IIg/LXcOPpEchjgISrc4J5oLBZEfGHg
DKIM-Signature: a=rsa-sha256; bh=wAaSTv7CvzFDUj4WCr27u6J3GWGLHQxhDZYELXFtVPc=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783429972; v=1;
 b=dWjazBt6rp8LErXBxgUf0PFTFcyJ9ver2YjnnHcWM/VevIPoip/0kWFxZngk/Mf+817pNbNy
 g6utW/bEfkfwb3uF2Zwo0KkXV4y/2j1f1rwEyymqWYB+GAwuIecgS6+B685kgZVjRwKDdgFoBtQ
 65ErNX+rKEmp/E3Vr2/2o6S3gv6aj6vajBW3Uw9xeww6MiDt72oqqOYa4zRoEVleFlPMsrebtKf
 h4Hi9D4TppFL/udb8Ws6JopTTNEmT9kwJO0CxcKxf/dZnCVOdrO+rZIjjJoIzTfFRYdQAC5NCIy
 ZlR6Q0VqCIsvQKdvxcXW2UIteFiel7atxOKzg0PnQpQBQ==
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.69 / 15.00];
	SEM_URIBL_FRESH15(3.00)[pixelcluster.dev:from_mime,pixelcluster.dev:dkim,pixelcluster.dev:mid];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:christian.koenig@amd.com,m:thomas.hellstrom@linux.intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	DMARC_NA(0.00)[pixelcluster.dev];
	FREEMAIL_TO(0.00)[amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:131.252.210.177:c];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,lists.freedesktop.org:url,gmx.de:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F0B571BBC4

On 7/7/26 14:54, Christian König wrote:
> On 7/7/26 14:41, Thomas Hellström wrote:
>> On Tue, 2026-07-07 at 14:28 +0200, Christian König wrote:
>>> On 7/7/26 14:09, Thomas Hellström wrote:
>>>> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>>>>> TTM is about to switch to drm_exec for locking objects
>>>>> in the LRU list. When we're done processing the object, we want
>>>>> to
>>>>> unlock it only if the caller doesn't already hold that lock. If
>>>>> DRM_EXEC_IGNORE_DUPLICATES is set on the exec object (which
>>>>> callers
>>>>> may
>>>>> require for unrelated reasons), we have no way of knowing whether
>>>>> the
>>>>> lock is already held.
>>>>>
>>>>> To remedy this, add a separate helper that forcefully bypasses
>>>>> the
>>>>> IGNORE_DUPLICATES flag for only a single locking operation.
>>>>>
>>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>>
>>>> The first, more complete attempt to try to tackle the exhaustive
>>>> eviction introduced a drm_exec snapshot ability instead.
>>>>
>>>> https://lists.freedesktop.org/archives/intel-xe/2024-May/035820.html
>>>>
>>>> The idea was that one would want to incrementally lock more buffer
>>>> objects until the validation succeeded, rather than dropping each
>>>> single lock after processing the eviction. That's actually what
>>>> guarantees forward progress. Restoring the snapshot unlocked all
>>>> locks
>>>> that we grabbed in the process, and would work also for single
>>>> locks.
>>>
>>> That's actually not what this patch here tries to solve.
>>>
>>> The problem is rather since we don't remove the BOs from the LRU list
>>> that we try to evict some which are actually part of our working set.
>>>
>>> So when we lock for eviction we can't ignore duplicates no matter
>>> what the global flag says.
>>
>> Ah yes, I see that now when I've gotten to patch 9. But then I think
>> the commit message is a bit misleading. It talks about unlocking an
>> already processed object?
> 
> Oh, good point! Yeah the problem isn't the unlocking but that we evict an object from the working set.
> 
> The commit message clearly needs to be fixed.

The problem is actually both. Evicting an object from the working set 
definitely is potentially unsafe, but I considered that a minor thing. 
Unlocking the already processed objects is a much, much bigger problem IMO.

The worst breakage is for AMDGPU's per-VM buffers whose resv is just the 
VM's own reservation object: If we encounter another per-VM buffer from 
our own VM on the LRU, we may or may not decide to evict it, but in any 
case we leave the VM completely unlocked for the remainder of the 
submission, including in pagetable updates and all that, which more or 
less completely smashes the state of the entire VM if multiple PT update 
operations end up racing with each other.

This was the breakage I observed myself, so that's what I described in 
the commit message. In any case, I can also change the commit message to 
primarily point at self-eviction and/or expand my explanation on why 
unlocking causes issues.

Best,
Natalie

> 
> Christian.
> 
>>
>> Thanks,
>> Thomas
>>
>>
>>>
>>> Regards,
>>> Christian.
>>>
>>>>
>>>> Thanks,
>>>> Thomas
>>>>
>>>>
>>>>> ---
>>>>>   drivers/gpu/drm/drm_exec.c | 52
>>>>> ++++++++++++++++++++++++++++++++++--
>>>>> ----------
>>>>>   include/drm/drm_exec.h     |  2 ++
>>>>>   2 files changed, 41 insertions(+), 13 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/drm_exec.c
>>>>> b/drivers/gpu/drm/drm_exec.c
>>>>> index 7988f5e7d56a3..91de6b4d29df8 100644
>>>>> --- a/drivers/gpu/drm/drm_exec.c
>>>>> +++ b/drivers/gpu/drm/drm_exec.c
>>>>> @@ -190,18 +190,9 @@ static int drm_exec_lock_contended(struct
>>>>> drm_exec *exec)
>>>>>   	return ret;
>>>>>   }
>>>>>   
>>>>> -/**
>>>>> - * drm_exec_lock_obj - lock a GEM object for use
>>>>> - * @exec: the drm_exec object with the state
>>>>> - * @obj: the GEM object to lock
>>>>> - *
>>>>> - * Lock a GEM object for use and grab a reference to it.
>>>>> - *
>>>>> - * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>>> object is
>>>>> - * already locked (can be suppressed by setting the
>>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>>> - * flag), -ENOMEM when memory allocation failed and zero for
>>>>> success.
>>>>> - */
>>>>> -int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>>> drm_gem_object
>>>>> *obj)
>>>>> +static int __drm_exec_lock_obj(struct drm_exec *exec,
>>>>> +			       struct drm_gem_object *obj,
>>>>> +			       bool always_report_duplicates)
>>>>>   {
>>>>>   	int ret;
>>>>>   
>>>>> @@ -226,7 +217,7 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>>>>> struct drm_gem_object *obj)
>>>>>   		return -EDEADLK;
>>>>>   	}
>>>>>   
>>>>> -	if (unlikely(ret == -EALREADY) &&
>>>>> +	if (unlikely(ret == -EALREADY) &&
>>>>> !always_report_duplicates
>>>>> &&
>>>>>   	    exec->flags & DRM_EXEC_IGNORE_DUPLICATES)
>>>>>   		return 0;
>>>>>   
>>>>> @@ -243,8 +234,43 @@ int drm_exec_lock_obj(struct drm_exec *exec,
>>>>> struct drm_gem_object *obj)
>>>>>   	dma_resv_unlock(obj->resv);
>>>>>   	return ret;
>>>>>   }
>>>>> +
>>>>> +/**
>>>>> + * drm_exec_lock_obj - lock a GEM object for use
>>>>> + * @exec: the drm_exec object with the state
>>>>> + * @obj: the GEM object to lock
>>>>> + *
>>>>> + * Lock a GEM object for use and grab a reference to it.
>>>>> + *
>>>>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>>> object is
>>>>> + * already locked (can be suppressed by setting the
>>>>> DRM_EXEC_IGNORE_DUPLICATES
>>>>> + * flag), -ENOMEM when memory allocation failed and zero for
>>>>> success.
>>>>> + */
>>>>> +int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>>> drm_gem_object
>>>>> *obj)
>>>>> +{
>>>>> +	return __drm_exec_lock_obj(exec, obj, false);
>>>>> +}
>>>>>   EXPORT_SYMBOL(drm_exec_lock_obj);
>>>>>   
>>>>> +/**
>>>>> + * drm_exec_lock_obj_report_dup - lock a GEM object for use, but
>>>>> always report duplicates
>>>>> + * @exec: the drm_exec object with the state
>>>>> + * @obj: the GEM object to lock
>>>>> + *
>>>>> + * Like drm_exec_lock_obj, lock a GEM object for use and grab a
>>>>> reference to it.
>>>>> + * Unlike drm_exec_lock_obj, DRM_EXEC_IGNORE_DUPLICATES is
>>>>> ignored
>>>>> and duplicates are
>>>>> + * always reported.
>>>>> + *
>>>>> + * Returns: -EDEADLK if a contention is detected, -EALREADY when
>>>>> object is
>>>>> + * already locked, -ENOMEM when memory allocation failed and
>>>>> zero
>>>>> for success.
>>>>> + */
>>>>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>>>>> +				 struct drm_gem_object *obj)
>>>>> +{
>>>>> +	return __drm_exec_lock_obj(exec, obj, false);
>>>>> +}
>>>>> +EXPORT_SYMBOL(drm_exec_lock_obj_report_dup);
>>>>> +
>>>>>   /**
>>>>>    * drm_exec_unlock_obj - unlock a GEM object in this exec
>>>>> context
>>>>>    * @exec: the drm_exec object with the state
>>>>> diff --git a/include/drm/drm_exec.h b/include/drm/drm_exec.h
>>>>> index 8725ba92ff916..ff80dd2b72240 100644
>>>>> --- a/include/drm/drm_exec.h
>>>>> +++ b/include/drm/drm_exec.h
>>>>> @@ -176,6 +176,8 @@ void drm_exec_init(struct drm_exec *exec, u32
>>>>> flags, unsigned nr);
>>>>>   void drm_exec_fini(struct drm_exec *exec);
>>>>>   bool drm_exec_cleanup(struct drm_exec *exec);
>>>>>   int drm_exec_lock_obj(struct drm_exec *exec, struct
>>>>> drm_gem_object
>>>>> *obj);
>>>>> +int drm_exec_lock_obj_report_dup(struct drm_exec *exec,
>>>>> +				 struct drm_gem_object *obj);
>>>>>   void drm_exec_unlock_obj(struct drm_exec *exec, struct
>>>>> drm_gem_object *obj);
>>>>>   int drm_exec_prepare_obj(struct drm_exec *exec, struct
>>>>> drm_gem_object *obj,
>>>>>   			 unsigned int num_fences);
> 

