Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF6337A735
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:56:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030E36E138;
	Tue, 11 May 2021 12:56:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3031F6E138
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 12:56:44 +0000 (UTC)
IronPort-SDR: ux0C+BHC8MIZqiuz7wSnFhLkaclU4tZXJ6FT03B4zRA4unRsiblCglVMTkLSewgwdShWpfSNlN
 UaU6yOVZSSWw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="199497897"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="199497897"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 05:56:43 -0700
IronPort-SDR: IuvjxKpluZHPFjuGczJEoD1k9qODbiH+ABvlrtGiH2pVsKJE6vXYYbNegVxKMCJ5BG5C8IMbnS
 OCcX0gi53Rhg==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="434433649"
Received: from ialvarez-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.32.67])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 05:56:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Paul Zimmerman <pauldzim@gmail.com>, Timo Aaltonen <tjaalton@ubuntu.com>
In-Reply-To: <87a6p1v39b.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210509044330.4655-1-pauldzim@gmail.com>
 <02957632-b050-f9eb-fcd8-75db9c92b8e0@ubuntu.com>
 <CADBGO7_cH2e1-zgVNvwVPRogqeFjTfJhKcuTfdF=xc_GoMmknA@mail.gmail.com>
 <87a6p1v39b.fsf@intel.com>
Date: Tue, 11 May 2021 15:56:38 +0300
Message-ID: <877dk5v37d.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH RFC] Revert "drm/i915: Try to use
 fast+narrow link on eDP again and fall back to the old max strategy on
 failure"
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 May 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 10 May 2021, Paul Zimmerman <pauldzim@gmail.com> wrote:
>> On Mon, May 10, 2021 at 7:00 AM Timo Aaltonen <tjaalton@ubuntu.com> wrote:
>>>
>>> On 9.5.2021 7.43, Paul Zimmerman wrote:
>>> > This reverts commit 2bbd6dba84d44219387df051a1c799b7bac46099.
>>> >
>>> > Since 5.12-rc2, my Dell XPS-15 laptop has had a blank screen on boot.
>>> > The system seems to run fine other than having no display, I am able
>>> > to ssh into the machine. I don't see anything interesting in the dmesg
>>> > log. I bisected the problem down to this commit, and reverting it fixes
>>> > the problem.
>>>
>>> Have you tried with drm-tip? It has acca7762eb71bc0 which hopefully
>>> helps here.
>>
>> I picked that one commit from the drm-tip tree (wasn't sure how to merge
>> the entire tree into the kernel) and can confirm that it does fix the problem.
>> Thank you! I hope the fix will be sent to Linus pretty soon, and it will need
>> backporting to the 5.12 kernel as well.
>
> I've picked up 2bbd6dba84d4 ("drm/i915: Try to use fast+narrow link on
> eDP again and fall back to the old max strategy on failure") to
> drm-intel-fixes, and it should find itself in v5.13-rc2 and subsequently
> v5.12 stable in the coming weeks.

I mean I've picked up acca7762eb71 ("drm/i915/dp: Use slow and wide link
training for everything").


>
> BR,
> Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
