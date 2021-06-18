Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 212683AC0C1
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 04:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BAD06E855;
	Fri, 18 Jun 2021 02:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com
 [IPv6:2607:f8b0:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1673E6E855
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 02:29:36 +0000 (UTC)
Received: by mail-pg1-x532.google.com with SMTP id e33so6551020pgm.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 19:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=lfPVG5Rlds1gsdNwyYiwTk3qXAK1bjtNSBW/loIyjKY=;
 b=E2p6v27bJYXXFcPeI5HII06b35v9VeR4Y4LrX8rCAPy1EKcPKWRNCLSeoRvFB6gu7a
 20danzHU+5B4CO5YgjmOJsLR+X+AJ+glc5VcTxedFJ3oKqjyLWzZO24FXuUSB+0naqmE
 k6pwiekhhbjBwqo4/5qvEF6ACa0hCftM65IOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lfPVG5Rlds1gsdNwyYiwTk3qXAK1bjtNSBW/loIyjKY=;
 b=MZGNpe/8xMD31BET3SZwTuhFso6YB6Q575tECQQfx7JN4e2JYx4mwl9SE+k9A05e0v
 YylU3i+JbA/uHJ60Yz6mvUaVKb4HEmSBvSq02Crzmfo3Wf9J1PuAOq7huT9/7ksybkiU
 mb8b6VFwWoejTqgjacG5FodUSOxpv6mM5O4OC4aFTUAIpkGr3d4eXvJiVtf+nwQZ6eX9
 TBN/PhsPi/BTIRPZGVKpIL12Qd1QoNf9KkdqomSTJ22k6z4EJnKR/AUhmWUhwyeTzesd
 K42Tpi5qlclKIqRWFR2ZAJCNhrB4Tva7n9rs3AM4fBf0HbWmrb+xDvZJrXPqB8PEO0jX
 rmow==
X-Gm-Message-State: AOAM533L12t6uoLXJYyyuaXIkE5qcsnktYTxxfivtbGqvvgLwN8d6QLM
 CcErVXbq2Bk0X0WoszemBrqaOw==
X-Google-Smtp-Source: ABdhPJyS6c3QGhrzjMIrW+aGUG63njKnr2ncdaOY4gTWMcv6MJ1tkZvI9BCbGpvn07MueABqKDk/xQ==
X-Received: by 2002:a63:5c4a:: with SMTP id n10mr7829823pgm.279.1623983375774; 
 Thu, 17 Jun 2021 19:29:35 -0700 (PDT)
Received: from google.com ([2409:10:2e40:5100:51a0:fc:f202:9f8])
 by smtp.gmail.com with ESMTPSA id v7sm6368683pfi.187.2021.06.17.19.29.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 19:29:35 -0700 (PDT)
Date: Fri, 18 Jun 2021 11:29:30 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: Sergey Senozhatsky <senozhatsky@chromium.org>,
 Matthew Auld <matthew.william.auld@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Airlie <airlied@linux.ie>, Chris Wilson <chris@chris-wilson.co.uk>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Message-ID: <YMwFCoHzjnuH80p6@google.com>
References: <YMdPcWZi4x7vnCxI@google.com> <YMuGGqs4cDotxuKO@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YMuGGqs4cDotxuKO@phenom.ffwll.local>
Subject: Re: [Intel-gfx] drm/i915: __GFP_RETRY_MAYFAIL allocations in stable
 kernels
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On (21/06/17 19:27), Daniel Vetter wrote:
> > 
> > So can all allocations in gen8_init_scratch() use
> > 	GFP_KERNEL | __GFP_RETRY_MAYFAIL | __GFP_NOWARN
> 
> Yeah that looks all fairly broken tbh. The only thing I didn't know was
> that GFP_DMA32 wasn't a full gfp mask with reclaim bits set as needed. I
> guess it would be clearer if we use GFP_KERNEL | __GFP_DMA32 for these.

Looks good.

> The commit that introduced a lot of this, including I915_GFP_ALLOW_FAIL
> seems to be
> 
> commit 1abb70f5955d1a9021f96359a2c6502ca569b68d
> Author: Chris Wilson <chris@chris-wilson.co.uk>
> Date:   Tue May 22 09:36:43 2018 +0100
> 
>     drm/i915/gtt: Allow pagedirectory allocations to fail
> 
> which used a selftest as justification, not real world workloads, so looks
> rather dubious.

Exactly, the commit we landed internally partially reverts 1abb70f5955
in 4.19 and 5.4 kernels. I don't mind I915_GFP_ALLOW_FAIL and so on, I
kept those bits, but we need reclaim. I can reproduce cases when order:0
allocation fails with
	__GFP_HIGHMEM|__GFP_RETRY_MAYFAIL
but succeeds with
	GFP_KERNEL|__GFP_HIGHMEM|__GFP_RETRY_MAYFAIL


ON a side note, I'm not very sure if __GFP_RETRY_MAYFAIL is actually
needed. Especially seeing it in syscalls is a bit uncommon:

  drm_ioctl()
   i915_gem_context_create_ioctl()
    i915_gem_create_context()
     i915_ppgtt_create()
      setup_scratch_page()           // __GFP_RETRY_MAYFAIL

But with GFP_KERNEL at least it tries to make some reclaim progress
between retries, so it seems to be good enough.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
