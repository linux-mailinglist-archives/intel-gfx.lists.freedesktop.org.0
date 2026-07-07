Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id q3s+CgqwTGqYoAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 09:51:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75D68718AEA
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 09:51:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pixelcluster.dev header.s=ovhmo-selector-1 header.b=eaFVrQAQ;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F74510E460;
	Tue,  7 Jul 2026 07:51:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6.mo533.mail-out.ovh.net (6.mo533.mail-out.ovh.net
 [54.36.140.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4E8610E460
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2026 07:51:33 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net
 (director3.derp.mail-out.ovh.net [152.228.215.222])
 by mo533.mail-out.ovh.net (Postfix) with ESMTPS id 4gvY0T0XP9z649x;
 Tue,  7 Jul 2026 07:35:05 +0000 (UTC)
Received: from director3.derp.mail-out.ovh.net
 (director3.derp.mail-out.ovh.net. [127.0.0.1])
 by director3.derp.mail-out.ovh.net (inspect_sender_mail_agent) with SMTP
 for <alexander.deucher@amd.com>; Tue,  7 Jul 2026 07:35:04 +0000 (UTC)
Received: from mta6.priv.ovhmail-u1.ea.mail.ovh.net (unknown [10.110.164.145])
 by director3.derp.mail-out.ovh.net (Postfix) with ESMTPS id
 4gvY0S6Bqwz5vVj; Tue,  7 Jul 2026 07:35:04 +0000 (UTC)
Received: from pixelcluster.dev (unknown [10.1.6.6])
 (Authenticated sender: nat@pixelcluster.dev)
 by mta6.priv.ovhmail-u1.ea.mail.ovh.net (Postfix) with ESMTPSA id 1BD558E18FE; 
 Tue,  7 Jul 2026 07:35:00 +0000 (UTC)
X-OVh-ClientIp: 88.133.252.134
Message-ID: <cd8ee600-5834-4605-ac75-1c13490873a9@pixelcluster.dev>
Date: Tue, 7 Jul 2026 09:35:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/10] drm/ttm: replace TTMs refcount with the DRM
 refcount v4
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
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
 <20260703-ttm_2_drm_exec-v1-2-43685ac1286b@gmx.de>
 <b2932c85fee8e4bf89fdd80ada8883c199d823c0.camel@linux.intel.com>
 <88614266-6ee3-4488-9e2f-030ae0266e0e@amd.com>
 <7031c630c987940d814eaef9d1696969be12d81b.camel@linux.intel.com>
 <5d56ec48-b0f0-4f03-8ec2-f8cc34cb3186@amd.com>
 <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
Content-Language: en-US
From: Natalie Vock <nat@pixelcluster.dev>
In-Reply-To: <eebae66784e24f4b2af6e0079ef74d11100d4020.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
x-ovh-tracer-id: 12405165174010175804
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: dmFkZTGOrKyKUPMvx3enO06ddVD2cDkwzxa6szU6+Nl5G09pYGUlQ7AecCiYxgWhIkJYuwIh0EJCU4F2uiZ8QmY7v+PGVO7ZxXf0KDl+R9KupsAu5VMb3KdoeEBQhcL2kQA0g93q493yQbioAExVRgbbn55YChOOvm61UYh0pR6FnKGJN/26jh/WtWIMIKDeCLAn63IBuBX7oae2qAlJG26M+nC7WdUs2uQ72s5pkxFPjnvYD2YhYwv0QZK0Q4NPW7i5KdAdAOEn0K+urrqDbfYq7AfnRHP2GkWUVwBdsoKfsoa42oB8h7ONhHuveV5z2/pd/MMLRgkSAPvRm98URd1yjgFBW8ptNv4GEzSQqMeWXm2JvRjcTj1UF454WGFB34Hd6E2a1fU3szPKOrIsoXrSL3kUr/Hj5lHviD7EElc84d2FoWWHIxmcO9tp0DHwuAXgjUEwiBzkIupAX6Mx7VmtH7QFCbVY5jNEWNt4raYwSSzL3Xgqcc3AG4f+yZRSqIseCCXfEubBdS5pYkEtYHY4Zqb2YoHLE7ObxKNhlLAlmPxbGGm7ZY80ehDCSqfYkdQnf8areTTIVBIawultd63RCpyBGuXxQrVCEqUeLXU+Qz1w88OzBa3u4uSwU4Ay/0HuXp3tqCpQ1ji3b851aSvBIa29Cf4pT6VWK756Gee1oBu33A
DKIM-Signature: a=rsa-sha256; bh=5Ac5Fbz9mJN8DHwvk8c9RGGaaPKfz1kSljsSOAJkAJA=; 
 c=relaxed/relaxed; d=pixelcluster.dev; h=From;
 s=ovhmo-selector-1; t=1783409706; v=1;
 b=eaFVrQAQWNBmHNW6om++LlRtwE3Cm7BI+6fMz/JMGLB4Fh64BgV57F80sOBCmbacJCZKQZLK
 AujDgbkFEpUEYZ4hZ2RpycPCe102tkDbapXgRD58EyM7A40e48JqLdqMlrCGDKrQQauZgia+lz+
 eK6AZzOuwz1VSoexc5Ur6zSO8zRgNKZUDV4ZhCsH7/mNo5vGPgVMJKDRIEmC8ypofP2vrIVL5Ei
 zedC6Y1eYy0MGu/IHsxs7ynLbRF2ZkekkvajCh2ZuMVAzVddH2aeXy3I405UHcoW0DuGicBOkQp
 wnDt6gXflYeHvx4zrtKfjpixPsZosdrAssRJgeEk4dMbg==
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
	DMARC_NA(0.00)[pixelcluster.dev];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[pixelcluster.dev:s=ovhmo-selector-1];
	FORGED_RECIPIENTS(0.00)[m:thomas.hellstrom@linux.intel.com,m:christian.koenig@amd.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:alexander.deucher@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:intel-xe@lists.freedesktop.org,m:amd-gfx@lists.freedesktop.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[linux.intel.com,amd.com,kernel.org,suse.de,gmail.com,ffwll.ch,intel.com,ursulin.net];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	DKIM_TRACE(0.00)[pixelcluster.dev:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[nat@pixelcluster.dev,intel-gfx-bounces@lists.freedesktop.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pixelcluster.dev:from_mime,pixelcluster.dev:dkim,pixelcluster.dev:mid,gmx.de:email,amd.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 75D68718AEA

On 7/7/26 08:56, Thomas Hellström wrote:
> On Mon, 2026-07-06 at 20:23 +0200, Christian König wrote:
>> On 7/6/26 19:01, Thomas Hellström wrote:
>>> On Mon, 2026-07-06 at 16:49 +0200, Christian König wrote:
>>>> On 7/6/26 15:14, Thomas Hellström wrote:
>>>>> On Fri, 2026-07-03 at 18:31 +0200, Natalie Vock wrote:
>>>>>> From: Christian König <christian.koenig@amd.com>
>>>>>>
>>>>>> Instead of keeping a separate reference count for the TTM
>>>>>> object
>>>>>> also
>>>>>> use
>>>>>> the reference count for DRM GEM objects inside TTM.
>>>>>>
>>>>>> Apart from avoiding two reference counts for one object this
>>>>>> approach
>>>>>> has
>>>>>> the clear advantage of being able to use drm_exec inside TTM.
>>>>>>
>>>>>> v2: adjust XE assert as well and re-enable disabled test
>>>>>> v3: handle another case in i915
>>>>>> v4: set GEM driver funcs of transfer BOs to point to the TTM
>>>>>> free
>>>>>> callback (Natalie)
>>>>>
>>>>> I think the main review issue from the last time this was on
>>>>> the
>>>>> table
>>>>> was that we shouldn't resurrect the gem refcount. Apart from
>>>>> the
>>>>> risc
>>>>> of getting barriers wrong, both xe and IIRC i915 partly rely on
>>>>> the
>>>>> gem
>>>>> refcount never being resurrected and that callbacks for bos
>>>>> with
>>>>> zero
>>>>> gem refcount means that the gem part of the object is unusable.
>>>>
>>>> I've spend quite some time thinking about that and came to the
>>>> conclusion that this is actually harmless.
>>>>
>>>> The drivers shouldn't be able to see the resurected BO, except if
>>>> they go over the LRU list manually (which they shouldn't).
>>>
>>> The shrinker uses the TTM helpers for this. Basically the check
>>> needs
>>> to be ported to use the zombie interface but the present change
>>> also
>>> widens the window where we can't evict / shrink at all due to zero
>>> refcounts.
>>>
>>> While it might be made harmless, resurrecting a refcount like this
>>> is
>>> IMO not something that should leak into the gem refcount. Nobody
>>> else
>>> does this in the kernel tree. The bo in reality becomes a zombie
>>> once
>>> the gem refcount reaches zero.
>>
>> I don't really like the solution either, but I don't see much other
>> option.
>>
>>>>> For example xe_bo.c:
>>>>>
>>>>> 	if (!xe_bo_is_xe_bo(bo) ||
>>>>> !xe_bo_get_unless_zero(xe_bo))
>>>>> 		return xe_bo_shrink_purge(ctx, bo, scanned);
>>>>>
>>>>> So IIRC the conclusion was when removing the ttm refcount we
>>>>> shouldn't
>>>>> attempt to resurrect the gem one. If the get_unless_zero()
>>>>> fails
>>>>> during
>>>>> evict walk, we simply find something to wait for. See previous
>>>>> discussion there.
>>>>
>>>> Yeah, I considered that as well but the problem is we often
>>>> doesn't
>>>> have anything to wait on.
>>>
>>> That's not the conclusion of the previous discussion?
>>>
>>> https://lore.kernel.org/dri-devel/20250716160555.20217-2-christian.koenig@amd.com/#r
>>
>> Well, I clearly rejected the idea to wait for the delayed delete
>> worker because that can cause deadlocks no matter how we do it.
>>
>> The only possibility I see is to grab a reference on the next busy
>> fence and wait for that to signal.
>>
>> But that approach still leaves a window open where the cleanup worker
>> has not yet cleaned up the resource before we try to allocate a new
>> one.
>>
>> The only two possibilities I see to close that window are:
>> 1. Resurrect the GEM object.
>> 2. Keep a reference to the GEM object while it is on the LRU.
>>
>> I would really like to do #2 instead, but that requires that we
>> distinct between GEM object referenze and backing store reference.
>>
>> The GEM object does have some kind of backing store reference with
>> the handle_count field, but that unfortunately doesn't have the right
>> semantic (e.g. only goes from 0->1 when you actually create a handle
>> etc..).
> 
> I think putting a struct completion + refcount on the TTM resource
> would work. Or a much simpler variant, wait for anyone to release
> something on the resource manager in question, (although the simpler
> variant would be harder to debug if a deadlock occured).

If I understood the proposed approach correctly here (have GPU work for 
the BO/associated fences also keep a reference to the BO and drop them 
when the fence signals, plus completion to synchronize delete worker), I 
personally like that the best.

AFAICT resurrecting the object is nothing other than a hacky workaround 
for improper refcounting. The GPU work clearly references the BO, so the 
refcount has to reflect that and it shouldn't be possible for the 
refcount to be zero while fences for submissions that reference the BO 
are still outstanding.

If there are no objections I suppose I can try looking into that in the 
coming days.

Best,
Natalie

> 
> Both of these would probably need to come with lockdep annotation so
> that we could annotate the critical sections from ttm_bo_fini() to
> resource_free, similar to the dma-fence signalling annotation.
> 
> At this point, following that previous discussion we know that imported
> dma-bufs are an exception because we grab the shared dma-resv to
> release the attachment. So until we add a way to avoid that in the dma-
> buf code, we need to wake / signal completion before we grab that lock.
> Not a big deal because imported bos will not matter for local reclaim
> anyway.
> 
> 
>>
>>>>> I fully support removing the ttm refcount, but not if it means
>>>>> resurrecting the gem refcount.
>>>>>
>>>>> If we want to sidestep that problem, in favour of getting the
>>>>> proposed
>>>>> locking functionality in and future proof it, I suggest using
>>>>>
>>>>> https://lore.kernel.org/all/20260605112700.181040-1-thomas.hellstrom@linux.intel.com/
>>>>>
>>>>> And rebase this series on that. This means we can use the ttm
>>>>> refcount
>>>>> for the transaction refcounting, and also that if we add a dma-
>>>>> buf
>>>>> map
>>>>> interface with a dma_resv_txn_obj, we could use that to also
>>>>> have
>>>>> exhaustive eviction that originates from a dma_buf map.
>>>>
>>>> I don't think that this is a good idea. It just adds another
>>>> layer of
>>>> abstraction and doesn't solve the problem in any way possible.
>>>
>>> This comment confuses me. Exactly what problem isn't solved by
>>> this,
>>> and which of the stated benefits/use-cases in the cover-letter do
>>> you
>>> think aren't worthwhile?
>>
>> Of course could the drm_exec object work with different reference
>> counters, but as far as I can see that just complicates the situation
>> and again creates a TTM specific solutions which I clearly want to
>> avoid.
>>
>> I would rather go with the resurrection approach instead, that has
>> less potential for problem I think.
>>
>> Alaternatively we could re-work the whole GEM refcount/GEM handle
>> count/TTM refcount mess, but that has even more potential to break.
> 
> I think looking forward to a "final" solution we're happy with, we
> would have removed the TTM refcount and found a way to deal with zombie
> resources by finding something to wait for.
> 
> I'm also convinced that we want apps with shared bos to fully
> participate so that a process trying to validate / map a shared bo
> doesn't get killed because a trylock-driven eviction failed.
> 
> Since it's a layer violation to pass a drm_exec in an augmented dma-buf
> map we will be needing something at the dma-buf level to handle that,
> and given that, it also makes sense to base the eviction mechanism on
> it.
> 
> The ability to reuse the TTM refcount for now would just be a way to
> separate out the zombie handling from this series until we can do it
> properly. After all this series is about enabling sleeping ww locks.
> 
> Thanks,
> Thomas
> 
> 
>>
>> Regards,
>> Christian.
>>
>>
>>>
>>> Also for reference: (Section at the end and follow-up messages)
>>> https://lore.kernel.org/all/3716d43462188590743060755b37e3d060f7600f.camel@linux.intel.com/
>>>
>>> Thanks,
>>> Thomas
>>>
>>>
>>>> Regards,
>>>> Christian.
>>>>
>>>>>
>>>>> /Thomas
>>>>>
>>>>>>
>>>>>> Signed-off-by: tChristian König <christian.koenig@amd.com>
>>>>>> Signed-off-by: Natalie Vock <natalie.vock@gmx.de>
>>>>>> ---
>>>>>>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c          |  35 +++--
>>>>>> -
>>>>>>   drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c |   8 +-
>>>>>>   drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c    |   2 -
>>>>>>   drivers/gpu/drm/ttm/ttm_bo.c                     | 135
>>>>>> +++++++++++--
>>>>>> ----------
>>>>>>   drivers/gpu/drm/ttm/ttm_bo_internal.h            |  17 ++-
>>>>>>   drivers/gpu/drm/ttm/ttm_bo_util.c                |  15 ++-
>>>>>>   drivers/gpu/drm/xe/xe_bo.c                       |   2 +-
>>>>>>   include/drm/ttm/ttm_bo.h                         |   9 --
>>>>>>   8 files changed, 111 insertions(+), 112 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> index df3fcc2b1248e..642296602de69 100644
>>>>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
>>>>>> @@ -939,7 +939,7 @@ void i915_ttm_adjust_lru(struct
>>>>>> drm_i915_gem_object *obj)
>>>>>>   	 * Don't manipulate the TTM LRUs while in TTM bo
>>>>>> destruction.
>>>>>>   	 * We're called through
>>>>>> i915_ttm_delete_mem_notify().
>>>>>>   	 */
>>>>>> -	if (!kref_read(&bo->kref))
>>>>>> +	if (!kref_read(&bo->base.refcount))
>>>>>>   		return;
>>>>>>   
>>>>>>   	/*
>>>>>> @@ -957,30 +957,21 @@ void i915_ttm_adjust_lru(struct
>>>>>> drm_i915_gem_object *obj)
>>>>>>   	 *
>>>>>>   	 * TODO: consider maybe also bumping the shrinker
>>>>>> list
>>>>>> here
>>>>>> when we have
>>>>>>   	 * already unpinned it, which should give us
>>>>>> something
>>>>>> more
>>>>>> like an LRU.
>>>>>> -	 *
>>>>>> -	 * TODO: There is a small window of opportunity for
>>>>>> this
>>>>>> function to
>>>>>> -	 * get called from eviction after we've dropped the
>>>>>> last
>>>>>> GEM
>>>>>> refcount,
>>>>>> -	 * but before the TTM deleted flag is set on the
>>>>>> object.
>>>>>> Avoid
>>>>>> -	 * adjusting the shrinker list in such cases, since
>>>>>> the
>>>>>> object is
>>>>>> -	 * not available to the shrinker anyway due to its
>>>>>> zero
>>>>>> refcount.
>>>>>> -	 * To fix this properly we should move to a TTM
>>>>>> shrinker
>>>>>> LRU
>>>>>> list for
>>>>>> -	 * these objects.
>>>>>>   	 */
>>>>>> -	if (kref_get_unless_zero(&obj->base.refcount)) {
>>>>>> -		if (shrinkable != obj->mm.ttm_shrinkable) {
>>>>>> -			if (shrinkable) {
>>>>>> -				if (obj->mm.madv ==
>>>>>> I915_MADV_WILLNEED)
>>>>>> -
>>>>>> 					__i915_gem_object_ma
>>>>>> ke_s
>>>>>> hrinkable(obj);
>>>>>> -				else
>>>>>> -
>>>>>> 					__i915_gem_object_ma
>>>>>> ke_p
>>>>>> urgeable(obj);
>>>>>> -			} else {
>>>>>> -
>>>>>> 				i915_gem_object_make_unshrin
>>>>>> kabl
>>>>>> e(obj);
>>>>>> -			}
>>>>>> -
>>>>>> -			obj->mm.ttm_shrinkable = shrinkable;
>>>>>> +	i915_gem_object_get(obj);
>>>>>> +	if (shrinkable != obj->mm.ttm_shrinkable) {
>>>>>> +		if (shrinkable) {
>>>>>> +			if (obj->mm.madv ==
>>>>>> I915_MADV_WILLNEED)
>>>>>> +				__i915_gem_object_make_shrin
>>>>>> kabl
>>>>>> e(ob
>>>>>> j);
>>>>>> +			else
>>>>>> +				__i915_gem_object_make_purge
>>>>>> able
>>>>>> (obj
>>>>>> );
>>>>>> +		} else {
>>>>>> +			i915_gem_object_make_unshrinkable(ob
>>>>>> j);
>>>>>>   		}
>>>>>> -		i915_gem_object_put(obj);
>>>>>> +
>>>>>> +		obj->mm.ttm_shrinkable = shrinkable;
>>>>>>   	}
>>>>>> +	i915_gem_object_put(obj);
>>>>>>   
>>>>>>   	/*
>>>>>>   	 * Put on the correct LRU list depending on the MADV
>>>>>> status
>>>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> index 56ad8ef325840..904cb4da6c9b3 100644
>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_bo_validate_test.c
>>>>>> @@ -127,7 +127,7 @@ static void
>>>>>> ttm_bo_init_reserved_sys_man(struct
>>>>>> kunit *test)
>>>>>>   	dma_resv_unlock(bo->base.resv);
>>>>>>   
>>>>>>   	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
>>>>>> 1);
>>>>>>   	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>>>   	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>   	KUNIT_EXPECT_EQ(test, bo->page_alignment,
>>>>>> PAGE_SIZE);
>>>>>> @@ -176,7 +176,7 @@ static void
>>>>>> ttm_bo_init_reserved_mock_man(struct
>>>>>> kunit *test)
>>>>>>   	dma_resv_unlock(bo->base.resv);
>>>>>>   
>>>>>>   	KUNIT_EXPECT_EQ(test, err, 0);
>>>>>> -	KUNIT_EXPECT_EQ(test, kref_read(&bo->kref), 1);
>>>>>> +	KUNIT_EXPECT_EQ(test, kref_read(&bo->base.refcount),
>>>>>> 1);
>>>>>>   	KUNIT_EXPECT_PTR_EQ(test, bo->bdev, priv->ttm_dev);
>>>>>>   	KUNIT_EXPECT_EQ(test, bo->type, bo_type);
>>>>>>   	KUNIT_EXPECT_EQ(test, ctx.bytes_moved, size);
>>>>>> @@ -969,6 +969,8 @@ static void
>>>>>> ttm_bo_validate_allowed_only_evict(struct kunit *test)
>>>>>>   	ttm_mock_manager_fini(priv->ttm_dev, mem_multihop);
>>>>>>   }
>>>>>>   
>>>>>> +extern const struct drm_gem_object_funcs
>>>>>> ttm_deleted_object_funcs;
>>>>>> +
>>>>>>   static void ttm_bo_validate_deleted_evict(struct kunit
>>>>>> *test)
>>>>>>   {
>>>>>>   	struct ttm_operation_ctx ctx_init = { }, ctx_val  =
>>>>>> { };
>>>>>> @@ -999,7 +1001,7 @@ static void
>>>>>> ttm_bo_validate_deleted_evict(struct
>>>>>> kunit *test)
>>>>>>   	KUNIT_EXPECT_EQ(test,
>>>>>> ttm_resource_manager_usage(man),
>>>>>> big);
>>>>>>   
>>>>>>   	dma_resv_unlock(bo_big->base.resv);
>>>>>> -	bo_big->deleted = true;
>>>>>> +	bo_big->base.funcs = &ttm_deleted_object_funcs;
>>>>>>   
>>>>>>   	bo_small = ttm_bo_kunit_init(test, test->priv,
>>>>>> small,
>>>>>> NULL);
>>>>>>   	bo_small->type = bo_type;
>>>>>> diff --git a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> index 5cfe8f3f80d75..b7ab19e0e4b2b 100644
>>>>>> --- a/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> +++ b/drivers/gpu/drm/ttm/tests/ttm_kunit_helpers.c
>>>>>> @@ -189,8 +189,6 @@ struct ttm_buffer_object
>>>>>> *ttm_bo_kunit_init(struct kunit *test,
>>>>>>   	bo->bdev = devs->ttm_dev;
>>>>>>   	bo->destroy = dummy_ttm_bo_destroy;
>>>>>>   
>>>>>> -	kref_init(&bo->kref);
>>>>>> -
>>>>>>   	return bo;
>>>>>>   }
>>>>>>   EXPORT_SYMBOL_GPL(ttm_bo_kunit_init);
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> index 3980f376e3ba4..2b470c1746f60 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo.c
>>>>>> @@ -246,88 +246,84 @@ static void
>>>>>> ttm_bo_delayed_delete(struct
>>>>>> work_struct *work)
>>>>>>   	ttm_bo_put(bo);
>>>>>>   }
>>>>>>   
>>>>>> -static void ttm_bo_release(struct kref *kref)
>>>>>> +/*
>>>>>> + * All other callbacks should never ever be called on a
>>>>>> deleted
>>>>>> TTM
>>>>>> object.
>>>>>> + */
>>>>>> +const struct drm_gem_object_funcs ttm_deleted_object_funcs =
>>>>>> {
>>>>>> +	.free = ttm_bo_free
>>>>>> +};
>>>>>> +EXPORT_SYMBOL_FOR_TESTS_ONLY(ttm_deleted_object_funcs);
>>>>>> +
>>>>>> +/* Returns true if the BO is about to get deleted */
>>>>>> +static bool ttm_bo_is_zombie(struct ttm_buffer_object *bo)
>>>>>> +{
>>>>>> +	return bo->base.funcs == &ttm_deleted_object_funcs;
>>>>>> +}
>>>>>> +
>>>>>> +void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>>   {
>>>>>> -	struct ttm_buffer_object *bo =
>>>>>> -	    container_of(kref, struct ttm_buffer_object,
>>>>>> kref);
>>>>>>   	struct ttm_device *bdev = bo->bdev;
>>>>>>   	int ret;
>>>>>>   
>>>>>>   	WARN_ON_ONCE(bo->pin_count);
>>>>>>   	WARN_ON_ONCE(bo->bulk_move);
>>>>>>   
>>>>>> -	if (!bo->deleted) {
>>>>>> -		ret = ttm_bo_individualize_resv(bo);
>>>>>> -		if (ret) {
>>>>>> -			/* Last resort, if we fail to
>>>>>> allocate
>>>>>> memory for the
>>>>>> -			 * fences block for the BO to become
>>>>>> idle
>>>>>> -			 */
>>>>>> -			dma_resv_wait_timeout(bo->base.resv,
>>>>>> -					
>>>>>> DMA_RESV_USAGE_BOOKKEEP, false,
>>>>>> -					      30 * HZ);
>>>>>> -		}
>>>>>> +	ret = ttm_bo_individualize_resv(bo);
>>>>>> +	if (ret) {
>>>>>> +		/* Last resort, if we fail to allocate
>>>>>> memory
>>>>>> for
>>>>>> the
>>>>>> +		 * fences block for the BO to become idle
>>>>>> +		 */
>>>>>> +		dma_resv_wait_timeout(bo->base.resv,
>>>>>> DMA_RESV_USAGE_BOOKKEEP,
>>>>>> +				      false, 30 * HZ);
>>>>>> +	}
>>>>>>   
>>>>>> -		if (bdev->funcs->release_notify)
>>>>>> -			bdev->funcs->release_notify(bo);
>>>>>> +	if (bo->bdev->funcs->release_notify)
>>>>>> +		bo->bdev->funcs->release_notify(bo);
>>>>>>   
>>>>>> -		drm_vma_offset_remove(bdev->vma_manager,
>>>>>> &bo-
>>>>>>> base.vma_node);
>>>>>> -		ttm_mem_io_free(bdev, bo->resource);
>>>>>> +	drm_vma_offset_remove(bdev->vma_manager, &bo-
>>>>>>> base.vma_node);
>>>>>> +	ttm_mem_io_free(bdev, bo->resource);
>>>>>>   
>>>>>> -		if (!dma_resv_test_signaled(&bo->base._resv,
>>>>>> -					
>>>>>> DMA_RESV_USAGE_BOOKKEEP)
>>>>>>>>
>>>>>> -		    (want_init_on_free() && (bo->ttm !=
>>>>>> NULL))
>>>>>>>>
>>>>>> -		    bo->type == ttm_bo_type_sg ||
>>>>>> -		    !dma_resv_trylock(bo->base.resv)) {
>>>>>> -			/* The BO is not idle, resurrect it
>>>>>> for
>>>>>> delayed destroy */
>>>>>> -			ttm_bo_flush_all_fences(bo);
>>>>>> -			bo->deleted = true;
>>>>>> +	if (!dma_resv_test_signaled(&bo->base._resv,
>>>>>> DMA_RESV_USAGE_BOOKKEEP) ||
>>>>>> +	    (want_init_on_free() && (bo->ttm != NULL)) ||
>>>>>> +	    bo->type == ttm_bo_type_sg ||
>>>>>> +	    !dma_resv_trylock(bo->base.resv)) {
>>>>>> +		/* The BO is not idle, resurrect it for
>>>>>> delayed
>>>>>> destroy */
>>>>>> +		ttm_bo_flush_all_fences(bo);
>>>>>>   
>>>>>> -			spin_lock(&bdev->lru_lock);
>>>>>> -
>>>>>> -			/*
>>>>>> -			 * Make pinned bos immediately
>>>>>> available
>>>>>> to
>>>>>> -			 * shrinkers, now that they are
>>>>>> queued
>>>>>> for
>>>>>> -			 * destruction.
>>>>>> -			 *
>>>>>> -			 * FIXME: QXL is triggering this.
>>>>>> Can be
>>>>>> removed when the
>>>>>> -			 * driver is fixed.
>>>>>> -			 */
>>>>>> -			if (bo->pin_count) {
>>>>>> -				bo->pin_count = 0;
>>>>>> -
>>>>>> 				ttm_resource_move_to_lru_tai
>>>>>> l(bo-
>>>>>>> resource);
>>>>>> -			}
>>>>>> +		spin_lock(&bo->bdev->lru_lock);
>>>>>>   
>>>>>> -			kref_init(&bo->kref);
>>>>>> -			spin_unlock(&bdev->lru_lock);
>>>>>> +		/*
>>>>>> +		 * Make pinned bos immediately available to
>>>>>> +		 * shrinkers, now that they are queued for
>>>>>> +		 * destruction.
>>>>>> +		 *
>>>>>> +		 * FIXME: QXL is triggering this. Can be
>>>>>> removed
>>>>>> when the
>>>>>> +		 * driver is fixed.
>>>>>> +		 */
>>>>>> +		if (bo->pin_count) {
>>>>>> +			bo->pin_count = 0;
>>>>>> +			ttm_resource_move_to_lru_tail(bo-
>>>>>>> resource);
>>>>>> +		}
>>>>>>   
>>>>>> -			INIT_WORK(&bo->delayed_delete,
>>>>>> ttm_bo_delayed_delete);
>>>>>> +		kref_init(&bo->base.refcount);
>>>>>> +		bo->base.funcs = &ttm_deleted_object_funcs;
>>>>>> +		spin_unlock(&bo->bdev->lru_lock);
>>>>>>   
>>>>>> -			/* Schedule the worker on the
>>>>>> closest
>>>>>> NUMA
>>>>>> node. This
>>>>>> -			 * improves performance since system
>>>>>> memory
>>>>>> might be
>>>>>> -			 * cleared on free and that is best
>>>>>> done
>>>>>> on
>>>>>> a CPU core
>>>>>> -			 * close to it.
>>>>>> -			 */
>>>>>> -			queue_work_node(bdev->pool.nid,
>>>>>> bdev-
>>>>>>> wq,
>>>>>> &bo->delayed_delete);
>>>>>> -			return;
>>>>>> -		}
>>>>>> +		INIT_WORK(&bo->delayed_delete,
>>>>>> ttm_bo_delayed_delete);
>>>>>>   
>>>>>> +		/* Schedule the worker on the closest NUMA
>>>>>> node.
>>>>>> This
>>>>>> +		 * improves performance since system memory
>>>>>> might be
>>>>>> +		 * cleared on free and that is best done on
>>>>>> a
>>>>>> CPU
>>>>>> core
>>>>>> +		 * close to it.
>>>>>> +		 */
>>>>>> +		queue_work_node(bdev->pool.nid, bdev->wq,
>>>>>> &bo-
>>>>>>> delayed_delete);
>>>>>> +	} else {
>>>>>>   		ttm_bo_cleanup_memtype_use(bo);
>>>>>>   		dma_resv_unlock(bo->base.resv);
>>>>>> -	}
>>>>>>   
>>>>>> -	atomic_dec(&ttm_glob.bo_count);
>>>>>> -	bo->destroy(bo);
>>>>>> -}
>>>>>> -
>>>>>> -/* TODO: remove! */
>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo)
>>>>>> -{
>>>>>> -	kref_put(&bo->kref, ttm_bo_release);
>>>>>> -}
>>>>>> -
>>>>>> -void ttm_bo_fini(struct ttm_buffer_object *bo)
>>>>>> -{
>>>>>> -	ttm_bo_put(bo);
>>>>>> +		atomic_dec(&ttm_glob.bo_count);
>>>>>> +		bo->destroy(bo);
>>>>>> +	}
>>>>>>   }
>>>>>>   EXPORT_SYMBOL(ttm_bo_fini);
>>>>>>   
>>>>>> @@ -470,7 +466,7 @@ int ttm_bo_evict_first(struct ttm_device
>>>>>> *bdev,
>>>>>> struct ttm_resource_manager *man
>>>>>>   	if (!bo->resource || bo->resource->mem_type !=
>>>>>> mem_type)
>>>>>>   		goto out_bo_moved;
>>>>>>   
>>>>>> -	if (bo->deleted) {
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>   		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>   		if (!ret)
>>>>>>   			ttm_bo_cleanup_memtype_use(bo);
>>>>>> @@ -524,7 +520,7 @@ static s64 ttm_bo_evict_cb(struct
>>>>>> ttm_lru_walk
>>>>>> *walk, struct ttm_buffer_object *
>>>>>>   	if (bo->pin_count || !bo->bdev->funcs-
>>>>>>> eviction_valuable(bo,
>>>>>> evict_walk->place))
>>>>>>   		return 0;
>>>>>>   
>>>>>> -	if (bo->deleted) {
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>>   		lret = ttm_bo_wait_ctx(bo, walk->arg.ctx);
>>>>>>   		if (!lret)
>>>>>>   			ttm_bo_cleanup_memtype_use(bo);
>>>>>> @@ -624,7 +620,6 @@ static int ttm_bo_evict_alloc(struct
>>>>>> ttm_device
>>>>>> *bdev,
>>>>>>   void ttm_bo_pin(struct ttm_buffer_object *bo)
>>>>>>   {
>>>>>>   	dma_resv_assert_held(bo->base.resv);
>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>   	spin_lock(&bo->bdev->lru_lock);
>>>>>>   	if (bo->resource)
>>>>>>   		ttm_resource_del_bulk_move(bo->resource,
>>>>>> bo);
>>>>>> @@ -643,7 +638,6 @@ EXPORT_SYMBOL(ttm_bo_pin);
>>>>>>   void ttm_bo_unpin(struct ttm_buffer_object *bo)
>>>>>>   {
>>>>>>   	dma_resv_assert_held(bo->base.resv);
>>>>>> -	WARN_ON_ONCE(!kref_read(&bo->kref));
>>>>>>   	if (WARN_ON_ONCE(!bo->pin_count))
>>>>>>   		return;
>>>>>>   
>>>>>> @@ -934,7 +928,6 @@ int ttm_bo_init_reserved(struct
>>>>>> ttm_device
>>>>>> *bdev,
>>>>>> struct ttm_buffer_object *bo,
>>>>>>   {
>>>>>>   	int ret;
>>>>>>   
>>>>>> -	kref_init(&bo->kref);
>>>>>>   	bo->bdev = bdev;
>>>>>>   	bo->type = type;
>>>>>>   	bo->page_alignment = alignment;
>>>>>> @@ -1131,8 +1124,8 @@ ttm_bo_swapout_cb(struct ttm_lru_walk
>>>>>> *walk,
>>>>>> struct ttm_buffer_object *bo)
>>>>>>   		goto out;
>>>>>>   	}
>>>>>>   
>>>>>> -	if (bo->deleted) {
>>>>>> -		pgoff_t num_pages = tt->num_pages;
>>>>>> +	if (ttm_bo_is_zombie(bo)) {
>>>>>> +		pgoff_t num_pages = bo->ttm->num_pages;
>>>>>>   
>>>>>>   		ret = ttm_bo_wait_ctx(bo, ctx);
>>>>>>   		if (ret)
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> index e0d48eac74b03..ded2a47be0bcb 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_internal.h
>>>>>> @@ -27,6 +27,14 @@
>>>>>>   
>>>>>>   #include <drm/ttm/ttm_bo.h>
>>>>>>   
>>>>>> +static inline void ttm_bo_free(struct drm_gem_object *gobj)
>>>>>> +{
>>>>>> +	struct ttm_buffer_object *bo = container_of(gobj,
>>>>>> typeof(*bo), base);
>>>>>> +
>>>>>> +	atomic_dec(&ttm_glob.bo_count);
>>>>>> +	bo->destroy(bo);
>>>>>> +}
>>>>>> +
>>>>>>   /**
>>>>>>    * ttm_bo_get - reference a struct ttm_buffer_object
>>>>>>    *
>>>>>> @@ -34,7 +42,7 @@
>>>>>>    */
>>>>>>   static inline void ttm_bo_get(struct ttm_buffer_object *bo)
>>>>>>   {
>>>>>> -	kref_get(&bo->kref);
>>>>>> +	drm_gem_object_get(&bo->base);
>>>>>>   }
>>>>>>   
>>>>>>   /**
>>>>>> @@ -50,11 +58,14 @@ static inline void ttm_bo_get(struct
>>>>>> ttm_buffer_object *bo)
>>>>>>   static inline __must_check struct ttm_buffer_object *
>>>>>>   ttm_bo_get_unless_zero(struct ttm_buffer_object *bo)
>>>>>>   {
>>>>>> -	if (!kref_get_unless_zero(&bo->kref))
>>>>>> +	if (!kref_get_unless_zero(&bo->base.refcount))
>>>>>>   		return NULL;
>>>>>>   	return bo;
>>>>>>   }
>>>>>>   
>>>>>> -void ttm_bo_put(struct ttm_buffer_object *bo);
>>>>>> +static inline void ttm_bo_put(struct ttm_buffer_object *bo)
>>>>>> +{
>>>>>> +	drm_gem_object_put(&bo->base);
>>>>>> +}
>>>>>>   
>>>>>>   #endif
>>>>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> index 3e3c201a02226..7ed085adf1c9b 100644
>>>>>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>>>>> @@ -41,6 +41,18 @@
>>>>>>   
>>>>>>   #include "ttm_bo_internal.h"
>>>>>>   
>>>>>> +static void ttm_transfer_object_free(struct drm_gem_object
>>>>>> *obj)
>>>>>> +{
>>>>>> +	struct ttm_buffer_object *bo =
>>>>>> +		container_of(obj, struct ttm_buffer_object,
>>>>>> base);
>>>>>> +
>>>>>> +	ttm_bo_fini(bo);
>>>>>> +}
>>>>>> +
>>>>>> +const struct drm_gem_object_funcs ttm_transfer_object_funcs
>>>>>> = {
>>>>>> +	.free = ttm_transfer_object_free,
>>>>>> +};
>>>>>> +
>>>>>>   struct ttm_transfer_obj {
>>>>>>   	struct ttm_buffer_object base;
>>>>>>   	struct ttm_buffer_object *bo;
>>>>>> @@ -247,7 +259,8 @@ static int
>>>>>> ttm_buffer_object_transfer(struct
>>>>>> ttm_buffer_object *bo,
>>>>>>   	atomic_inc(&ttm_glob.bo_count);
>>>>>>   	drm_vma_node_reset(&fbo->base.base.vma_node);
>>>>>>   
>>>>>> -	kref_init(&fbo->base.kref);
>>>>>> +	kref_init(&fbo->base.base.refcount);
>>>>>> +	fbo->base.base.funcs = &ttm_transfer_object_funcs;
>>>>>>   	fbo->base.destroy = &ttm_transfered_destroy;
>>>>>>   	fbo->base.pin_count = 0;
>>>>>>   	if (bo->type != ttm_bo_type_sg)
>>>>>> diff --git a/drivers/gpu/drm/xe/xe_bo.c
>>>>>> b/drivers/gpu/drm/xe/xe_bo.c
>>>>>> index 85e6d9a0f575b..5843f850339c7 100644
>>>>>> --- a/drivers/gpu/drm/xe/xe_bo.c
>>>>>> +++ b/drivers/gpu/drm/xe/xe_bo.c
>>>>>> @@ -1651,7 +1651,7 @@ static bool
>>>>>> xe_ttm_bo_lock_in_destructor(struct
>>>>>> ttm_buffer_object *ttm_bo)
>>>>>>   	struct xe_device *xe = ttm_to_xe_device(ttm_bo-
>>>>>>> bdev);
>>>>>>   	bool locked;
>>>>>>   
>>>>>> -	xe_assert(xe, !kref_read(&ttm_bo->kref));
>>>>>> +	xe_assert(xe, !kref_read(&ttm_bo->base.refcount));
>>>>>>   
>>>>>>   	/*
>>>>>>   	 * We can typically only race with TTM trylocking
>>>>>> under
>>>>>> the
>>>>>> diff --git a/include/drm/ttm/ttm_bo.h
>>>>>> b/include/drm/ttm/ttm_bo.h
>>>>>> index 8310bc3d55f90..1eae9eea5ff32 100644
>>>>>> --- a/include/drm/ttm/ttm_bo.h
>>>>>> +++ b/include/drm/ttm/ttm_bo.h
>>>>>> @@ -78,11 +78,8 @@ enum ttm_bo_type {
>>>>>>    * @type: The bo type.
>>>>>>    * @page_alignment: Page alignment.
>>>>>>    * @destroy: Destruction function. If NULL, kfree is used.
>>>>>> - * @kref: Reference count of this buffer object. When this
>>>>>> refcount
>>>>>> reaches
>>>>>> - * zero, the object is destroyed or put on the delayed
>>>>>> delete
>>>>>> list.
>>>>>>    * @resource: structure describing current placement.
>>>>>>    * @ttm: TTM structure holding system pages.
>>>>>> - * @deleted: True if the object is only a zombie and already
>>>>>> deleted.
>>>>>>    * @bulk_move: The bulk move object.
>>>>>>    * @priority: Priority for LRU, BOs with lower priority are
>>>>>> evicted
>>>>>> first.
>>>>>>    * @pin_count: Pin count.
>>>>>> @@ -109,17 +106,11 @@ struct ttm_buffer_object {
>>>>>>   	uint32_t page_alignment;
>>>>>>   	void (*destroy) (struct ttm_buffer_object *);
>>>>>>   
>>>>>> -	/*
>>>>>> -	* Members not needing protection.
>>>>>> -	*/
>>>>>> -	struct kref kref;
>>>>>> -
>>>>>>   	/*
>>>>>>   	 * Members protected by the bo::resv::reserved lock.
>>>>>>   	 */
>>>>>>   	struct ttm_resource *resource;
>>>>>>   	struct ttm_tt *ttm;
>>>>>> -	bool deleted;
>>>>>>   	struct ttm_lru_bulk_move *bulk_move;
>>>>>>   	unsigned priority;
>>>>>>   	unsigned pin_count;

