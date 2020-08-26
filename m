Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD50253641
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 20:04:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61806E359;
	Wed, 26 Aug 2020 18:04:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5383989FA0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 18:04:54 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y26so1493440lfe.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 11:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WS/uJxuwiLHzldorNgMUOjPOOvCspP/oXyUz1rKFvLY=;
 b=gsl5MMtpFNjAqrtJTRY10b6SSrB695wNhgGZ6I864ob20EWqPgWYXe7hztu360LCIz
 Bjd31nxkTx3ZxjFZilSSbLw0bSNbgFN95BuF3Ay9Zjo/uP/uhRyADieYZsLTvpujmFRZ
 nNRbOTiwJDThrxDAFViWi7YqXoD/BG3OChA7w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WS/uJxuwiLHzldorNgMUOjPOOvCspP/oXyUz1rKFvLY=;
 b=VfNPfUlK8ny/lOloE2skCkqA+iKaBUt0guiPb6wsT/Ro358OXpBhmULff9hI+PBgyO
 tA+1aF5gkot2tqCYBjm6YW64fkkdWLYjxwC+cdguTHoukMBIDt/wdss9tUOg4+SJD/Uj
 m/QZvhWXCH0WDlXptCjh5uMHNndOFxg001z3crxcw9ZJKa8p3wy6VwQlnWptebk9KfPE
 Ho+e1esSyC0pmxFfnfeRzuy2VvtG/XRuwuaoU92w+sGh5Wm46p56JVWRKkBuvFoy6sGB
 RpLgzQA6GWyiocpGE3CNy4mQpvEtPmQrw9p4VnVKjX0GBEavNzE4m/WtjLc2lokTJ2oL
 7A0Q==
X-Gm-Message-State: AOAM5333NaLWnNMq6QXhPnehbRQLrp5va12VewYr6vn0MW0aF4jlKvjC
 3BEjU6P1uh3VneISKb2tPsGvbPxHtyABOg==
X-Google-Smtp-Source: ABdhPJykgAVJmBFFfJgKWAY+owrXDjPxCAOiCutNkIccjTFw509LqRAixaR5jGbt0S15hzyRT6O6TA==
X-Received: by 2002:a05:6512:74b:: with SMTP id
 c11mr7734317lfs.119.1598465092040; 
 Wed, 26 Aug 2020 11:04:52 -0700 (PDT)
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com.
 [209.85.208.178])
 by smtp.gmail.com with ESMTPSA id g21sm653913ljh.103.2020.08.26.11.04.49
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Aug 2020 11:04:49 -0700 (PDT)
Received: by mail-lj1-f178.google.com with SMTP id g6so3399929ljn.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 11:04:49 -0700 (PDT)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr6907538ljk.421.1598465088967; 
 Wed, 26 Aug 2020 11:04:48 -0700 (PDT)
MIME-Version: 1.0
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
In-Reply-To: <656b8f9f-d696-c75d-aef6-2b8b5170f2f6@skogtun.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 26 Aug 2020 11:04:32 -0700
X-Gmail-Original-Message-ID: <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
Message-ID: <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
To: Harald Arnesen <harald@skogtun.org>
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

On Wed, Aug 26, 2020 at 2:30 AM Harald Arnesen <harald@skogtun.org> wrote:
>
> Somehow related to lightdm or xfce4? However, it is a regression, since
> kernel 5.8 works.

Yeah, apparently there's something else wrong with the relocation changes too.

That said, does that patch at

  https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/

change things at all? If there are two independent bugs, maybe
applying that patch might at least give you an oops that gets saved in
the logs?

(it might be worth waiting a bit after the machine locks up in case
the machine is alive enough so sync logs after a bit.. If ssh works,
that's obviously better yet)

              Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
