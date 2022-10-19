Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7AA604C9F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 18:02:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66DA610EB0D;
	Wed, 19 Oct 2022 16:02:14 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAF6D10EB0D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:02:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 38E266194B
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:02:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63028C433D7
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 16:02:09 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
 dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com
 header.b="myrTXW/w"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105; 
 t=1666195326;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=6H1wSHFGixXZH3xTM90S+PR85eEHKCs/O3DG2gkkP2s=;
 b=myrTXW/wUhth4KVHcVBn0UJP12pMzbYxFkulRANyp43qbbsAHc9rb0lH9g03WWU3kVystC
 TB74c+4yMMsHCrGJVPyWYT4chfKwXWV98QuztBJuy7FFg4rQrc3v5gJpahHvIUYK1EbAGJ
 S8BRuBhQsGGWibc+RvePy/Ta7Manrwk=
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 569e38c2
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <Intel-gfx@lists.freedesktop.org>;
 Wed, 19 Oct 2022 16:02:06 +0000 (UTC)
Received: by mail-ua1-f43.google.com with SMTP id x20so7484810ual.6
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 09:02:06 -0700 (PDT)
X-Gm-Message-State: ACrzQf1S+NQJNsDy/S5P5GlH3Js5qHTWL96YKpUBCNZCrKRYqmRvDrB8
 owcT71naeYzO990zONoj1QlJrXTlBA8xsQsMGVs=
X-Google-Smtp-Source: AMsMyM7csx0cGEXMFscT4GgJB+Xq/gT1iHmNwZWMR+PTZXYCFulqIRiAvE/ubr2ZOrODsYYlz7A35TwbQy/457wGNPs=
X-Received: by 2002:ab0:5483:0:b0:3dc:40aa:84cf with SMTP id
 p3-20020ab05483000000b003dc40aa84cfmr2185549uaa.102.1666195325370; Wed, 19
 Oct 2022 09:02:05 -0700 (PDT)
MIME-Version: 1.0
References: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
 <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
In-Reply-To: <CAHmME9o25v0kZUV-7qEY=6XXAyOA7q0sG8gpQfxHgr3sSVdsWw@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 19 Oct 2022 10:01:53 -0600
X-Gmail-Original-Message-ID: <CAHmME9oy8BWkt-ryWMgwaVCY7BUEhzYgttQ6DKTaMpjyBjuzkQ@mail.gmail.com>
Message-ID: <CAHmME9oy8BWkt-ryWMgwaVCY7BUEhzYgttQ6DKTaMpjyBjuzkQ@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 19, 2022 at 10:00 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Wed, Oct 19, 2022 at 7:31 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
> >
> >
> > Hi,
> >
> > A question regarding a7c01fa93aeb ("signal: break out of wait loops on
> > kthread_stop()") if I may.
> >
> > We have a bunch code in i915, possibly limited to self tests (ie debug
> > builds) but still important for our flows, which spawn kernel threads
> > and exercises parts of the driver.
> >
> > Problem we are hitting with this patch is that code did not really need
> > to be signal aware until now. Well to say that more accurately - we were
> > able to test the code which is normally executed from userspace, so is
> > signal aware, but not worry about -ERESTARTSYS or -EINTR within the test
> > cases itself.
> >
> > For example threads which exercise an internal API for a while until the
> > parent calls kthread_stop. Now those tests can hit unexpected errors.
> >
> > Question is how to best approach working around this change. It is of
> > course technically possible to rework our code in more than one way,
> > although with some cost and impact already felt due reduced pass rates
> > in our automated test suites.
> >
> > Maybe an opt out kthread flag from this new behavior? Would that be
> > acceptable as a quick fix? Or any other comments?
>
> You can opt out by running `clear_tsk_thread_flag(current,
> TIF_NOTIFY_SIGNAL);` at the top of your kthread. But you should really
> fix your code instead. Were I your reviewer, I wouldn't merge code
> that took the lazy path like that. However, that should work, if you
> do opt for the quick fix.

Oh my, I haven't had my coffee yet and sent that too fast without
thinking straight. That certainly won't work as intended. Sorry for
the noise.

Jason
