Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4FB3B968B
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jul 2021 21:28:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28B806EB8F;
	Thu,  1 Jul 2021 19:28:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com
 [IPv6:2607:f8b0:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BA16EB8F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jul 2021 19:28:18 +0000 (UTC)
Received: by mail-oi1-x236.google.com with SMTP id w127so8523912oig.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Jul 2021 12:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3Bue/DZ+vkXeTcotzSVhPxUCkp0cbyG+4vLQI2c4Y8=;
 b=hd+gPTW7db1T8Fu2WYC6zO/Zsa0g4YG3KuzgA6Bm58grB/TYQptVE6FTjosnfwJicc
 Neh+ApdNbld6KPRUdXv9KhjJJq7c4zpOH8u+AAi/hxBgK/bz2YohQY67Q7gIQRqKHxZs
 +lJPiqiPnkrPktsQ6zIqlaeAC3Sdoq/VuFtj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3Bue/DZ+vkXeTcotzSVhPxUCkp0cbyG+4vLQI2c4Y8=;
 b=Ass3cJdaSg6MmK/q3opw9i9vTcvA/M6khBxbJ0cs+OF5Ynn0PamQb8uaN0uUSOiXd4
 BwkfGVPm/iCcKAccxMPMrIdXdABRiUAvapNSkN0ULKH9fO6SmlK+aETnfZ+1ToS0HOQu
 NZX2SEQ+T7JRcwsz84ehAHwLJlvcuhnwFAB3B0X0OIvJ4kR5zfKdd31MuQSaBX482nPv
 Yn4Kj0AmzL56lSpCFlxb9EnjUtGZB1EQx+LQyy+DcWGQ8BVVcGZgo9+BoI1sB5Dtz7R2
 6DohKWSjzxVTg64DWYHmJbY+MXbtqSSqszMV+CDeS3Gzz+/dTm792rX2opqErT7t76YJ
 hhww==
X-Gm-Message-State: AOAM532zkQpH7JjlIfymL52hv/ydZtAfjdYG8CoV+aLBSmhnBz0CJoCk
 2vBfUEjEz5XlIqfC63Lm0cF1vvm8BOzR5wjJUVyVJg==
X-Google-Smtp-Source: ABdhPJxg6QcAgEw6OQEAW3XANr7wHMHFdW/FllLMAuU6+ZN56sY0gx253K9IyDq8iNXrUTNCBpfvZh+bZjwHGiJ8oIo=
X-Received: by 2002:aca:1a0c:: with SMTP id a12mr8580379oia.14.1625167697996; 
 Thu, 01 Jul 2021 12:28:17 -0700 (PDT)
MIME-Version: 1.0
References: <20210624070516.21893-1-matthew.brost@intel.com>
 <20210624070516.21893-48-matthew.brost@intel.com>
 <88cbe963-7188-f4ae-5acf-01a80bd2fe25@free.fr>
 <05e1d462-57ae-888a-888c-3ad486150821@intel.com>
 <20210701111410.3fc6551e@eldfell>
 <050296b9-8958-353a-9f76-699bfbafa1c1@free.fr>
In-Reply-To: <050296b9-8958-353a-9f76-699bfbafa1c1@free.fr>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Thu, 1 Jul 2021 21:28:06 +0200
Message-ID: <CAKMK7uH1svoSEGa=sv+BsU4_BMou2sEJQWddQgy1XDMYtz7-Dw@mail.gmail.com>
To: Martin Peres <martin.peres@free.fr>
Subject: Re: [Intel-gfx] [PATCH 47/47] drm/i915/guc: Unblock GuC submission
 on Gen11+
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 Pekka Paalanen <ppaalanen@gmail.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 1, 2021 at 8:27 PM Martin Peres <martin.peres@free.fr> wrote:
>
> On 01/07/2021 11:14, Pekka Paalanen wrote:
> > On Wed, 30 Jun 2021 11:58:25 -0700
> > John Harrison <john.c.harrison@intel.com> wrote:
> >
> >> On 6/30/2021 01:22, Martin Peres wrote:
> >>> On 24/06/2021 10:05, Matthew Brost wrote:
> >>>> From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >>>>
> >>>> Unblock GuC submission on Gen11+ platforms.
> >>>>
> >>>> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> >>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >>>> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> >>>> ---
> >>>>    drivers/gpu/drm/i915/gt/uc/intel_guc.h            |  1 +
> >>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  8 ++++++++
> >>>>    drivers/gpu/drm/i915/gt/uc/intel_guc_submission.h |  3 +--
> >>>>    drivers/gpu/drm/i915/gt/uc/intel_uc.c             | 14 +++++++++-----
> >>>>    4 files changed, 19 insertions(+), 7 deletions(-)
> >>>>
> >
> > ...
> >
> >>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> >>>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> >>>> index 7a69c3c027e9..61be0aa81492 100644
> >>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> >>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> >>>> @@ -34,8 +34,15 @@ static void uc_expand_default_options(struct
> >>>> intel_uc *uc)
> >>>>            return;
> >>>>        }
> >>>>    -    /* Default: enable HuC authentication only */
> >>>> -    i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
> >>>> +    /* Intermediate platforms are HuC authentication only */
> >>>> +    if (IS_DG1(i915) || IS_ALDERLAKE_S(i915)) {
> >>>> +        drm_dbg(&i915->drm, "Disabling GuC only due to old
> >>>> platform\n");
> >>>
> >>> This comment does not seem accurate, given that DG1 is barely out, and
> >>> ADL is not out yet. How about:
> >>>
> >>> "Disabling GuC on untested platforms"?
> >>>
> >> Just because something is not in the shops yet does not mean it is new.
> >> Technology is always obsolete by the time it goes on sale.
> >
> > That is a very good reason to not use terminology like "new", "old",
> > "current", "modern" etc. at all.
> >
> > End users like me definitely do not share your interpretation of "old".
>
> Yep, old and new is relative. In the end, what matters is the validation
> effort, which is why I was proposing "untested platforms".
>
> Also, remember that you are not writing these messages for Intel
> engineers, but instead are writing for Linux *users*.

It's drm_dbg. Users don't read this stuff, at least not users with no
clue what the driver does and stuff like that.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
