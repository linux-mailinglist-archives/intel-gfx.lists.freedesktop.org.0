Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7C9A390333
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 15:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF0B16E1A7;
	Tue, 25 May 2021 13:57:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F153F89CFA
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 13:57:00 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id x8so32352545wrq.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 06:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=UdWUY1PBd7H5PAODbf7NSnVpl+zNYiQtpVY+c4z2LdQ=;
 b=CcQkWVter9jrvjgS+nzESAfN83o7vsCSXduTezGW0zs0KOhZanNgnaUspxbGJ2UAH6
 AXzmKf0YjhzicCs7bLKme6kIAejhu5p7tv3CglhNgnfE3x6FVscZvJPD5CBXg6/OJPof
 3rth6vKrsfdl15xOJbbb2HOGp5HPqQKlKCEuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UdWUY1PBd7H5PAODbf7NSnVpl+zNYiQtpVY+c4z2LdQ=;
 b=rS4tmQm0uMCZX3tLRUGLecgmEHuChqwC4HP1C3/gi29qZElmCN3afj+DLAH3cwJBx2
 J2i4MLr2HVZ0IXeXMmsmGsYrfAAXWI0xSF2I/xZdpQaiA41Y/R62Afn0iLxmkLx8EHh8
 xFS9bbZHioYEvxdXMUKpw+jmp+PkwmZickFE9p916/HMkB8zXtjWabliOdNxbgYWD64j
 XMJEKrRMlrAM1VgMzockgY4q6ftpfQGFb0pYIhatJsoyUFSePwP0NFnMkgK5NYwlTClP
 d0xoU/hFS2AMoRfyUtKaOz1eJgtGEB9Quk3iavcEJcN9lhS7ChafkzuA63hluWHKIYQA
 sn2w==
X-Gm-Message-State: AOAM530hcfCALFApKhJ9E0A0BSB8LQROY+a0cwxS/QK66w7gZQ8AigjG
 iNULatnjpx7Af07pXHcJAW8s7Q==
X-Google-Smtp-Source: ABdhPJzBcw12nnLNLwYw4wG0Aex2S+sM0sDXzzJhgVavjHfSpGVaHh/bRhMQkVERQ3obZZVaNeVNfw==
X-Received: by 2002:a5d:64eb:: with SMTP id g11mr28129904wri.260.1621951019676; 
 Tue, 25 May 2021 06:56:59 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id k205sm11217666wmf.13.2021.05.25.06.56.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 06:56:58 -0700 (PDT)
Date: Tue, 25 May 2021 15:56:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Message-ID: <YK0CKLSCx0qowxhy@phenom.ffwll.local>
References: <20210521183215.65451-1-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210521183215.65451-1-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 0/3] Clean a few backend interfaces in the
 i915
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 21, 2021 at 11:32:12AM -0700, Matthew Brost wrote:
> As discussed in [1] start merging some support patches as a precursor to
> GuC submission the i915. This is step #1 mentioned in [1].
> 
> [1] https://patchwork.freedesktop.org/series/89844/
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>

Pushed to drm-intel-gt-next, thanks for patches&reviews. Btw you can also
ping John H or Daniele for pushing stuff for you, should be quicker than
waiting for me to return from a lon w/e :-)

Plus I _really_ don't want to get back into the business of pushing other
people's work ...

Cheers, Daniel

> 
> Chris Wilson (3):
>   drm/i915/gt: Move engine setup out of set_default_submission
>   drm/i915/gt: Move submission_method into intel_gt
>   drm/i915/gt: Move CS interrupt handler to the backend
> 
>  drivers/gpu/drm/i915/gt/intel_engine.h        |  8 +-
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c     | 19 +++-
>  drivers/gpu/drm/i915/gt/intel_engine_types.h  | 14 +--
>  .../drm/i915/gt/intel_execlists_submission.c  | 95 +++++++++++++------
>  .../drm/i915/gt/intel_execlists_submission.h  |  3 -
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c        | 82 +++++-----------
>  drivers/gpu/drm/i915/gt/intel_gt_irq.h        | 23 +++++
>  drivers/gpu/drm/i915/gt/intel_gt_types.h      |  7 ++
>  drivers/gpu/drm/i915/gt/intel_reset.c         |  7 +-
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 12 ++-
>  drivers/gpu/drm/i915/gt/intel_rps.c           |  2 +-
>  drivers/gpu/drm/i915/gt/selftest_execlists.c  |  2 +-
>  .../drm/i915/gt/selftest_ring_submission.c    |  2 +-
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 64 ++++++-------
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.h |  1 -
>  drivers/gpu/drm/i915/i915_irq.c               | 10 +-
>  drivers/gpu/drm/i915/i915_perf.c              | 10 +-
>  17 files changed, 199 insertions(+), 162 deletions(-)
> 
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
