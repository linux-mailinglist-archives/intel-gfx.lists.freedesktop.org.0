Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 714C23621A5
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Apr 2021 16:05:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A51F6EB2F;
	Fri, 16 Apr 2021 14:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com
 [IPv6:2607:f8b0:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C4B6EA7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 14:05:48 +0000 (UTC)
Received: by mail-oi1-x22d.google.com with SMTP id b3so13173787oie.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Apr 2021 07:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=C+rlscYexZWyPJJB0luvYK5Jp5Lb4ntWaMwIlWDCxA8=;
 b=aqEUqE065VaA1LwsczKanpqB99xvbwu5/6XFHqu2VzFcLX9nLgtXhKEDAAh4z2Zgce
 2NHFkJMnhfweDT1DiVO+L+AjT8k8iY3oN0Cq7tSl4EYoQgh0RfsI5Q0rZb8mVZUCpv4n
 JeCWkypP+8h7Sq2WLNafD2IQbHUkcC+ISkbW8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=C+rlscYexZWyPJJB0luvYK5Jp5Lb4ntWaMwIlWDCxA8=;
 b=OTOfZwKSrdNIlAAEUHuHMcuHMwC2pywaVms5RMaXaTfkXKdqqGlpCjByVEti1K2eg4
 OXS9qmfNXFIl7ptaXR7bEkirMISDLbsdOhs6SkgRcn8lNTLRwfL1NM/wUg3Ihva9FGd5
 /80GpczgwpnNhc5LYvL+vZX6O5n/BIAaPZxnk54bYhMIZlwge92qSOQz3pdIKcmUTTVe
 yUAk+bgMRa6EEhiVgMKxgV/LhQO83Ls8mkuTzx6epikd41UHUzz7JvrSW73Q+gsGs/gv
 kvywbZ0bDBadMR8jIJ2p/rN2HDQUPorAlfUOEQJUJuydHRo/0gVb/AQJpJ+hBuGADig8
 1i7Q==
X-Gm-Message-State: AOAM532p6qaUsCXFzmzQDH1e4Iniv8vf8vJzFyPx4ckecYYxS4edmQoD
 1nn7VnN5RyyuNxD5vwVP/dbpu0Rt+GIR+j0RCZhsxg==
X-Google-Smtp-Source: ABdhPJzsyoD8rSn82Wk4RELA4g8ccBTtnaaqGRscH6DkkkViY9/e2f1QiufuNIB2MrmlFZn/9lkjcERLEypc1ghcFXY=
X-Received: by 2002:a05:6808:699:: with SMTP id
 k25mr1952151oig.101.1618581946705; 
 Fri, 16 Apr 2021 07:05:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210416103718.460830-1-matthew.auld@intel.com>
 <20210416103718.460830-2-matthew.auld@intel.com>
In-Reply-To: <20210416103718.460830-2-matthew.auld@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 16 Apr 2021 16:05:35 +0200
Message-ID: <CAKMK7uHKAiw6rVbFongjDDxa-SAJXt3+LSdOaj5Pgj4vHnqQmA@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/doc: add section for driver uAPI
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
 dri-devel <dri-devel@lists.freedesktop.org>,
 Kenneth Graunke <kenneth@whitecape.org>,
 Mesa Dev <mesa-dev@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 16, 2021 at 12:37 PM Matthew Auld <matthew.auld@intel.com> wrote:
>
> Add section for drm/i915 uAPI and pull in i915_drm.h.
>
> Suggested-by: Daniel Vetter <daniel@ffwll.ch>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Jordan Justen <jordan.l.justen@intel.com>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> Cc: Jason Ekstrand <jason@jlekstrand.net>
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: mesa-dev@lists.freedesktop.org

lgtm. Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

> ---
>  Documentation/gpu/driver-uapi.rst | 8 ++++++++
>  Documentation/gpu/index.rst       | 1 +
>  2 files changed, 9 insertions(+)
>  create mode 100644 Documentation/gpu/driver-uapi.rst
>
> diff --git a/Documentation/gpu/driver-uapi.rst b/Documentation/gpu/driver-uapi.rst
> new file mode 100644
> index 000000000000..4411e6919a3d
> --- /dev/null
> +++ b/Documentation/gpu/driver-uapi.rst
> @@ -0,0 +1,8 @@
> +===============
> +DRM Driver uAPI
> +===============
> +
> +drm/i915 uAPI
> +=============
> +
> +.. kernel-doc:: include/uapi/drm/i915_drm.h
> diff --git a/Documentation/gpu/index.rst b/Documentation/gpu/index.rst
> index ec4bc72438e4..b9c1214d8f23 100644
> --- a/Documentation/gpu/index.rst
> +++ b/Documentation/gpu/index.rst
> @@ -10,6 +10,7 @@ Linux GPU Driver Developer's Guide
>     drm-kms
>     drm-kms-helpers
>     drm-uapi
> +   driver-uapi
>     drm-client
>     drivers
>     backlight
> --
> 2.26.3
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
