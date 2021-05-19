Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1EBA388BE8
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 12:45:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07CA76ED04;
	Wed, 19 May 2021 10:45:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com
 [IPv6:2607:f8b0:4864:20::f2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A02E56E9B4;
 Wed, 19 May 2021 10:45:44 +0000 (UTC)
Received: by mail-qv1-xf2f.google.com with SMTP id ez19so6516946qvb.3;
 Wed, 19 May 2021 03:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VO5s5ojzRN2tKMGc1bjOnZzwYfKQ7PFyNYZACUYVdRs=;
 b=EtvRTXwlUHAdYjxrVwezP+D4DfxMEAuj8zTV4h+F5NSxFIIOg3y+ZWgBlIWxqllNXT
 fSRWOqV2oSIqEThfyJCbDPgH9Db8n2NNo31mKNrZAxNJsHEBq0cw6MIqzZscIwVHUApv
 UJ4+b2THx5EXCoD2szsZnBvKd8bnAtodXxK22UK4mymr4E5+UxrP+iNbYcjziC7UFISS
 yycHGbWgr3Tj+Yvda8O+4TeDco/ek3TQLOHssVuOnZBXnJ0mw5sfaFweSXp5mf4JYkLe
 HxTqI4EWF0HNgoxiJtevFfn5czvIDH5oARAvT+W4rApYGx9J9CSCPFscsTc1CuTN62Cj
 Uk0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VO5s5ojzRN2tKMGc1bjOnZzwYfKQ7PFyNYZACUYVdRs=;
 b=AJrGxeu5kHIHDJ4T/YDdHKeFJSjUVgKe9+87DJVGI/FC8N+sgHmIkmoghE59C19RvI
 xMtLvKdE5br2WwQiMCO8oqfYQtmrxdAn4dTJjeya0Y2kyWEf90JBKNzLBYg5dUx35WVI
 7hImbZim21saJFSEb5h/ioZnmYhGLqM9ZRJaT5hYI3sZMD5ETgVSzu1IoUU5AV1rBJpM
 JL2lY96ga7LxvMU/0pluHgV+1QrU7QSs0PcWmiur5Ptb9tDU6Cd1ICMHIUEA5hP4gPUN
 rM1P7EUPjoNqkRGRNYbDR5+z9XhVvIt+7yjZMKAsilgfD/tXgF945J7kbH0gH05FYiSD
 A61g==
X-Gm-Message-State: AOAM532eFEwjfVksPrhIhHIe3CAq91Pxllvd2Gd2vW8o6bRBnOEBr1Nx
 +jmmPJuK8avyunJAEWRCnxTPHTSSx8pRNAsx+jY=
X-Google-Smtp-Source: ABdhPJxX/4cOhcrVIkqQJof1nmtj+I2fx1AmSqq0TSPaMewqTzYpLsDSCZpl/yraK8qNS9b4zJgETYM76PfPFF9e/Z0=
X-Received: by 2002:ad4:580c:: with SMTP id dd12mr12702014qvb.48.1621421143742; 
 Wed, 19 May 2021 03:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210511165117.428062-1-matthew.auld@intel.com>
 <CAM0jSHO6RD=w2TDAxRsr9=Hqabj=U4kya_bwEcC_MKw0t+hncA@mail.gmail.com>
 <YKTRVpuWOT/gsHdh@platvala-desk.ger.corp.intel.com>
In-Reply-To: <YKTRVpuWOT/gsHdh@platvala-desk.ger.corp.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 19 May 2021 11:45:17 +0100
Message-ID: <CAM0jSHPN3TSkum54F6sHYaGHCpdEvu27j1zaVPx5_mWzg=UeRQ@mail.gmail.com>
To: Petri Latvala <petri.latvala@intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 00/12] DG1/LMEM uAPI basics
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
Cc: igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 19 May 2021 at 09:49, Petri Latvala <petri.latvala@intel.com> wrote:
>
> On Wed, May 19, 2021 at 09:13:37AM +0100, Matthew Auld wrote:
> > On Tue, 11 May 2021 at 17:52, Matthew Auld <matthew.auld@intel.com> wrote:
> > >
> > > Just the really basic stuff, which unlocks adding more interesting testcases
> > > later, like gem_lmem_swapping.
> > >
> > > On the kernel side we landed the uAPI bits[1] behind CONFIG_BROKEN, which is
> > > already enabled in CI builds, so it should be possible to get some more BAT
> > > testing(outside of just the selftests) on DG1 to the point where we can start to
> > > exercise the LMEM paths with the new bits of uAPI.
> > >
> > > [1] https://patchwork.freedesktop.org/series/89648/
> >
> > Petri, any thoughts on this series? As an initial step we just need
> > some way to start exercising the new bits of uAPI, and from that we
> > can add more interesting test cases.
>
> This series is in a confused state. First there's the addition of
> local definitions and ioctl tokens, then they are replaced with the
> proper stuff...

Yeah, I think that's how it is internally. Maybe the idea with that
was to somehow land the igt changes first, before the kernel stuff
potentially landed? I can clean this up and just start with the proper
stuff.

>
> When this was starting to get developed the idea was to avoid icky
> cases that break _testing_. Not tests, testing. Remember when engine
> discovery was being developed and we had cases where for_each_engine
> loop didn't progress, causing stuff like
>
> for_each_engine(...)
>  igt_subtest(...)
>
> to never enter a subtest?
>
> Pushing for stubbing memory regions ultimately wanted to avoid cases
> where for_each_combination(memregions) breaks test enumeration.
>
> It all boils down to: Can that break? Can we have cases where the
> query gives garbage? Can it give two million smem regions? Can it give
> 0 regions, or -1 regions? And what happens then?

On integrated platforms it can only return one region: smem. If we
somehow don't have a smem region then the i915 module load would have
failed, since we must have been unable to populate the
i915->mm.regions. On DG1 we just get the extra lmem region, and for Xe
HP multi-tile we get a few more lmem regions, but again if we can't
populate the i915->mm.regions with the required regions then we fail
driver init. The only "optional" region is stolen memory, but for that
we don't expose it to userspace.

The query will fail on !CONFIG_BROKEN kernels though, where it just
returns -ENODEV, or of course some other error if the user provided an
invalid query.

>
> Is it just gem_create_ext that's hiding behind CONFIG_BROKEN or also
> the querying?

It's the region query, and specifically the placements extension in
gem_create_ext, since there is also pxp coming soon and for that we
don't need CONFIG_BROKEN.

>
>
> --
> Petri Latvala
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
