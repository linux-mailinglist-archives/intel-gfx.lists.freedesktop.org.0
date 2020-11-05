Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF45C2A8260
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EB026E141;
	Thu,  5 Nov 2020 15:40:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7FF56E141
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:40:47 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id m184so414255vkb.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Nov 2020 07:40:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3gClHIqMtN+Rj/ek6ZZeqSFT39Vwq+GUevmUvKqor4Y=;
 b=LRkfzJwumKIkC6SFI6Krr2UZRO9rHi6BeaS9sXSPyxtNYU8JvJ1qLJ5BjvJ8zFhDRJ
 /+yfidf32hFD3lIzoIcyceizINzHqecUnTF0yV+SLnLN2farl94CA8h5NtQwVyXS4/1E
 JmcYMCWmF17YSThU3CTmF3gVuS7qRfinL1/exAh1K/81X9f1XcPIjuDQdK5MHXojQJJZ
 QS0Qiut8i/Ur1aO0kwjhJQnQk5ZzwapOpzc9pItYfirU84AfXH5NHJJH7ZVyRsaxkGdn
 EdZ+dDHEfkYQElH00FoMVSNeR0tNVHCveSxJRs7l/x7hsXkLbKuC1W6tIxGlUjFbAuMW
 Z2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3gClHIqMtN+Rj/ek6ZZeqSFT39Vwq+GUevmUvKqor4Y=;
 b=Yvj3rail8h3zx1ABQ1fxtQhUoDV+LbV4HWS1OQTycV8qIGQKurFvKRmheuSVmgDz5D
 nFMcz0/hcbCHp5zskcaTEV2oOTEP7Wqm/y5tQPDiSxzj4iAIRI5WjHbUYwJ15FrNzwSM
 Z1W+cLB13taEYOLOxQ3sPhyPVF8Wu9ox1Qddm+JTVtV3U1Th5w4xomKOF91akI5Mrd9a
 C3x/+mbSBuMTkClInTH+oMg3EVaj+ET/C78948TRUTNdAHiY+Z9TVkv5KMnIyjghR1ei
 OGM5pl6PAITzVoZnxRb/zfM9axQ6/5OOFh7o9bFrscWo9+gaNtbEhQJyZ22s9Ik9K6sQ
 05gQ==
X-Gm-Message-State: AOAM530xHm5skDW6Y1bp8QxlP702w4qmKa31ubJw+iApp+38w6iKADiq
 G5NItOEXPLPHfjm+c7Pfo5Bt9r+A4owx66Xkj6lP2p2dfXM=
X-Google-Smtp-Source: ABdhPJziFelJtwP6qMHhBLyfhWidLlY1rcZIrwIyGxvrKeute8QAuOxk9T0rvKHkfktkmeKBglEVcry4j1Kcab8xvM8=
X-Received: by 2002:a1f:9915:: with SMTP id b21mr1510097vke.19.1604590847086; 
 Thu, 05 Nov 2020 07:40:47 -0800 (PST)
MIME-Version: 1.0
References: <20201105101134.19716-1-chris@chris-wilson.co.uk>
 <20201105101134.19716-2-chris@chris-wilson.co.uk>
 <CAM0jSHOKQX3GU3UNf=LydCPYCXaL4BXecTC5M_7qSwj3hBVmEw@mail.gmail.com>
In-Reply-To: <CAM0jSHOKQX3GU3UNf=LydCPYCXaL4BXecTC5M_7qSwj3hBVmEw@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Nov 2020 15:40:20 +0000
Message-ID: <CAM0jSHPLnY4zoAPLav0W5-g18=dJi8XcUud6xww2O6-kE+BOfQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/gem: Pull phys pread/pwrite
 implementations to the backend
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 5 Nov 2020 at 15:39, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Thu, 5 Nov 2020 at 10:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > More the specialised interation with the physical GEM object from the
>
> Move                           interaction
>
> > pread/pwrite ioctl handler into the phys backend.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Does  this need  Fixes btw?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
