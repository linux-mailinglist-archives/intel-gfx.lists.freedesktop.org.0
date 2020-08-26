Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0493253943
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17EEF6EADC;
	Wed, 26 Aug 2020 20:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B89266EADC
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:44:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=skogtun.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=81QOHKG8nskBo8noIVLaJnv+JFBD/ZOyIUZnyD6RVw0=; b=XaNuR/x+4X9LjePdzfMotUT3X8
 ordHvCiA1DEzi76Fzz0iiCngJfWoTzSKo9q/7M5ETM/tChFVtvYy4d5QQR5AFxyeSB4LfHhmwDPiv
 D6/hHyUV+qACpv3c9tY7fgRmNA2PgQ9VDnVpkKdYxoRmW7nXFz8DpkfD9b4ORLBUcPPZQUNRgMnG9
 D3Iwh2OQ1M7qNX9mRI03ELFfToCiMzpDBfrWOq0DiNzAvOVaIraFkfIMu9uwEBGAgQR1EgN8hSARl
 I/12rWQWUm4enWjjRD398PqSgVTVNU/pPfLGo3cY0jsQ9IrYt8GhNpBFmaq8l8aTJRKhRxQ3PqKx5
 aTSErK8g==;
Received: from [2a01:79c:cebf:7fb0:de97:df61:fecc:46bb] (port=56236)
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <harald@skogtun.org>)
 id 1kB2HG-00075B-Qd; Wed, 26 Aug 2020 22:44:14 +0200
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
 <d4db4a52-3001-cb02-4888-a9dfd55cdd7c@skogtun.org>
 <656b8f9f-d696-c75d-aef6-2b8b5170f2f6@skogtun.org>
 <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
From: Harald Arnesen <harald@skogtun.org>
Message-ID: <101bff45-0ebd-8fb6-7c99-963aa4fcc588@skogtun.org>
Date: Wed, 26 Aug 2020 22:44:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
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

Linus Torvalds [26.08.2020 20:04]:

> On Wed, Aug 26, 2020 at 2:30 AM Harald Arnesen <harald@skogtun.org> wrote:
>> Somehow related to lightdm or xfce4? However, it is a regression, since
>> kernel 5.8 works.
> Yeah, apparently there's something else wrong with the relocation changes too.
> 
> That said, does that patch at
> 
>   https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/
> 
> change things at all? If there are two independent bugs, maybe
> applying that patch might at least give you an oops that gets saved in
> the logs?
> 
> (it might be worth waiting a bit after the machine locks up in case
> the machine is alive enough so sync logs after a bit.. If ssh works,
> that's obviously better yet)

No, doesn't help. And I was wrong, ssh does not work at all when the
display locks up.
-- 
Hilsen Harald
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
