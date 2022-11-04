Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 659B5619A31
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Nov 2022 15:38:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDE6010E820;
	Fri,  4 Nov 2022 14:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com
 [IPv6:2a00:1450:4864:20::22f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7965110E83C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Nov 2022 14:38:33 +0000 (UTC)
Received: by mail-lj1-x22f.google.com with SMTP id l8so6610617ljh.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Nov 2022 07:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=HIdsa7Muuo6y3/TbcxIHbnC6NwKLwTtYfmv48Mkpvt0=;
 b=JCs/Q2zs3c5W1BU2IseFilsF/5m3qqIQwaMfQebYIC4KMz3yt/c0lSLpQrSKUkWxwC
 OC/hS9+CdAcZ+/JF/YiArWwnjYbDOjxhmpr3ADIcyZMrqgGPR24BbKcT0OgU41w0XLqN
 8Y0Yrm4lwvLXaBJEuhl9tQXMD5J8Oihs+8ako0vQV5xpBQLh8detR7vqzfRUZzrPBeXy
 UaMJXpa92x28Cq+CrrRQGXUL6COnKLOTpeNWgQcWU2JIJ8ArVMaw0LFKklhtFsYOROER
 WxLH1uF0VjCt9eVZMezRmlxlXe/fOUCSqW+AdpQ1xVOF3YwWd9YV86Ulwx//NNOt/lfh
 elEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=HIdsa7Muuo6y3/TbcxIHbnC6NwKLwTtYfmv48Mkpvt0=;
 b=4znP095brwOwMC3Xoo6R8vxrsijDdAopbafvRjFYMU8vIysjhOUS9Uklc+b5FfNF9Q
 A30Q/NkVtnV4HlhvRTiW77B8dneui0CprP9ivNYcaO/vxole7rY8F/IZjp4rMzttk3Al
 2kOM5J6M7JLeGfDYQH0xF8+1gjUX64CH3JDRff+BCQVyYlAuyYHoQA2bHa0gX280z25Z
 L+kxQW+8MfBWlwQGuhSc6z4yen4hhq4h/WNcKfTKJcnQVrpWH41O5o/I+5OMbUfZ/Mpc
 tFCtVQJUd6H6aHN1HP9ve6ub7sNZKg6DyCMMa44YRVzYNuD6VplpKMx9wvvBHh9mA9RH
 tN1A==
X-Gm-Message-State: ACrzQf3qN8jqWkxyS7KSHG4JqlDMRqQsnEANApD8B0sLTOBl4VFcW84B
 IZF0rlelgv2VFD+7dA2faaQkghIY7FVfW9gEUqM=
X-Google-Smtp-Source: AMsMyM5QYqXX7WA7V6nUi4yG7Cq9/qj2BMBlkOq/vXsmWyfs/BRB+w///0ai3QQXUSZdPVlosIeEbjWA53qe7WNzS2o=
X-Received: by 2002:a05:651c:110e:b0:277:4a04:ad9a with SMTP id
 e14-20020a05651c110e00b002774a04ad9amr12165545ljo.379.1667572711663; Fri, 04
 Nov 2022 07:38:31 -0700 (PDT)
MIME-Version: 1.0
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
 <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
 <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
 <Y2MH4QCYqiAmvBQP@google.com>
In-Reply-To: <Y2MH4QCYqiAmvBQP@google.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 4 Nov 2022 14:38:03 +0000
Message-ID: <CAM0jSHPe6Ecyh4X4ki=xcnT24REvAPoUqwH5Kkm6rEKYCCr4kQ@mail.gmail.com>
To: Brian Norris <briannorris@chromium.org>
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

CI should be using the IGT wrapper to run them, AFAIK. So something like:

./build/tests/i915_selftest

Or to just run the live, mock or perf:

./build/tests/i915_selftest --run-subtest live
./build/tests/i915_selftest --run-subtest mock
./build/tests/i915_selftest --run-subtest perf

Or if you want to run some particular selftest, like live mman tests:

./build/tests/i915_selftest --run-subtest live --dyn mman
