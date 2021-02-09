Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE29314DB8
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 12:03:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA3C6E02A;
	Tue,  9 Feb 2021 11:03:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D9686E02A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 11:03:05 +0000 (UTC)
IronPort-SDR: hF+a8Azax1mi4K2div6/9Z7zbIzZuu+ji0OUHfxRcS54DShtK5gKFotqEOmlZ7BSMDh+/ekV6z
 jVjevpwBQMRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200933779"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="200933779"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 03:03:04 -0800
IronPort-SDR: DCMU11aBpuEJDeedShvBRh4aHy/HWMDjYHvoj83mSkMqnLzlhj/5j84lHbGicXguPuqah1fjIu
 p84SKxjY7tEw==
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="396074672"
Received: from gmaoz-mobl.ger.corp.intel.com (HELO [10.249.82.228])
 ([10.249.82.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 03:03:02 -0800
To: Dave Airlie <airlied@gmail.com>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-30-chris@chris-wilson.co.uk>
 <CAPM=9tzVb=eN84xSY+_q8Cgv7dwidCyh9kr7N411YmM+NhLbNQ@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0f996ce5-9b18-50dd-121b-af30527e2e70@linux.intel.com>
Date: Tue, 9 Feb 2021 11:02:59 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <CAPM=9tzVb=eN84xSY+_q8Cgv7dwidCyh9kr7N411YmM+NhLbNQ@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 30/31] drm/i915: Support secure dispatch on
 gen6/gen7
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/02/2021 20:55, Dave Airlie wrote:
> On Mon, 8 Feb 2021 at 20:53, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>
>> Re-enable secure dispatch for gen6/gen7, primarily to workaround the
>> command parser and overly zealous command validation on Haswell. For
>> example this prevents making accurate measurements using a journal for
>> store results from the GPU without CPU intervention.
> 
> There's 31 patches in this series, and I can't find any 00/31 or
> justification for any of this work.
> 
> I see patches like this which seem to undo work done for security
> reasons under CVE patches with no oversight.
> 
> Again, the GT team is not doing the right thing here, stop focusing on
> individual pieces of Chris's work, push back for high level
> architectural reviews and I want them on the list in public.
> 
> All I want from the GT team in the next pull request is dma_resv
> locking work and restoring the hangcheck timers that seems like a
> regression that Chris found acceptable and nobody has pushed back on.
> 
> For like the 500th time, if you want DG1 and stuff in the tree, stop
> this shit already, real reviewers, high-level architectural reviews,
> NAK the bullshit in public on the list.

Since it's mostly been me reviewing the scheduler improvements in this 
series, I gather we have met and talked, or that you have at least have 
been following me closely enough to conclude I am not a "real" reviewer. 
Fair?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
