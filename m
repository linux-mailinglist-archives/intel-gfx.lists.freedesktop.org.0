Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAC91F6433
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jun 2020 11:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 459386E8B7;
	Thu, 11 Jun 2020 09:03:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B36CF6E8B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 09:03:48 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id r15so4260492wmh.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jun 2020 02:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=611EZXoXvMC0wgvkSoDqQkuDX4b96jfM5TQTQEW07+g=;
 b=rBu3ZBBsiU7BegTaLT92EmVcTqTQ1ln4TngPt+QtaRUJwZJvFNvlbvL3HcjTBtXw9H
 G1BFGLxRjII2qe+n6Wb4wAjp/MIbndhkzRvvFKrM4W8lQT+ibssLtH8TT46cMB5P5uU3
 5NUykMXB6wJxIim5uZLsueE9Lb1sMJwsx7fkaWRSDcEwhKWAYhiGyzIwnkpl/z6oq0Or
 4x+BtmbF9c7Gs6DTj+RsOX7oSNj6Q0tkv5onPLhaBIsEtG4yxV9T70vq8ePrXAlDNpD8
 5sB2zFwst0zY2C9XYIlAcPCJ2JUIt9V9Hjz4+vjSenZxVun25fMG+8FtkYQcjlFwLPq+
 dTPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=611EZXoXvMC0wgvkSoDqQkuDX4b96jfM5TQTQEW07+g=;
 b=T082tnTc+YEofJ4/5cZOJ8KFseSmcDG3mm4s1/9xwMcVz53hp5ev4ed7RSX0pbY2H4
 UdBkc9JY/IRuufsK7UEJF+HbpCwb0+9LKHSK3KhBoS9z/llfZ1jkQi5Vz4K1ohMnejWX
 2ndtqU1P9EIO1AQPxF3xIdm33oRN5Uh39UqcJzO4auZJCbcDyxnYp4P8au5lRX/K/X/q
 Rp8iLQPeiExPQHe7BotpEbsTiG/eWq/EB33SbrfTYAIQfPNKeKzauoZiWgclpegq+lg/
 8CF+oeBrXW+kRNkgYh5ytyg4mqzpdRPVfQBQ9L/pGgec57xPn/bH8sbWTIGbsE/fDM7i
 tp8Q==
X-Gm-Message-State: AOAM530yvHXFDXtp9h7P+QF07L0LsgvoziouHWG3du20ixz6lguqlVal
 HR48ILRzcOGcsJWEjWKHZFxpzsFbfw5H+GGntNuHsw==
X-Google-Smtp-Source: ABdhPJxPKKxxiM1BfEdkh9RUDLtOEwohJAfgWmxAu+vR7pTgkQ6fdURfjYcm3A4r4/Ejum+DBwaGettYUqKJ7IOPnc8=
X-Received: by 2002:a1c:6a01:: with SMTP id f1mr6984797wmc.52.1591866227178;
 Thu, 11 Jun 2020 02:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200604081224.863494-1-daniel.vetter@ffwll.ch>
 <20200604081224.863494-4-daniel.vetter@ffwll.ch>
 <159186243606.1506.4437341616828968890@build.alporthouse.com>
 <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
In-Reply-To: <CAPM=9ty6r1LuXAH_rf98GH0R9yN3x8xzKPjZG3QyvokpQBR-Hg@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 11 Jun 2020 10:01:46 +0100
Message-ID: <CAPj87rM0S2OPssf+WA+pjanT-0Om3yuUM1zUJCv4qTx5VYE=Fw@mail.gmail.com>
To: Dave Airlie <airlied@gmail.com>
Subject: Re: [Intel-gfx] [PATCH 03/18] dma-fence: basic lockdep annotations
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Thu, 11 Jun 2020 at 09:44, Dave Airlie <airlied@gmail.com> wrote:
> On Thu, 11 Jun 2020 at 18:01, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > Introducing a global lockmap that cannot capture the rules correctly,
>
> Can you document the rules all drivers should be following then,
> because from here it looks to get refactored every version of i915,
> and it would be nice if we could all aim for the same set of things
> roughly. We've already had enough problems with amdgpu vs i915 vs
> everyone else with fences, if this stops that in the future then I'd
> rather we have that than just some unwritten rules per driver and
> untestable.

As someone who has sunk a bunch of work into explicit-fencing
awareness in my compositor so I can never be blocked, I'd be
disappointed if the infrastructure was ultimately pointless because
the documented fencing rules were \_o_/ or thereabouts. Lockdep
definitely isn't my area of expertise so I can't comment on the patch
per se, but having something to ensure we don't hit deadlocks sure
seems a lot better than nothing.

Cheers,
Daniel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
