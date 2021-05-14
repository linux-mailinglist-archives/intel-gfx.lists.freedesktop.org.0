Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A57380E47
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 18:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78C276F39D;
	Fri, 14 May 2021 16:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA8C6F39F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 16:36:50 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id j14so4154039ejy.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 09:36:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=T2WaF0e9QBmRrnl2yqCYqqSqO/jlpObjmOcv1HdU77Y=;
 b=ktsIUc1WxH4UeuGgEndbCyMg6YKVJUNSzAiHXGs1fJYqovOinh9+darTy4vMZuSndo
 nUqPNEM6AOGYIu9tun2cb5EWTZdVmRkd4n0hwzDhyEYSDBLxFlCwp5W73cTPPm9cSABK
 A/HkhULSYDjtYm2xbVrflbMqzhsADb0Yc1r46UcbIhBihTBhLEY9JENOzuOlxGxiGS6R
 ibspvuuYmuB96B1NuBzVXC7fHraCyAVEvF7BEtQ/Ma2EKB6Gj496xGHEK7mfeYyzEItY
 I/prGKhi/4JoehW10hZbwdrqKnvkxvczqsOvdC1s0JSmxpDZtn+kAgnMdwVs93tfkBJx
 2AJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=T2WaF0e9QBmRrnl2yqCYqqSqO/jlpObjmOcv1HdU77Y=;
 b=R0ZTrv+F7lJ5+y7FlNQ+uHgz0VBP/8rgNjwspM+mutNuqIEFaNjgODBeFlS+qAgMSW
 h2llyJ8t+2WdHZY/VWGIJduhrLdQpA2W7EUoB5sSq93Fj5Ri6w17wKa2QlghdJVP/Xby
 3P7QFiHE/H2y80ksujRg6zCZj30W9j7/5foZ7qREUpsfc4rN4uprzbSwS19J0PHgltXP
 s3OkP/TLjyBOJD/XlC8w4NRfw+8DRpeh4Nd/nQ6/9JrbWD6PWfm0pTQcjcl9rHutpzX/
 Yz7L0+GwRG43G9Pd/bl36n0LkzI6O+IqTlpdfNBKDK73lMzx1LK7gY4F1aMGYHa4BI+a
 lyCg==
X-Gm-Message-State: AOAM533abZEBcOLrxoSSA1wxcyFtRLfsSmWu0ls/DVPrYCFXQMK5KoFt
 HnKN7qNz0Qq2SjGwm417zOKLa7BuGRH6+9551VaojQ==
X-Google-Smtp-Source: ABdhPJyN90BXSDFa6PGvdi33zlTIWEc2Qi6YnBuUaSqjkJ8K+HOgsEFxVC/8c5AquVo+315MDwn+QG3EsZDNkNvjPsY=
X-Received: by 2002:a17:906:2596:: with SMTP id
 m22mr50506088ejb.175.1621010209186; 
 Fri, 14 May 2021 09:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <d5695c6d-2dc9-2ea3-9491-2a12468e68a2@linux.intel.com>
In-Reply-To: <d5695c6d-2dc9-2ea3-9491-2a12468e68a2@linux.intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 14 May 2021 11:36:37 -0500
Message-ID: <CAOFGe94nFvepNaV56SQ-OWV5vicYWXuAOZb2ufrs4G+-1QZZXA@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 00/97] Basic GuC submission support in
 the i915
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
Cc: Jason Ekstrand <jason.ekstrand@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 6:12 AM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> On 06/05/2021 20:13, Matthew Brost wrote:
> > Basic GuC submission support. This is the first bullet point in the
> > upstreaming plan covered in the following RFC [1].
> >
> > At a very high level the GuC is a piece of firmware which sits between
> > the i915 and the GPU. It offloads some of the scheduling of contexts
> > from the i915 and programs the GPU to submit contexts. The i915
> > communicates with the GuC and the GuC communicates with the GPU.
> >
> > GuC submission will be disabled by default on all current upstream
> > platforms behind a module parameter - enable_guc. A value of 3 will
> > enable submission and HuC loading via the GuC. GuC submission should
> > work on all gen11+ platforms assuming the GuC firmware is present.
>
> Some thoughts mostly relating to future platforms where GuC will be the
> only option, and to some extent platforms where it will be possible to
> turn it on for one reason or another.
>
> Debuggability - in the context of having an upstream way/tool for
> capturing and viewing GuC logs usable for attaching to bug reports.
>
> Currently i915 logs, can provide traces via tracepoints and trace
> printk, and GPU error capture state, which provides often sufficient
> trail of evidence to debug issues.
>
> We need to make sure GuC does is not a black box in this respect. By
> this I mean it does not hide a large portion of the execution flows from
> upstream observability.

I agree here.  If GuC suddenly makes submission issues massively
harder to debug then that's a regression vs. execlists.  I don't know
what the solution there is but I think the concern is valid.

> This could mean a tool in IGT to access/capture GuC logs and update bug
> filing instructions.
>
> Leading from here is probably the need for the GuC firmware team to
> cross the internal-upstream boundary and deal with such bug reports on
> upstream trackers. Upstream GuC is unlikely to work if we don't have
> such plan and commitment.

I mostly agree here as well.  I'm not sure it'll actually happen but
I'd like anyone who writes code which impacts Linux to be active in
upstream bug trackers.

> Also leading from here is the need for GPU error capture to be on par
> from day one which is I believe still not there in the firmware.

This one has me genuinely concerned.  I've heard rumors that we don't
have competent error captures with GuC yet.  From the Mesa PoV, this
is a non-starter.  We can't be asked to develop graphics drivers with
no error capture.

The good news is that, based on my understanding, it shouldn't be
terrible to support.  We just need the GuC to grab all the registers
for us and shove them in a buffer somewhere before it resets the GPU
and all that data is lost.  I would hope the Windows people have
already done that and we just need to hook it up.  If not, there may
be some GuC engineering required here.

> Another, although unrelated, missing feature on my wish list is firmware
> support for wiring up accurate engine busyness stats to i915 PMU. I
> believe this is also being worked on but I don't know when is the
> expected delivery.
>
> If we are tracking a TODO list of items somewhere I think these ones
> should be definitely considered.

Yup, let's get it all in the ToDo and not flip GuC on by default in
the wild until it's all checked off.

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
