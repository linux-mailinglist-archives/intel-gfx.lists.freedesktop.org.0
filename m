Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0434703F8
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Dec 2021 16:36:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C74810EA58;
	Fri, 10 Dec 2021 15:36:25 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE0B010EA41;
 Fri, 10 Dec 2021 15:36:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="324630337"
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="324630337"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 07:36:23 -0800
X-IronPort-AV: E=Sophos;i="5.88,196,1635231600"; d="scan'208";a="463700570"
Received: from kbinis1x-mobl2.gar.corp.intel.com (HELO [10.209.148.127])
 ([10.209.148.127])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 07:36:19 -0800
Message-ID: <931129d0-4e86-48f9-7b2e-bddef93697c6@linux.intel.com>
Date: Fri, 10 Dec 2021 15:36:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org
References: <20211210110556.883735-1-tvrtko.ursulin@linux.intel.com>
 <a7898ef462a49db825b3fdd4efdba1e546466473.camel@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <a7898ef462a49db825b3fdd4efdba1e546466473.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Stop doing writeback from the
 shrinker
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
Cc: Michal Hocko <mhocko@suse.com>, Hugh Dickins <hughd@google.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Renato Pereyra <renatopereyra@google.com>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/12/2021 14:46, Thomas Hellström wrote:
> On Fri, 2021-12-10 at 11:05 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> This effectively removes writeback which was added in 2d6692e642e7
>> ("drm/i915: Start writeback from the shrinker").
>>
>> Digging through the history it seems we went back and forth on the
>> topic
>> of whether it would be safe a couple of times. See for instance
>> 5537252b6b6d ("drm/i915: Invalidate our pages under memory pressure")
>> where Hugh Dickins has advised against it. I do not have enough
>> expertise
>> in the memory management area so am hoping for expert input here.
>>
>> Reason for proposing removal is that there are reports from the field
>> which indicate a sysetm wide deadlock (of a sort) implicating i915
>> doing
>> writeback at shrinking time.
>>
>> Signature is a hung task notifier kicking in and task traces such as:
> 
> It would be interesting to see what exactly the find_get_entry is
> blocked on. The other two tasks are blocked on the shrinker_rwsem which
> is held by i915. If it's indeed a deadlock with either of those two,

It may indeed be a livelock instead of a deadlock. I have received a 
newer trace and it indeed shows kswapd in running state. But no progress 
in 120s and dead machine sounded like too suspicious it could happen 
with just a gaming workload so I assumed a more serious issue than just 
severe memory pressure.

> then the fix Chris is working on for an unrelated issue we discovered
> with shrinking would move out the writeback call from the
> shrinker_rwsem and resolve this, but if i915 is in turn deadlocking
> with another process and these two are just hanging waiting for the
> shrinker_rwsem, we would still have other issues.

Presumably this would involve an extra worker and tracking on a list or 
something?

Otherwise my main hope really was to get a verdict from memory 
management experts on pros & cons of doing writeback from the driver in 
any flavour.

> Do you by any chance have the list of the locks held by the system at
> this point?

No, but maybe Renato you could also collect "echo d" and "echo m" to 
sysrq-trigger when things go bad?

Regards,

Tvrtko
