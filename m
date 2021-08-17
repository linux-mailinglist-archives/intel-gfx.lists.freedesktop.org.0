Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F753EE9A2
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Aug 2021 11:21:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 762398989C;
	Tue, 17 Aug 2021 09:21:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 354EF898A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 09:21:31 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 a201-20020a1c7fd2000000b002e6d33447f9so1382838wmd.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Aug 2021 02:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=uh4VRS/T0smkQ973beOpdBffExTecp/MJ9La1DdXkdw=;
 b=GETX8i+RS6Ulm3acTx6EYsApbt/xkcltG0uoMf0QXmcieZu8Dbr5nItuGNWCg1Ei92
 DY3xhNX2zrPZ/8zTb1Gtzz8szsrvyTY0hWozaG1vBByqRFQO5CnscoJgr7t8GZIQfRv0
 Y+WOsCcag6+aiwEz4Qy6cW4HmLipmXB20tbQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=uh4VRS/T0smkQ973beOpdBffExTecp/MJ9La1DdXkdw=;
 b=e+kaJwVBC+OXE6b6fG9MNz6Y+s8WCGLKIiGpmAezrtHlOg+aBVFvrFPYQZJtw+c8CG
 Wl+/3wsJhwifhXx/HtptMndnARzM4ZfFuHwEd4yUFCKIt1PkdtLUUFIzHvxDKDf7Wj4v
 sBjkuoLPnLD+NnTq8VbwJuNpUPUMEuwYRQrpzi+DdoX5mkTU0apgXz898CnDxBmBy5Oq
 223+8BUsd2MatiTXSXxEJ3LRJmjWDw3qh5RluUjB237VUN0Egehntj+PvMZZxeGlnmm0
 q4sy05gnDWb7SB8qAJEaRAujeBAwV+MO2E8t+jyyfZpOyUXu9BdnBw1zVRMApZWO0mxQ
 jSQw==
X-Gm-Message-State: AOAM530048XnVpVW15FV7n3igVzKQy5h+kasl+4cna9mfW6PAJP3NCiF
 23C0RhIL7xnjcAqH1LZYAMJ9NQ==
X-Google-Smtp-Source: ABdhPJx8fB5Umd4nOHquu5E2DBsSWJQZ41RXcT0BOVqkRlh7KFkIJTn2vrorjbA+AzxLLzqEn+KLDA==
X-Received: by 2002:a05:600c:c2:: with SMTP id
 u2mr2298606wmm.106.1629192089752; 
 Tue, 17 Aug 2021 02:21:29 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id j36sm1326619wms.16.2021.08.17.02.21.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 02:21:29 -0700 (PDT)
Date: Tue, 17 Aug 2021 11:21:27 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Matthew Brost <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 daniel.vetter@ffwll.ch
Message-ID: <YRt/lynczP00iJqF@phenom.ffwll.local>
References: <20210816135139.10060-1-matthew.brost@intel.com>
 <20210816135139.10060-7-matthew.brost@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210816135139.10060-7-matthew.brost@intel.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 06/22] drm/i915/execlists: Do not propagate
 errors to dependent fences
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

On Mon, Aug 16, 2021 at 06:51:23AM -0700, Matthew Brost wrote:
> Progagating errors to dependent fences is wrong, don't do it. Selftest
> in following patch exposes this bug.

Please explain what "this bug" is, it's hard to read minds, especially at
a distance in spacetime :-)

> Fixes: 8e9f84cf5cac ("drm/i915/gt: Propagate change in error status to children on unhold")

I think it would be better to outright revert this, instead of just
disabling it like this.

Also please cite the dma_fence error propagation revert from Jason:

commit 93a2711cddd5760e2f0f901817d71c93183c3b87
Author: Jason Ekstrand <jason@jlekstrand.net>
Date:   Wed Jul 14 14:34:16 2021 -0500

    Revert "drm/i915: Propagate errors on awaiting already signaled fences"

Maybe in full, if you need the justification.

> Signed-off-by: Matthew Brost <matthew.brost@intel.com>
> Cc: <stable@vger.kernel.org>

Unless "this bug" is some real world impact thing I wouldn't put cc:
stable on this.
-Daniel
> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index de5f9c86b9a4..cafb0608ffb4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2140,10 +2140,6 @@ static void __execlists_unhold(struct i915_request *rq)
>  			if (p->flags & I915_DEPENDENCY_WEAK)
>  				continue;
>  
> -			/* Propagate any change in error status */
> -			if (rq->fence.error)
> -				i915_request_set_error_once(w, rq->fence.error);
> -
>  			if (w->engine != rq->engine)
>  				continue;
>  
> -- 
> 2.32.0
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
