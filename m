Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F6B1140A9F
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 14:22:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0EC86E53C;
	Fri, 17 Jan 2020 13:22:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BD736E53C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 13:22:02 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id g15so14812990vsf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 05:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GRCI3eIEvHsaolJ6e39N9ypPi1UpAwaDz2VwL8NsmLo=;
 b=pBGh9JpeR9ouuTKgH5QeZ60+fWRqjQjh1lJSG1nleBE18doBAUy4ekOhRgd3pHa59L
 FfsIiMpIk3hxpWohgIOLS6iYbvkzsjoA7A9Be2+SgHkJoQHDbCh444leyRozSJunl5f8
 4LicUdI3uJDYKbD+EztMbpIqSPMN9Tu0M6JSdhFu5OhqVnUBuDPixhLJyKACmCW5KBoL
 g7T8OYNrc5Z/PUd+dLHqHbIHTZjaI9JcWjxFFoQCO9rGXUbQr2su8a5kALkm+XxWcOj3
 sgd6IJgY3pswibzfQ3CillCkk+E6pNA3uyHT0jRCs3fBysF912ykezemGyqTRCq/dzQn
 0MJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GRCI3eIEvHsaolJ6e39N9ypPi1UpAwaDz2VwL8NsmLo=;
 b=YAKFpGuwoFGay7TmescGdb6M+QQ9kM5/+0X4MkyleT/Hj26URza/gKcuomR8sv7CAW
 Mh/vIpFV6L4C0ZYZuu4lPIIiarKCbPWmboCaFvNMjgeXJGEQOnMLbnS6YVm247QA3kx/
 9D/KQWvZ4AfTjssGR4Idzp+BRsqKonigVNMSZIIJdV385L/UyQkJcVbBBviaN7tugqtQ
 ibv+RiuAPYw79YO3eI/vaijLY00sOjM9Fguae0FEea+IIvhH6LiJuQfI5AAbWY49t9AK
 NGG5KK3nyf/48kaoDsb8ka/5kTvktVtQFuZ1zmif/iCo7fz5FOT79pHkb+nSDVtdF7Qe
 KpIA==
X-Gm-Message-State: APjAAAWP+xV4fj3zOLCV+73kQ2POLuOH5L25HSO57PifbsyosGAFPSmD
 pqvM5YcEGG1aSyoBtlwec05cEma4KMxFHDz7sRo=
X-Google-Smtp-Source: APXvYqxFuI1Cz58K6lchhdf+NwYSJ17d3w1KAQ0uyGT4D/NvsNNiSDVyrqXDZT7l23DwAasniL1HsVbPRinDeTRxuP0=
X-Received: by 2002:a67:15c7:: with SMTP id 190mr4913988vsv.178.1579267321553; 
 Fri, 17 Jan 2020 05:22:01 -0800 (PST)
MIME-Version: 1.0
References: <20200117110603.2982286-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200117110603.2982286-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 17 Jan 2020 13:21:36 +0000
Message-ID: <CAM0jSHM0Fgfhp2joxxDhZ9x+0UjW4EHDwNvLhswpu4OkUeRnCQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Satisfy smatch that a loop has at
 least one iteration
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

On Fri, 17 Jan 2020 at 11:06, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Smatch worries that the engine->mask may be 0 leading to the loop being
> shortcircuited leaving the next pointer unset,
>
> drivers/gpu/drm/i915/i915_active.c:667 i915_active_acquire_preallocate_barrier() error: uninitialized symbol 'next'.
>
> Assert that mask is not 0 and smatch can then verify that next must be
> initialised before use.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
