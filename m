Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D5A2FD766
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 18:46:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6DF66E3F9;
	Wed, 20 Jan 2021 17:46:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com
 [IPv6:2607:f8b0:4864:20::736])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4E846E3F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 17:46:37 +0000 (UTC)
Received: by mail-qk1-x736.google.com with SMTP id b64so26107674qkc.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 09:46:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5GEUEQI5DAgZL9yeWXJcqyV6E8eY6Pn16y7xDglJjVc=;
 b=EmYRFK6gKNsc07ptAaax49EUGzffGg/Qfg4OtRWYs25fuzz7LJvnJMTD4JZuATOtvE
 j7/gabl2W8mvEMlPpAVEVjxxtoDWc+IzgO7LRdRWYc64/36IAl+/tFz02oYHadH4iwth
 kpnJ8Izz5QlsROc2UAXYCd4flXPsrtweyWj32rY8JJaHyElP9c3UbRqZGwwMVCjuXLej
 UyxqmTJuo8IZVRmQHWLlNkl9bcnvZ9fO6XQL0aCBOqp1mypIPFupVkAxDAG0hOgP1rcL
 nHP9sXx2wvKCdaNpeurRvyAZZkJ4zymF77KIGeImnQqaZp+uEA8q2C7Q/hmnDrVUAknJ
 AKYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5GEUEQI5DAgZL9yeWXJcqyV6E8eY6Pn16y7xDglJjVc=;
 b=leM97dEAUYxeciuDFtrz3+mY2VnZ9Cauqy9hGSTRvXrRijRlA1/FQEkeeWyQtC/JHj
 g0jTtMvLIBig/uN86GvIt8ThdIq7XYZc0ZJMR77yheQNda7VyVlsD9tmkqOSXe2gOWs1
 yJHcm4V39HcFezLnD/GhIkwVo1Di50x6pQI7TPC6i9zeg4EqXctpcZFfAGDzVzlY48Ue
 5oGW/PVnO9KLkLbHmvaeYwpQmmB2au3yqQ9j9OMp+h/EkmHzQiNjnO0M1kA+oZS5Y7+d
 RjhmoztUsKBfGrPSmH324cyH+we5IaZBu/JKZr1OI0dtFvU2HmH8EOJ5oellE+IaST8q
 MetQ==
X-Gm-Message-State: AOAM530Wxh9aJijpWZCOTt0C744gRzKzL79drcqLlch363MGjbkZCMCv
 2NryiE69U1pki7S27cNuhBX2t/pw9dkxWUi6rj0=
X-Google-Smtp-Source: ABdhPJzl3CuItPC25ABnRviIJglFAZ+oGtSQoGbriVHke5sEuLTzJ8UJBFBNnEMiOLDeXdssbt/YzqvccXwsCaA9Fvc=
X-Received: by 2002:a05:620a:12fa:: with SMTP id
 f26mr6365154qkl.327.1611164797043; 
 Wed, 20 Jan 2021 09:46:37 -0800 (PST)
MIME-Version: 1.0
References: <20210120154019.5146-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210120154019.5146-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 20 Jan 2021 17:46:10 +0000
Message-ID: <CAM0jSHPUoT2eKs0MgUoJ9UBB96hgtZGmQuZSDrE8vGkRSOXpoQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
 objects into any device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 20 Jan 2021 at 15:40, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> If we import a shmemfs object between devices, for example from
> Tigerlake to DG1, we can simply reuse the native object and its backing
> store.

Hmmm interesting, so does that include re-using the actual sg mapping
for the backing pages? Does that work out-of-the-box between different
devices assuming we have iommu enabled?

>
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index 04e9c04545ad..4816f08c4009 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -242,6 +242,13 @@ struct drm_gem_object *i915_gem_prime_import(struct drm_device *dev,
>                          */
>                         return &i915_gem_object_get(obj)->base;
>                 }
> +
> +               /*
> +                * If the object is in plain system memory, we can reuse the
> +                * same backing store in any device.
> +                */
> +               if (i915_gem_object_is_shmem(obj))
> +                       return &i915_gem_object_get(obj)->base;
>         }
>
>         /* need to attach */
> --
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
