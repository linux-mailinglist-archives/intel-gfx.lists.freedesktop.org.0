Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6562293F01
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Oct 2020 16:49:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83506ECEC;
	Tue, 20 Oct 2020 14:49:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com
 [IPv6:2607:f8b0:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F6476ECEC
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 14:49:08 +0000 (UTC)
Received: by mail-ot1-x343.google.com with SMTP id n15so1928304otl.8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Oct 2020 07:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3EDkJaXReHZirdmlv08203+sNL+F9dqaEqL6Q7c9aZM=;
 b=dL1MjXVyUk4f1YekNuSgu+L/w/SokpNJIzWY3gXOExqTf2fkFFPW6vzmu4Bmojj3Sh
 1Ib2AEDyPC4QCOWQee0IJHAu0f/6rVT3JCUlOojLZ/SQeJ+DKyekbdr75KLG/MyE/sII
 5R0S4ltOJ6p4F4MvnRjyI1LGgod7a2GldTcfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3EDkJaXReHZirdmlv08203+sNL+F9dqaEqL6Q7c9aZM=;
 b=I9LUTZhLGHwRPHmtM6Pi4Deh+KS33uSGJqpGYv0IkIh806a7CRzYrNCFEFYjqbYcKC
 lgwABNQ0ogovyIUvKv9U7EZL83NOVMGefKHBLPD0EmcWQPt09DgQTajeO6I/N6oE7+Mp
 tchAeLT0BoAnmWoBRioLTkY5RWJvyvereDysBl9qBqWWLAmues7faSWhMZvwSeBSb858
 ftouKg2xYqhL92fP1cz1B5Qvc+UY/cBD30x/QoQUQktdyxIBJ+I276dgLroa6TkBqeFO
 yVBbww0UJoTinC8tPdpkNqLtRdmbc9ZJWP5ON+I0OrS+zFbFt5CsNutBvBWAtkebCpD4
 L3mA==
X-Gm-Message-State: AOAM530YqRq5pTRKfXwVhJ/HP637vTHFNi9/bb8rQDk/UnoBtX7ueZyv
 C+pRa0l2Jj3ci7An9tWXAEgse+1r/wIzgo+3gDEoTA==
X-Google-Smtp-Source: ABdhPJygCvyuI2EdSfbdq6dr1vZn3/nU6XTCEsv1vdUarQWdDvUr5SDgAu8Gw54OCAshvnLNJoO/bET6Ad/THTm+SbU=
X-Received: by 2002:a05:6830:1647:: with SMTP id
 h7mr2097604otr.281.1603205347732; 
 Tue, 20 Oct 2020 07:49:07 -0700 (PDT)
MIME-Version: 1.0
References: <20201020143936.1089259-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20201020143936.1089259-1-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Tue, 20 Oct 2020 16:48:56 +0200
Message-ID: <CAKMK7uGzuqMgDm6M0pux2m1suzFtcm-1bq9NOrE4e3n+tTC8CA@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Sean Paul <sean@poorly.run>
Subject: Re: [Intel-gfx] [PATCH] drm/doc: Document legacy_cursor_update
 better
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Also cc Sean, who reviewed the msm patch to double down on the
not-so-awesome async solution (I think at least, I'm still not
entirely sure what's all going on there):

commit 2d99ced787e3d0f251fa370d2aae83cf2085a8d9
Author: Rob Clark <robdclark@chromium.org>
Date:   Thu Aug 29 09:45:16 2019 -0700

   drm/msm: async commit support

On Tue, Oct 20, 2020 at 4:39 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> It's the horror and shouldn't be used. Realized we're not clear on
> this in a discussion with Rob about what msm is doing to better
> support async commits.
>
> Cc: Rob Clark <robdclark@gmail.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> ---
>  include/drm/drm_atomic.h | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
>
> diff --git a/include/drm/drm_atomic.h b/include/drm/drm_atomic.h
> index d07c851d255b..413fd0ca56a8 100644
> --- a/include/drm/drm_atomic.h
> +++ b/include/drm/drm_atomic.h
> @@ -308,7 +308,6 @@ struct __drm_private_objs_state {
>   * struct drm_atomic_state - the global state object for atomic updates
>   * @ref: count of all references to this state (will not be freed until zero)
>   * @dev: parent DRM device
> - * @legacy_cursor_update: hint to enforce legacy cursor IOCTL semantics
>   * @async_update: hint for asynchronous plane update
>   * @planes: pointer to array of structures with per-plane data
>   * @crtcs: pointer to array of CRTC pointers
> @@ -336,6 +335,17 @@ struct drm_atomic_state {
>          * drm_atomic_crtc_needs_modeset().
>          */
>         bool allow_modeset : 1;
> +       /**
> +        * @legacy_cursor_update:
> +        *
> +        * Hint to enforce legacy cursor IOCTL semantics.
> +        *
> +        * WARNING: This is thoroughly broken and pretty much impossible to
> +        * implement correctly. Drivers must ignore this and should instead
> +        * implement &drm_plane_helper_funcs.atomic_async_check and
> +        * &drm_plane_helper_funcs.atomic_async_commit hooks. New users of this
> +        * flag are not allowed.
> +        */
>         bool legacy_cursor_update : 1;
>         bool async_update : 1;
>         /**
> --
> 2.28.0
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
