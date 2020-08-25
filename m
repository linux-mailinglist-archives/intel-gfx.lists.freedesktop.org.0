Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2013251EF0
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Aug 2020 20:19:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28EBF6E3C4;
	Tue, 25 Aug 2020 18:19:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com
 [IPv6:2a00:1450:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8863E6E3C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 18:19:28 +0000 (UTC)
Received: by mail-lj1-x241.google.com with SMTP id g6so14892212ljn.11
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 11:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=46qyLntGhqFIKIx0vS5eQWqEfe+Vbu8cNj42GZZptzk=;
 b=h2PH6gWvLDikDkSDOxim22YnimrYTywDHULqdiPXEaMaBQAYKyE2JgwLEHMD0cD4se
 e7g8tMvGLg0XeiAL8MF68+nFKvRH/TYavRAA60RxCSDGxFg4j8ZBmpolbIskCTCCh+ia
 pbiUT9xGSqYDflwulqlmwftH6VgjNGCM9B3EM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=46qyLntGhqFIKIx0vS5eQWqEfe+Vbu8cNj42GZZptzk=;
 b=spgWhuhkhLu1h25gTTp8iAuaMKeo5IT8CRSr1mHndPyGs+Pozbwlij66TLJMW8T3v/
 bIfDSUBjC0HdAbkYEjQiY87NwVHaAzz0LzckWkxuJq+dNKqPTYk2qjG4r1Ovra2FExMk
 yf72ER3tVvPylbE23cdy3Ac/ume1eQcIt141SSOzp7PXhkDSDs4wn0PMbDsGMn8Qz1XJ
 S+vzMwMAxHr6XFT6GO8gkDZz92cMH8DSqvJsIbDX2ZP1YXM0QxMxJBXOby7DGD70K4w5
 VW+8JWmqfJJ2mTnFwrOrdeAlLaZEAL7O+X8UEasc9coIVpHQlTuvO3L5hTe0/tS5SwmX
 UTIA==
X-Gm-Message-State: AOAM532EKeDCfciReqeXvuiXxnbEJxbVbQW2XONZddBklBtsOacR0UoE
 OYL2GLDPzpZlOl+s3bg71g516JN1YJ4B9Q==
X-Google-Smtp-Source: ABdhPJxi7EALMyYwO8bLT1KrwmbexAFdEBDzbHZ6jTF4hHgbikDHyt3yIJQAb1Lb00M7M+rW3leVzw==
X-Received: by 2002:a2e:b008:: with SMTP id y8mr4783831ljk.421.1598379566397; 
 Tue, 25 Aug 2020 11:19:26 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id y24sm2915302lfg.75.2020.08.25.11.19.24
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Aug 2020 11:19:24 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id v9so14950110ljk.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Aug 2020 11:19:24 -0700 (PDT)
X-Received: by 2002:a2e:9a11:: with SMTP id o17mr5206226lji.314.1598379564237; 
 Tue, 25 Aug 2020 11:19:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
 <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
 <20200821091900.hzbivycs5ky5d3iw@duo.ucw.cz> <87tuwr59te.fsf@intel.com>
 <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
In-Reply-To: <7efa547d-b7a4-b873-f1aa-4f19eb849fa3@skogtun.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 25 Aug 2020 11:19:08 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
Message-ID: <CAHk-=wj3WskPCtHncCWLdaP6xVecLp8bDBTT57vyiU-0=Ld6QQ@mail.gmail.com>
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

On Tue, Aug 25, 2020 at 9:32 AM Harald Arnesen <harald@skogtun.org> wrote:
>
> > For posterity, I'm told the fix is [1].
> >
> > [1] https://lore.kernel.org/intel-gfx/20200821123746.16904-1-joro@8bytes.org/
>
> Doesn't fix it for me. As soon as I start XFCE, the mouse and keyboard
> freeezes. I can still ssh into the machine
>
> The three reverts (763fedd6a216, 7ac2d2536dfa and 9e0f9464e2ab) fixes
> the bug for me.

Do you get any oops or other indication of what ends up going wrong?
Since ssh works that should be fairly easy to see.

                Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
