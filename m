Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF94B36C5FE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 14:22:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A0E06E958;
	Tue, 27 Apr 2021 12:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3FD36E958
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 12:22:10 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id
 l189-20020a1cbbc60000b0290140319ad207so4571011wmf.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 05:22:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=izOSQ1kvX9gL9Zg8n0LFdd4SzHHu0HuwaaDS25wOkis=;
 b=Yevp3K3mSklPBxsGNSC1CXat/5bb317vZCMPew07kgxcGHSuYNmqXUyfcJhYUnJ+wt
 iM+L/D31uqFzk2jRYpmyuEyY1lHO0UadynLNktdJ6/sTeyG6BRqcrlJ0BmlFdKU4IOOm
 TJVuWnrZsAQCqlJxfLlxbrA3BaetKUKHew5z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=izOSQ1kvX9gL9Zg8n0LFdd4SzHHu0HuwaaDS25wOkis=;
 b=X+o5R6ajdOwYFH2LAtHw5eMxXXSCo2P1lOVprlL9uBWrMZJ1tks9JZkdDQS4oQk9Rt
 2ZadoeYPIHZpFBbTyPlBTX/jSFKnSPjTUHYJoJUFfjhVOeE75XHweiFaCj0NS20Y0+kG
 +u5vpecfNUxigU+vV4X7zlpPmTTRFonnxkXmpApTR8uFzMao/jcMiwMBJsCpK2x0yNxq
 UHfflepAiFxAD96OYHCdRFqXfXGg2ud3DqjS7+VUvG4AhVJ3IbiaScEZleHgGxw8XJkU
 BGS/0siMHVJXUtkzihjVEgod3s//EW3j6BRcNtnV5hi+5xckpmaGkgJ8Nt7ldefRa5JA
 oEAg==
X-Gm-Message-State: AOAM532K5lF7uwSlI5zStW4SLJCXPFHdGFere45WjkMiFzKvDZXGPy+a
 BqnybDcEsEuGSvqlOc0f8wSVBw==
X-Google-Smtp-Source: ABdhPJxByCio9m3RzJm1/JVqiUEu/jGJwVC31vnwKixI0AqPqAlhLH8PsS43l/Ccfot3/JWhHksZFA==
X-Received: by 2002:a05:600c:3581:: with SMTP id
 p1mr3967805wmq.35.1619526129659; 
 Tue, 27 Apr 2021 05:22:09 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 3sm10527987wms.30.2021.04.27.05.22.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Apr 2021 05:22:09 -0700 (PDT)
Date: Tue, 27 Apr 2021 14:22:07 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Emil Velikov <emil.l.velikov@gmail.com>
Message-ID: <YIgB76WmQijHCJeV@phenom.ffwll.local>
References: <20210427092018.832258-1-daniel.vetter@ffwll.ch>
 <20210427092018.832258-8-daniel.vetter@ffwll.ch>
 <CACvgo51rQJmHc1K-MSq-WLZkwVt34MY73csgEyxorrYsKPwQiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACvgo51rQJmHc1K-MSq-WLZkwVt34MY73csgEyxorrYsKPwQiA@mail.gmail.com>
X-Operating-System: Linux phenom 5.10.32scarlett+ 
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/modifiers: Enforce consistency
 between the cap an IN_FORMATS
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
Cc: Pekka Paalanen <pekka.paalanen@collabora.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Maxime Ripard <maxime@cerno.tech>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 27, 2021 at 12:32:19PM +0100, Emil Velikov wrote:
> Hi Daniel,
> 
> On Tue, 27 Apr 2021 at 10:20, Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> 
> > @@ -360,6 +373,9 @@ static int __drm_universal_plane_init(struct drm_device *dev,
> >   * drm_universal_plane_init() to let the DRM managed resource infrastructure
> >   * take care of cleanup and deallocation.
> >   *
> > + * Drivers supporting modifiers must set @format_modifiers on all their planes,
> > + * even those that only support DRM_FORMAT_MOD_LINEAR.
> > + *
> The comment says "must", yet we have an "if (format_modifiers)" in the codebase.
> Shouldn't we add a WARN_ON() + return -EINVAL (or similar) so people
> can see and fix their drivers?

This is a must only for drivers supporting modifiers, not all drivers.
Hence the check in the if. I did add WARN_ON for the combos that get stuff
wrong though (like only supply one side of the modifier info, not both).

> As a follow-up one could even go a step further, by erroring out when
> the driver hasn't provided valid modifier(s) and even removing
> config::allow_fb_modifiers all together.

Well that currently only exists to avoid walking the plane list (which we
need to do for validation that all planes are the same). It's quite tricky
code for tiny benefit, so I don't think it's worth it trying to remove
allow_fb_modifiers completely.

> Although for stable - this series + WARN_ON (no return since it might
> break buggy drivers) sounds good.
> 
> > @@ -909,6 +909,8 @@ struct drm_mode_config {
> >          * @allow_fb_modifiers:
> >          *
> >          * Whether the driver supports fb modifiers in the ADDFB2.1 ioctl call.
> > +        * Note that drivers should not set this directly, it is automatically
> > +        * set in drm_universal_plane_init().
> >          *
> >          * IMPORTANT:
> >          *
> The new note and the existing IMPORTANT are in a weird mix.
> Quoting the latter since it doesn't show in the diff.
> 
> If this is set the driver must fill out the full implicit modifier
> information in their &drm_mode_config_funcs.fb_create hook for legacy
> userspace which does not set modifiers. Otherwise the GETFB2 ioctl is
> broken for modifier aware userspace.
> 
> In particular:
> As the new note says "don't set it" and the existing note one says "if
> it's set". Yet no drivers do "if (config->allow_fb_modifiers)".
> 
> Sadly, nothing comes to mind atm wrt alternative wording.

Yeah it's a bit disappointing.

> With the WARN_ON() added or s/must/should/ in the documentation, the series is:

With my clarification, can you please recheck whether as-is it's not
correct?

Thanks, Daniel

> Reviewed-by: Emil Velikov <emil.velikov@collabora.com>
> 
> HTH
> -Emil

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
