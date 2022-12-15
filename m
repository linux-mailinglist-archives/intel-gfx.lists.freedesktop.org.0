Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD9964D640
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 06:47:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71EBF10E063;
	Thu, 15 Dec 2022 05:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oa1-x35.google.com (mail-oa1-x35.google.com
 [IPv6:2001:4860:4864:20::35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E612810E063
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 05:46:53 +0000 (UTC)
Received: by mail-oa1-x35.google.com with SMTP id
 586e51a60fabf-1433ef3b61fso19635707fac.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 21:46:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=8u7cxy/3xV68RzXCR9Wnk6dzstb0hBoTs9nATH0oh5g=;
 b=jTONlSJJrz7XrhhvEjNegXJB8lytqJAAata1H755BeBLHLPrixgZa7502iu1j5uykN
 0bB647zAaz7Nb4HvNDXIdmvW+Br93reuyUC4tCPABHHoXtoouKiW3zFhBNZVzo/hzvy7
 wqKRbY3+PsiCVPrMynRPnAMuBzRudTDPDqmwk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=8u7cxy/3xV68RzXCR9Wnk6dzstb0hBoTs9nATH0oh5g=;
 b=ZRqZ+JUJTASkL5YxuaVC9AwRu9rl/QlOlU9modOYCvd+CZC81hgyXFM1pvEePPC0B9
 oZg8XCZdpiQsj1riWHyaA8QSjfvYiv7Uz84XwAKaFSZjadEF/BK+WOUDqSdh9zwwOUp2
 s7b27XmgbRW0OkTfN6x1A8XVnqNueUs+PklUd9q1iOUiop8DxcoIjKv7P5Xx2qwHzHsn
 NORTh/+EkZb9AYTinmXC4hkcCUQIzlpAI+cbFd95+av/e7NQIa+xzIuvfNgnyXhLfnK1
 6whseu9UYv9sFwszdP19mOdFZb9OsejondWD6hqzHuMOkK0ZMN1OcUbI8w4pu/W0OmJ5
 yYfQ==
X-Gm-Message-State: AFqh2kq8hxmzDSHoLbD2cQF17Af4OSDjRC6hDo4QxYJ4Dkt3ZJudSDnQ
 /x0wb/OEomiVOzHW/DBa3FnoRx8zr3HXS64vbvzGkQ==
X-Google-Smtp-Source: AMrXdXt70nfF0jNyaRmHUOVp/Sq1zPBWz8MtAmeo5Utauuiq1SiyfXEHlXIS8xeuGOWZSyUEALkQJb/IsvqYzExsJ2M=
X-Received: by 2002:a05:6870:698b:b0:148:2c02:5323 with SMTP id
 my11-20020a056870698b00b001482c025323mr675289oab.298.1671083213046; Wed, 14
 Dec 2022 21:46:53 -0800 (PST)
MIME-Version: 1.0
References: <20221206161141.128921-1-matthew.auld@intel.com>
 <CAHzEqDkd5u5A+2EfeVpnMoqHLWS=d5uLQquGDQ5TLAcx8Oydqw@mail.gmail.com>
 <db6eccfa-4536-0212-c9a9-4a0ea6e4c877@intel.com>
In-Reply-To: <db6eccfa-4536-0212-c9a9-4a0ea6e4c877@intel.com>
From: Mani Milani <mani@chromium.org>
Date: Thu, 15 Dec 2022 16:46:42 +1100
Message-ID: <CAHzEqDkmLMUBMZTwiOhuoiW_yJH4SsAEbsFy_bzGoNvP0gaoxg@mail.gmail.com>
To: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: improve the catch-all evict to
 handle lock contention
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
Cc: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks for the explanations Matthew. It all makes sense now. I will
now test this patch further and report back the results.

There is just one comment block that needs to be updated I think. See below:

On Wed, Dec 14, 2022 at 10:47 PM Matthew Auld <matthew.auld@intel.com> wrote:
>
...
> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> index 86956b902c97..e2ce1e4e9723 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> >> @@ -745,25 +745,44 @@ static int eb_reserve(struct i915_execbuffer *eb)
> >>           *
> >>           * Defragmenting is skipped if all objects are pinned at a fixed location.
> >>           */
Could you please update the comment block above and add a little
explanation for the new pass=3 you added?

> >> -       for (pass = 0; pass <= 2; pass++) {
> >> +       for (pass = 0; pass <= 3; pass++) {
> >>                  int pin_flags = PIN_USER | PIN_VALIDATE;
> >>
> >>                  if (pass == 0)
> >>                          pin_flags |= PIN_NONBLOCK;
> >>
> >> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> >> index 4cfe36b0366b..c02ebd6900ae 100644
> >> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> >> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> >> @@ -441,6 +441,11 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
> >>    * @vm: Address space to cleanse
> >>    * @ww: An optional struct i915_gem_ww_ctx. If not NULL, i915_gem_evict_vm
> >>    * will be able to evict vma's locked by the ww as well.
> >> + * @busy_bo: Optional pointer to struct drm_i915_gem_object. If not NULL, then
> >> + * in the event i915_gem_evict_vm() is unable to trylock an object for eviction,
> >> + * then @busy_bo will point to it. -EBUSY is also returned. The caller must drop
> >> + * the vm->mutex, before trying again to acquire the contended lock. The caller
> >> + * also owns a reference to the object.
> >>    *
> >>    * This function evicts all vmas from a vm.
> >>    *
> >> @@ -450,7 +455,8 @@ int i915_gem_evict_for_node(struct i915_address_space *vm,
> >>    * To clarify: This is for freeing up virtual address space, not for freeing
> >>    * memory in e.g. the shrinker.
> >>    */
> >> -int i915_gem_evict_vm(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww)
> >> +int i915_gem_evict_vm(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww,
> >> +                     struct drm_i915_gem_object **busy_bo)
> >>   {
> >>          int ret = 0;
> >>
> >> @@ -482,15 +488,22 @@ int i915_gem_evict_vm(struct i915_address_space *vm, struct i915_gem_ww_ctx *ww)
> >>                           * the resv is shared among multiple objects, we still
> >>                           * need the object ref.
> >>                           */
> >> -                       if (dying_vma(vma) ||
> >> +                       if (!i915_gem_object_get_rcu(vma->obj) ||
Oops, sorry, I had missed the one line change above. After you pointed
that out, all the 'i915_gem_object_put()' calls now make perfect
sense. Thanks.

> >>                              (ww && (dma_resv_locking_ctx(vma->obj->base.resv) == &ww->ctx))) {
> >>                                  __i915_vma_pin(vma);
> >>                                  list_add(&vma->evict_link, &locked_eviction_list);
> >>                                  continue;
> >>                          }
> >>
> >> -                       if (!i915_gem_object_trylock(vma->obj, ww))
> >> +                       if (!i915_gem_object_trylock(vma->obj, ww)) {
> >> +                               if (busy_bo) {
> >> +                                       *busy_bo = vma->obj; /* holds ref */
> >> +                                       ret = -EBUSY;
> >> +                                       break;
> >> +                               }
> >> +                               i915_gem_object_put(vma->obj);
> >>                                  continue;
> >> +                       }
