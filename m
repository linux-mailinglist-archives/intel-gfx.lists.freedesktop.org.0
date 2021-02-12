Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B71319F27
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 13:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B016E0E5;
	Fri, 12 Feb 2021 12:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C68136E0E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 12:55:57 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id x3so6573481qti.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 04:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQCdrakspU5pQe0EjnYXYECPICl71qVEIlZnn9FuAVY=;
 b=VF7BgSNJEGBY5MEXmWF3ioN2DwPX3pkklQTclp9MpYzolWiZECg2SvJGXdswCJevqJ
 MnP1joPaaRPoOjm3bb54lcmFEtdpvQ0Iw0s0dcF9+E0o39MQffMecoa6xqXv1GqaR/on
 AgqFhCMYKYY3IMVjk/E98V1Nli8zsnh3YxqrePzlMRC0NxR0GOJbWJZlrt7mgsXaFSDW
 sSMlBmnK7TYhALdCAUuXlUAY9+JJZR78XmL/4F3AVl9n6iqYK9M+Bi2tHzFm4/OAYymR
 b6kX1zU8lJso1JWKJzvgIAJArJBb/HlBJU4xByayfkY74D6k46REkHr7jAt4uXSCXAV7
 ad7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQCdrakspU5pQe0EjnYXYECPICl71qVEIlZnn9FuAVY=;
 b=IrChTboEm3hPexrvwdwSLBDJAbqvtHsPiZ17MV89UwOzdE5yJrYinH/hEr1o5CBin8
 rbh4Kt4hzH4BmLyspYskVzL3CL+xY5rt2z/edwAoq9HDbdWTTfj/6QyYkg35boz1po2u
 vNwBgtszg23opDBIauZ1TF9zz87zH+08lCGAx1GaeNB/Ob0ZjJntYnYErI2enoVUwGgb
 4ZfnoXSBhrDLmXa+wzaAQnoFSyeEyxj+CsRO/G6okr23iyAqfkDY5Myk4c9oUpN3wjfP
 U6NffNhPSG3PMdhYX5k0bXYFbgfS9q5F8Urt7turLTYVbmK+lYbE2/xVwSDF062yVk37
 u0ig==
X-Gm-Message-State: AOAM532dFucwVOGa0ieMJU2JbUjnY+nEGnjMa3+ge1z47WT2YEcIFx2/
 YmX2b6agCyNcILbbFi9SZ1T4oqWXZqe8YBBNlx79RJQm
X-Google-Smtp-Source: ABdhPJyZ+GKxk7JRMjaiV8DjRxFqCysasIu6GLvzGZ7zp6RzUXWAPqhgs9urJAIvi/Su2zg/W53Uafi5Ph2e5Kiut3E=
X-Received: by 2002:ac8:4544:: with SMTP id z4mr2237643qtn.95.1613134556698;
 Fri, 12 Feb 2021 04:55:56 -0800 (PST)
MIME-Version: 1.0
References: <20210212102224.31060-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210212102224.31060-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 12 Feb 2021 12:55:30 +0000
Message-ID: <CAM0jSHMmyaFfObuQMhKrsyiEtVW9M8U4KSGVLpk+T1czF=22dQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Wrap all access to
 i915_vma.node.start|size
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

On Fri, 12 Feb 2021 at 10:22, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> We already wrap i915_vma.node.start for use with the GGTT, as there we
> can perform additional sanity checks that the node belongs to the GGTT
> and fits within the 32b registers. In the next couple of patches, we
> will introduce guard pages around the objects _inside_ the drm_mm_node
> allocation. That is we will offset the vma->pages so that the first page
> is at drm_mm_node.start + vma->guard (not 0 as is currently the case).
> All users must then not use i915_vma.node.start directly, but compute
> the guard offset, thus all users are converted to use a
> i915_vma_offset() wrapper.
>
> The notable exceptions are the selftests that are testing exact
> behaviour of i915_vma_pin/i915_vma_insert.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---

<snip>

> @@ -562,10 +562,11 @@ void __i915_vma_set_map_and_fenceable(struct i915_vma *vma)
>         GEM_BUG_ON(!i915_vma_is_ggtt(vma));
>         GEM_BUG_ON(!vma->fence_size);
>
> -       fenceable = (vma->node.size >= vma->fence_size &&
> -                    IS_ALIGNED(vma->node.start, vma->fence_alignment));
> +       fenceable = (i915_vma_size(vma) >= vma->fence_size &&
> +                    IS_ALIGNED(i915_vma_offset(vma), vma->fence_alignment));
>
> -       mappable = vma->node.start + vma->fence_size <= i915_vm_to_ggtt(vma->vm)->mappable_end;
> +       mappable = (i915_vma_offset(vma) + vma->fence_size <=
> +                   i915_vm_to_ggtt(vma->vm)->mappable_end);

i915_ggtt_offset(vma) could be used here.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
