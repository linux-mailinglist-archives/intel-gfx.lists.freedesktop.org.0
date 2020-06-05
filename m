Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCA71F00EC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 22:22:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C0A989173;
	Fri,  5 Jun 2020 20:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12C0789173
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 20:22:51 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id y123so6330020vsb.6
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Jun 2020 13:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XZoFbXGCBP6rlTIaMqA0iqPgrVzt0a5UQLF03g5AIVM=;
 b=ftuUwu63PJTbN8oKgu7MTPKEsjref4XsYdP29chyqEOwJ1urqosVazXVTvwFvQhtoF
 AtBcId8bev/GFyFS2w+sm46Ju9+78kRR5AMEQYRYV993JHDGu3fYbP26BsLu2AbiCmDT
 92if4Qjr+DA2dxms1bOP6gsJ2B0c/PJGATzuFOPzXMICzBsBbNXuGO2R1st1/pyAXWzD
 +4M4PkhAb9mspZUhVtpKcAm45uGMI3zoClMFNUGxRe7qc9gi2e58d9yii2gHnTozEZyF
 cPzxd1TR7GYpcoSwxIRuvARhVv7fo0Ovi0xteJD6Ou2hNsji8uSes7YvkIvbSCGMlU80
 xdhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XZoFbXGCBP6rlTIaMqA0iqPgrVzt0a5UQLF03g5AIVM=;
 b=c8fh9iHwS9enRKHbVp184WllaAMlLQDgqpfmP/f9/4mS2XTRULbndcsm1LhOvPzzF8
 JM27HUOwhWqFaAtHyKu701gh8ttwa6xWJB/+1joa7/TrVA+0mCBy9882auJLxKrJ/ely
 x4Vt1xFQ0eUX7Xx7/ek5tOpBpiB6gSNNtCWqXmbOmTZ9qUgaPK6/+XF95gl6BsVubzUz
 vqe6lwYsA2n0Bb2lBN/jx5zeYPPgB8en1Ed+3uQDxEDk7GSWuAlf1UCMZKXPpK/mBYMl
 MsQ5XfsEHoY/FtYHRVPMPdghX6GsvZse98ud2ZnIBMQUe+z8Zc2dmya3VNBGtY29vuO7
 hjyA==
X-Gm-Message-State: AOAM533/V4mBHZhcU/qjiNdhXWj55WahkFh59ET7xn2tPPy+ugmXuK0T
 Za0FVYncm6EeLaK4ZYeHQAn7E68AXwhhdZPcDqbk2BUC
X-Google-Smtp-Source: ABdhPJy8hydXus443mJQpnSDcNCjT/uBxPnhHnO91wKvk55s8fIRC3rcNK/eWuS+Uief4x6ZKQZGSUt48czEGzCBRNU=
X-Received: by 2002:a67:22c1:: with SMTP id i184mr8444370vsi.119.1591388570192; 
 Fri, 05 Jun 2020 13:22:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200605200357.13069-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200605200357.13069-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 5 Jun 2020 21:22:24 +0100
Message-ID: <CAM0jSHNmuOx0696sdHefZCG7K5kFM-Wn4QxvUXt+9wmMcDv-PQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Delete unused code
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

On Fri, 5 Jun 2020 at 21:04, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Unused as of commit 9e0f9464e2ab ("drm/i915/gem: Async GPU relocations
> only"), but left behind.
>
> >> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:933:21: error: unused function 'unmask_page' [-Werror,-Wunused-function]
> static inline void *unmask_page(unsigned long p)
> ^
> >> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:938:28: error: unused function 'unmask_flags' [-Werror,-Wunused-function]
> static inline unsigned int unmask_flags(unsigned long p)
> ^
> >> drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:945:33: error: unused function 'cache_to_ggtt' [-Werror,-Wunused-function]
> static inline struct i915_ggtt *cache_to_ggtt(struct reloc_cache *cache)
>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
