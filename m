Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 777FE4397DD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 15:51:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A5B89FDB;
	Mon, 25 Oct 2021 13:51:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com
 [IPv6:2607:f8b0:4864:20::c33])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E53489FE8
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 13:51:45 +0000 (UTC)
Received: by mail-oo1-xc33.google.com with SMTP id
 w9-20020a4adec9000000b002b696945457so3683567oou.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Oct 2021 06:51:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4VCrhWe5ZrfwX9CUdBZWlusEwEBGPfdtN1YeM+lr65Y=;
 b=Q+ssNDyYLIqpKTOkZTp4Vz7/Tdn+3IQfomTwHlXWvgx6+Gdu2+SgMAsrtGz5B218Ci
 Rnt2K8PtGPEzsyQhmZswy9TAZ3jGt1Km1kGJarffuezpOSXQlzq/de3KvAlkqO0wPszj
 71iXAsOU2+/e1E0OBMvlMWdEl1Vz+ociAm4EQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4VCrhWe5ZrfwX9CUdBZWlusEwEBGPfdtN1YeM+lr65Y=;
 b=xYIX/Oc3djKXG0G8lK8M7agyUR3iATuCxbEbOBZKoTkUS7BWyjYbH6Ac9NfRRjbcSk
 r2wzFap9wogGq32UMGXBJhmC7w58l1iXbf0f/sENAS4BVeG2PsORK/4yUi9UrAQB1xlT
 zlOVsrf0erD3+yf2nbMYHYyL/+xCUQakVweQuyrm193YBNWguPmbwWy0HdXGkgKIzprz
 vry8lifHiQNhffnyOV6A9aXWRdWQIh0WxpatIXXAyiyNhngRwgGCpNtC8VuM7xjp2UuD
 5LOmq+zvUwNjzYI08W/fbTpcPpDFtP0rG2xQabpEHTp+P/4munAOH0AWxdxPsz69KRCT
 kD/Q==
X-Gm-Message-State: AOAM532Q0VvYoqN1mYikqWVt5fbuE0mrWUG64RAaVb90azK2H4l4I41A
 qj4toHBDeHdwshIZagnPrhdohBujfLfxYSV5+osndg==
X-Google-Smtp-Source: ABdhPJyV9/aLaMtKOzsY8+JwNWr0UJJK32s3I3AmQhBUD9+uUBwJLdiFE8MUM8IfYASpuuDRaErFkJhMrRmUZ208BB8=
X-Received: by 2002:a4a:ae0b:: with SMTP id z11mr11750807oom.25.1635169904865; 
 Mon, 25 Oct 2021 06:51:44 -0700 (PDT)
MIME-Version: 1.0
References: <20211025134907.20078-1-joonas.lahtinen@linux.intel.com>
In-Reply-To: <20211025134907.20078-1-joonas.lahtinen@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 25 Oct 2021 15:51:33 +0200
Message-ID: <CAKMK7uHTdVY2VOGb89aKE1z_mwjMk5pmBmidNmVMX4xuLNqDxw@mail.gmail.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: "Intel graphics driver community testing & development"
 <intel-gfx@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Sean Paul <sean@poorly.run>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] MAINTAINERS: Add Tvrtko as drm/i915
 co-maintainer
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

On Mon, Oct 25, 2021 at 3:49 PM Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> Add Tvrtko Ursulin as a co-maintainer for drm/i915 driver.
> Tvrtko will bring added bandwidth and focus to the GT/GEM domain
> (drm-intel-gt-next).
>
> This will help with the increased driver maintenance efforts, allows
> alternating the drm-intel-gt-next pull requests and also should increase
> the coverage for the maintenance in general.
>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: dri-devel@lists.freedesktop.org

Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 98aa1f55ed41..07553156a1c2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -9361,6 +9361,7 @@ INTEL DRM DRIVERS (excluding Poulsbo, Moorestown and derivative chipsets)
>  M:     Jani Nikula <jani.nikula@linux.intel.com>
>  M:     Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>  M:     Rodrigo Vivi <rodrigo.vivi@intel.com>
> +M:     Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>  L:     intel-gfx@lists.freedesktop.org
>  S:     Supported
>  W:     https://01.org/linuxgraphics/
> --
> 2.31.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
