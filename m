Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5289936ECD1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 16:56:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A575C6EEB9;
	Thu, 29 Apr 2021 14:56:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 790816EEB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 14:56:13 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id l1so9526590qtr.12
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 07:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tABIWXiitZdDEHIXHFBW11p/GxUAdJgmgM7XIKT1Mww=;
 b=E3d5a3Q/kzrTyE+a22oBci53BBTu+KGbciQ8VfylNx3c7qCzXY1oO9uRwt/lyTBRSn
 /kaxB8zeX6ym4FAcqJudeTw/jfgAGS+ShWGE+wS2tURWur4fNbcSRfzUAz68BgMxgKwW
 O+teC38j8QaAjWHcmwSrX1Oq9SWtkR3TJjPsb6q6Ga4NLWe7LWGk0y88SDigJ1+C5qtz
 8ZDOEiMPBeHEKERnKuEdeMoPXJpVCyQUGO+TQreoMYNcqyiD0jueuJpXuEOqS0caaO4t
 PqdZFMEQWXtKIPrTRZ5zjSwOtsPpR01SA3WAcqzqKDozZJiHiMaCBZSQWBjQh5+bV18G
 6mJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tABIWXiitZdDEHIXHFBW11p/GxUAdJgmgM7XIKT1Mww=;
 b=pkptg+pFjuoHoUS16MrpjECelmXiPgUwOHIZR1KdIBtQ4+aRpklS7i7dyICIteYP7M
 7DBm8kMX3gsjo2Fzf5M7kAzaSbF859wyYh6dNv+QlNLqID004ZSRXMZt/SUgs8GBshgo
 u+2+UCONYK2+GJ/VMfAvnhKLlvPhGQbhHNglk4xy7zEbrtLg71+JrP2H4giE1oaTrJUE
 KLOtoqXQ1RCyOH8UgWzdb5q6aczS1HsztiSLE/y/OxCxhQTFUyZ93ChZrIYCn0vt4qUL
 9OGyCm3p0w+Xrq8S6Myv4J8AHxtmgwnhKHKq3GNgDNUKBLXdidl9GH9SLqLixf89cGAC
 OaOg==
X-Gm-Message-State: AOAM533hd/dASeGeMZlw2nlhnorvSli6e1F0XyE26w/DwpPLkv1E6CCB
 utapPw7+b9AtXsI7YKnu/8gnCGJFRxP8h/fciy03DD2msOw=
X-Google-Smtp-Source: ABdhPJxcGBctety2D6ChDvasaGyi5QKK6tDJ6Y+nMr9ssxaabyLlJCEeyycCxtwrMqrQ5nmT8d0G0irVHMBLuTLXEzM=
X-Received: by 2002:a05:622a:1354:: with SMTP id
 w20mr32433358qtk.223.1619708172658; 
 Thu, 29 Apr 2021 07:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210429101036.1086461-1-maarten.lankhorst@linux.intel.com>
 <20210429101036.1086461-4-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210429101036.1086461-4-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 29 Apr 2021 15:55:46 +0100
Message-ID: <CAM0jSHOkzkt68w60x8WyqHTyU+456eSt=R=6jnM8gDHUk0=MRg@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Pass ww ctx to pin_map, v2.
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

On Thu, 29 Apr 2021 at 11:10, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> This will allow us to explicitly pass the ww to pin_pages,
> when it starts taking it.
>
> This allows us to finally kill off the explicit passing of ww
> by retrieving it from the obj.
>
> Changes since v1:
> - Rename 'ret' to ptr, fix error handling of return ptr.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

<snip>

> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -65,7 +65,7 @@ int map_pt_dma_locked(struct i915_address_space *vm, struct drm_i915_gem_object
>         void *vaddr;
>
>         type = i915_coherent_map_type(vm->i915, obj, true);
> -       vaddr = i915_gem_object_pin_map(obj, type);
> +       vaddr = i915_gem_object_pin_map(obj, NULL, type);

Don't we need to pass the ww here? For all our page-tables this is
both our allocate and map for the backing page(lmem or smem), so at
least for the locked variant here would it not make sense to pass the
ww from the vma_pin() etc, in case we need to evict stuff?

>         if (IS_ERR(vaddr))
>                 return PTR_ERR(vaddr);
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
