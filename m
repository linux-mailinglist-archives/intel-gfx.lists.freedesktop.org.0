Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 228C634A3B9
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 10:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 058186F393;
	Fri, 26 Mar 2021 09:10:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9991C6F393
 for <Intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 09:10:17 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id o16so4942513wrn.0
 for <Intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 02:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=VchTCutkKpyxRfwfeyl6I2Tocke1UGJ7ukHU8Zl38Nw=;
 b=aoDevh/nfBHfb3+KipbEylUEMD4KfVc7lU2hGQMohvTB0sG9y1ZxHlUVKcC+15CSKX
 C1SFMeCtggEFPLHGcLtzZVo42M6nzqx9+9AerGJLH4+gBcKp57Si+7d29lpgfzBtYMjX
 V80wZaQ5Wh9iMFUZVvcLJo1PuCpCDGMUXhMM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VchTCutkKpyxRfwfeyl6I2Tocke1UGJ7ukHU8Zl38Nw=;
 b=QAAy4jmJYjUsbmk9sFQdIvWddVymxjZfV3ZPfY9fYL6J1wXksitkkn/WwMaBzkWgIi
 13i/DmQduVD0L2Ib2S8P/T2FdX1wVnuoP1LbAeg5a8leAruG76EL9RewdUGl+tWKllG2
 0Ps8P1eARQGJ2g4wCAyPhN2oCdF7OmtFKxS7ogKRnbiM/4VeOTL4s/n1YKFIO5yov4wj
 ZgbWRy8sV1ujrpPJQagLfBnjCOKuK6hIIKOlpE+DPSWsao2l6Z+GgmwDrAaP08NyMaQv
 J8MuKefYWgtYFAZMe0q0B9b1o/g5bgYy2Yya7ceCOvNNmo+SV4zvUCLaWoZ2/iLsvtsf
 9bQA==
X-Gm-Message-State: AOAM533/JkdgYjh/xp8sKnWTDOfbK1x0xzqoTK0xxRE/w0wbPlNLmvDD
 XSN1QkBsEMa3MpgMpz4rfjyoa+lnf8eqxl2p
X-Google-Smtp-Source: ABdhPJxN0ed5aHqd5W4scrMjVxLS8zjFg/kbh2ilj7+Q+5SRo69r33VZEnGpMm43K5YVMkUGSC7dmQ==
X-Received: by 2002:a5d:698e:: with SMTP id g14mr13124556wru.127.1616749816312; 
 Fri, 26 Mar 2021 02:10:16 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j30sm12257022wrj.62.2021.03.26.02.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Mar 2021 02:10:15 -0700 (PDT)
Date: Fri, 26 Mar 2021 10:10:13 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <YF2k9TivGrDdenoE@phenom.ffwll.local>
References: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210324121335.2307063-1-tvrtko.ursulin@linux.intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PATCH v4 0/7] Default request/fence expiry +
 watchdog
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 24, 2021 at 12:13:28PM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> "Watchdog" aka "restoring hangcheck" aka default request/fence expiry - second
> post of a somewhat controversial feature, now upgraded to patch status.
> 
> I quote the "watchdog" becuase in classical sense watchdog would allow userspace
> to ping it and so remain alive.
> 
> I quote "restoring hangcheck" because this series, contrary to the old
> hangcheck, is not looking at whether the workload is making any progress from
> the kernel side either. (Although disclaimer my memory may be leaky - Daniel
> suspects old hangcheck had some stricter, more indiscriminatory, angles to it.
> But apart from being prone to both false negatives and false positives I can't
> remember that myself.)
> 
> Short version - ask is to fail any user submissions after a set time period. In
> this RFC that time is twelve seconds.
> 
> Time counts from the moment user submission is "runnable" (implicit and explicit
> dependencies have been cleared) and keeps counting regardless of the GPU
> contetion caused by other users of the system.
> 
> So semantics are really a bit weak, but again, I understand this is really
> really wanted by the DRM core even if I am not convinced it is a good idea.
> 
> There are some dangers with doing this - text borrowed from a patch in the
> series:
> 
>   This can have an effect that workloads which used to work fine will
>   suddenly start failing. Even workloads comprised of short batches but in
>   long dependency chains can be terminated.
> 
>   And becuase of lack of agreement on usefulness and safety of fence error
>   propagation this partial execution can be invisible to userspace even if
>   it is "listening" to returned fence status.
> 
>   Another interaction is with hangcheck where care needs to be taken timeout
>   is not set lower or close to three times the heartbeat interval. Otherwise
>   a hang in any application can cause complete termination of all
>   submissions from unrelated clients. Any users modifying the per engine
>   heartbeat intervals therefore need to be aware of this potential denial of
>   service to avoid inadvertently enabling it.
> 
>   Given all this I am personally not convinced the scheme is a good idea.
>   Intuitively it feels object importers would be better positioned to
>   enforce the time they are willing to wait for something to complete.
> 
> v2:
>  * Dropped context param.
>  * Improved commit messages and Kconfig text.
> 
> v3:
>  * Log timeouts.
>  * Bump timeout to 20s to see if it helps Tigerlake.

I think 20s is a bit much, and seems like problem is still there in igt. I
think we need look at that and figure out what to do with it. And then go
back down with the timeout somewhat again since 20s is quite a long time.
Irrespective of all the additional gaps/opens around watchdog timeout.
-Daniel

>  * Fix sentinel assert.
> 
> v4:
>  * A round of review feedback applied.
> 
> Chris Wilson (1):
>   drm/i915: Individual request cancellation
> 
> Tvrtko Ursulin (6):
>   drm/i915: Extract active lookup engine to a helper
>   drm/i915: Restrict sentinel requests further
>   drm/i915: Handle async cancellation in sentinel assert
>   drm/i915: Request watchdog infrastructure
>   drm/i915: Fail too long user submissions by default
>   drm/i915: Allow configuring default request expiry via modparam
> 
>  drivers/gpu/drm/i915/Kconfig.profile          |  14 ++
>  drivers/gpu/drm/i915/gem/i915_gem_context.c   |  73 ++++---
>  .../gpu/drm/i915/gem/i915_gem_context_types.h |   4 +
>  drivers/gpu/drm/i915/gt/intel_context_param.h |  11 +-
>  drivers/gpu/drm/i915/gt/intel_context_types.h |   4 +
>  .../gpu/drm/i915/gt/intel_engine_heartbeat.c  |   1 +
>  .../drm/i915/gt/intel_execlists_submission.c  |  23 +-
>  .../drm/i915/gt/intel_execlists_submission.h  |   2 +
>  drivers/gpu/drm/i915/gt/intel_gt.c            |   3 +
>  drivers/gpu/drm/i915/gt/intel_gt.h            |   2 +
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c   |  28 +++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |   7 +
>  drivers/gpu/drm/i915/i915_params.c            |   5 +
>  drivers/gpu/drm/i915/i915_params.h            |   1 +
>  drivers/gpu/drm/i915/i915_request.c           | 129 ++++++++++-
>  drivers/gpu/drm/i915/i915_request.h           |  16 +-
>  drivers/gpu/drm/i915/selftests/i915_request.c | 201 ++++++++++++++++++
>  17 files changed, 479 insertions(+), 45 deletions(-)
> 
> -- 
> 2.27.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
