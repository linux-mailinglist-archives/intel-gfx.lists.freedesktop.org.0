Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0CD2A825C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 032A26ED88;
	Thu,  5 Nov 2020 15:39:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe41.google.com (mail-vs1-xe41.google.com
 [IPv6:2607:f8b0:4864:20::e41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A81F76ED88
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:39:31 +0000 (UTC)
Received: by mail-vs1-xe41.google.com with SMTP id m16so1004008vsl.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Nov 2020 07:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Vf2suZ+20jDKe4TahQyZrZwlWUMVeSmkyVHznEuX0FI=;
 b=YsiqFEJmRxV3wIUOUx3imq7vtluRyUeLGccYaDJuDNPwMLcTPDOqo/tLs7CMYErN++
 XciXu/08MRJs5aSpROVud4pGyYrGclkoFK9Kcrvc/NrBsjEIioNEbsAh61vOZlTsLiVw
 aEJF8ZAL3ixEXqUrtdLkpd9WlJKEE4H7uhw357w4WdFcUbfV4+gmbHuqweiQzKZik8li
 +uJktnMpOowAyg26mahWvFT6jOT1b8qzp6quKZDKK+m4ECSkeUge9+EoRQrEmbURtuEj
 5r3IbEs23/0lEqNh0akrYoPl9ILR+EqiBMb715QRzuwvynfQNGd3pwPzeUf5fYzYiuK4
 FDSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vf2suZ+20jDKe4TahQyZrZwlWUMVeSmkyVHznEuX0FI=;
 b=tEm6f7Ihdx0cmHei0UXkY1iD8bwE8cHF2LU7Yqa9lb2YXn+Znw0sffALZUlRgC7BSh
 0kM0HR/GKMjr7tFx8dTyCns1WmDWcgg2bGY7qe/uWHMR+SsJuREJ+aDaeZdHzMUxB9jB
 FvmJxucgSrdbOSapct3iDGE6gn6J5VCWzz/EwDSDZgtHPYyJpie1J7x8RPXewEXR3mah
 y6ihxwNkF2RtKcAxfTi4BO4kUFJoj+Wg5SMefGPYdAlZuDCVwqAgVm2uq2TtTx1GztIc
 1k5SN1q/q1Kqy5V50nhrpnaZj7D6DEgbJ4BzCH/HBN9WeJIejMnW8N1S871chXbVGCbC
 OljA==
X-Gm-Message-State: AOAM5333mT7p2SJcGRUbcYctqyAVERcHHaxiisBLi97FCH9SRzVSXJOR
 uo9bWCenprRhUvSGoPgjQurxFnN8sKR1KZFVxZW8uAx5v38=
X-Google-Smtp-Source: ABdhPJxRwlbASHmpBXYALo/voFc249To2v0fDXkumwrpCu8gawRN2ho1IoBYs9LoHhunMeriwAOJtsG5gMJUpjwH0OA=
X-Received: by 2002:a67:2d51:: with SMTP id t78mr1687271vst.60.1604590770760; 
 Thu, 05 Nov 2020 07:39:30 -0800 (PST)
MIME-Version: 1.0
References: <20201105101134.19716-1-chris@chris-wilson.co.uk>
 <20201105101134.19716-2-chris@chris-wilson.co.uk>
In-Reply-To: <20201105101134.19716-2-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Nov 2020 15:39:04 +0000
Message-ID: <CAM0jSHOKQX3GU3UNf=LydCPYCXaL4BXecTC5M_7qSwj3hBVmEw@mail.gmail.com>
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

On Thu, 5 Nov 2020 at 10:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> More the specialised interation with the physical GEM object from the

Move                           interaction

> pread/pwrite ioctl handler into the phys backend.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
