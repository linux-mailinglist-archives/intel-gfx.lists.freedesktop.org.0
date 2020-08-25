Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B24251D50
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 18:38:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62ABC6E102;
	Tue, 25 Aug 2020 16:38:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 382 seconds by postgrey-1.36 at gabe;
 Tue, 25 Aug 2020 16:38:21 UTC
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 203E66E102
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 16:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Azq8s/g0P7WuVH3XCd58/5BNtHWhEWrZ8Xs/jBWMaEA=; b=gOzfmTZUDkwhzWbfXXFxiyUrJe
 iUX8kg4P+tCCZ6cTVVvJq59/y4QVEBCizu8a9cwNnRk9Lqy7YstihRDV36wxbC20Rc/k9T8eLRoqs
 aay6r4MgjFMBfhrcfyTcQIm4bfona+6074HuaNdRYd8IN5WtFsWULgDSMMxaVdvkODdLUkC+yVMJ5
 o4h/l5ylsG4Mh8Jh9Fkhwgzo3CFNFcZyTOMynPNBrwJD9PV2dtPNf5MAUk9KSyQN1Fe7aJsCrmkgn
 wsOzVD/C0j9SSQS9qUNXC8+ABxz3x2t5yAdEsmuSg/IUuwBpjQdAsEjPmCgVddvq7aeN12OHUHtG3
 rnH4ecVw==;
Received: from [2a01:79c:cebf:7fb0:de97:df61:fecc:46bb] (port=53120)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <harald@skogtun.org>)
 id 1kAbrZ-00031x-Af; Tue, 25 Aug 2020 18:31:57 +0200
To: Jani Nikula <jani.nikula@linux.intel.com>, Pavel Machek <pavel@ucw.cz>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
 <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz> <87tuwr59te.fsf@intel.com>
From: Harald Arnesen <harald@skogtun.org>
Message-ID: <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
Date: Tue, 25 Aug 2020 18:31:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <87tuwr59te.fsf@intel.com>
Content-Language: en-US
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

Jani Nikula [25.08.2020 11:55]:

> On Fri, 21 Aug 2020, Pavel Machek <pavel@ucw.cz> wrote:
>> On Thu 2020-08-20 09:16:18, Linus Torvalds wrote:
>>> On Thu, Aug 20, 2020 at 2:23 AM Pavel Machek <pavel@ucw.cz> wrote:
>>> >
>>> > Yes, it seems they make things work. (Chris asked for new patch to be
>>> > tested, so I am switching to his kernel, but it survived longer than
>>> > it usually does.)
>>> 
>>> Ok, so at worst we know how to solve it, at best the reverts won't be
>>> needed because Chris' patch will fix the issue properly.
>>> 
>>> So I'll archive this thread, but remind me if this hasn't gotten
>>> sorted out in the later rc's.
>>
>> Yes, thank you, it seems we have a solution w/o the revert.
> 
> For posterity, I'm told the fix is [1].
> 
> BR,
> Jani.
> 
> 
> [1] https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/

Doesn't fix it for me. As soon as I start XFCE, the mouse and keyboard
freeezes. I can still ssh into the machine

The three reverts (763fedd6a216, 7ac2d2536dfa and 9e0f9464e2ab) fixes
the bug for me.
-- 
Hilsen Harald
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
