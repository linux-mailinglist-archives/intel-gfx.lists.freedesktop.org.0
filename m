Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F2D3546BCA
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 19:44:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E522310E531;
	Fri, 10 Jun 2022 17:44:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A0BF10E531
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 17:44:16 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id i19so4102qvu.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 10:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=S2sBE3zRbmpgT6AxIaUV6PX3SQioL4nEuuSBq0R7yPI=;
 b=eaJ4wa1p0EhD6AniuLLqIyCMGFsu+KoKOgmSIuHfWbtCrMmJIwnyhrLxl/lPaM77Li
 1MnZ0m/BD2KHCTNOCarBW99Fjv5B4OuZIqzbCEMJl3RimaNxU2hgeV7JvDUU5rQdaGN6
 o73e5Ur7a2hvTJ/4/AZbfPUHZIiYxgpA8pOeQWnKXT0BSWYOknXBAmbPBRXqnw5jATdM
 nzNoTV0e62dmfSEtL/MRBnZ5HYSoW0OwgRhptywtO9AanGoIiSgfSLGmxLXNTum+D5vd
 XfDFDG8SSqaz/VNPzjMZlVsQVNl6GoWZYyOYa7PV9p/wLHONmxi8QX5I5tF1y3KQKU5L
 3Ovw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=S2sBE3zRbmpgT6AxIaUV6PX3SQioL4nEuuSBq0R7yPI=;
 b=UAZ6ujEFSFWnnskzAFSxxoioH0IRCDm3mCnyVUkHMKpeQWMmepkV1zZgYhlrkoJOSz
 q7KyFTfV4Uzt/OtbZMsQkL5KFK14pIEsbJ1KH8MzccEJ6I0biwK8Wnaiv6DYbu7PUKij
 YwtOzIpmLlTMmPkZNaqEYEewdTNOv+ou5dDp5nh/g8kZCeoLEL2gk/3CDwPuf2+iYT8R
 T80x/R/wc2jMkM7RfAtPZV398nXxRYWpEWAP2vWGmYfQPYfxRk1HWgWyJ5BulA3Dz9bA
 /efIDngzJ7ZpdYZTW9RLkFc6UjUavNL4pgUJ4APz+qW09cjZ7rtnHCFRi/VvJVRqWS8f
 6tvQ==
X-Gm-Message-State: AOAM53349DlStzHtAnR1ehGW0h/3pjICYvYxagebwp6vChfZeD60YNpD
 9uYLFFMYP2Wj7HxMk0m+iKtiip7pkXtzDlzHOU8=
X-Google-Smtp-Source: ABdhPJyCbuAy+xOozdb6WEyyPv52ae+wf4ljdDsjMsDmf6tkkmLQKlnrJVXLU8CePcpi6JEymg8qMmz1Hm9FcGnpewI=
X-Received: by 2002:a05:6214:c4b:b0:46a:66a2:d72a with SMTP id
 r11-20020a0562140c4b00b0046a66a2d72amr26517648qvj.21.1654883055541; Fri, 10
 Jun 2022 10:44:15 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
 <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
In-Reply-To: <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 10 Jun 2022 18:43:49 +0100
Message-ID: <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix i915_vma_pin_iomap()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jun 2022 at 15:53, Matthew Auld
<matthew.william.auld@gmail.com> wrote:
>
> On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
> >
> > From: CQ Tang <cq.tang@intel.com>
> >
> > Display might allocate a smem object and call
> > i915_vma_pin_iomap(), the existing code will fail.
> >
> > This fix was suggested by Chris P Wilson, that we pin
> > the smem with i915_gem_object_pin_map_unlocked().
> >
> > v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
> >                i915_gem_object_pin_map
> >
> > Signed-off-by: CQ Tang <cq.tang@intel.com>
> > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > Cc: Chris Wilson <chris.p.wilson@intel.com>
> > Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

Although maybe consider putting this as patch 1, and then reword the
commit title/message to be more like "drm/i915: extend
i915_vma_iomap()" or so, which then becomes a prep patch for
supporting the dpt fallback to smem. Otherwise it looks like this
patch is basically just fixing the first patch to not trigger the
WARN_ON(), which seems iffy IMO. Each patch by itself should ideally
be functional.
