Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF9E3E4778
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 16:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D5C89C1B;
	Mon,  9 Aug 2021 14:23:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com
 [IPv6:2a00:1450:4864:20::331])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 178F289C1B
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Aug 2021 14:23:46 +0000 (UTC)
Received: by mail-wm1-x331.google.com with SMTP id
 f9-20020a05600c1549b029025b0f5d8c6cso14808664wmg.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Aug 2021 07:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TCkkoDrBZPZS2Jt/wDtaBCOah0PUyAMChzOFzyIwSEc=;
 b=WPxryrcBCp7VrQjm/ynvfre7oPvVVnUGCRplknet2nXvviHOWPidymvi9Pr771a8HZ
 DSLGyM1Qjy6gECjgfEf7XYF4cynlGEm/AevDTR9Xks6C/I5jygRXi0/lIhwQtToYxVa+
 BqCdXis87Pl79/FKr8ix+wrfZlBe4J6R63+Lk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TCkkoDrBZPZS2Jt/wDtaBCOah0PUyAMChzOFzyIwSEc=;
 b=q5w7XOPJaVASy4wVy8bsxnrMga9VzO9drLhk8sJzyFIiZd8T4uy/1YfaaxbvFz98JV
 TCIdNv9ZjARqdSqHfG11boat0E+qMz6ltrIoFO8rReOGp2vW2wXHbfk9E5BkeYIuzkBH
 NqAvPsKjqnNNUKyEZGR2J7994/1cBB2FrHiVvocob8iI1xufmBMj+V4y4b96PxcELz2P
 O6t25L4jLj8j9+sMmiCn/dXu6cTqJ/uWbtb506bim4OjIssTduEdsaljvq7/UoqKF1d3
 xDikQcDo3tsw2GzYTrEXYJltdP6oTuZ7qvP1p8UOZPpTID3on+1FYJTmpT3xO6hqKigG
 Twzg==
X-Gm-Message-State: AOAM532sXz5GhLVbvuWpYKQj36ZTNX7vpd2c5QWqsVfWjT87LPTwEP6X
 Htqspwyiw6EohcnlIW+lxUSJVA==
X-Google-Smtp-Source: ABdhPJwRGLehjlYh1A084ceDKgujSENv7a+SC8VlOnd9GtHl0+0avVxOdG84Ueukp7vtVzJBeKSyDg==
X-Received: by 2002:a1c:208e:: with SMTP id
 g136mr34125123wmg.142.1628519024618; 
 Mon, 09 Aug 2021 07:23:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j19sm191396wmi.3.2021.08.09.07.23.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Aug 2021 07:23:44 -0700 (PDT)
Date: Mon, 9 Aug 2021 16:23:42 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <YRE6bodEDhb6zj8M@phenom.ffwll.local>
References: <20210803222943.27686-1-matthew.brost@intel.com>
 <20210803222943.27686-11-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210803222943.27686-11-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 10/46] drm/i915/guc: Take engine PM when a
 context is pinned with GuC submission
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 03, 2021 at 03:29:07PM -0700, Matthew Brost wrote:
> Taking a PM reference to prevent intel_gt_wait_for_idle from short
> circuiting while a scheduling of user context could be enabled.
> 
> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  1 +
>  .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 36 +++++++++++++++++--
>  2 files changed, 34 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 903de270f2db..5e3a1e2095b0 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -103,6 +103,7 @@ gt-y += \
>  	gt/intel_gt_clock_utils.o \
>  	gt/intel_gt_irq.o \
>  	gt/intel_gt_pm.o \
> +	gt/intel_gt_pm_unpark_work.o \

This file isn't here?

Also pm stuff tends to have very nasty locking requirements, doing special
stuff like this in the backend tends to lead to really big surprises. I
think two options to make sure our locking design stays consistent:
- Lift this to generic code.
- expose some engine_pm_migt_get/put() calls which do have the right set
  of might_lock annoations, and call those in the generic code.

Imo the worst kernel abstractions are those where all implementations
look&act the same, except for locking. Unfortunately i915-gem code is full
of this stuff, and we need to stop this by enlisting lockdep to check the
contracts for us.
-Daniel

>  	gt/intel_gt_pm_irq.o \
>  	gt/intel_gt_requests.o \
>  	gt/intel_gtt.o \
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 7fe4d1559a81..c5d9548bfd00 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2056,7 +2056,12 @@ static int guc_context_pre_pin(struct intel_context *ce,
>  
>  static int guc_context_pin(struct intel_context *ce, void *vaddr)
>  {
> -	return __guc_context_pin(ce, ce->engine, vaddr);
> +	int ret = __guc_context_pin(ce, ce->engine, vaddr);
> +
> +	if (likely(!ret && !intel_context_is_barrier(ce)))
> +		intel_engine_pm_get(ce->engine);
> +
> +	return ret;
>  }
>  
>  static void guc_context_unpin(struct intel_context *ce)
> @@ -2067,6 +2072,9 @@ static void guc_context_unpin(struct intel_context *ce)
>  
>  	unpin_guc_id(guc, ce, true);
>  	lrc_unpin(ce);
> +
> +	if (likely(!intel_context_is_barrier(ce)))
> +		intel_engine_pm_put(ce->engine);
>  }
>  
>  static void guc_context_post_unpin(struct intel_context *ce)
> @@ -3002,8 +3010,30 @@ static int guc_virtual_context_pre_pin(struct intel_context *ce,
>  static int guc_virtual_context_pin(struct intel_context *ce, void *vaddr)
>  {
>  	struct intel_engine_cs *engine = guc_virtual_get_sibling(ce->engine, 0);
> +	int ret = __guc_context_pin(ce, engine, vaddr);
> +	intel_engine_mask_t tmp, mask = ce->engine->mask;
> +
> +	if (likely(!ret))
> +		for_each_engine_masked(engine, ce->engine->gt, mask, tmp)
> +			intel_engine_pm_get(engine);
>  
> -	return __guc_context_pin(ce, engine, vaddr);
> +	return ret;
> +}
> +
> +static void guc_virtual_context_unpin(struct intel_context *ce)
> +{
> +	intel_engine_mask_t tmp, mask = ce->engine->mask;
> +	struct intel_engine_cs *engine;
> +	struct intel_guc *guc = ce_to_guc(ce);
> +
> +	GEM_BUG_ON(context_enabled(ce));
> +	GEM_BUG_ON(intel_context_is_barrier(ce));
> +
> +	unpin_guc_id(guc, ce, true);
> +	lrc_unpin(ce);
> +
> +	for_each_engine_masked(engine, ce->engine->gt, mask, tmp)
> +		intel_engine_pm_put(engine);
>  }
>  
>  static void guc_virtual_context_enter(struct intel_context *ce)
> @@ -3040,7 +3070,7 @@ static const struct intel_context_ops virtual_guc_context_ops = {
>  
>  	.pre_pin = guc_virtual_context_pre_pin,
>  	.pin = guc_virtual_context_pin,
> -	.unpin = guc_context_unpin,
> +	.unpin = guc_virtual_context_unpin,
>  	.post_unpin = guc_context_post_unpin,
>  
>  	.ban = guc_context_ban,
> -- 
> 2.28.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
