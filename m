Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECFB49F6C6
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:00:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2469710EFD2;
	Fri, 28 Jan 2022 10:00:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C89C10EFD2
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:00:53 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id q5so5094235qkc.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 02:00:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PO4BisRC5lx/sn3Tbu1/jE4IQiEOXN4Uk0bI6QdFNdE=;
 b=UCm348yxcOApHp6WTwcKk9YWVy9prwP8nAnl3ee2vjjJIB4bmeHfsa2S6mO3RnyEMq
 E/dGQMZN2CoR3HR9zB0S9VTVITBb0gZg9r2RcRNNlJcbMw+B1eJzJa5hRzZdtR8h4uR7
 h+NBfwMXcAOryPtoeusLR9LiK97iZSA7qRh6qAfAHXK68hQ610hoB02RSV8lXprjRRmn
 +7juT/PrKRbSAnn9aeBGspPEP0d5rDrMTJN6A48RQLQ/AuWjVdS6VmHXvaue1j+FPUoo
 JGOzcCN3VQiDm70T93XygmwhyLT/61wdJuDYDNlIUJ4b6aNO+isALMsHm9+DZ3tvPbVc
 bhLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PO4BisRC5lx/sn3Tbu1/jE4IQiEOXN4Uk0bI6QdFNdE=;
 b=xYHnm8WFXB4+B7cvhA1wAXmUO7GgBqE9ZDdIKxsvPQAU2co7Y9dgMG62e9cHv9+HkU
 nt8JZBW/pfo8kFdOgQP2PC+42ppE4yroyFJ3ksCVxWIvr8kBNxWuLvzZqltK5KjsIL7w
 zmg6scgvClJm21cj+pKBMhMZyGinAby0AGU6phRv/e2De7R2QZldsXiN884munHaqS7a
 b3P2mvBDcGsScF+8rlvhPtMxpiyzLAMBDBexJiEnFwwk7bbzyGsY5ol8NLsmtY95aSBO
 dpAgepFCRgWrVWhNEKHjyZ/fXO04F9L1p3O0i7lp6kMCRpc+iwSuKtgb3/Wb1zlsuEkT
 WRtQ==
X-Gm-Message-State: AOAM531CYMY25f6XPEo/p0SqfEbzhyGP6pSe0MRrncJ1za7EUY9TVOGs
 WC/y32f2sOgXOHX6szGUla52odL/v+Hg9Q89cCKBbKo4Q10=
X-Google-Smtp-Source: ABdhPJwYT00N+6DriBRjt4y6ZyoN7JdWUSeHpjdXbyNzkDb4qAKGkTNOi/PQJQRVWuTZqESez2GDlF82NvPS0B46xGU=
X-Received: by 2002:a05:620a:4012:: with SMTP id
 h18mr5336845qko.82.1643364052315; 
 Fri, 28 Jan 2022 02:00:52 -0800 (PST)
MIME-Version: 1.0
References: <20220127234118.111015-1-michael.cheng@intel.com>
 <20220127234118.111015-3-michael.cheng@intel.com>
In-Reply-To: <20220127234118.111015-3-michael.cheng@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 28 Jan 2022 10:00:26 +0000
Message-ID: <CAM0jSHMq+Z8KUbF58FegqHRUiLqpZywsKpX=-RHeTKg69OriSg@mail.gmail.com>
To: Michael Cheng <michael.cheng@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Re-work
 invalidate_csb_entries
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
Cc: Mika Kuoppala <mika.kuoppala@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 27 Jan 2022 at 23:41, Michael Cheng <michael.cheng@intel.com> wrote:
>
> Re-work invalidate_csb_entries to use drm_clflush_virt_range. This will
> prevent compiler errors when building for non-x86 architectures.
>
> Signed-off-by: Michael Cheng <michael.cheng@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 960a9aaf4f3a..90b5daf9433d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1647,8 +1647,8 @@ cancel_port_requests(struct intel_engine_execlists * const execlists,
>
>  static void invalidate_csb_entries(const u64 *first, const u64 *last)
>  {
> -       clflush((void *)first);
> -       clflush((void *)last);
> +       drm_clflush_virt_range((void *)first, sizeof(*first));
> +       drm_clflush_virt_range((void *)last, sizeof(*last));

Could maybe drop the (void *) casting,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

>  }
>
>  /*
> --
> 2.25.1
>
