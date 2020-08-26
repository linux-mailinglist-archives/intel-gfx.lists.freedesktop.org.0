Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24181253979
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 22:59:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A3FD6EAE3;
	Wed, 26 Aug 2020 20:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com
 [IPv6:2a00:1450:4864:20::141])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2416EAE3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 20:59:31 +0000 (UTC)
Received: by mail-lf1-x141.google.com with SMTP id y17so704649lfa.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:59:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kkBcAXTmytaTd+hMgMm0aIJlKCAnI1YMBzYoHxnXAe8=;
 b=TY+hs1symzGhziPeKV17+nHR3J/iqCecA9q65RbgFTEkpTYCqVMUyVP9RPmJzpp0Y5
 qMBstF4l+J8+/rYW1YhpGi/MxGfT0WJzJSW29PRbJhAb17GNKS0yYRDJ+kTf05zoQaXx
 MP14o9gFQTrYgyeD1MgtPuHBTYr0FPu6IpzJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kkBcAXTmytaTd+hMgMm0aIJlKCAnI1YMBzYoHxnXAe8=;
 b=gfNmu6ZGeApAk4lFYrATKSC6EnH4GkBpP43hv9zN5l22ykU07A5cMgD1n3IEpzxAFq
 ns0d4smhcgJOCvcZ0TxZOjkXILbZehabXwg/zGfsO8921NkDDABtOtjoyTp61TIHmuFC
 xsiiYejlb/2kLzI46vCnWOV9uzTZQI0ReHYZjNe65Lq4vynsEz3NM+Tx79oCxpPPrdDq
 5gEQYI7LHyt+MdFUSzNuB9K09H9u0G+oJfPry2lzWPrlRC74b2NR/Hxszd2eCpHRwFDt
 kA73sX4TyToNc9HXyFfwJqIzgxOG/nO1610s7lhIa0tfuHowizCovOSfmArCeb2XQ4We
 L8PQ==
X-Gm-Message-State: AOAM532oSCw6mg2EvmbvHIlmdVlw28HW8Api1/nbzUFhqbDqX6j5zwQS
 KVzJJo6xVXOTSM/PQYcfjs5Xct6nZas8cA==
X-Google-Smtp-Source: ABdhPJyypDyLFhxpoIKNt3F4hT19QbCOsMwhxJk8D5RCHqEtICoKXhBqgDIKp5bacnoKgbZhWp133w==
X-Received: by 2002:a05:6512:31c2:: with SMTP id
 j2mr8356482lfe.85.1598475569121; 
 Wed, 26 Aug 2020 13:59:29 -0700 (PDT)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id i7sm755367ljg.54.2020.08.26.13.59.27
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Aug 2020 13:59:27 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id v12so3946070ljc.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 13:59:27 -0700 (PDT)
X-Received: by 2002:a05:651c:503:: with SMTP id
 o3mr8744434ljp.312.1598475567101; 
 Wed, 26 Aug 2020 13:59:27 -0700 (PDT)
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
 <CAHk-=wiAK=AiqTD47o-BFFZciQXpEC0SiiDnXLWJUcQtCo-Pig@mail.gmail.com>
 <101bff45-0ebd-8fb6-7c99-963aa4fcc588@skogtun.org>
 <CAPM=9twLvHu_XLJ89GVXpNo=PHPZLJuRpHggkfzvvuVf+xrwoA@mail.gmail.com>
 <0f06d704-c14e-0d86-c8bb-8c7b3a34758a@skogtun.org>
In-Reply-To: <0f06d704-c14e-0d86-c8bb-8c7b3a34758a@skogtun.org>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 26 Aug 2020 13:59:11 -0700
X-Gmail-Original-Message-ID: <CAHk-=wh=MjX6+Bn-ooHT_wf4VTpe7y-5czbAUT=vaAn2VCBNBQ@mail.gmail.com>
Message-ID: <CAHk-=wh=MjX6+Bn-ooHT_wf4VTpe7y-5czbAUT=vaAn2VCBNBQ@mail.gmail.com>
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

On Wed, Aug 26, 2020 at 1:53 PM Harald Arnesen <harald@skogtun.org> wrote:
>
> It's a Thinkpad T520.

Oh, so this is a 64-bit machine? Yeah, that patch to flush vmalloc
ranges won't make any difference on x86-64.

Or are you for some reason running a 32-bit kernel on that thing? Have
you tried building a 64-bit one (user-space can be 32-bit, it should
all just work. Knock wood).

               Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
