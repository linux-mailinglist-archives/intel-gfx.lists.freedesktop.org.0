Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 621A13515F0
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Apr 2021 17:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639BF6E157;
	Thu,  1 Apr 2021 15:12:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com
 [IPv6:2607:f8b0:4864:20::834])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9C46E157;
 Thu,  1 Apr 2021 15:12:56 +0000 (UTC)
Received: by mail-qt1-x834.google.com with SMTP id h7so1703028qtx.3;
 Thu, 01 Apr 2021 08:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wFQpf7PVI81GDmKsBvOnq0b1F1wQ24tKAZItrxbaYj8=;
 b=LOeOHsWFLxrcbSj8v+9bZ9+UVRzY475aD9uQIkmh2Cchl+VUZ9XxTlV2aG6l9jn3KA
 D4d8TUCihKsRVFrWuK0QbJJd82QClOYSG+TLgEDFMdPWNTbwfbkrPPw3bpGh4yS7aAG8
 3eptlKgJZvJIzt7Dg8Tpz0JFDwThdKGQSFIUhegbdsPvjwirIPDxQxKaWJuxED5DHgT1
 CJxUXOj0jC3iLwzEFOm8CzN/xe1BW8YPnW8/dCEiX7xmh4SqAACxzig0MX6Oj888MBGG
 tzfJA8MdUpBx7WPS/1/lhu+/AzcVj7tjhtLLbHUbHGPwTtflLsii9Ejt0xUF7tCZi/uk
 vDjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wFQpf7PVI81GDmKsBvOnq0b1F1wQ24tKAZItrxbaYj8=;
 b=fBuYJ8AXZ9fhr2Q/OpnE01PTm48sjpfKkNF0jpaVhlwoEkSGe90eF9f2sVkdhA+9Gk
 9CPlghjwkTWL/kPpKhVSLI8eI+E3TH9aZrQa1D1KmJ5lIYWBycSPpAWr0U6FERjqGjuE
 L5W0Z6jZKZsVMsZiyQVpJdj3mslDGWEIRS5WZcv5cm0E2W2WHSjtO/z+JC86Ow6h+GKf
 DHywt8P7BuCD6t6FxUYPjqY2rnBJbQqx528hwC/I42Z87KCTx++fCBicvxnetKgNQQQn
 Gxk5Z5yVcRyNzNUXv83G4Vc4O1XBwFHnJS3IYlMTp9V8R9J1l07Kxva+/aTbAtOipPCS
 c25g==
X-Gm-Message-State: AOAM531iA2yAbzbaPxuGRMhR33DITFTt2mMtpGCoGmonyOl78vMVqEL4
 QA0V5L9puNz5gKPQKiJhylcYCMpbQz10ksv+7Gc=
X-Google-Smtp-Source: ABdhPJz+sZ13agofbqF46PnmhwV2+X/6++XzGNSPb7wA5hpHhE07euxihsFgREgioxsY03S9S2r/cvSL4oHB6UMlbVw=
X-Received: by 2002:ac8:4c90:: with SMTP id j16mr7644275qtv.223.1617289975678; 
 Thu, 01 Apr 2021 08:12:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210331091241.2566311-1-tvrtko.ursulin@linux.intel.com>
 <CAM0jSHPM+8DEJGo38wA=0zGtEaeN1u1rqeL9S2PjEHrZSai7bg@mail.gmail.com>
 <a94d9968-173b-f9f5-5f44-598fed2c1fd4@linux.intel.com>
In-Reply-To: <a94d9968-173b-f9f5-5f44-598fed2c1fd4@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 1 Apr 2021 16:12:29 +0100
Message-ID: <CAM0jSHOBW1vVRknZBsZor6DRLi=i1=jEdWr8+awKDNoLqnum9w@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] intel_gpu_top: Document how
 to use JSON output
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <Intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 1 Apr 2021 at 15:58, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
>
> On 01/04/2021 15:49, Matthew Auld wrote:
> > On Wed, 31 Mar 2021 at 10:12, Tvrtko Ursulin
> > <tvrtko.ursulin@linux.intel.com> wrote:
> >>
> >> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>
> >> Put a note on how to use JSON output into the man page.
> >>
> >> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >> References: https://gitlab.freedesktop.org/drm/igt-gpu-tools/-/issues/100
> >> ---
> >>   man/intel_gpu_top.rst | 5 +++++
> >>   1 file changed, 5 insertions(+)
> >>
> >> diff --git a/man/intel_gpu_top.rst b/man/intel_gpu_top.rst
> >> index f6d74852558b..94fdc6520fd3 100644
> >> --- a/man/intel_gpu_top.rst
> >> +++ b/man/intel_gpu_top.rst
> >> @@ -81,6 +81,11 @@ Filter types: ::
> >>       pci      pci:[vendor=%04x/name][,device=%04x][,card=%d]
> >>                vendor is hex number or vendor name
> >>
> >> +JSON OUTPUT
> >> +===========
> >> +
> >> +To parse the JSON as output by the tool the consumer should wrap its entirety into square brackets ([ ]). This will make each sample point an JSON array element and will avoid "Multiple root elements" JSON validation error.
> >> +
> >
> > a JSON array element
> >
> > It could be argued that this should go into LIMITATIONS?
>
> Hm yes, 50-50 or you lean more towards limitations? Otherwise inertia
> says it can also stay as is.

Just keep it as-is.

>
> Regards,
>
> Tvrtko
>
> > Acked-by: Matthew Auld <matthew.auld@intel.com>
> >
> >>   LIMITATIONS
> >>   ===========
> >>
> >> --
> >> 2.27.0
> >>
> >> _______________________________________________
> >> igt-dev mailing list
> >> igt-dev@lists.freedesktop.org
> >> https://lists.freedesktop.org/mailman/listinfo/igt-dev
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
