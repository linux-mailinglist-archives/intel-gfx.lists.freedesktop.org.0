Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 537DB3CCF62
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jul 2021 10:29:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D7A89E9E;
	Mon, 19 Jul 2021 08:29:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com
 [IPv6:2607:f8b0:4864:20::233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E953B89D61
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 08:29:45 +0000 (UTC)
Received: by mail-oi1-x233.google.com with SMTP id h9so19912675oih.4
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Jul 2021 01:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I/U/F/FoGCwikPSNTinZDpXksxDgDl9adfNXfGBR7OU=;
 b=YVyQBerlcnS/dwMrvzX8Gq5MysLT3Xw3iYV7nQS4rqqlzb2FOXeTnYSBDIw3SMTI7T
 jjTWaOkXo+ELz+3bSKjJu0SgAtoc+UYOrowpJfgegK5m8NW7CRF5fw3fZ0Ab7FRSNX7r
 plg1mf/f0ji9u38M9LbWK3UhxiTW8mtPSXORs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I/U/F/FoGCwikPSNTinZDpXksxDgDl9adfNXfGBR7OU=;
 b=SJg0XgF6YfNEKJ3zgFTqUo/lrwgBAWg+qPCQ2EMJOh84tb2GKdl2sy8KcYlX2K7f0+
 RfGlmTZh88VUlg00rPbvfOniKVXiYudX0/NNdaDy45TZ8KIxM9Jgpzq0KwwytT1HzTuz
 F8wxLl8YRLAAlFiANOetiLoPrz0rEQQNpKeoQJvFMFRfkAAI80fQvFEQMSi6UWZMhx2k
 yf2NmnFXgoNb7u5QUXCRgrOQoIXz15DvqQjrc8Bu8UV5uUojmJiCXN52l/ej1NF/hPic
 GvzVSuw+BIaeO4KYQdrP38ZB25OUYfki2pfUT62A27ZcynuYmb5y4dL4RuKLj4pH+UBp
 jvFw==
X-Gm-Message-State: AOAM532xOFOJEVX4Jts4zczuDfVioQTwGU3Pz6i+DqaqthGZodFFYDhU
 fkMYX9iKA65jfmBAWJvvB9UQlBrrj+OLQ3A+tfEdxg==
X-Google-Smtp-Source: ABdhPJyDF2Zvihqlfib/G24hn8FKftpUajDO9Q2bpEudI0iDTQNgjSSYYhxBFgUqbK5fizWFUC1/K+G2TLSLMNE60oU=
X-Received: by 2002:aca:3085:: with SMTP id
 w127mr20468682oiw.101.1626683385258; 
 Mon, 19 Jul 2021 01:29:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210716224758.2162003-1-jason@jlekstrand.net>
In-Reply-To: <20210716224758.2162003-1-jason@jlekstrand.net>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 19 Jul 2021 10:29:34 +0200
Message-ID: <CAKMK7uEfh4zoxWQCvuGEmQH=_-rfO9mFa-yA3PLiJWbbnT_+rg@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Call i915_globals_exit()
 after i915_pmu_exit()
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jul 17, 2021 at 12:48 AM Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> We should tear down in the opposite order we set up.
>
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> Fixes: 537f9c84a427 ("drm/i915/pmu: Fix CPU hotplug with multiple GPUs")
> Cc: Daniel Vetter <daniel@ffwll.ch>

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 67696d7522718..50ed93b03e582 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1244,8 +1244,8 @@ static void __exit i915_exit(void)
>
>         i915_perf_sysctl_unregister();
>         pci_unregister_driver(&i915_pci_driver);
> -       i915_globals_exit();
>         i915_pmu_exit();
> +       i915_globals_exit();
>  }
>
>  module_init(i915_init);
> --
> 2.31.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
