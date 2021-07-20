Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE4D3CF6F3
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jul 2021 11:35:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB8BF89BD2;
	Tue, 20 Jul 2021 09:35:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D8289BD2;
 Tue, 20 Jul 2021 09:35:02 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id a80so8069835qkg.11;
 Tue, 20 Jul 2021 02:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OpBx4nqEQ3fNxUhW0OxZj99Mgw1fdvXi0OIbVtx1wWQ=;
 b=fiJToFyoyFhuBbBAs/Qr6MYDgaHE0q0UsyxH+h1Lc2XEmjiJbzYOG9OPOlaD4nAfN9
 7PZAL6oYlHbxKO+v4xvDQT9YMWuBeJ+2vdmuGC9jSLhXUTNbvcXprDOTd5+KAh1P8xkS
 0/uOYxEz1yRqV/nb8VWembZv74IJRr+oEDcmzASofurcgcmzbz3Fg5de2nso6Qc3jrNw
 v3fPKNuydahOsnq+CuT4rbF67WUZ195wmobeH28hNe4lCs2+UhVYTR1xPwfusEZ9Jm2C
 +21OB1VBXkHmC3aphPfv3OlWMJ7roxhepLNQphX7FVHEskDIRSiXScOXtPZVfhfDkgtn
 9ylw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OpBx4nqEQ3fNxUhW0OxZj99Mgw1fdvXi0OIbVtx1wWQ=;
 b=OXsLd0L+/jGehjwcvGHT1eNutZAPVQTrpshF62J7CHsMKhq6gKpRrE4ZDq6sTnEkDe
 /GzswPE6OeNON/TwysHIOstMOYB3fscYZxPyNeCoW+VcUFYn8jqGqhbqEvTtOFH33cdl
 NKfGiBsKDDmQGrlJcMIpFfSPkJdAb1RUB6++mL6agpkLrHUqdFtPfcbqWeKSwPx0xx9a
 toT+khimxnhi3IWPB9IQT82dyPvqIeuaT0qm9SjIPvsTIOhywNu4XjQvo80HHQv57Ohv
 78aUsIY5jefm5lp8ipZ4XV9ZgtIL6KpNWhxeWZFknN3dH5knrUnOVJw98JtnlA7BIwhm
 IskA==
X-Gm-Message-State: AOAM530NEFFn32bkwyJ0R1NjkmSyGlZnbsc0tQgG3whFsiW8IyKl/1Lc
 r1qM+PNA+7sKH7wR/KP7xiDNjmpL8fyxP7w7+1hGS9CHez4=
X-Google-Smtp-Source: ABdhPJxYYt7d+Lz/E+TN9N4Ld49rF1LVqAEMS9dimD2V5MixJfOGHgzhZy3ewPm/uNAib220lGVAmQJKOFPdFqVvhOg=
X-Received: by 2002:a05:620a:a19:: with SMTP id
 i25mr28125061qka.426.1626773701791; 
 Tue, 20 Jul 2021 02:35:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-4-jason@jlekstrand.net>
In-Reply-To: <20210715223900.1840576-4-jason@jlekstrand.net>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 20 Jul 2021 10:34:35 +0100
Message-ID: <CAM0jSHPKaFkT=U-Ra1V8HS88ciAKhQ32ZZtBDkHutH74P5i8BQ@mail.gmail.com>
To: Jason Ekstrand <jason@jlekstrand.net>
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/gem: Unify user object creation
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Jul 2021 at 23:39, Jason Ekstrand <jason@jlekstrand.net> wrote:
>
> Instead of hand-rolling the same three calls in each function, pull them
> into an i915_gem_object_create_user helper.  Apart from re-ordering of
> the placements array ENOMEM check, the only functional change here
> should be that i915_gem_dumb_create now calls i915_gem_flush_free_objects
> which it probably should have been calling all along.
>
> Signed-off-by: Jason Ekstrand <jason@jlekstrand.net>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_create.c | 106 +++++++++------------
>  1 file changed, 43 insertions(+), 63 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_create.c b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> index 391c8c4a12172..69bf9ec777642 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_create.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_create.c
> @@ -11,13 +11,14 @@
>  #include "i915_trace.h"
>  #include "i915_user_extensions.h"
>
> -static u32 object_max_page_size(struct drm_i915_gem_object *obj)
> +static u32 object_max_page_size(struct intel_memory_region **placements,
> +                               unsigned int n_placements)
>  {
>         u32 max_page_size = 0;
>         int i;
>
> -       for (i = 0; i < obj->mm.n_placements; i++) {
> -               struct intel_memory_region *mr = obj->mm.placements[i];
> +       for (i = 0; i < n_placements; i++) {
> +               struct intel_memory_region *mr = placements[i];
>
>                 GEM_BUG_ON(!is_power_of_2(mr->min_page_size));
>                 max_page_size = max_t(u32, max_page_size, mr->min_page_size);
> @@ -81,22 +82,35 @@ static int i915_gem_publish(struct drm_i915_gem_object *obj,
>         return 0;
>  }
>
> -static int
> -i915_gem_setup(struct drm_i915_gem_object *obj, u64 size)
> +static struct drm_i915_gem_object *
> +i915_gem_object_create_user(struct drm_i915_private *i915, u64 size,
> +                           struct intel_memory_region **placements,
> +                           unsigned int n_placements)
>  {
> -       struct intel_memory_region *mr = obj->mm.placements[0];
> +       struct intel_memory_region *mr = placements[0];
> +       struct drm_i915_gem_object *obj;
>         unsigned int flags;
>         int ret;
>
> -       size = round_up(size, object_max_page_size(obj));
> +       i915_gem_flush_free_objects(i915);
> +
> +       obj = i915_gem_object_alloc();
> +       if (!obj)
> +               return ERR_PTR(-ENOMEM);
> +
> +       size = round_up(size, object_max_page_size(placements, n_placements));
>         if (size == 0)
> -               return -EINVAL;
> +               return ERR_PTR(-EINVAL);
>
>         /* For most of the ABI (e.g. mmap) we think in system pages */
>         GEM_BUG_ON(!IS_ALIGNED(size, PAGE_SIZE));
>
>         if (i915_gem_object_size_2big(size))
> -               return -E2BIG;
> +               return ERR_PTR(-E2BIG);
> +
> +       ret = object_set_placements(obj, placements, n_placements);
> +       if (ret)
> +               goto object_free;

Thinking on this again, it might be way too thorny to expose
create_user as-is to other parts of i915, like we do in the last
patch. Since the caller will be expected to manually validate the
placements, otherwise we might crash and burn in weird ways as new
users pop up. i.e it needs the same validation that happens as part of
the extension. Also as new extensions arrive, like with PXP, that also
has to get bolted onto create_user, which might have its own hidden
constraints.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
