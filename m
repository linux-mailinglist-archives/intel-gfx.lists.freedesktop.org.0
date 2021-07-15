Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A74C83C9E81
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 14:19:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 291F86E830;
	Thu, 15 Jul 2021 12:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com
 [IPv6:2607:f8b0:4864:20::831])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C1A76E830
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 12:19:47 +0000 (UTC)
Received: by mail-qt1-x831.google.com with SMTP id g12so4367812qtb.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 05:19:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GA6S7JU88jkilvHX9itwwFW4kEn+9d3yEseoDTIdMsU=;
 b=oQCfX6YlREe3auW+xBtEPmz5iX4pG6etVlldGvJUhBcjyR4nem0ja08W4BsTQfOHhs
 QDMjUkSws9Wo3rYrSSNTB7bsjREmqnuTWOC41sFtQevQ4F2KYN6tuw5NeNZXMlEf0iCa
 IWxRLCt6XOX0xqad/qO5Ausq2Y6vjmn3D5zFc3bvN7Ju3hr1fUmXGKtwLxuG9Poczy8R
 FS8saaSN7EH5dBp9qSwEss+GxfCPNpSWOJaeJfRKA8LiQFj36p0CSDV96/9iUxk7TSXK
 A2j3yJvN5nspjnzURtzIJvGIyW1dH8S/3m6m6kCPYxxb7C+1rm2Y6vrMeUoAGExl36bf
 MA/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GA6S7JU88jkilvHX9itwwFW4kEn+9d3yEseoDTIdMsU=;
 b=Dsu+CmXTPTMyHEoJ0H3hEbEGfU84im6hSojApa6xrt/yXsuKqYbBggF7mPoC82D4to
 VduwGMxJbTLq89IsaVl0/FZ4nk9SIVdNPr1zjfS7DV63ao7fsFHKxluUbTGEbE9ZqDeb
 nsYpixjxm4GJxx9JqzipIx4yf87WFNZAcpv1dp2sNlbzVWUvFNOFKCu/3APTByyImShw
 Hpzxu3syX457CwP0jMbUUZLPihQuOmLYxlo2egxTTpPXiA7rmBEQngF+M881gewLqNv/
 ORM+hHI6vzCm1pnO99MRGd7/fit9hyPzDu38A6cOMtfyI8KQLVV/i7SCp6Vgcd5esn4V
 jFqQ==
X-Gm-Message-State: AOAM5300d1zspzy1nmgGmQ4NIFmhzG/Sjyn/EBMe/u8ikDA1yLmkq0j0
 W0yd9x8tWXvEh3JcZkUVG0E9xM9feXkaGlUzwxTZl3EGdgY=
X-Google-Smtp-Source: ABdhPJzXuvUUUYQpBoRtMVHGvE5uJ00zWnGYpwqRQRz2+umzxq3dYbfWTQbj7VdV6jgevkMu90PTur4fLeAREE6qTuw=
X-Received: by 2002:ac8:60d:: with SMTP id d13mr3782171qth.223.1626351586242; 
 Thu, 15 Jul 2021 05:19:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210715120842.806605-1-maarten.lankhorst@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 15 Jul 2021 13:19:17 +0100
Message-ID: <CAM0jSHMZStUCDFzcUrQPaAFXoBVxKmsmK2XQ4hALYHh5Y9p8Jw@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add missing docbook chapters
 for i915 uapi.
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

On Thu, 15 Jul 2021 at 13:08, Maarten Lankhorst
<maarten.lankhorst@linux.intel.com> wrote:
>
> I noticed when grepping for DOC: that those were defined
> in the header, but not actually used. Fix it by removing
> all chapters and the internal annotation, so the docbook
> generated chapters are used.
>
> Changes since v1:
> - Just remove the chapters, no need for those.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210709113842.651140-1-maarten.lankhorst@linux.intel.com

Indeed, it seems to still render correctly here.

Maybe update the commit title when pushing,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> ---
>  Documentation/gpu/driver-uapi.rst | 21 ---------------------
>  1 file changed, 21 deletions(-)
>
> diff --git a/Documentation/gpu/driver-uapi.rst b/Documentation/gpu/driver-uapi.rst
> index 27d0fbe33e87..4411e6919a3d 100644
> --- a/Documentation/gpu/driver-uapi.rst
> +++ b/Documentation/gpu/driver-uapi.rst
> @@ -5,25 +5,4 @@ DRM Driver uAPI
>  drm/i915 uAPI
>  =============
>
> -Engine Discovery uAPI
> ----------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Engine Discovery uAPI
> -
> -Context Engine Map uAPI
> ------------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Context Engine Map uAPI
> -
> -Virtual Engine uAPI
> --------------------
> -
> -.. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :doc: Virtual Engine uAPI
> -
> -i915_drm.h
> -----------
>  .. kernel-doc:: include/uapi/drm/i915_drm.h
> -   :internal:
> --
> 2.31.0
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
