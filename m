Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D8C2515C4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 11:55:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B62976E897;
	Tue, 25 Aug 2020 09:55:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4386E896
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 09:55:32 +0000 (UTC)
IronPort-SDR: 1omn+zIM36BzKb57iKk7dy4pKnK3W56Zv16Kx7O7pf1hTePMidrXttOYlgn936+9caHfWeecpe
 yHJu0HFLROzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9723"; a="135626760"
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="135626760"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 02:55:32 -0700
IronPort-SDR: SO5pteS+3BNVXHt9gxEDvxYfrNdjv2PGu99rQW43zfRbMCLaRf+GnKSUtkkxGAnJx8qQxEgSIX
 vtC4BDimXcuw==
X-IronPort-AV: E=Sophos;i="5.76,352,1592895600"; d="scan'208";a="474283564"
Received: from mmoerth-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.32.133])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2020 02:55:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Pavel Machek <pavel@ucw.cz>, Linus Torvalds <torvalds@linux-foundation.org>
In-Reply-To: <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
 <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz>
Date: Tue, 25 Aug 2020 12:55:25 +0300
Message-ID: <87tuwr59te.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 5.9-rc1: graphics regression moved from -next to
 mainline
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 kernel list <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 21 Aug 2020, Pavel Machek <pavel@ucw.cz> wrote:
> On Thu 2020-08-20 09:16:18, Linus Torvalds wrote:
>> On Thu, Aug 20, 2020 at 2:23 AM Pavel Machek <pavel@ucw.cz> wrote:
>> >
>> > Yes, it seems they make things work. (Chris asked for new patch to be
>> > tested, so I am switching to his kernel, but it survived longer than
>> > it usually does.)
>> 
>> Ok, so at worst we know how to solve it, at best the reverts won't be
>> needed because Chris' patch will fix the issue properly.
>> 
>> So I'll archive this thread, but remind me if this hasn't gotten
>> sorted out in the later rc's.
>
> Yes, thank you, it seems we have a solution w/o the revert.

For posterity, I'm told the fix is [1].

BR,
Jani.


[1] https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
