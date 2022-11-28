Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB3E63B146
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Nov 2022 19:27:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EED9C10E320;
	Mon, 28 Nov 2022 18:27:37 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDF010E320
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 18:27:33 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 668FC61371
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 18:27:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 758AAC433C1
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 18:27:32 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="A90iwniA"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1669660050;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TzjZE8gY8Du7tCToHcJnSQcEJMv8gNxwz9WPsqhbMe4=;
 b=A90iwniAyxiqtNvxJQeSceQrO8Gq8KQJOMMZU6SJUhDg3nGy2jcMHnJRe/uuJXNl2+dDFE
 oOpzPJxyLnbnmfCvQkT/PMG8g5yOLPxYHF0WW8zwldJj06ZiwI41Z5rZ6PDrnMcnPoBqqq
 os8I+1liqszZmVem5VhPl54ERDKUf8g=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id a6737d44
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <Intel-gfx@lists.freedesktop.org>;
 Mon, 28 Nov 2022 18:27:30 +0000 (UTC)
Received: by mail-vk1-f176.google.com with SMTP id f68so5688004vkc.8
 for <Intel-gfx@lists.freedesktop.org>; Mon, 28 Nov 2022 10:27:30 -0800 (PST)
X-Gm-Message-State: ANoB5plINij3AM3CM4NS7O0RvZUux5aPNmvxKgs2dqrF7Y6EMERXazZU
 4CBEDqnwgg3xBtJQrA5dZ67j+2X9ku/5HcRi7Wo=
X-Google-Smtp-Source: AA0mqf6kIHCvrzR4/L2/KiPXnUqRVfTb4Pw5BCUQyhKv7qoH1y232+wfcGDaLXDvj9QysHq9FoJ1I+/4Bhvwl8vF+2A=
X-Received: by 2002:ac5:cdc7:0:b0:3bb:ddbe:899d with SMTP id
 u7-20020ac5cdc7000000b003bbddbe899dmr21997278vkn.41.1669660049888; Mon, 28
 Nov 2022 10:27:29 -0800 (PST)
MIME-Version: 1.0
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
 <41455798-1dcb-135f-516d-25ab9a8082f5@linux.intel.com>
 <Y1A+9kN6bwfXeqVt@zx2c4.com>
 <8acc3e4a-abbc-32bc-626e-7a216f6755c3@linux.intel.com>
 <Y1Bby6FEEWiFIjjD@zx2c4.com>
 <d47b30e9-5619-c631-aa92-f5d89e88a909@linux.intel.com>
 <87a64brlao.fsf@email.froward.int.ebiederm.org>
In-Reply-To: <87a64brlao.fsf@email.froward.int.ebiederm.org>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Mon, 28 Nov 2022 19:27:18 +0100
X-Gmail-Original-Message-ID: <CAHmME9pShsMrXwMhA+4FJKkc-nqCE74UQMXYy9fuEsoiDS2G=A@mail.gmail.com>
Message-ID: <CAHmME9pShsMrXwMhA+4FJKkc-nqCE74UQMXYy9fuEsoiDS2G=A@mail.gmail.com>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
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
Cc: sultan@kerneltoast.com,
 "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Eric,

On Mon, Nov 28, 2022 at 7:22 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
>
> Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> writes:
>
> > On 19/10/2022 21:19, Jason A. Donenfeld wrote:
> >> On Wed, Oct 19, 2022 at 09:09:28PM +0100, Tvrtko Ursulin wrote:
> >>> Hm why is kthread_stop() after kthread_run() abuse? I don't see it in
> >>> kerneldoc that it must not be used for stopping threads.
> >> Because you don't want it to stop. You want to wait until it's done. If
> >> you call stop right after run, it will even stop it before it even
> >> begins to run. That's why you wind up sprinkling your msleeps
> >> everywhere, indicating that clearly this is not meant to work that way.
> > Not after kthread_run which wakes it up already. If the kerneldoc for
> > kthread_stop() is correct at least... In which case I really do think
> > that the yields are pointless/red herring. Perhaps they predate kthread_run and
> > then they were even wrong.
> >
> >>> Yep the yields and sleeps are horrible and will go. But they are also
> >>> not relevant for the topic at hand.
> >> Except they very much are. The reason you need these is because you're
> >> using kthread_stop() for something it's not meant to do.
> >
> > It is supposed to assert kthread_should_stop() which thread can look at as when
> > to exit. Except that now it can fail to get to that controlled exit
> > point. Granted that argument is moot since it implies incomplete error handling
> > in the thread anyway.
> >
> > Btw there are actually two use cases in our code base. One is thread controls
> > the exit, second is caller controls the exit. Anyway...
> >
> >>> Never mind, I was not looking for anything more than a suggestion on how
> >>> to maybe work around it in piece as someone is dealing with the affected
> >>> call sites.
> >> Sultan's kthread_work idea is probably the right direction. This would
> >> seem to have what you need.
> >
> > ... yes, it can be converted. Even though for one of the two use cases we need
> > explicit signalling. There now isn't anything which would assert
> > kthread_should_stop() without also asserting the signal, right?. Neither
> > I found that the thread work API can do it.
> >
> > Fingers crossed we were the only "abusers" of the API. There's a quite a number
> > of kthread_stop callers and it would be a large job to audit them all.
>
>
> I have been out and am coming to this late.   Did this get resolved?
>
>
> I really don't expect this affected much of anything else as the code
> sat in linux-next for an entire development cycle before being merged.
>
> But I would like to make certain problems with this change were resolved.

I just checked drm-next, and it looks like the i915 people resolved
their issue, and also got rid of those pesky yield()s in the process:
https://cgit.freedesktop.org/drm/drm/commit/?id=6407cf533217e09dfd895e64984c3f1ee3802373

Jason
