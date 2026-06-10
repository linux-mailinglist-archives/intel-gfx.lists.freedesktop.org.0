Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id W7DAAQBKKWo2TwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:26:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A823668C73
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jun 2026 13:26:55 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=WC1VuJnO;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41E310E489;
	Wed, 10 Jun 2026 11:26:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD0C10E489;
 Wed, 10 Jun 2026 11:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781090811; x=1812626811;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=PeA8aPSlXwTVyTyNUlux7CWXrFut0CSVlH8D5ZVqmx0=;
 b=WC1VuJnOAzDyBbuOjJjBgGcrGxhnYhG6O2X6U/I0qZWuNEeae/DiN0lD
 yu+k39mB30pryYN+pTCPL8Rd/YjbbyfApPEasTHYk453Cf79KkER+b/7v
 A/HX4kR6lkNRmG6nt+JSTN8D9V4GPRbOqF+hzzmRBpLzfYlhY34snOA2s
 aSu77uzUsB2jv1Ju8663dOMSDh6M3UaPUVzQ5F08PbvKbLptZtTw2ZVL1
 kEhuX6/fQdtfnGrCc2ooyrazLwATch5sBvBwkt2642x93wJK1GVn64UXF
 vW3qSeAYcDZP/t2+uRGANfR2hroYBYVG2hvkbbFz3tmuHLiVAY7x8mI+d A==;
X-CSE-ConnectionGUID: QIbxWzheSMGkl8AvyNCI/w==
X-CSE-MsgGUID: 5WZY5HbjRlexxHJsTT5l/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11812"; a="81858736"
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="81858736"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:26:51 -0700
X-CSE-ConnectionGUID: PtGp7vv9QUOwc9V5dtytHA==
X-CSE-MsgGUID: Sep6VJ8tQ9G2nKsZC2efEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,197,1774335600"; d="scan'208";a="251067339"
Received: from abityuts-desk.ger.corp.intel.com (HELO [10.245.244.43])
 ([10.245.244.43])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2026 04:26:43 -0700
Message-ID: <023d3548-c44b-412d-987a-915a2a38ceff@linux.intel.com>
Date: Wed, 10 Jun 2026 13:26:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/ggtt: use full-range drm_mm with reserved nodes on
 PF
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20260527144527.3701844-2-rodrigo.vivi@intel.com>
 <c5b06289-f353-47eb-a918-102288fac7e9@intel.com> <ahjBn2vYp5dppkYp@intel.com>
 <ahlvesSbbOdk47m3@intel.com> <ahn_O3ZSTE2Th-tz@intel.com>
 <aiAp7R00bY-pgIL0@intel.com> <aiAvsds-BPvw-Lu6@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <aiAvsds-BPvw-Lu6@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	ARC_NA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,linux.intel.com:mid,linux.intel.com:from_mime];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A823668C73

Hello,

