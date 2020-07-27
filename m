Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4560B22E917
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 11:36:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F7E289BFD;
	Mon, 27 Jul 2020 09:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3ACC89BFD
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 09:36:09 +0000 (UTC)
IronPort-SDR: bz4SPLQzqVj+CSznVray/990fw0SuYcFBSL8NqAWhi1zWWMaRvaf8QmE589zf6UPXG4A1nekRp
 GrtQ7M7lYWDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9694"; a="152238772"
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="152238772"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 02:36:09 -0700
IronPort-SDR: DGYbESPlKleVVNcaASaFnAPkc5UZKoL5YJN8027pol+9vRV9OTyYj1paZNnsh1VTiTefPTcjMs
 xSAPSu+X4x2Q==
X-IronPort-AV: E=Sophos;i="5.75,402,1589266800"; d="scan'208";a="433871310"
Received: from hmiron-mobl1.ger.corp.intel.com (HELO [10.251.169.133])
 ([10.251.169.133])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2020 02:36:07 -0700
To: Dave Airlie <airlied@gmail.com>, Chris Wilson <chris@chris-wilson.co.uk>
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <CAPM=9txAqRB=+DZ4To5911Bx_ZgiTSUGFaHR86YEXm6w+pzHyA@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <89c0b469-1930-a6f6-e818-4b44ac71e022@linux.intel.com>
Date: Mon, 27 Jul 2020 10:35:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAPM=9txAqRB=+DZ4To5911Bx_ZgiTSUGFaHR86YEXm6w+pzHyA@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/66] drm/i915: Reduce i915_request.lock
 contention for i915_request_wait
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


On 23/07/2020 21:32, Dave Airlie wrote:
> I've got a 66 patch series here, does it have a cover letter I missed?
 >
 > Does it have a what is the goal of this series? Does it tell the
 > reviewer where things are headed and why this is a good idea from a
 > high level.

Chris sent it on one of the previous rounds upon my request - please see 
https://www.spinics.net/lists/intel-gfx/msg243461.html. First paragraph 
is the key.

This series of 66 is some other unrelated work which is a bit 
misleading, but that the usual. :) Real amount of patches is more around 
20, like that posting which had a cover letter.

> The problem with these series is they are impossible to review from a
> WTF does it do, and it forces people to review at a patch level, but
> the high level concepts and implications go unmissed.

I've been reviewing both implementations so in case it helps I'll write 
a few words... We had internal discussions and meetings on two different 
approaches. With this in mind, I agree it is hard to get the full 
picture looking from the outside when only limited amount of information 
went out (in the for of the cover letter).

In short, core idea the series is doing is splitting out object backing 
store reservation from address space management. This way it is able to 
collect all possible backing store (and kernel memory allocations) into 
this first stage, and it also does not have to feed the ww context down 
the stack. (Because parts lower in the stack can therefore never try to 
obtain a new buffer objects, or do memory allocation.)

To me that sounds a solid approach which is in line with obj dma_resv 
locking rules.

And it definitely is not to be reviewed (just) on the patch-per-patch 
basis. Applying all of it and looking at the end result is what is 
needed and what I have done first before proceeded to look at individual 
patches.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
