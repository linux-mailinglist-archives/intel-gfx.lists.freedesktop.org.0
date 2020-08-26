Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D57252945
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 10:36:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57B3B6E0E2;
	Wed, 26 Aug 2020 08:36:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1E576E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 08:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=veGH0sj8CpzoB7z2Ugw0Q7KAeYkTLywoEl9R0uF1e9I=; b=I1//bUbCUvJq2ScYDDJp6AyFTB
 su4UHilEJ3AGqu6Zu9cPO9EZegXAAZ6TB0o2laIHgyIHWBUIsIrrlC5SpboU+fWbmjqsnBx84TVIT
 rhwuZ4wTlDa6gSZzW5dZiTh328CivPVxU5Bt1ipvmj44gqlX/R4gwZDZ4a1U92fShrV2wcoVdWYwb
 2Yx56Tnb691FD8OVbmCGMyIbS+w9yZpKcgDSlxWBtPUS45m/Keazh0jAn3ixyxMVaQ6C2h5LWjOT+
 WL3V3HDppIEjUoueIwtj67REL3TF12lCt0GaFVI31lMkyBhKqpcdX87vQiLCEXtEiTR544dCsH8Qn
 KaAaRecg==;
Received: from [2a01:79c:cebf:7fb0:de97:df61:fecc:46bb] (port=58798)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <harald@skogtun.org>)
 id 1kAque-0006B5-M3; Wed, 26 Aug 2020 10:36:08 +0200
To: Linus Torvalds <torvalds@linux-foundation.org>
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
 <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz> <87tuwr59te.fsf@intel.com>
 <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
 <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
From: Harald Arnesen <harald@skogtun.org>
Message-ID: <d4db4a52-3001-cb02-4888-a9dfd55cdd7c@skogtun.org>
Date: Wed, 26 Aug 2020 10:36:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
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
 Chris Wilson <chris@chris-wilson.co.uk>, Matthew Auld <matthew.auld@intel.com>,
 Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Linus Torvalds [25.08.2020 20:19]:

> On Tue, Aug 25, 2020 at 9:32 AM Harald Arnesen <harald@skogtun.org> wrote:
>>
>> > For posterity, I'm told the fix is [1].
>> >
>> > [1] https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/
>>
>> Doesn't fix it for me. As soon as I start XFCE, the mouse and keyboard
>> freeezes. I can still ssh into the machine
>>
>> The three reverts (763fedd6a216, 7ac2d2536dfa and 9e0f9464e2ab) fixes
>> the bug for me.
> 
> Do you get any oops or other indication of what ends up going wrong?
> Since ssh works that should be fairly easy to see.
I was wrong about ssh working. The whole machine locks up when X starts.

A strange thing, sometimes I can log in from lightdm before it locks up,
sometimes I cannot even use the login screen. Timing related?

If I don't start X, console login seems to work fine, and I see nothing
obvious in the logs or kernel messages.

I will try to start just a window manager with startx instead of going
through lightdm.
-- 
Hilsen Harald
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
