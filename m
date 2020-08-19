Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAE124922C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 03:13:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4F776E194;
	Wed, 19 Aug 2020 01:13:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431BF6E194
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 01:13:03 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id m20so16751546eds.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 18:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Kva/k1UFU9lX2N7TTtpIgvJkFqnuUIPtW/9Hq387vwc=;
 b=E80VCHyqzl3gqdes4ecq90ED7Teoc8Dly2yf/OW0+jZosjYQ4+6IbmLNkza5ENUV9a
 00LaDl0rnvLZt0T5tfVqRCNtSE/Yh9uc6E9qUIp+85Ib+GYsKoV6YQWx7z68iwkuMKq1
 uYDb1yLguz82kKnD0amyvpIB/Lkwomyrz4KElJuECYSvodnqlEHSInELcYYMFUr/mk3v
 tANj3qbpj3nRf7thLtCmPp+/OC6WpjkgRG03JKejP4BapuV3GDWK4MzisB2zyv097I8P
 l1aZBFgoeDfOYzZUoK+Wf413zbD4QjmhOqvJnHuJ7IkXHgeGhK94aXq4gd0Q2nYEuYnh
 tUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Kva/k1UFU9lX2N7TTtpIgvJkFqnuUIPtW/9Hq387vwc=;
 b=abWDQhVcufqIWNZPA37iDXPe1p/Tl0S/NPyGx+IhKuJXNDj/9aKLFNW1pAZghRQ/4X
 9N1wMW8h7LHXGqAWvs0fR78oAYDTA7fafkJjUflV6bPR5mcOMyRj78clh1CJFLiN86OT
 Gn6DQmNmQQMUN/PKRxX2PRPK6aFsf0gkfIC/7Aqk6MIPNRdEtrlEBpbAXbcQduvSVuPr
 MNGLq3KORfMFmoxmtJYDbK8+/FybKGfeCx/4nPVcuxKU/gj4SC6td5A6GfQvEA0jc6bT
 ep928YDNngLmUxX/R8OhBDyVm/JGNS+3gbSxEpL1zrD1AlH/8X7aHvUoHWjeAuJMxAyd
 hEnQ==
X-Gm-Message-State: AOAM531IrIHb/CIMStuAnKXyxjxC753hlWFm4g3vtSwGV+oWUL+6QMnJ
 rgtv+HhC+54a935Y3HAAGor6g+iKaxd5qBt0PTo=
X-Google-Smtp-Source: ABdhPJw/E2soj0fKW/huWNagmPnn6FvooCTxqFBO86xFYeA9eId5qxqcTlM7QtwRbaUuORA3KNbPfZXftYphQAe6stY=
X-Received: by 2002:a05:6402:2069:: with SMTP id
 bd9mr21969357edb.127.1597799581776; 
 Tue, 18 Aug 2020 18:13:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
In-Reply-To: <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 19 Aug 2020 11:12:50 +1000
Message-ID: <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Daniel Vetter <daniel.vetter@ffwll.ch>
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
Cc: kernel list <linux-kernel@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Pavel Machek <pavel@ucw.cz>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 Aug 2020 at 10:38, Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> Ping on this?
>
> The code disassembles to
>
>   24: 8b 85 d0 fd ff ff    mov    -0x230(%ebp),%eax
>   2a:* c7 03 01 00 40 10    movl   $0x10400001,(%ebx) <-- trapping instruction
>   30: 89 43 04              mov    %eax,0x4(%ebx)
>   33: 8b 85 b4 fd ff ff    mov    -0x24c(%ebp),%eax
>   39: 89 43 08              mov    %eax,0x8(%ebx)
>   3c: e9                    jmp ...
>
> which looks like is one of the cases in __reloc_entry_gpu(). I *think*
> it's this one:
>
>         } else if (gen >= 3 &&
>                    !(IS_I915G(eb->i915) || IS_I915GM(eb->i915))) {
>                 *batch++ = MI_STORE_DWORD_IMM | MI_MEM_VIRTUAL;
>                 *batch++ = addr;
>                 *batch++ = target_addr;
>
> where that "batch" pointer is 0xf8601000, so it looks like it just
> overflowed into the next page that isn't there.
>
> The cleaned-up call trace is
>
>   drm_ioctl+0x1f4/0x38b ->
>     drm_ioctl_kernel+0x87/0xd0 ->
>       i915_gem_execbuffer2_ioctl+0xdd/0x360 ->
>         i915_gem_do_execbuffer+0xaab/0x2780 ->
>           eb_relocate_vma
>
> but there's a lot of inling going on, so..
>
> The obvious suspect is commit 9e0f9464e2ab ("drm/i915/gem: Async GPU
> relocations only") but that's going purely by "that seems to be the
> main relocation change this mmrge window".

I think there's been some discussion about reverting that change for
other reasons, but it's quite likely the culprit.

Maybe we can push for a revert sooner, (cc'ing more of i915 team).

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
