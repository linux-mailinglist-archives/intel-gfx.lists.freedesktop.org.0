Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D1439BE78
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Jun 2021 19:20:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B45A6F641;
	Fri,  4 Jun 2021 17:20:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5075F6F642
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Jun 2021 17:20:48 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id g38so14669023ybi.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Jun 2021 10:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=SUPFyDU8gb+9eh1f5Cot/VymaAh+/91MoEY3HOiLtio=;
 b=AkOrF6w/y8fs2uWPKMHBtw7iS//cmDg9KPLRSXgu377d3Olx+zLml8VG+octmxEFKY
 /mwweD+QJJqP+KSqddU23xgG9L5YSisvwSeDY5X22OvuiA2fUdjFFtXjgVP0JJsjjcsR
 iJHpzXPsO+lkhKskOPdCgoqBw/rdRuv8ANL6/xyfxtmvUewiuBE1UQZlFt+jN6iGUVM0
 6nrz7vTbIHCMoC51q8dkAx1DDauazyaSzb9k8x0gNWLVq5fMxlI8U22aC9Vt2wKmQ7Jo
 R+kJhQXTTt6+JSEida7agIpw7/xWhqek2kMlypMnaJmqQbura2lrLIfQ97puKlK6Nm4T
 AQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SUPFyDU8gb+9eh1f5Cot/VymaAh+/91MoEY3HOiLtio=;
 b=CdD+jaVE7iFn9GBn2tQr7GVQwEoUQdFAxZRd7YSCmewQ+zU5tOce/W2vPizEhn1cOS
 oJ7xwMf7G1DggelxZaNi52QHk8Zuia3uhl3wSG5tn7k2JXOu2VwjpFdQND2MiwxAJjv/
 FVLOBNe0IOYXbNaCXOSQXMowcLeSEdhzmL8Lcnx0pewzsbb4tjpwhCTSdgGV48e9aZaB
 Ppsg4SVNv9Vwv6/3VUV/slANgKKCskNQp3sOst1kMR1yYhNkrq1wtQEZsNPezEZLTKRX
 5oljtUBOj2dd8QrZdZUgJ3PywpiCelhiuHp+q0C31KCbTXko4htOxfCHVNtZUYd3lwYh
 zieA==
X-Gm-Message-State: AOAM532Lx+Up121X1s8ZfF4dkHyKJeK6I1u+Gh4i6kVGUm6+xAO9PatS
 VESWeE8jLPDjb1vSXX7vMcse2XPA5h1lS2ZN4+xQUCs3LPA=
X-Google-Smtp-Source: ABdhPJy6zZMU+3YjEwF2ge3PIfaabrkhHKtKQgiTxR3inoNPeiw6P+1xkTO2d9IsYd3Kuwu8M4ljSU2AYveinwUZWVg=
X-Received: by 2002:a25:81c5:: with SMTP id n5mr6866426ybm.323.1622827247334; 
 Fri, 04 Jun 2021 10:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210603212722.59719-1-matthew.brost@intel.com>
 <20210603212722.59719-10-matthew.brost@intel.com>
In-Reply-To: <20210603212722.59719-10-matthew.brost@intel.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Fri, 4 Jun 2021 12:20:36 -0500
Message-ID: <CAOFGe97toNPXOhSP=PQrb4PNzYVLXOP7+tNY6B9qBMLSKrC0xw@mail.gmail.com>
To: Matthew Brost <matthew.brost@intel.com>
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/doc: Add kernel doc for
 i915_sched_engine
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 3, 2021 at 4:09 PM Matthew Brost <matthew.brost@intel.com> wrote:
>
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  Documentation/gpu/i915.rst                  |  6 ++++
>  drivers/gpu/drm/i915/i915_scheduler_types.h | 37 ++++++++++++++++++---
>  2 files changed, 38 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 42ce0196930a..8f4f5471a05b 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -425,6 +425,12 @@ User Batchbuffer Execution
>  .. kernel-doc:: drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>     :doc: User command execution
>
> +Scheduling
> +----------
> +.. kernel-doc:: drivers/gpu/drm/i915/i915_scheduler_types.h
> +   :functions: i915_sched_engine
> +
> +
>  Logical Rings, Logical Ring Contexts and Execlists
>  --------------------------------------------------
>
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 9d79514450de..e3da7517853f 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -91,7 +91,21 @@ struct i915_dependency {
>                                 &(rq__)->sched.signalers_list, \
>                                 signal_link)
>
> +/**
> + * sturct i915_sched_engine - scheduler engine
> + *
> + * A schedule engine represents a submission queue with different priority
> + * bands. It contains all the common state (relative to the backend) to queue,
> + * track, and submit a request.
> + *
> + * This object at the moment is quite i915 specific but will transition into a
> + * container for the drm_gpu_scheduler plus a few other variables once the i915
> + * is integrated with the DRM scheduler.
> + */

Why is this its own patch?  The above comment would be nice to have in
patch 1/9 and the kref could be documented there too.

>  struct i915_sched_engine {
> +       /**
> +        * @ref: reference count of schedule engine object
> +        */
>         struct kref ref;
>
>         /**
> @@ -100,11 +114,18 @@ struct i915_sched_engine {
>          */
>         spinlock_t lock;
>
> +       /**
> +        * @requests: list of requests inflight on this schedule engine
> +        */
>         struct list_head requests;
> -       struct list_head hold; /* ready requests, but on hold */
>
>         /**
> -        * @tasklet: softirq tasklet for bottom handler
> +        * @hold: list of requests on hold.
> +        */
> +       struct list_head hold;
> +
> +       /**
> +        * @tasklet: softirq tasklet for submission
>          */
>         struct tasklet_struct tasklet;
>
> @@ -137,14 +158,20 @@ struct i915_sched_engine {
>          */
>         bool no_priolist;
>
> -       /* Back pointer to engine */
> +       /**
> +        * @engine: back pointer to engine
> +        */
>         struct intel_engine_cs *engine;
>
> -       /* Kick backend */
> +       /**
> +        * @kick_backed: kick back after a request's priority has changed
> +        */
>         void    (*kick_backend)(const struct i915_request *rq,
>                                 int prio);
>
> -       /*
> +       /**
> +        * @schedule: schedule function to adjust priority of request
> +        *
>          * Call when the priority on a request has changed and it and its
>          * dependencies may need rescheduling. Note the request itself may
>          * not be ready to run!
> --
> 2.28.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
