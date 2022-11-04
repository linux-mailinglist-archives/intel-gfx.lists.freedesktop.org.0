Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4AC619B58
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 16:21:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE83310E85A;
	Fri,  4 Nov 2022 15:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA15710E85A
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 15:21:24 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id u2so6840299ljl.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Nov 2022 08:21:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=7/Gs0H6Smtys+EzrBPbZWNnI21tdV6uyNyXqmEM54k8=;
 b=KO6ii2CKNPF/Khhkt3FdzLKXh5KC7/IwIAY6hV+h2HPvFZUbGPpBT/0lCotqhtIoJh
 iB0wbBI7sfBKzfU9Z5e6c5cGrgSzjeh97/u2NzFXm8FHwoI/6iRcnqgSzT253XAqRGMe
 +LQNqF+eB5lbaXNuMWNiM+Q45H09rfO1tnPVry+MxhDHK/OQl3TWC/9vwP1ddckqiHqN
 0DgcBfCRnh6tXRAuZNcTU2Wrgl0RpPNOMzqb1phoJwO9LN1kNGguMzaMm2XdyXmgFp6k
 U2m7Q8/Ri/CoVJOn/e3VClZayZ3TzQ0ceOvzL2Xt3UKsQP33/bL9Fy4aTWY46OPcUYbS
 80JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=7/Gs0H6Smtys+EzrBPbZWNnI21tdV6uyNyXqmEM54k8=;
 b=AgsCumbOqdwDkvStAijj0RHRCBf2W0WzEliVG899Yk82/dnlRAjMf4Tr/eXXfltWKR
 pkeOb64rqzK9nU2kHZQZck1cYvKQx76C3Qz4HiEl3uDPN01N0dc5Ms+thWxklcyEd7dT
 frrVpKWhYLRPuK4FvBrl8vGy6jAs+y59zRLL5AR5yvfg4kxXULT0Fx7V4FgQJwQVTShx
 CH8y/MSbXN2WiMfrIWoCpFboV/xjDz1WnQhzD+TOf1YRsigFt08th3RHJ6TIuEG3/JH7
 L9jpz67WeOr+Fxf1FqTXqYuQ79clP+zJ5LLrMmkggjFIm9dPDINlbyDY9CBCtdd9Qa58
 Rwog==
X-Gm-Message-State: ACrzQf236T2LRJcDOTNEzdYiMwAlOtwpsJ6x74j+VOr7NcZIPXrXSrPZ
 RE/ZML2JgnWvqiWNCwXPQ7HxpcoSwuIZPGu7WPs=
X-Google-Smtp-Source: AMsMyM6hElixYO0xbViu5M+T4qaqGtBZphEE3hv5pje4HUpCqw2h26TecOisrYgVbBb30JReO1M7OZsj0fzgleSpq4I=
X-Received: by 2002:a2e:a166:0:b0:26c:3bf1:49f3 with SMTP id
 u6-20020a2ea166000000b0026c3bf149f3mr2069211ljl.269.1667575282846; Fri, 04
 Nov 2022 08:21:22 -0700 (PDT)
MIME-Version: 1.0
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
 <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
 <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
 <Y2MH4QCYqiAmvBQP@google.com>
In-Reply-To: <Y2MH4QCYqiAmvBQP@google.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 4 Nov 2022 15:20:55 +0000
Message-ID: <CAM0jSHNixz5PJtLB8S0JMaRUHWeR5N7Hj9s6zGJfsh3Uta9LLw@mail.gmail.com>
To: Brian Norris <briannorris@chromium.org>, mauro.chehab@linux.intel.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] 
	=?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
	=?utf-8?q?/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 3 Nov 2022 at 00:14, Brian Norris <briannorris@chromium.org> wrote:
>
> On Wed, Nov 02, 2022 at 12:18:37PM +0000, Matthew Auld wrote:
> > On Tue, 1 Nov 2022 at 21:58, Brian Norris <briannorris@chromium.org> wrote:
> > >
> > > On Fri, Oct 28, 2022 at 5:24 PM Patchwork
> > > <patchwork@emeril.freedesktop.org> wrote:
> > > >
> > > > Patch Details
> > > > Series:drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
> > > > URL:https://patchwork.freedesktop.org/series/110277/
> > > > State:failure
> > > > Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> > > >
> > > > CI Bug Log - changes from CI_DRM_12317 -> Patchwork_110277v1
> > > >
> > > > Summary
> > > >
> > > > FAILURE
> > > >
> > > > Serious unknown changes coming with Patchwork_110277v1 absolutely need to be
> > > > verified manually.
> > > >
> > > > If you think the reported changes have nothing to do with the changes
> > > > introduced in Patchwork_110277v1, please notify your bug team to allow them
> > > > to document this new failure mode, which will reduce false positives in CI.
> > > >
> > > > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> > >
> > > For the record, I have almost zero idea what to do with this. From
> > > what I can tell, most (all?) of these failures are flaky(?) already
> > > and are probably not related to my change.
> >
> > https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> >
> > According to that link, this change appears to break every platform
> > when running the live selftests (looking at the purple squares).
> > Running the selftests normally involves loading and unloading the
> > module. Looking at the logs there is scary stuff like:
> >
> [...]
>
> Ah, thanks. I'm not sure what made me think the tests were failing the
> same way on drm-tip, but maybe just chalk that up to my unfamiliarity
> with this particular dashboard... (There are a few isolated failure
> and/or flakes on drm-tip, but they don't look like this.)
>
> Anyway, I think I managed to run some of these tests on my own platforms
> [1], and I don't reproduce those failures. I do see other failures
> (crashes) though, like in i915_gem_mman_live_selftests/igt_mmap, where
> igt_mmap_offset() (selftest-only code) -> vm_mmap() assumes we have a
> valid |current->mm|. But that's borrowing the modprobe process's memory
> map, and with async probe, the selftest sequence happens in a kernel
> worker instead (and current->mm is NULL). So that clearly won't work.

Semi related:
https://lore.kernel.org/intel-gfx/20221104134703.3770b371@maurocar-mobl2/T/#m888972bb1ffb0a913e3db8b4099dffdc2ec7a0dc

Sounds like a similar issue when trying to convert the live selftests
over to kunit.

>
> I suppose I could disable async probe when built as a module (I believe
> it doesn't really have any value, since the module load task just waits
> for the async task anyway). I'm not familiar enough with MM to know what
> the vm_mmap() alternatives are, but this particular bit of code does
> feel odd.
>
> Additionally, I think this implies that live_selftests will break if
> i915 is built-in (i.e., =y, not =m), as we'll again run in a
> kernel-thread context at boot time. But I would hope nobody is trying to
> run them that way? I guess this gets even hairier, because even if the
> driver is built into the kernel, it's possible to kick them off from a
> process context by tweaking the module parameters later, and then
> re-binding the device... So all in all, this bug leaves an ugly
> situation, with or without my patch.
>
> I'm still curious about the reported failures, but maybe they require
> some particular sequence of tests? I also don't have the full
> igt-gpu-tools set running, so maybe they do something a little
> differently than my steps in [1]?
>
> Brian
>
> [1] I have a GLk system, if it matters. I figured I can run some of
> these with any one of the following:
>
>   modprobe i915 live_selftests=1
>   modprobe i915 live_selftests=1 igt__20__live_workarounds=Y
>   modprobe i915 live_selftests=1 igt__19__live_uncore=Y
>   modprobe i915 live_selftests=1 igt__18__live_sanitycheck=Y
>   ...
