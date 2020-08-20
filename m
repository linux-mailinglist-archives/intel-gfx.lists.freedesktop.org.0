Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF5A24C334
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 18:16:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DB1B6E978;
	Thu, 20 Aug 2020 16:16:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com
 [IPv6:2a00:1450:4864:20::243])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE7976E97A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 16:16:38 +0000 (UTC)
Received: by mail-lj1-x243.google.com with SMTP id g6so2706173ljn.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 09:16:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5xeIwLlcwmJre/+GlBmcVZ7Sd7o8tK/OUft1ViF+Bxg=;
 b=VP2o2XQxdH6lx+R+XdDm4NWPrnmnUd3eVwSmAxyehr3UxgL2fLZ64Hq67rzqibjkHR
 J3skI4G4+0Ol2U/jGF4Zv+XZemL2A5VVx+QpRmHnPvprIPX5bZbcGHCaNWMxJr6awKbI
 0eS766tO419YaS+Ky3cNYc6/GJDlKEHHHcyoU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5xeIwLlcwmJre/+GlBmcVZ7Sd7o8tK/OUft1ViF+Bxg=;
 b=SfV0yO6/gLVm+OhwVHtagTl/RdtNH5cd9RTegLma0Ctb8ASFyTYeWjyvt1hPsG/UQy
 0G8kNh9vEShav2X/NIgopYoJjd1g/pUUwTh3/JJJLkhRTfAPhHDgBLPprdrU9VaciAC2
 L1Aj0oZpqF+1g9pePLJwOo1OyFr/CydaAKKz4UybEgYR+5VjGJzjgCTfA8YTb+6KfnfZ
 s4M9Jdc3iknCK3CZYHixcv40VPDrbU9JLyJ+fnISdI7e+o766nrUjp4sauHBfYn61ZkH
 YbzFYd2sL/xXGhz5Yfh/5jiLcOvHl3144CTEyVSKmGDIV/KFyY5+XswSKfPwuTTKSI0H
 WLuA==
X-Gm-Message-State: AOAM532xjRdqbRjWQO3AYa9T1ubrCATGgHgrsWZ8Oip969aF1gULPGu/
 ECCkydBggGkmHGDMc4iKZn/uaayh560mXg==
X-Google-Smtp-Source: ABdhPJwsaGAkadORhK21syQGi1f/7yk3ytu9zzbvr+aJ+aCQ9nPQL+xkOvdE4ursGV8rDEfgWVuLDQ==
X-Received: by 2002:a2e:5cc9:: with SMTP id q192mr1976503ljb.452.1597940196890; 
 Thu, 20 Aug 2020 09:16:36 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com.
 [209.85.208.172])
 by smtp.gmail.com with ESMTPSA id g21sm531583ljh.103.2020.08.20.09.16.35
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 20 Aug 2020 09:16:35 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id h19so2702388ljg.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 09:16:35 -0700 (PDT)
X-Received: by 2002:a2e:2e04:: with SMTP id u4mr1858085lju.102.1597940195085; 
 Thu, 20 Aug 2020 09:16:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200817161132.GA4711@amd>
 <CAHk-=wh6_eWwvpL=AhOeY0btf_dkpu+0joNzPZWfbBWgAeAhMA@mail.gmail.com>
 <CAPM=9tw8LVWsuA6m_nkUDgm00iz2txYRNZY0b0WWZbyiUVzLEw@mail.gmail.com>
 <CAHk-=wg34bw1ude07nC_XCPOJHZ21-v6117p4574d5S7iP4gxw@mail.gmail.com>
 <20200820092349.GA3792@amd>
In-Reply-To: <20200820092349.GA3792@amd>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 20 Aug 2020 09:16:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
Message-ID: <CAHk-=wjX=ck_u8uvp=PjGCQ3M9igE-yqyRPsJ54th1gQWpwMnA@mail.gmail.com>
To: Pavel Machek <pavel@ucw.cz>
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

On Thu, Aug 20, 2020 at 2:23 AM Pavel Machek <pavel@ucw.cz> wrote:
>
> Yes, it seems they make things work. (Chris asked for new patch to be
> tested, so I am switching to his kernel, but it survived longer than
> it usually does.)

Ok, so at worst we know how to solve it, at best the reverts won't be
needed because Chris' patch will fix the issue properly.

So I'll archive this thread, but remind me if this hasn't gotten
sorted out in the later rc's.

             Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
