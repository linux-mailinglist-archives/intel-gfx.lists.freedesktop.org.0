Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4632D505F
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 02:32:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5721E6E218;
	Thu, 10 Dec 2020 01:32:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x641.google.com (mail-ej1-x641.google.com
 [IPv6:2a00:1450:4864:20::641])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E48B6E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 01:32:32 +0000 (UTC)
Received: by mail-ej1-x641.google.com with SMTP id f23so5023457ejk.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Dec 2020 17:32:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pEGWrSqUP6BZujFmQ+Fz15950Yp6fS/iTg2m5txnlM4=;
 b=C/LcicVAxDXW2EcHxz/tgZykCuENMZn35S6gKY9V9tm1C3w+TuYZJQq0NGp/a6tLm2
 Z28vZY0iouN1PCMs1Ru26x3dwINgCJ7HNYFB0Ntt0HY9XOgnIn8z6MPb9ACv3YB25mCt
 twmXje7JICb/QzCrhg6qTgq8DKE8iMNodVSQyBlSLpYk6c9jfgsKeBXbmXmS379C8D2I
 DuYQPsxItWkQAHocDbtbU8wRs0WC1Sxj/mriqlLzFdYjukFKmyZfSjwQ0ETr9OCcbmze
 5z8rT3pMNROZH3tNzgKP+cDMYB2M68yvOOcipsn5AejP5elW9dVuZbHk2O7p3IhHRCyG
 3d/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pEGWrSqUP6BZujFmQ+Fz15950Yp6fS/iTg2m5txnlM4=;
 b=AwyEVycd5WQYzvVXb2u/rP0bX6Vj3V10V/7kyNxAsLRCxPJkmih6XCp57X/FrJz5gH
 sHF9Y1sIGiTSQGg6gGTKcXj0l5evav3oqhp5gS2PyGhPfuEIYabHYtjjLuDHc8/GYZsm
 v5+RhBEEDhWg3U/YeRxoU7QulSB3b8yCiZy8k0tNZpVYvvNTYuH4hvBZDbatHaHX2Fmx
 LWd938ApsM3k3K+OrgsMqOA5kRzB/yugFGn4sEEc4pMgfqcewBTZrYYWiH1F9dtiLuLP
 JeashJMjKmCby1sKfTJPurb5CGKUKGj0vOPGyA0GT6KYhcYBctNOMh+l4LivS7nELqX2
 8/1A==
X-Gm-Message-State: AOAM5324xM2/3APwXvME6pely+fNEJ6STbO5bzpqhpCFLAw4FreCm2LW
 nPOtlDUHIKjgPZPQoUCCC4dLDOltJ9/pdHR1wVvlR6DDOlE=
X-Google-Smtp-Source: ABdhPJxlUuB4lFH1SltO5Fmekrg0MnqAyhvq4UvVH+kN40BwzHw3ZVrmQ4jXGNmVomxBKhJ+tmD7/r/4+d9z67Bboq4=
X-Received: by 2002:a17:906:8152:: with SMTP id
 z18mr4482291ejw.317.1607563950461; 
 Wed, 09 Dec 2020 17:32:30 -0800 (PST)
MIME-Version: 1.0
References: <20201209042144.2281-1-airlied@gmail.com>
 <20201209042144.2281-5-airlied@gmail.com>
 <CAKMK7uGrCcspEK3qaHPSFy-UAGL+=ujMNv2BjCeHDUYKZGbQ3Q@mail.gmail.com>
In-Reply-To: <CAKMK7uGrCcspEK3qaHPSFy-UAGL+=ujMNv2BjCeHDUYKZGbQ3Q@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 10 Dec 2020 11:32:18 +1000
Message-ID: <CAPM=9txNLuLaRjdka97MRZpZc55z3XdRDr+sNzGB7AZHQ7UYAQ@mail.gmail.com>
To: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: split fdi code out from
 intel_display.c
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 9 Dec 2020 at 20:48, Daniel Vetter <daniel@ffwll.ch> wrote:
>
> On Wed, Dec 9, 2020 at 5:22 AM Dave Airlie <airlied@gmail.com> wrote:
> >
> > From: Dave Airlie <airlied@redhat.com>
> >
> > This just refactors out the fdi code to a separate file.
> >
> > Signed-off-by: Dave Airlie <airlied@redhat.com>
>
> There's also hsw_fdi_link_train from intel_ddi.c (another fairly big
> file), I think that also belongs in here. It's not in the vtable
> because it's directly called from the hsw crt encoder. With that this
> looks reasonable to me.

It does but it's definitely a lot messier to move, it has a lot of
links into the ddi code and tables.

I'll add another patch to the end that we can look at to decide if
there's a cleaner way to do it.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
