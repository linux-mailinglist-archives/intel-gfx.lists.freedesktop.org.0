Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1C33992F3
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 20:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4BB6EDF3;
	Wed,  2 Jun 2021 18:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com
 [IPv6:2607:f8b0:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BC746EDF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 18:57:14 +0000 (UTC)
Received: by mail-ot1-x332.google.com with SMTP id
 i12-20020a05683033ecb02903346fa0f74dso3374049otu.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Jun 2021 11:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DUMfivhVs39RWD9wbM4YeN4uJSv83VCUPBJGHjzj9MA=;
 b=cD19riI7ex0LEM/TS2fNESRC6SoVoIiB7zjRq660rtF2/uO8+upcuq2WOQgb0khrbU
 O3GBnKFe/sUP5hXxdfjMrBuaXb7HBsnbQ+pB9zjcjikNzgd925qELN9bErGpmtPgxywf
 OICGwI6NKg1tfFMSYwANFRpeVMKuxx1KJJyAQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DUMfivhVs39RWD9wbM4YeN4uJSv83VCUPBJGHjzj9MA=;
 b=jQeEufInAH1b4+ez4+RK6Ps24MYgtUgo4oRBK4lYz+whHvJOkD6WsuEQxCIwHN6LXd
 LibPtGwFPrGgry9J20FGn3E0otMbVMmb7b9xn0sPp0dDgxodrbrtTdFU9g25oKK1Cpmj
 fEAlpcpj2JnGqBGBJHk/c/Nuwg5txA63MQPrsMNlwPoTDvhM4XvdPw3O8Bgbi5IWDVbu
 paT6Ff7oP2UKUFPkZTtQB9bcyJKT6pENHnxk+Qwp7taLMUYE6dx5esCMsH+RE9Lrui/A
 UaO412pTN+6uvVIscZne84GO7fzlHkbKJvNUXTTR4nP71TWoHDF85FrzFecc2ZjK8fyq
 iS0g==
X-Gm-Message-State: AOAM5311xQCqSDtvMEQupH/USfp0AuS9lXbNYLsCz2+IcC5LTM0wCcCn
 Zm/w6Hb3xls5KJnctCNRSIQMKxhG7LplvS/m+JAXxA==
X-Google-Smtp-Source: ABdhPJwZ+ppkfviLb32tBhF+dK1B80dh3UYuX6QSc9NHT+jWfkZpImuNXGhgUqUHqDcPkpXAW32TZ4efxYaCAuyd9uI=
X-Received: by 2002:a9d:27a4:: with SMTP id c33mr26320854otb.281.1622660233643; 
 Wed, 02 Jun 2021 11:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210506191451.77768-1-matthew.brost@intel.com>
 <de3965d8-d997-5685-0399-646d8823a27f@linux.intel.com>
 <20210525164504.GA9971@sdutt-i7>
 <d76ab0ec-4f0c-19ed-adaa-ed227af63c0e@linux.intel.com>
In-Reply-To: <d76ab0ec-4f0c-19ed-adaa-ed227af63c0e@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 2 Jun 2021 20:57:02 +0200
Message-ID: <CAKMK7uHT2mPTyX9QiTBFP2Lt28vV3JcJLPAx_hMdTtyLJ=DZ2g@mail.gmail.com>
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
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 2, 2021 at 5:27 PM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
> On 25/05/2021 17:45, Matthew Brost wrote:
> > On Tue, May 25, 2021 at 11:32:26AM +0100, Tvrtko Ursulin wrote:
> >>   * Context pinning code with it's magical two adds, subtract and cmpxchg is
> >> dodgy as well.
> >
> > Daniele tried to remove this and it proved quite difficult + created
> > even more races in the backend code. This was prior to the pre-pin and
> > post-unpin code which makes this even more difficult to fix as I believe
> > these functions would need to be removed first. Not saying we can't
> > revisit this someday but I personally really like it - it is a clever
> > way to avoid reentering the pin / unpin code while asynchronous things
> > are happening rather than some complex locking scheme. Lastly, this code
> > has proved incredibly stable as I don't think we've had to fix a single
> > thing in this area since we've been using this code internally.
>
> Pretty much same as above. The code like:
>
> static inline void __intel_context_unpin(struct intel_context *ce)
> {
>         if (!ce->ops->sched_disable) {
>                 __intel_context_do_unpin(ce, 1);
>         } else {
>                 while (!atomic_add_unless(&ce->pin_count, -1, 1)) {
>                         if (atomic_cmpxchg(&ce->pin_count, 1, 2) == 1) {
>                                 ce->ops->sched_disable(ce);
>                                 break;
>                         }
>                 }
>         }
> }
>
> That's pretty much impenetrable for me and the only thing I can think of
> here is **ALARM** must be broken! See what others think..

pin_count is a hand-rolled mutex, except not actually a real one, and
it's absolutely hiliarous in it's various incarnations (there's one
each on i915_vm, vma, obj and probably a few more).

Not the worst one I've seen by far in the code we've merged already.
Minimally this needs a comment here and in the struct next to
@pin_count to explain where all this is abused, which would already
make it better than most of the in-tree ones.

As part of the ttm conversion we have a plan to sunset the "pin_count
as a lock" stuff, depending how bad that goes we might need to split
up the task for each struct that has such a pin_count.

-Daniel
--
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
