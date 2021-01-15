Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 305712F7189
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jan 2021 05:16:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7361589AB9;
	Fri, 15 Jan 2021 04:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F6F89AB9
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jan 2021 04:16:05 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id n11so8983281lji.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=63J/tLzLebR+d+sU8VZA5VzH3xNPW+K+cgzDeTPBen4=;
 b=CdC54e4XPbsZ3GtDLtnS0hEk8yJVFWCjWeEE1NTkSB0i2IQrdp9OLp6mZJPcsM1BNL
 sJp/79LSbNj8NdFh8B2AG8NI0nt5+iIzCgFM55u/HovT+b6rocnqOCKV4MvZbYzWcof1
 cFLxmg6G7B4nxXs3a2FFm8vXc9U6a9mpM5dBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=63J/tLzLebR+d+sU8VZA5VzH3xNPW+K+cgzDeTPBen4=;
 b=uRKi47dK1SsVmKGmDHGRyHnJUmIgl7KWe+4bw2bSIkFKSCLLLyQExA9pTTyKm7NNpG
 40DV+S9NvvFFz8xKpUhzyVHOyqroiK0n+NtNHiin6iWOFxkwis3PIksuT0g6QBq2r4xQ
 qixoPsgmQKAo3JTYdOXnuAJbwKD51Q9+nSljPGaU2HoXaONfTVtUmFM2v/ia/+EOgGiE
 ndPDhh3ljIxAqS+RZKqlZR7atWMJ6qHTkPb8Lawe59ilwwlQkRuxtWD2TvqntghtfqjU
 oSAp/R0RFFQVkBPl26yrBmnOlaRe2eSDUi9Ko4Nc7NnR5L0WrTErM4um/qcYPgQpkXp6
 cqzg==
X-Gm-Message-State: AOAM532PVHUs8K3S+UV3WTcNkn3vxBoqSnibLAJGrMv+7DhQ3ztibtl2
 C783OYx3O14h00IYKbYTjsBKKWU9dpwT0A==
X-Google-Smtp-Source: ABdhPJz5F/EThgNPp23qGDl9MY2K4LWi78/j/QiuyVjIy5oX61QmXaUlXWcVXC9UnQEwuhypGJVJXw==
X-Received: by 2002:a05:651c:1022:: with SMTP id
 w2mr4491640ljm.327.1610684163530; 
 Thu, 14 Jan 2021 20:16:03 -0800 (PST)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com.
 [209.85.208.177])
 by smtp.gmail.com with ESMTPSA id e15sm753334lfc.106.2021.01.14.20.16.01
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 14 Jan 2021 20:16:02 -0800 (PST)
Received: by mail-lj1-f177.google.com with SMTP id u21so8999576lja.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 20:16:01 -0800 (PST)
X-Received: by 2002:a2e:8995:: with SMTP id c21mr4400396lji.251.1610684161408; 
 Thu, 14 Jan 2021 20:16:01 -0800 (PST)
MIME-Version: 1.0
References: <20210114163206.4a562d82@gandalf.local.home>
 <161066015368.19482.10094410867880595092@build.alporthouse.com>
 <20210114170137.002763b3@gandalf.local.home>
In-Reply-To: <20210114170137.002763b3@gandalf.local.home>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 14 Jan 2021 20:15:45 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgqPnjOUa0aDRHXC0UAePrM6kRUD9gR4g2x0mq91FD4xA@mail.gmail.com>
Message-ID: <CAHk-=wgqPnjOUa0aDRHXC0UAePrM6kRUD9gR4g2x0mq91FD4xA@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [Intel-gfx] [BUG] on reboot: bisected to: drm/i915: Shut down
 displays gracefully on reboot
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
Cc: David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 14, 2021 at 2:01 PM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> Thanks, I take it, it will be going into mainline soon.

Just got merged - it might be a good idea to verify that your problem is solved.

            Linus
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
