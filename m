Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CBF3A135F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 13:48:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3152C6E183;
	Wed,  9 Jun 2021 11:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA1376E133
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jun 2021 11:48:47 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 t4-20020a1c77040000b029019d22d84ebdso4074982wmi.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Jun 2021 04:48:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=mBF7zxqvS60vi9Ebk6adzb8slsOwbiwvZeFxm8noKbA=;
 b=iJTj2Bc5VJqeOdJBmugmRHmU0GdawOeXbpxda2jIZjlYhJlsYW7Cm5l7kjGK4k6JfP
 /6dEbiuCwtImyTuGJHxkhvJo6uyHUf0FmWaX7VCDGIP9PViMmLZ3wr95+KzK0kGtNwK6
 jzBjCp6x1Ifb4lzEdaZuktW8n6jkRjJxDkT3s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=mBF7zxqvS60vi9Ebk6adzb8slsOwbiwvZeFxm8noKbA=;
 b=J0yQNNhwB0qaBazVp98lrcsDNkGXssWtpKr0Wi8FcMJ6JMwJMNRTYBpwzuTG36m0mD
 3pfuU4jYP7OiBM7e6jeZ+dqWnCKhix9jgknsovwnNahmNWpawAb1LvuFOPks4P1Oz1Sh
 OEeSCs21/qu9It7ItAm8CZUY+8p039MGIzvNu4grNEPbKTBbarpUcm6RJFIZFLI2Djzc
 WeMwBt2mBMBAd53w7j3yWV++SVCnXkZyGNf4qHJKpCgkqGrAIoR9gFvNKdRwuZaAlFWO
 qDx2c6KfVErkM28YwUCJLufrmouTHrzns9YQNWPJ9zQaj1DzV1Lr8+jqsZkX/AVoUeau
 gEWg==
X-Gm-Message-State: AOAM5328OKC2MRn1eavKO/JQuIMI8/ClUil4KynL6dkvRUN7ez8hTMeC
 QRL5i8gjn0l/0g8ng5mDrZ7XQw==
X-Google-Smtp-Source: ABdhPJyM3nXF3e6nKOZ8pK7Ctg1HKTz+N+Yoy5VbkNzSO1/JKk4zBN10uZct+/Q5g5EcKpprxduWRw==
X-Received: by 2002:a1c:1dd5:: with SMTP id d204mr9335601wmd.140.1623239326333; 
 Wed, 09 Jun 2021 04:48:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id g17sm18632411wrp.61.2021.06.09.04.48.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Jun 2021 04:48:45 -0700 (PDT)
Date: Wed, 9 Jun 2021 13:48:43 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <YMCqm48rZIKLYk/s@phenom.ffwll.local>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 09, 2021 at 08:34:27AM +0200, Thomas Hellstr=F6m wrote:
> A couple of patches from Chris which implement pipelined migration and
> clears by atomically writing the PTEs in place before performing the
> actual blit.
> =

> Some ww utilities mainly for the accompanying selftests added by Thomas,
> as well as modified the above patches for ww locking- and lmem support.
> =

> The actual hook up to the i915 ttm backend is being worked on and not
> included yet, so this is considered to be an early review opportunity.
> =

> v2:
> - A couple of minor style fixes pointed out by Matthew Auld
> - Export and use intel_engine_destroy_pinned_context() to address a
>ls   CI warning / failure.

Just to check my understanding of the plan: These are the new windowed
clear/blt functions which we plan to use everywhere, because less nasty
locking implications? And the clear/blt we currently have in upstream will
be replaced?

If so would be nice if this patch set includes that replacement work (I
think right now all we have is the clear for lmem), including updating of
selftests and stuff like that. Just to avoid having two ways to do the
same thing in the driver.
-Daniel

> =

> Chris Wilson (6):
>   drm/i915/gt: Add an insert_entry for gen8_ppgtt
>   drm/i915/gt: Add a routine to iterate over the pagetables of a GTT
>   drm/i915/gt: Export the pinned context constructor and destructor
>   drm/i915/gt: Pipelined page migration
>   drm/i915/gt: Pipelined clear
>   drm/i915/gt: Setup a default migration context on the GT
> =

> Thomas Hellstr=F6m (3):
>   drm/i915: Reference objects on the ww object list
>   drm/i915: Break out dma_resv ww locking utilities to separate files
>   drm/i915: Introduce a ww transaction helper
> =

>  drivers/gpu/drm/i915/Makefile                 |   2 +
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |   9 +-
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c          |  68 ++
>  drivers/gpu/drm/i915/gt/intel_engine.h        |  12 +
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  27 +-
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h  |   2 +
>  drivers/gpu/drm/i915/gt/intel_gt.c            |   4 +
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |   3 +
>  drivers/gpu/drm/i915/gt/intel_gtt.h           |   7 +
>  drivers/gpu/drm/i915/gt/intel_migrate.c       | 685 ++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_migrate.h       |  65 ++
>  drivers/gpu/drm/i915/gt/intel_migrate_types.h |  15 +
>  drivers/gpu/drm/i915/gt/intel_renderstate.h   |   1 +
>  drivers/gpu/drm/i915/gt/intel_ring.h          |   1 +
>  drivers/gpu/drm/i915/gt/selftest_migrate.c    | 671 +++++++++++++++++
>  drivers/gpu/drm/i915/i915_gem.c               |  52 --
>  drivers/gpu/drm/i915/i915_gem.h               |  12 -
>  drivers/gpu/drm/i915/i915_gem_ww.c            |  63 ++
>  drivers/gpu/drm/i915/i915_gem_ww.h            |  50 ++
>  .../drm/i915/selftests/i915_live_selftests.h  |   1 +
>  .../drm/i915/selftests/i915_perf_selftests.h  |   1 +
>  21 files changed, 1675 insertions(+), 76 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_migrate.c
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_migrate.h
>  create mode 100644 drivers/gpu/drm/i915/gt/intel_migrate_types.h
>  create mode 100644 drivers/gpu/drm/i915/gt/selftest_migrate.c
>  create mode 100644 drivers/gpu/drm/i915/i915_gem_ww.c
>  create mode 100644 drivers/gpu/drm/i915/i915_gem_ww.h
> =

> -- =

> 2.31.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
