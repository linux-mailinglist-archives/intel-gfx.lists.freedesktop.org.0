Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 085F13EA6CC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 16:50:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDC016E418;
	Thu, 12 Aug 2021 14:49:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc2b.google.com (mail-oo1-xc2b.google.com
 [IPv6:2607:f8b0:4864:20::c2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA1576E40D
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 14:49:50 +0000 (UTC)
Received: by mail-oo1-xc2b.google.com with SMTP id
 t1-20020a4a54010000b02902638ef0f883so1842078ooa.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 07:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iVkifOaP3K80Xt6f+SofaTJpFviJzMqV3znDYgObX2Y=;
 b=TGX9ILMfODFhlubNNODiUHZJd4n4pl8tAN3JkQQrms6z331ol/JMVwbOPgyIzThIy4
 T/1ITYVaoLkmiw5517oHrYgVz08dRCX0YVww6NPkdLQ79ctRq5by3ZB67AhLDvCdwxwh
 5y/D6mHg5GYr7kJtLLjoJIVdNFz9hs/5Gdu78=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iVkifOaP3K80Xt6f+SofaTJpFviJzMqV3znDYgObX2Y=;
 b=rwHppPSe8vPauj0hRwLNlFLZqoX1CIoltUlmzyzqqyya14b8ls4HCxFTHvjjXjhzHr
 gKH7eZ8caTE09lnTPqI9K9+9BCgk+SRLqj235frbbVSliiapmDekOdzP1qGm72PzRtVz
 s14ejYXlZcALQsPO+zkR9nIvWnNKLQfkAud6pFd3tyCG6aRKBPqFyBFNwn6UyNC0c8QP
 ZAsnRBiWivQzDfW4YKsYfdcBcc6A6ZDYbjVycxswk8iFdNmzM40xBAXENfydTjVSH5SA
 R0IZBvZQiOShnNKbDFQ2bnlJro8HgqocVnfvJ8aUn421BcwAHvM8scZJu6qsU+QZHy8v
 cADg==
X-Gm-Message-State: AOAM530ID6w9qSi0c3X3+16NXOYliB1ZE26rLzFNCWjoUftZPsrEHIh7
 skKbqbNyoLU5vkYea4nnyXD8VQN1xExSrJlqxLaEwQ==
X-Google-Smtp-Source: ABdhPJz9COTt8yFv4jZ73owkw+LEgbbFwyAZDbExechLjb9f3jLOKYotwiwXb31RVR6hXYS1gF0oXVpFliAa04k7leg=
X-Received: by 2002:a4a:b006:: with SMTP id f6mr1699214oon.85.1628779789999;
 Thu, 12 Aug 2021 07:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210812124452.622233-1-maarten.lankhorst@linux.intel.com>
 <20210812124452.622233-2-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210812124452.622233-2-maarten.lankhorst@linux.intel.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 12 Aug 2021 16:49:39 +0200
Message-ID: <CAKMK7uGMqYbiqZqV4gUy1KMbBCX=ZAGf-vT69SP9LbZU3hcSiQ@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add pci ids and uapi for DG1
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

On Thu, Aug 12, 2021 at 2:44 PM Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> DG1 has support for local memory, which requires the usage of the
> lmem placement extension for creating bo's, and memregion queries
> to obtain the size. Because of this, those parts of the uapi are
> no longer guarded behind FAKE_LMEM.
>
> According to the pull request referenced below, mesa should be mostly
> ready for DG1. VK_EXT_memory_budget is not hooked up yet, but we
> should definitely just enable the uapi parts by default.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> References: https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/11584
> Cc: Jordan Justen jordan.l.justen@intel.com
> Cc: Jason Ekstrand jason@jlekstrand.net

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_create.c | 3 ---
>  drivers/gpu/drm/i915/i915_pci.c            | 1 +
>  drivers/gpu/drm/i915/i915_query.c          | 3 ---
>  3 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 23fee13a3384..1d341b8c47c0 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -347,9 +347,6 @@ static int ext_set_placements(struct i915_user_extension __user *base,
>  {
>         struct drm_i915_gem_create_ext_memory_regions ext;
>
> -       if (!IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM))
> -               return -ENODEV;
> -
>         if (copy_from_user(&ext, base, sizeof(ext)))
>                 return -EFAULT;
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 1bbd09ad5287..93ccdc6bbd03 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1115,6 +1115,7 @@ static const struct pci_device_id pciidlist[] = {
>         INTEL_RKL_IDS(&rkl_info),
>         INTEL_ADLS_IDS(&adl_s_info),
>         INTEL_ADLP_IDS(&adl_p_info),
> +       INTEL_DG1_IDS(&dg1_info),
>         {0, 0, 0}
>  };
>  MODULE_DEVICE_TABLE(pci, pciidlist);
> diff --git a/drivers/gpu/drm/i915/i915_query.c b/drivers/gpu/drm/i915/i915_query.c
> index e49da36c62fb..5e2b909827f4 100644
> --- a/drivers/gpu/drm/i915/i915_query.c
> +++ b/drivers/gpu/drm/i915/i915_query.c
> @@ -432,9 +432,6 @@ static int query_memregion_info(struct drm_i915_private *i915,
>         u32 total_length;
>         int ret, id, i;
>
> -       if (!IS_ENABLED(CONFIG_DRM_I915_UNSTABLE_FAKE_LMEM))
> -               return -ENODEV;
> -
>         if (query_item->flags != 0)
>                 return -EINVAL;
>
> --
> 2.32.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
