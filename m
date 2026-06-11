Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2d9fC1MELGrEJgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 985FB679A25
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2026 15:06:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=linux.dev header.s=key1 header.b=WXdGfeEV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=linux.dev
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AEDD10EA3B;
	Fri, 12 Jun 2026 13:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from out-178.mta0.migadu.com (out-178.mta0.migadu.com
 [91.218.175.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DFD410EEAD
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2026 12:05:38 +0000 (UTC)
Message-ID: <0a333eb8-fc29-4b85-993e-6b726f4c7cf0@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
 t=1781179534;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=5DWhVGO5QRW1VdI6faudwwsJfHG4kEahgJYviymqApU=;
 b=WXdGfeEVGSAo++golesa9RqlwDWjUI0heMbmJ+0qysjw6M0vMDyoHOMF4BIo7IvkX4TAc/
 st1Pw4GNLqtv7J36ZsIWUbhzXpD6Xr1bl3yfaJx2Itop5AMoYvIiJY7F17AB8z2GFhlVk4
 dNxzkmi6tes/wrxDPVh7NfIty6mQlso=
Date: Thu, 11 Jun 2026 20:04:40 +0800
MIME-Version: 1.0
Subject: Re: [PATCH v2 00/14] list: Prepare entry iterators to cache cursor
 state
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Sowjanya Komatineni <skomatineni@nvidia.com>,
 Davidlohr Bueso <dave@stgolabs.net>, "Paul E . McKenney"
 <paulmck@kernel.org>, Josh Triplett <josh@joshtriplett.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Boqun Feng <boqun@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Huang Rui <ray.huang@amd.com>,
 Eddie James <eajames@linux.ibm.com>, Mark Brown <broonie@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Laxman Dewangan <ldewangan@nvidia.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>, Waiman Long <longman@redhat.com>,
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, Christian Brauner
 <brauner@kernel.org>, David Howells <dhowells@redhat.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Kaito Cheng <chengkaitao@kylinos.cn>, Muchun Song <muchun.song@linux.dev>,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?Q?Christoph_B=C3=B6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Takashi Sakamoto <o-takashi@sakamocchi.jp>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>
References: <20260609061347.93688-1-kaitao.cheng@linux.dev>
 <bd0b7393-8ccb-4d67-8bfc-18c68347122c@amd.com>
 <5152089a-2808-4fe9-b633-b03018105dd2@linux.dev>
 <ail4AvzqAOXNaU6N@ashevche-desk.local>
 <9b98e860-11df-44bf-9a95-3046d2c274a6@linux.dev>
 <aipbojSeMH-usARY@ashevche-desk.local>
 <83ba73d8-27d3-4ee9-a143-7dfe4cb827be@linux.dev>
 <aippVAj83dCzscTN@ashevche-desk.local>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and
 include these headers.
From: Kaitao Cheng <kaitao.cheng@linux.dev>
In-Reply-To: <aippVAj83dCzscTN@ashevche-desk.local>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Mailman-Approved-At: Fri, 12 Jun 2026 13:06:10 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[25];
	DMARC_POLICY_ALLOW(-0.50)[linux.dev,none];
	R_DKIM_ALLOW(-0.20)[linux.dev:s=key1];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[amd.com,kernel.org,nvidia.com,stgolabs.net,joshtriplett.org,infradead.org,redhat.com,gmail.com,linux.intel.com,intel.com,ursulin.net,linux.ibm.com,foss.st.com,linaro.org,suse.de,ffwll.ch,ideasonboard.com,kwiboo.se,lists.linbit.com,vger.kernel.org,lists.sourceforge.net,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org,linux-foundation.org,bootlin.com,kylinos.cn,linux.dev,linbit.com,kernel.dk,sakamocchi.jp,perex.cz,suse.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andriy.shevchenko@linux.intel.com,m:christian.koenig@amd.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:skomatineni@nvidia.com,m:dave@stgolabs.net,m:paulmck@kernel.org,m:josh@joshtriplett.org,m:peterz@infradead.org,m:mingo@redhat.com,m:will@kernel.org,m:boqun@kernel.org,m:lgirdwood@gmail.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:ray.huang@amd.com,m:eajames@linux.ibm.com,m:broonie@kernel.org,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:ldewangan@nvidia.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:longman@redhat.com,m:drbd-dev@lists.linbit.com,m:linux-block@vger.kernel.org,m:linux1394-devel@lists.sourceforg
 e.net,m:dri-devel@lists.freedesktop.org,m:linux-spi@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-arm-kernel@lists.infradead.org,m:linux-tegra@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akpm@linux-foundation.org,m:rdunlap@infradead.org,m:brauner@kernel.org,m:dhowells@redhat.com,m:luca.ceresoli@bootlin.com,m:chengkaitao@kylinos.cn,m:muchun.song@linux.dev,m:philipp.reisner@linbit.com,m:lars.ellenberg@linbit.com,m:christoph.boehmwalder@linbit.com,m:axboe@kernel.dk,m:o-takashi@sakamocchi.jp,m:andrzej.hajda@intel.com,m:perex@perex.cz,m:tiwai@suse.com,m:mcoquelinstm32@gmail.com,m:jernejskrabec@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[62];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kaitao.cheng@linux.dev,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_COUNT_TWO(0.00)[2];
	DKIM_TRACE(0.00)[linux.dev:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,linux.dev:dkim,linux.dev:mid,linux.dev:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 985FB679A25



在 2026/6/11 15:52, Andy Shevchenko 写道:
> On Thu, Jun 11, 2026 at 03:36:01PM +0800, Kaitao Cheng wrote:
>> 在 2026/6/11 14:54, Andy Shevchenko 写道:
>>> On Thu, Jun 11, 2026 at 12:42:02PM +0800, Kaitao Cheng wrote:
>>>> 在 2026/6/10 22:43, Andy Shevchenko 写道:
>>>>> On Wed, Jun 10, 2026 at 02:14:06PM +0800, Kaitao Cheng wrote:
>>>>>> 在 2026/6/9 18:33, Christian König 写道:
>>>>>>> On 6/9/26 08:13, Kaitao Cheng wrote:
>>>
>>>>>>>> This series prepares for, and then updates, the list_for_each_entry()
>>>>>>>> family so the common entry iterators cache their next or previous cursor
>>>>>>>> before the loop body runs.
>>>>>>>
>>>>>>> Why in the world would we want to do that?
>>>>>>>
>>>>>>> The safe and non-safe variants have very distinct use cases and that is completely intentional.
>>>>>>>
>>>>>>> What we could improve maybe is the documentation, from my experience an astonishing large amount of people have misconceptions about the safe variants.
>>>>>>>
>>>>>>>> The first 13 patches open-code loops that intentionally depend on the
>>>>>>>> old "derive the next entry from the current cursor at the end of the
>>>>>>>> iteration" behaviour.  These loops append work to the list being walked,
>>>>>>>> restart traversal after dropping a lock, skip an entry consumed by the
>>>>>>>> current iteration, or otherwise adjust the cursor in the loop body.
>>>>>>>
>>>>>>> Well I have to clearly reject the changes for subsystems/components I'm maintaining, that just looks horrible to me and I clearly don't see a good reason for that.
>>>>>>
>>>>>> Hi Christian and Andy Shevchenko,
>>>>>>
>>>>>> Thanks for taking a look. I would like to clarify the point you raised.
>>>>>>
>>>>>> The reason I started looking at this is the original motivation behind
>>>>>> the _safe() variants.  They exist because some users need to remove, move
>>>>>> or otherwise consume the current entry while walking the list.  In that
>>>>>> case the next cursor has to be preserved before the loop body can modify
>>>>>> the current entry.
>>>>>>
>>>>>> The unfortunate part is that this could not be expressed with the
>>>>>> existing list_for_each_entry() interface without changing its calling
>>>>>> convention.  The _safe() variants had to grow an extra argument for the
>>>>>> temporary cursor, and that is why we ended up with a separate family of
>>>>>> macros.
>>>>>>
>>>>>> But conceptually, the distinction does not have to be exposed as two
>>>>>> different iterator families forever.  The difference is an implementation
>>>>>> detail: whether the iterator keeps the next/previous cursor before the
>>>>>> body runs.  This series makes the common list_for_each_entry() iterators
>>>>>> do that internally, so the safe and non-safe forms can effectively be
>>>>>> folded together, or at least the need for a separate public _safe()
>>>>>> interface becomes much weaker.
>>>>>>
>>>>>> There is also a usability issue with the current _safe() interface.  The
>>>>>> caller is forced to define a temporary cursor outside the macro and pass
>>>>>> it in, even though almost all users never use that cursor directly.  It is
>>>>>> just boilerplate required by the macro implementation.  I find that
>>>>>> redundant and awkward: the temporary cursor is an internal detail of the
>>>>>> iteration, but every caller has to spell it out.
>>>>>
>>>>> Ah, I think the distinct macro families is that what we want.
>>>>> But the hiding of the parameter can be done inside list_for_each_*_safe().
>>>>> You can do a treewide change with coccinelle.
>>>>>
>>>>> Sorry if I didn't get the whole idea from your previous contributions.
>>>>>
>>>>> Note, even cases that would need a temporary cursor may be switched to
>>>>> new list_for_each_*_safe(), see how PCI macros for iterating over resources
>>>>> are implemented (include/linux/pci.h).
>>>>
>>>> Thanks for your suggestions. I've written a demo based on your feedback.
>>>> Could you please review it and share your thoughts on this approach?
>>>
>>> Have you checked how many users actually need the temporary storage?
>>
>> In Muchun's reply, he mentioned the following:
>>
>> There are 9,925 list_for_each_entry() call sites in total. Among them,
>> 9,919 do not require any adaptation, and only 6 need to be refactored:
>>
>> As for list_for_each_entry_safe(), there are 4,572 callers. 4,550 of them
>> can be directly replaced by the new list_for_each_entry(), while 22 cannot
>> be replaced
>>
>> https://lore.kernel.org/all/2B3BFA1E-08B8-42AB-87D6-A28BF15E5C58@linux.dev/
>>
>> I only used Coccinelle to scan for list_for_each_entry() call sites, and
>> found the 13 call sites shown in the current patch series, which cover
>> the 6 cases mentioned in Muchun's email. I have not yet run the Coccinelle
>> scan for list_for_each_entry_safe().
>>
>> If we need to handle all 9,925 list_for_each_entry() call sites or all 4,572
>> list_for_each_entry_safe() call sites in one go, would such a change be too
>> large? I expect it would affect almost every kernel subsystem.
> 
> If it's done by Linus himself during the day when he prepares -rc1, it's fine.
> You would need to provide a good justification for the change, though.
> 
> But in the above statistics the 4572 vs 4550, so the first step is to investigate
> why temporary cursor is used in those 22 cases and what we can do to avoid that.

Here is one example: in shmem_unuse() in mm/shmem.c, list_for_each_entry_safe()
is used. In this case, the caller releases shmem_swaplist_lock inside the loop.
During that window, the list may be modified, and the previously saved next may
become stale. Therefore, next needs to be recomputed so that subsequent iteration
is based on the latest list state.

This leads to two possible approaches:

1. Change list_for_each_entry_safe(pos, n, head, member) directly to
list_for_each_entry_safe(pos, head, member). If we do this, the case
above would need to be converted to an open-coded form.

2. Support both forms, list_for_each_entry_safe(pos, n, head, member)
and list_for_each_entry_safe(pos, head, member), as described in the
link below.
https://lore.kernel.org/all/9b98e860-11df-44bf-9a95-3046d2c274a6@linux.dev/

Do you have any other thoughts on this?

>> I wonder whether it would be better to first provide the necessary
>> compatibility APIs, and then let each subsystem owner update their code as
>> appropriate. That would make the impact more controlled, similar to how
>> the current folio replacement of page is being handled.
-- 
Thanks
Kaitao Cheng

