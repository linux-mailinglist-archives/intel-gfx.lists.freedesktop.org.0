Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0706683402
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 18:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72A8A10E377;
	Tue, 31 Jan 2023 17:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2FBB10E2A5;
 Tue, 31 Jan 2023 17:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675186611; x=1706722611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BERopsbCe3t1sSEI+bO85Xeq6oeuK2Wj4IQ4k14BLdQ=;
 b=lyxyHkVLW7kz+k3nJbnLrPzlol9TFNFd4/rKg+/6Hj4t30xczEjsAcCj
 SYziU+k+4MqukhhHoq0f0tzt90JBBCcAAhwPzJBPyePHY6qtLZiLJ24gH
 0yXHJQhKZTYVq47pEsIJFTUEGfT1P0moBDKRu5QxqCrpFdnMwY/dSUIU0
 vj5pJpKkl2nDaMw68nhfPFEUaZDVMoKaYjqOF/HxfprNv2NWJCXTEpBhc
 Bg+GOE/WqmdfYvCsPfAM2B+5zNthV7b0SYu3FvClvNmEZTrh7EOyBugbO
 Rhw+dbtrB0v+gUw5xNyp3liBUpTQS5o1bMw0dM4yZHiZkdQM0gEai1aDm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="327919956"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="327919956"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 09:36:37 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="807213743"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807213743"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.18.238])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 09:36:33 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Date: Tue, 31 Jan 2023 18:36:30 +0100
Message-ID: <1949047.usQuhbGJ8B@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <87a61yvfq3.wl-ashutosh.dixit@intel.com>
References: <20230131091731.5892-1-janusz.krzysztofik@linux.intel.com>
 <87a61yvfq3.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 0/2] tests/i915/perf: Add
 stress / race exercises
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
Cc: igt-dev@lists.freedesktop.org, Arkadiusz Hiler <arek@hiler.eu>,
 intel-gfx@lists.freedesktop.org, Petri Latvala <adrinael@adrinael.net>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tuesday, 31 January 2023 17:19:48 CET Dixit, Ashutosh wrote:
> On Tue, 31 Jan 2023 01:17:29 -0800, Janusz Krzysztofik wrote:
> >
> 
> Hi Janusz,
> 
> > Users reported oopses on list corruptions when using i915 perf with a
> > number of concurrently running graphics applications.  That indicates we
> > are currently missing some important tests for such scenarios.  Cover
> > that gap.
> 
> Do these oops etc. have anything to do with perf itself or rather with
> persistence or non-persistence not properly supported with GuC? 

My root cause analysis has revealed that these list corruptions are actually 
caused by a bug in barrier processing, then no, they are not persistence nor 
GuC related.  For details, please see my preliminary (still a bit buggy, but 
otherwise valid) fix, so far sent only to trybot:
https://patchwork.freedesktop.org/series/113268/

> We should
> have seen such failures with persistence tests (with GuC) itself so I am
> wondering if there's any point of dragging perf into these already muddy
> waters? Such failures should be isolated first with other tests without
> mixing perf into this IMO.

I see your point, but unfortunately things are not that easy.  My 
investigation has lead me to a conclusion that the bug within the barrier 
processing code is now addressed, to some extent, and probably not 
intentionally, by a kind of workaround that makes it really hard to reproduce 
without any interaction from an external user that tries to replace a barrier 
with its own request.  And I can see a very limited number of such users, one 
of them being perf.

The first patch was developed by Chris still before I found the the root cause 
of the issue.  Since the bug seemed strictly perf related at that point in 
time, that's probably why Chris decided to add the new subtest to perf.  As 
such, that subtest is more general than just focused on triggering the list 
corruption bug, and it pretty belongs to perf, I believe.

Since Chris' subtest didn't help in triggering the list corruption, I've 
developed a new subtest that can do it.  Since it is almost identical to the 
one Chris added, I decided to reuse his code, then add my new subtest to perf 
as well.  But maybe you are right that my subtest better fits to another test. 
not perf.  I'll think this over.

I hope this clarifies things for you.

Thanks,
Janusz

> 
> Thanks.
> --
> Ashutosh
> 