On 6/3/26 15:44, Rodrigo Vivi wrote:
> On Wed, Jun 03, 2026 at 04:19:41PM +0300, Ville Syrjälä wrote:
>> On Fri, May 29, 2026 at 05:03:55PM -0400, Rodrigo Vivi wrote:
>>> On Fri, May 29, 2026 at 01:50:34PM +0300, Ville Syrjälä wrote:
>>>> On Thu, May 28, 2026 at 06:28:47PM -0400, Rodrigo Vivi wrote:
>>>>> On Fri, May 29, 2026 at 12:11:22AM +0200, Michal Wajdeczko wrote:
>>>>>>
>>>>>>
>>>>>> On 5/27/2026 4:45 PM, Rodrigo Vivi wrote:
>>>>>>> The PF GGTT allocator was initialised over a relative [0, usable_size)
>>>>>>> range, with ggtt->start added on every address conversion to get the
>>>>>>> actual hardware address.  Two consequences of that model were considered
>>>>>>> "horrible hacks":
>>>>>>>
>>>>>>>   - ggtt->start (the WOPCM offset) had to be carried around and added
>>>>>>>     to every drm_mm result.
>>>>>>
>>>>>> hmm, but this an internal detail of the xe_ggtt implementation, so why
>>>>>> would someone else complain about it?
>>>>>>
>>>>>>>   - The GUC_GGTT_TOP ceiling silently truncated the GGTT range instead
>>>>>>
>>>>>> hmm, for the record, this GGTT cap on the top was added back in 2023
>>>>>>
>>>>>> commit ab10e976fbda8349163ceee2ce99b2bfc97031b8
>>>>>> Author: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>>>>> Date:   Wed Jun 14 10:47:54 2023 -0700
>>>>>>
>>>>>>     drm/xe: limit GGTT size to GUC_GGTT_TOP
>>>>>>
>>>>>> +        * The GuC address space is limited on both ends of the GGTT, because
>>>>>> +        * the GuC shim HW redirects accesses to those addresses to other HW
>>>>>> +        * areas instead of going through the GGTT. On the bottom end, the GuC
>>>>>> +        * can't access offsets below the WOPCM size, while on the top side the
>>>>>> +        * limit is fixed at GUC_GGTT_TOP. To keep things simple, instead of
>>>>>> +        * checking each object to see if they are accessed by GuC or not, we
>>>>>> +        * just exclude those areas from the allocator. Additionally, to
>>>>>> +        * simplify the driver load, we use the maximum WOPCM size in this logic
>>>>>>
>>>>>>>     of being made explicit, leaving PTEs in [GUC_GGTT_TOP, total_size)
>>>>>>>     untouched during the initial clear.
>>>>>>
>>>>>> and that likely will not be changed by this patch as after allocating 'two
>>>>>> permanent zones', the drm_mm_for_each_hole will not iterate over them
>>>>>
>>>>> right...
>>>>>
>>>>>>
>>>>>>>
>>>>>>> Fix this for the PF case by initialising drm_mm over the full hardware
>>>>>>> GGTT range [0, total_size) and permanently reserving the two forbidden
>>>>>>> zones:
>>>>>>>
>>>>>>>   - [0, wopcm)           — inaccessible below WOPCM
>>>>>>>   - [GUC_GGTT_TOP, total_size) — inaccessible above GUC_GGTT_TOP
>>>>>>
>>>>>> that looks odds: why pretend to claim manageability of full [0, 4GB)
>>>>>> of the GGTT and then immediately permanently reserve two end zones to
>>>>>> end up with real [wopcm, GUC_TOP) which is what we already have?
>>>>>
>>>>> yes...
>>>>>
>>>>>>
>>>>>>>
>>>>>>> A new mm_offset field (zero for PF) carries the base offset used in
>>>>>>> address conversions, unifying the existing VF relative model (where
>>>>>>> mm_offset == vf_base) with the new PF absolute model.
>>>>>>
>>>>>> but public xe_ggtt API already uses absolute addressing in PF and VF
>>>>>
>>>>> I know...
>>>>>
>>>>>>
>>>>>>>  The public
>>>>>>> xe_ggtt_start() / xe_ggtt_size() API continues to return the usable
>>>>>>> [wopcm, GUC_GGTT_TOP) boundaries, so callers such as the SR-IOV PF
>>>>>>> config code are unaffected.
>>>>>>>
>>>>>>> xe_ggtt_shift_nodes() now updates both ggtt->start and ggtt->mm_offset
>>>>>>> so the VF recovery path remains a single O(1) WRITE_ONCE pair.
>>>>>>
>>>>>> maybe it's just me - but I can't figure out the real rationale for this
>>>>>> patch - what did I miss?
>>>>>
>>>>> This series:
>>>>> https://lore.kernel.org/intel-xe/20260511214122.8468-1-ville.syrjala@linux.intel.com/
>>>>>
>>>>> And more specifically the discussion in this patch:
>>>>> https://lore.kernel.org/intel-xe/20260511214122.8468-13-ville.syrjala@linux.intel.com/
>>>>>
>>>>>>
>>>>>>>
>>>>>>> Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>>>>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>>>>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>>>>>> Assisted-by: GitHub-Copilot:claude-sonnet-4.6
>>>>>>> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>>>>>> ---
>>>>>>>  drivers/gpu/drm/xe/xe_ggtt.c | 123 ++++++++++++++++++++++++++++-------
>>>>>>>  1 file changed, 101 insertions(+), 22 deletions(-)
>>>>>>>
>>>>>>> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
>>>>>>> index a351c578b170..00a6cd2b8a51 100644
>>>>>>> --- a/drivers/gpu/drm/xe/xe_ggtt.c
>>>>>>> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
>>>>>>> @@ -137,6 +137,17 @@ struct xe_ggtt {
>>>>>>>  	const struct xe_ggtt_pt_ops *pt_ops;
>>>>>>>  	/** @mm: The memory manager used to manage individual GGTT allocations */
>>>>>>>  	struct drm_mm mm;
>>>>>>> +	/**
>>>>>>> +	 * @mm_offset: base offset added to drm_mm node addresses to obtain hardware
>>>>>>> +	 * GGTT addresses. For PF this is 0 (drm_mm uses absolute hardware addresses).
>>>>>>> +	 * For VF this equals @start (drm_mm uses relative addresses from VF base).
>>>>>>> +	 * Updated atomically by xe_ggtt_shift_nodes() during VF recovery.
>>>>>>> +	 */
>>>>>>> +	u64 mm_offset;
>>>>>>> +	/** @reserved_bottom: permanently reserved [0, WOPCM) drm_mm node for PF */
>>>>>>> +	struct drm_mm_node reserved_bottom;
>>>>>>> +	/** @reserved_top: permanently reserved [GUC_GGTT_TOP, total) drm_mm node for PF */
>>>>>>> +	struct drm_mm_node reserved_top;
>>>>>>
>>>>>> maybe all we need is to separate concepts of:
>>>>>>
>>>>>> * raw GGTT - fixed range [0, 4GB)
>>>>>>
>>>>>> from
>>>>>>
>>>>>> * allocable GGTT - configurable sub-range [start, end)
>>>>>>   * [wopcm, GUC_TOP) on PF
>>>>>>   * [base, base+size) on VF
>>>>>>
>>>>>> and then we can continue to use drm_mm.init(0, end-start) to manage
>>>>>> that [start, end) range in a common way on both PF and VF?
>>>>>
>>>>> we need to be able to use a ggtt buffer that comes out of this range,
>>>>> so I'm afraid it doesn't solve all the cases.
>>>>
>>>> Basically what the display needs is:
>>>> 1. specify where in ggtt the buffer was originally placed by the GOP,
>>>>    this may be partially or fully inside these GuC reserved ranges
>>>> 2. bind the buffer to some acceptable location (assuming the original
>>>>    location wasn't acceptable) without overwriting the PTEs for the
>>>>    original location
>>>>
>>>> I suppose this could be achieved even with this "mm doesn't cover the
>>>> ends" hack, but step 1 there becomes a bit dodgy because we can't
>>>> insert the mm node if it's fully outside the mm. I suppose it could 
>>>> still work if you hide it in a function that only validates the real
>>>> ggtt offsets, but then ignores the fact that the node can't be
>>>> inserted due to being fully inside those reserved ranges. And then
>>>> whatever cleans up that original mm node must also ignore the fact
>>>> that the node maybe wasn't even allocated. And also
>>>> xe_ggtt_initial_clear() will need special code to clear the
>>>> reserved ranges.
>>>
>>> right, so basically we could keep the xe_ggtt as is and provide
>>> 2 hooks:
>>>
>>> 1. one to reserve the portion of the BIOS FB that goes
>>> inside our managed ggtt area
>>> 2. a special clear for this area
>>>
>>> And in between you do the rebind with existing infrastructure
>>> to an empty region?! Is this what you are thinking now?
>>>
>>>>
>>>> My original idea was that we'd just include the reserved regions
>>>> in the mm, and then the display could just keep the buffer at its
>>>> original location, and later the guc code can reserve what is
>>>> left over. So we could skip step 2 above completely. But after
>>>> a second thought we probably don't want to skip that step because
>>>> we might free the display bo later, at which point we might free
>>>> up some of the reserved ranges. So I guess we'd still want to keep
>>>> step 2. But I think it'd still result in less special cases in the
>>>> code. We'd just need the guc code to reserve what it needs, after
>>>> the display code has rebound the bo to an acceptable location.
>>>>
>>>> So we'd end up with:
>>>> 1. insert node for the bo's original ggtt location
>>>> 2. rebind the display bo to an acceptable ggtt location
>>>> 3. undo step 1
>>>> 4. xe_ggtt_initial_clear() (now also clears the reserved ranges
>>>>    without any special code)
>>>> 5. guc steals the reserved ranges explicitly
>>>>
>>>> So only two special cases left really, and all the rest
>>>> of the code is blissfully unaware of any of it.
>>>>
>>>> Hmm, although hibernation might still be a slight issue for
>>>> xe_ggtt_initial_clear(). As in how would the reserved regions
>>>> get cleared during resume from hibernation? I have no idea 
>>>> how the current xe ggtt code handles resume at all...
>>>
>>> The resume should only restore the pinned bo's one by one, nothing
>>> special.
>>
>> Looks like currently xe_ggtt_initial_clear() is never even called
>> during resume from hibernation, so in that case parts of the GGTT
>> will be left with whatever garbage the GOP put there. So that's
>> one thing that needs fixing.
>>
>>> So I guess if we keep the original code we are okay,
>>> but if we start to managing the full range with the reserved areas
>>> we might have some difficulties here on the way...
>>
>> If we had a full range mm I suppose we'd need a bit of special code
>> to remove the reserved nodes before xe_ggtt_initial_clear() gets
>> called, at least for the resume from hibernation case.
> 
> it looks like Maarten suggestion fix the clear portion.
> But for the steps 1 and 3 above we would need a special reservation
> with a node area only within our managed area?!
> 
> something like (for step 1):
> 
> mm_start = max(start, ggtt->start);
> mm_end = min(start + size, ggtt->start + ggtt->size);
> 
> node->base.start = mm_start - ggtt->start;
> node->base.size = mm_end - mm_start;
> 
> drm_mm_reserve_node(&ggtt->mm, &node->base);

I completely missed this, but that function exists.

Extend xe_ggtt_insert_node to xe_ggtt_insert_node_at, and xe_ggtt_node_remove.
The display code needs to truncate start/end/size as needed, because
size is passed as argument.

The proposal I made in the original series that spawned this
discussion, had the same idea. You can argue the clipping should be done by
xe_ggtt, in which case I'm open for a xe_ggtt_node_reserve_region(begin, end),
with clipping done by xe_ggtt. But I believe xe_ggtt_insert_node_at is more
generic, and can be used in more places.

This also removes the workaround we added that required adding 'xe_ggtt_insert_bo_at'

> 
> and another special function to delete this special node
> if needed to be created?
> 
> Or what do you have on mind for the full area? I believe the full
> area is this patch, but with some additions anyway since we need
> to handle this buffer plus ensure it gets reserved when we don't
> have it...
> 
> I'd like to avoid complications like the phys offset addition or
> the full range if possible.
> 
> Could you please incorporate something simple in a v2 of your series?
> 
> Thanks,
> Rodrigo.
> 
>>
>> -- 
>> Ville Syrjälä
>> Intel

Kind regards,
~Maarten Lankhorst
