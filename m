Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 226301C95C4
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 18:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 548826EA2B;
	Thu,  7 May 2020 16:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com
 [IPv6:2a00:1450:4864:20::542])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0266C6EA2B
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 16:00:12 +0000 (UTC)
Received: by mail-ed1-x542.google.com with SMTP id y24so5983381edo.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 May 2020 09:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zKTFigpC2E8aDo3Jektb3FrHnIr1pcyu6F3QfmafSN8=;
 b=XneLJgt2Fzefze3cJkTlaQ3tYZam6ljoNTl7McBxUy/ky+bmmMIvIjIv6eyMQpGpsQ
 gpJOtGI4xK8kvH9+gKyKNs27YJ/KJNygjn3FE86E5m7VMJYH5KHqD3l+unyotqH+jQCB
 hK7uDu7is0F4GLmlwieI43A5uNsJTd6xVum1txMjRwfbtip9TAWanf72riKMJuu1aXUT
 PLZMof+9RSgOmBsA3K458+ZO4/zkJtYxhlw9lMvY/iOuHA1tprsux2lYk/xNq5nYSb+H
 53pTuH8PsKaF+AyFCbgwzOQKGPZP8cvV6rTE665khVLgaVug+G+fhHMDbU828QbMJADz
 fIrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zKTFigpC2E8aDo3Jektb3FrHnIr1pcyu6F3QfmafSN8=;
 b=GfZjP1F1TM1PFz9XR061MPnjurbKK+wmm2t3IdE0Ui3IFxv3azAud2WJovnMg6SDgD
 DeW/BZ0I3j5fHdEuB1drTHX9PhOGJv+7wly2ApbbDnDlSkfgT7e0sbpYedk23caGM06v
 AU3mWe4ZVQNfnTDqtYd5lruM1PmBbHLV0emXeGaxv6GkB9+GWGFOMMG7bKlV/mdw16c+
 3byrShu4ZEEgDaJL37Ga0DrCmDZgHwqlW1PZKlLT0/iJEwoAxXx1n2O72/4cqoWa75MV
 2wlROswiLCu6rkrfmtkhhcl6gqKrUnyF2Gv/JHBoIGmL6Fjkz7ERmbiJmp4TKIMe/yiU
 7Gtg==
X-Gm-Message-State: AGi0PuYDvO8klZp+uN9bEyqmfZLC8b7m095DPwNUsH869ebyAkKm378R
 Di+B6zwb8z7JUW5KY+bL6LtEE3xnqcdyhe3h+9YdOQ==
X-Google-Smtp-Source: APiQypKanG5unzKeCaUc2Vx9nZL9/DqKl8QPmySR1la1wpMuBECmw2jzIRuI/NrnkpIvk0cWYzmSG+N1ISKxqLT7KRU=
X-Received: by 2002:a05:6402:30b4:: with SMTP id
 df20mr6637147edb.324.1588867211462; 
 Thu, 07 May 2020 09:00:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200507153600.314454-1-jason@jlekstrand.net>
 <158886626795.20858.1870213936656066157@build.alporthouse.com>
In-Reply-To: <158886626795.20858.1870213936656066157@build.alporthouse.com>
From: Jason Ekstrand <jason@jlekstrand.net>
Date: Thu, 7 May 2020 11:00:00 -0500
Message-ID: <CAOFGe94J0+LXGAPW4H-q3=7P9qcZWUWby_fMw5sN5uSwahMJ8w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] RFC: i915: Drop relocation support on Gen12+
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
Cc: Dave Airlie <airlied@redhat.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 7, 2020 at 10:44 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Quoting Jason Ekstrand (2020-05-07 16:36:00)
> > The Vulkan driver in Mesa for Intel hardware never uses relocations if
> > it's running on a version of i915 that supports at least softpin which
> > all versions of i915 supporting Gen12 do.  On the OpenGL side, Gen12 is
> > only supported by iris which never uses relocations.  The older i965
> > driver in Mesa does use relocations but it only supports Intel hardware
> > through Gen11 and has been deprecated for all hardware Gen9+. The entire
> > relocation UAPI and related infrastructure, therefore, doesn't have any
> > open-source userspace consumer starting with Gen12.
> >
> > Rejecting relocations starting with Gen12 has the benefit that we don't
> > have to bother supporting it on platforms with local memory.  Given how
> > much CPU touching of memory is required for relocations, not having to
> > do so on platforms where not all memory is directly CPU-accessible
> > carries significant advantages.
>
> You are not supplying them, the kernel is not checking them [as they
> don't exist], so there is no material benefit. The only question is
> maintainability.
>
> How confident are you that you will never use them

Confident enough to send this patch.  Especially in a Vulkan world
where it's very hard to tell which bits of memory are actually in-use
on the GPU, stalling to relocate is performance death.  With a 48-bit
GTT, there's no need to have the kernel involved in address space
assignment so relocations don't really serve much purpose.  We did
potentially have one use for them with VK_KHR_performance_query but
we're going out of our way to avoid them there.  If we desperately
need relocations, we can do them from userspace.

> and rewrite the media-driver?

I'm pretty sure they're working on getting rid of them.  I'm checking
on that right now.

> The code exists, will be tested, and can just as easily
> expire with the rest of execbuffer2.

Sure.  The question, again, is maintenance.  If we're spending piles
of time trying to figure out how to keep relocations going in a local
memory world, that's likely a waste.  Relocations can sit and rot on
Gen11 and below until we finally make execbuffer3 a reality and then
they can rot in the deprecated execbuffer2 ioct.

There is a bit of a question here about what to do with IGT.  I
suspect it uses relocations for a lot of stuff and the fallout there
could be significant.  (I explicitly made this patch so it won't
actually build because I don't hate our CI people.)

--Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
