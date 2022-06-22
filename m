Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3DC554543
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 12:25:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEA6910E78D;
	Wed, 22 Jun 2022 10:25:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CEF610E78D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 10:25:08 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id y14so19134403qvs.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 03:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=t0zkfNkmV2Qz5sr+V8fAnuU1cdQQ/TxaOylG7UKJ4kI=;
 b=IeklxBt9+/OYXe33rqMZwq3ody+OX61PbPkdRGj/bbIXYKyxQ6vB2416TvlVKOKXTE
 OUDUcDdoDwxewA0OAcNzE9cloM2rhUrzlXeWleTcaFf/8ReyxxRRjaPpaEAfJ6F/78gh
 KOrFnoO5WsfLL2jJCYo0KIj9quJ9xbDP2SMl5nDVRZ6WT+MpFxJZdLCykJDam9wkaCSn
 Ue5eYQyx9KJBJTCY5ULt0mTKNinG6vrlXryGwhg93WOLxRZ8G3AQAG/4oaH+yaRmf9yR
 fGZBaGichY6Wh80EiTQxYdNT2PPb1shvj+ECmZSokQJTewIbgRykwMB13hBZBMTHvwnv
 0cUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=t0zkfNkmV2Qz5sr+V8fAnuU1cdQQ/TxaOylG7UKJ4kI=;
 b=4NMLBrVUNan8B6akApIppSc1CEqAeBTaQNNedJHyHNwE2K9yefmy4E7+ruVJwCeyOA
 tFHzJ2uwzq8Fp/lDlGhn99gB9Eq2p9qnahqM1A16y2edLSPnDRgWdtSYZZQGbJ/W0226
 g0CQqlhhIeEMTCzd5K5xLtIMTEqZcHYKkK7GVwoKYWTpi9xK/UcFITEHzzpZd8KiiqZD
 Qedyz2unc7VwGI3tmARVsGuQZVJpFT0Ix8c6zLxTCi17DiHZWGaeSBfAKo9iDbN9oq8x
 4PDroI5rdATbOvbSDdd5Z7bJGs4P3tE4KqnZNHIvfximsctwvXeOrsyid8TZwhmr2NJs
 4SGg==
X-Gm-Message-State: AJIora/D6QgdtMkj9Ehwjbbkx8ptJNzD67tXEvvFa7sYTGecPSI6izM5
 6E4xEcmu0Sm2OVyE00sRHImCftdTrkecARLCd3M=
X-Google-Smtp-Source: AGRyM1shD8Pw4kN5QwGnpquRQWI3QgXXRokWyK0jHhr7PFQz+b8bOS05whtAI9gPRqr2osE9PcdErkMT1TEwwCj/i3k=
X-Received: by 2002:a05:622a:1794:b0:306:153d:75a7 with SMTP id
 s20-20020a05622a179400b00306153d75a7mr2189493qtk.645.1655893507410; Wed, 22
 Jun 2022 03:25:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
 <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
 <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
 <8cbeb646-9052-6f05-201c-ba00f565691b@gmail.com>
 <CAM0jSHON77u9gFYf_+Y8DpSfUheOWHUYfSob2n7HYDt6sHoz9Q@mail.gmail.com>
 <38359ca4-b2e0-e05b-47b3-3ed1faa6b579@gmail.com>
In-Reply-To: <38359ca4-b2e0-e05b-47b3-3ed1faa6b579@gmail.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 22 Jun 2022 11:24:41 +0100
Message-ID: <CAM0jSHO6OGxc2esz_QKdbPTYL30Y_k+7sW31=_zU5wAzvJ+4Xg@mail.gmail.com>
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

On Tue, 21 Jun 2022 at 19:38, Juha-Pekka Heikkila
<juhapekka.heikkila@gmail.com> wrote:
>
> On 21.6.2022 13.53, Matthew Auld wrote:
> > On Mon, 20 Jun 2022 at 10:38, Juha-Pekka Heikkila
> > <juhapekka.heikkila@gmail.com> wrote:
> >>
> >> On 10.6.2022 20.43, Matthew Auld wrote:
> >>> On Fri, 10 Jun 2022 at 15:53, Matthew Auld
> >>> <matthew.william.auld@gmail.com> wrote:
> >>>>
> >>>> On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
> >>>> <juhapekka.heikkila@gmail.com> wrote:
> >>>>>
> >>>>> From: CQ Tang <cq.tang@intel.com>
> >>>>>
> >>>>> Display might allocate a smem object and call
> >>>>> i915_vma_pin_iomap(), the existing code will fail.
> >>>>>
> >>>>> This fix was suggested by Chris P Wilson, that we pin
> >>>>> the smem with i915_gem_object_pin_map_unlocked().
> >>>>>
> >>>>> v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
> >>>>>                  i915_gem_object_pin_map
> >>>>>
> >>>>> Signed-off-by: CQ Tang <cq.tang@intel.com>
> >>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >>>>> Cc: Chris Wilson <chris.p.wilson@intel.com>
> >>>>> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
> >>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> >>>
> >>> Although maybe consider putting this as patch 1, and then reword the
> >>> commit title/message to be more like "drm/i915: extend
> >>> i915_vma_iomap()" or so, which then becomes a prep patch for
> >>> supporting the dpt fallback to smem. Otherwise it looks like this
> >>> patch is basically just fixing the first patch to not trigger the
> >>> WARN_ON(), which seems iffy IMO. Each patch by itself should ideally
> >>> be functional.
> >>
> >> Probably easiest is to put patch 1 in as last, it's the final customer
> >> for these two other patches. This way if someone will end up doing
> >> bisecting there would be nothing interesting to see with these.
> >>
> >> I did finally get ci to look all green after last weeks outages. I'd
> >> guess these patches are ready to be pushed but I don't have commit
> >> rights to drm-tip. Are you able to help with these or I'll go bother
> >> Imre or Jani to get them into tip?
> >
> > Ok, if no objections I will go ahead and push this to
> > drm-intel-gt-next, with the tweaked patch ordering.
>
> No objections. I had this set yet on test run on Imre's wish on try-bot
> with forcing adlp (on bat) to use smem and results were all clean.

And pushed. Thanks for the patches.

>
> /Juha-Pekka
