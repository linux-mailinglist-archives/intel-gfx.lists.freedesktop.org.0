Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6A93C26BF
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jul 2021 17:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5D46EA3D;
	Fri,  9 Jul 2021 15:21:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com
 [IPv6:2607:f8b0:4864:20::c30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 558026EA3D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jul 2021 15:21:55 +0000 (UTC)
Received: by mail-oo1-xc30.google.com with SMTP id
 j4-20020a4ac5440000b029025992521cf0so2341794ooq.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 09 Jul 2021 08:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XgUMEZC7zzPqe3lXJ84D8AB5n0MJf0wlwSj3XqQq1Iw=;
 b=JOWSaTralMJlRSIwwAjF31jYHTGwwMONr7NULHVXwfjuJO/wf5xm+MOZ1hc4/4lRxg
 hAND0+rFpiUG+4OyS1J2499lELxVOjk/hbYt7JZ//2/3GGPvjqGE2c18/mnC6cmiPrNC
 ge+1WA+VhY1elBRVKxhADMCLWpNDqi72BeafM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XgUMEZC7zzPqe3lXJ84D8AB5n0MJf0wlwSj3XqQq1Iw=;
 b=bbv3LD5hMmKwrJ2ugNTdUt+2qhoatc/Eks2s9aEscez0tK5DR3ux+fglbn1gPliMYM
 eqQYMse9pgiyaHx1aYyXSeVA6BDEs5pRE+uha+MD2+wF8BzqVWg12wstweAL+MnfArKK
 v4nNWkVESQOL58qsKkuy6pYdUE0xfyBFHsQAittIPtbMmwkdFzn4ZKU/ureGi0BCJBYC
 UKKNJ1wxMIWh8GaHy0XgToG649W8ryIr2Ka2lDmAocWOjYqV7nOhnN1r4FrhY4CVlzuf
 MSoFgrcPEcEcuaUloiSJsa1+qxjofjPl5To6lbb1BNZKjjS874cOHIX6RLA3oZKs6PMm
 c3jg==
X-Gm-Message-State: AOAM530kjLxFHREh1Aag5BsERfEBTpVIewYB+h1uwIYqoqsBaKq1Y2kv
 Bv/ukcSnrhoM3hYzo1GyHlUChwm/WaN4PCM1bwz3gQ==
X-Google-Smtp-Source: ABdhPJwbWj+IDHYMwj/6a6EAhkfxdlHypamNntcaGrLKWGkR3RwOUphzgyyTk27TVYI9U0fA0v+rJpQ6hKIyqSzvQZ4=
X-Received: by 2002:a4a:ab07:: with SMTP id i7mr27589713oon.89.1625844114494; 
 Fri, 09 Jul 2021 08:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210709115420.25381-1-anshuman.gupta@intel.com>
In-Reply-To: <20210709115420.25381-1-anshuman.gupta@intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 9 Jul 2021 17:21:43 +0200
Message-ID: <CAKMK7uFcaV2YkBX-1-_E4-zajS-kMFo23bKpFVLiZdrzPBMOnw@mail.gmail.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: xelpd lpsp capability
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 9, 2021 at 2:12 PM Anshuman Gupta <anshuman.gupta@intel.com> wrote:
>
> Extend i915_lpsp_capability sysfs to xelpd and future platforms.

You're talking about sysfs but the patch is toucing a _debugfs.c file.
Something is very, very wrong here, either the commit message, or
worse, the code that's there already.

If this is indeed sysfs it must be split out asap, and ideally also
documented and all that, because sysfs is uapi.
-Daniel

>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af9e58619667..75d991a0707e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2255,6 +2255,11 @@ static int i915_lpsp_capability_show(struct seq_file *m, void *data)
>         if (connector->status != connector_status_connected)
>                 return -ENODEV;
>
> +       if (DISPLAY_VER(i915) >= 13) {
> +               LPSP_CAPABLE(encoder->port <= PORT_B);
> +               return 0;
> +       }
> +
>         switch (DISPLAY_VER(i915)) {
>         case 12:
>                 /*
> --
> 2.26.2
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
