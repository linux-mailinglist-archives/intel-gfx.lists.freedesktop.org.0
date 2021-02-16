Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EDE831CE63
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Feb 2021 17:49:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2526E118;
	Tue, 16 Feb 2021 16:49:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9E4890AA;
 Tue, 16 Feb 2021 16:49:54 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id 81so10018030qkf.4;
 Tue, 16 Feb 2021 08:49:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XNJhSPevI3j9V9OyJTdVbR7uoFUVbJzjDDqRWXx3OTk=;
 b=Lt1N0XAtzCqGsxjxEQ1iqn4HAQ3f4r51sKSjoGpX7bg4y/1vMaaqN9PgOezOdZVOa9
 5BuNwi4AUMqan6IZV7kix/KCJN+bfovNWdZSWVIH9OE5EM2Aq5+KhtcPm21AdO542DSq
 4pZwgK+YKr9A6u8H5IrWunGF/ZuuI9YpiGZbks8albeP/jE3YrvXzv53V5weFP8AhZFZ
 9hnGPY4egX6SEr8OwkwH3CUxfCHrXXH8dJLtSDsNYsOtMyY9NNmLRbSomEptCymORe7x
 w4euDFl5AwYTz1sMURvSLnthYxDFayce3PWO5nbJ5VnjwOtmASXvK2c8eU47TLa6LEwh
 CT9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XNJhSPevI3j9V9OyJTdVbR7uoFUVbJzjDDqRWXx3OTk=;
 b=bCtKRSZADSHFXfaqKwzDh0SWCSYqHGsZkrr7RS0dLln8aC9hCX1fWS/j827mm9g07Q
 /WiolFUN8IFHpc5K7AYKcuJTEVxgx6VxfA2AkzBHtzdl6zZzHOV4yYHr+tbp9hxZdaVx
 ycszUvDFVfEr+3At6WHqmslrN1prCCk/syth5gn7d8ZfbMuQS3nXuQHL6vvE2J6XBBqK
 L2tGWcsEXJBWa8btliLyWaRpQUG/vsH/Kbl41i92hOQ5705ASwFgvSxo8PlY4NCvJxhI
 rnpn4B342GzyObO6QsPS3S+hJcnolPxrM8cJpK1bjVhH24N8dhIwuBscelOBJ1eWnZuv
 M34g==
X-Gm-Message-State: AOAM532tF4iS20+YisNCTTGO9aBSbCPrbYgmbC1VUCb1Jx7eLFCgroSK
 1UuOqLt4Cvin92FssFC7jA7MFQpswhnns/Muobc=
X-Google-Smtp-Source: ABdhPJyntfASxok/cLF0XkLrSGLROtM3vTYEhwlV8ELe5Gl2etvFbksJsdXQI6xcSy/coBcc2S03udbpQemZPnrgi34=
X-Received: by 2002:a37:be86:: with SMTP id
 o128mr20103733qkf.481.1613494194078; 
 Tue, 16 Feb 2021 08:49:54 -0800 (PST)
MIME-Version: 1.0
References: <20210216143220.98382-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210216143220.98382-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 16 Feb 2021 16:49:28 +0000
Message-ID: <CAM0jSHNkN+XTzeUuWPLj0g=rGRdBU9sxECeVbeaYgGZ+Lg2jkg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_exec_reloc: Verify
 relocations with pinned scanout framebuffers
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
Cc: igt-dev@lists.freedesktop.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 16 Feb 2021 at 14:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> In light of the VT-d workarounds, we may introduce padding around the
> scanout vma. This should not affect relocations referencing the scanout
> on !full-ppgtt where we leak the GGTT address of scanout to users.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>
> ---
>  tests/i915/gem_exec_reloc.c | 102 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
>
> diff --git a/tests/i915/gem_exec_reloc.c b/tests/i915/gem_exec_reloc.c
> index cc9b8cd6d..98960bb84 100644
> --- a/tests/i915/gem_exec_reloc.c
> +++ b/tests/i915/gem_exec_reloc.c
> @@ -26,7 +26,9 @@
>
>  #include "i915/gem.h"
>  #include "igt.h"
> +#include "igt_device.h"
>  #include "igt_dummyload.h"
> +#include "igt_kms.h"
>  #include "sw_sync.h"
>
>  IGT_TEST_DESCRIPTION("Basic sanity check of execbuf-ioctl relocations.");
> @@ -1286,6 +1288,83 @@ static void concurrent(int i915, int num_common)
>         igt_assert_eq(result, 0);
>  }
>
> +static uint32_t
> +pin_scanout(igt_display_t *dpy, igt_output_t *output, struct igt_fb *fb)
> +{
> +       drmModeModeInfoPtr mode;
> +       igt_plane_t *primary;
> +
> +       mode = igt_output_get_mode(output);
> +
> +       igt_create_pattern_fb(dpy->drm_fd, mode->hdisplay, mode->vdisplay,
> +                             DRM_FORMAT_XRGB8888,
> +                             LOCAL_I915_FORMAT_MOD_X_TILED, fb);
> +
> +       primary = igt_output_get_plane_type(output, DRM_PLANE_TYPE_PRIMARY);
> +       igt_plane_set_fb(primary, fb);
> +
> +       igt_display_commit2(dpy, COMMIT_LEGACY);
> +
> +       return fb->gem_handle;
> +}
> +
> +static void scanout(int i915,
> +                   igt_display_t *dpy,
> +                   const struct intel_execution_engine2 *e)

Missing feeding the engine into the execbuf?

I didn't really understand all the specifics of the kms stuff, but in
terms of coverage, I think this makes sense,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
