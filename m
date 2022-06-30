Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB053561CB7
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 16:05:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D8B511B1F8;
	Thu, 30 Jun 2022 14:05:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32C911B1F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 14:05:45 +0000 (UTC)
Received: by mail-lf1-x12a.google.com with SMTP id a2so33975679lfg.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 07:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cApiWli8UaYPr20S54/EfbyEdXjunOidpS8c1+XIy+A=;
 b=GuNmoGeMEEoR67uydPGqG43LkzORAUE/2sLbDlBtFcQUuYMOh17jwpfq/4vlyRjyTX
 VoOu36hfNZeo0N1GSVhf3a9nXdV1nI+ralJPisKam296burBJwjK3fIOTXwqVBs5ij1b
 VihL0Xh2WoEFaU1nynssigfiN/0pERDBcUkyicLMGxCUeOCnAr/DdpXyG+PjQgwL82Py
 nNzmxSEsOfDVAnKV+ihn/w+T4+aWQvYNrdLuD3swrr040JTK4RBncj6EeeqZXinkDzyg
 z+6SF3wbKpfR7BKQtYH4+jGK7rRpa2C+B2VMOAiY5K294PFzK7XxB4weCQRddKqdyAdw
 kT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cApiWli8UaYPr20S54/EfbyEdXjunOidpS8c1+XIy+A=;
 b=YO0b6/z9lCNHAOE5lY8udwYabSX/WZbHKEA0utxKWRsfXWgIUzzTjvx3BVH71RYCas
 RPgJphXjpY2Bznm2TAOfvhx0g/zG2dFH38FJMx4Wulv3un5g9xlt4QDrp/bi5JfRA425
 1J22yULuOyiVXxIiYe/TKJnfrUKwoM0wE+QWPD3K90ENzZ3eljX5Um/oInGjEiGhwKKc
 NoLJH9m2NsYWfEjCVkBaAVh/uR2OCsepzX+/TuBA6HmlaRfWA/XHhJhM7yPjh4JRQkcK
 pFyxky9SN7RiFBZAiQKjVFEafgj/K6dRXPM94/+05p5sIQfMLBNpUJZy6dmsgzAg1rmN
 aMvA==
X-Gm-Message-State: AJIora/PpDNPCma0GOCn2GmCW7gDprbO3KnJfg7WkJMZXv0m7iDCyrfF
 FeCirrPyeQBZQq5NXvemsNcm2STjJYhao1Qw3uk=
X-Google-Smtp-Source: AGRyM1tqS25fgdeWxjqOVLdOPY7pOFc88o1w42sbnYpP6RFxsdxsT0kkVAt2HMikWjO9omf18ajkgCut5kjNSTSffvk=
X-Received: by 2002:a05:6512:10c5:b0:47f:74d6:b8f5 with SMTP id
 k5-20020a05651210c500b0047f74d6b8f5mr5565612lfg.583.1656597943521; Thu, 30
 Jun 2022 07:05:43 -0700 (PDT)
MIME-Version: 1.0
References: <20220614011350.122168-1-adrian.larumbe@collabora.com>
 <20220614011350.122168-3-adrian.larumbe@collabora.com>
 <CAM0jSHNvCqeNLO_i0_uVUHGhw_-DQi5Mxtw5nOiogeGU2HSWkg@mail.gmail.com>
 <db968b93-6f9c-b3aa-02cd-81e99f64f013@collabora.com>
In-Reply-To: <db968b93-6f9c-b3aa-02cd-81e99f64f013@collabora.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jun 2022 15:05:16 +0100
Message-ID: <CAM0jSHPSBY7JqtQpxB-XTVdJOn-oUsHGfY7p6=nYMR-PRArQ1g@mail.gmail.com>
To: Robert Beckett <bob.beckett@collabora.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/ttm: don't overwrite
 cache_dirty after setting coherency
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
 Adrian Larumbe <adrian.larumbe@collabora.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Jun 2022 at 22:11, Robert Beckett <bob.beckett@collabora.com> wrote:
>
>
>
> On 14/06/2022 18:55, Matthew Auld wrote:
> > On Tue, 14 Jun 2022 at 02:14, Adrian Larumbe
> > <adrian.larumbe@collabora.com> wrote:
> >>
> >> When i915_gem_object_set_cache_level sets the GEM object's cache_dirty to
> >> true, in the case of TTM that will sometimes be overwritten when getting
> >> the object's pages, more specifically for shmem-placed objects for which
> >> its ttm structure has just been populated.
> >>
> >> This wasn't an issue so far, even though intel_dpt_create was setting the
> >> object's cache level to 'none', regardless of the platform and memory
> >> placement of the framebuffer. However, commit 2f0ec95ed20c ("drm/i915/ttm:
> >> dont trample cache_level overrides during ttm move") makes sure the cache
> >> level set by older backends soon to be managed by TTM isn't altered after
> >> their TTM bo ttm structure is populated.
> >>
> >> However this led to the 'obj->cache_dirty = true' set in
> >> i915_gem_object_set_cache_level to stick around rather than being reset
> >> inside i915_ttm_adjust_gem_after_move after calling ttm_tt_populate in
> >> __i915_ttm_get_pages, which eventually led to a warning in DGFX platforms.
> >>
> >> There also seems to be no need for this statement to be kept in
> >> i915_gem_object_set_cache_level, since i915_gem_object_set_cache_coherency
> >> is already taking care of it, and also considering whether it's a discrete
> >> platform.
> >>
> >> Remove statement altogether.
> >>
> >> Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
> >> ---
> >>   drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 +---
> >>   1 file changed, 1 insertion(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >> index 3e5d6057b3ef..b2c9e16bfa55 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
> >> @@ -273,10 +273,8 @@ int i915_gem_object_set_cache_level(struct drm_i915_gem_object *obj,
> >>                  return ret;
> >>
> >>          /* Always invalidate stale cachelines */
> >> -       if (obj->cache_level != cache_level) {
> >> +       if (obj->cache_level != cache_level)
> >>                  i915_gem_object_set_cache_coherency(obj, cache_level);
> >> -               obj->cache_dirty = true;
> >
> > Maybe ban calling this on dgpu or have it fail silently? At the ioctl
> > level this should already be banned.
> >
> > Ignoring dgpu, the cache_dirty handling is quite thorny on non-LLC
> > platforms. I'm not sure if there are other historical reasons for
> > having this here, but one big issue is that we are not allowed to
> > freely set cache_dirty = false, unless we are certain that the pages
> > underneath have been populated and the potential flush-on-acquire
> > completed. See the kernel-doc for @cache_dirty for more details.
>
> given the commit "068b1bd09253 drm/i915: stop setting cache_dirty on
> discrete"
> with it's justification of cache_dirty should not be set on discreet as
> it is not needed, I think this patch should change to set
>
> obj->cache_dirty = !IS_DGFX(to_i915(obj->base.dev));

Yeah, seems reasonable to me.

>
> along with the assignment in flush_write_domain()

I think this one should already be covered by the check in
gpu_write_needs_flush().

>
> and should be considered a fix for that patch.
>
> It should keep the asignment for integrated as it's original purpose
> still holds there.
>
>
>
> >
> >> -       }
> >>
> >>          /* The cache-level will be applied when each vma is rebound. */
> >>          return i915_gem_object_unbind(obj,
> >> --
> >> 2.36.1
> >>
