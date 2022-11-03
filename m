Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05DA617343
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 01:14:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D829D10E20D;
	Thu,  3 Nov 2022 00:14:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7438710E20D
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 00:14:28 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id o7so128170pjj.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 02 Nov 2022 17:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=XdTMTa3I55SIl5xGC9jdySfc9VWUSGeCFrVhUObQADA=;
 b=kZv/B/2BDSBzl3s66ukC436R5dO2cS2TzMNLneJ9syZAHySA/k4fR5mwhPfFzOspOU
 mX3MgnBF7SG/SDMVIQtThADYW5DJmUGEq/YCA+hCdcYNoK/4afRHN8fxDILDfHq4mFX8
 wysRUqqeWTpMpDKLM09swnVqPrxvuNAzAi5Ws=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XdTMTa3I55SIl5xGC9jdySfc9VWUSGeCFrVhUObQADA=;
 b=gMBOkpsWncrpmRJjBsYDO14NsiDxrBIoV6tb56xv4z9MdAS7Q8K739uZix2KwPTG9B
 qYg/Ei41VXepYkUJPksHQLV1Uz5vUFUyjBBBw7FXA5TtVWnkmjiuE96Jwpjz+3jipJY5
 XTD17jKI/nQnKUM8/Q6TuBkWutQlFFTrwUrKPdJdzB010OfIPXtxYweYZMLnm2CILhKH
 CGigF5q1/kHu0CWnfbveMUnRabtL3YBs6IuDB5LtbOCW43kz1EP7DEzIGD4amouTgEDV
 S+rFDTrN8HEAaDZzf76B8JpJZ1xyultVpKraNJq9jM5sjKGb/UG4kojkXJ3j0ZrTW3FO
 808Q==
X-Gm-Message-State: ACrzQf3OwvN7zZW213HXcZLlqiwmGM3FRyJm7yK/5/TFhp+6k5sDNCIs
 VAzqZPNuBzyosnTU81J0CTzJJg==
X-Google-Smtp-Source: AMsMyM6+cQMX50cYCHMHeiUjqYHxdzOwNVW6gvlPyqFtk5l0zIfucriGpfTnlYfJudxEHKNmudZQUA==
X-Received: by 2002:a17:903:32cf:b0:187:4b3a:15fd with SMTP id
 i15-20020a17090332cf00b001874b3a15fdmr4889761plr.99.1667434467927; 
 Wed, 02 Nov 2022 17:14:27 -0700 (PDT)
Received: from google.com ([2620:15c:9d:2:ce3d:95b2:a304:f587])
 by smtp.gmail.com with ESMTPSA id
 j4-20020a170903028400b001868981a18esm8908872plr.6.2022.11.02.17.14.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Nov 2022 17:14:27 -0700 (PDT)
Date: Wed, 2 Nov 2022 17:14:25 -0700
From: Brian Norris <briannorris@chromium.org>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <Y2MH4QCYqiAmvBQP@google.com>
References: <20221028145319.1.I87b119c576d486ad139faf1b7278d97e158aabe4@changeid>
 <166700305133.24147.5489949087173137559@emeril.freedesktop.org>
 <CA+ASDXO856vFOx7CwQEmgM7pUU_Jdb-wXJPGrkKMPQ3GoNBJeQ@mail.gmail.com>
 <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAM0jSHM99OxpmS-pqmEiyoK2pa07fnhekTKLRQTMsWqFkHCgJg@mail.gmail.com>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogIGZhaWx1cmUgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_Set_PROBE=5FPREFER=5FASYNCHRONOUS?=
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

On Wed, Nov 02, 2022 at 12:18:37PM +0000, Matthew Auld wrote:
> On Tue, 1 Nov 2022 at 21:58, Brian Norris <briannorris@chromium.org> wrote:
> >
> > On Fri, Oct 28, 2022 at 5:24 PM Patchwork
> > <patchwork@emeril.freedesktop.org> wrote:
> > >
> > > Patch Details
> > > Series:drm/i915: Set PROBE_PREFER_ASYNCHRONOUS
> > > URL:https://patchwork.freedesktop.org/series/110277/
> > > State:failure
> > > Details:https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> > >
> > > CI Bug Log - changes from CI_DRM_12317 -> Patchwork_110277v1
> > >
> > > Summary
> > >
> > > FAILURE
> > >
> > > Serious unknown changes coming with Patchwork_110277v1 absolutely need to be
> > > verified manually.
> > >
> > > If you think the reported changes have nothing to do with the changes
> > > introduced in Patchwork_110277v1, please notify your bug team to allow them
> > > to document this new failure mode, which will reduce false positives in CI.
> > >
> > > External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> >
> > For the record, I have almost zero idea what to do with this. From
> > what I can tell, most (all?) of these failures are flaky(?) already
> > and are probably not related to my change.
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_110277v1/index.html
> 
> According to that link, this change appears to break every platform
> when running the live selftests (looking at the purple squares).
> Running the selftests normally involves loading and unloading the
> module. Looking at the logs there is scary stuff like:
> 
[...]

Ah, thanks. I'm not sure what made me think the tests were failing the
same way on drm-tip, but maybe just chalk that up to my unfamiliarity
with this particular dashboard... (There are a few isolated failure
and/or flakes on drm-tip, but they don't look like this.)

Anyway, I think I managed to run some of these tests on my own platforms
[1], and I don't reproduce those failures. I do see other failures
(crashes) though, like in i915_gem_mman_live_selftests/igt_mmap, where
igt_mmap_offset() (selftest-only code) -> vm_mmap() assumes we have a
valid |current->mm|. But that's borrowing the modprobe process's memory
map, and with async probe, the selftest sequence happens in a kernel
worker instead (and current->mm is NULL). So that clearly won't work.

I suppose I could disable async probe when built as a module (I believe
it doesn't really have any value, since the module load task just waits
for the async task anyway). I'm not familiar enough with MM to know what
the vm_mmap() alternatives are, but this particular bit of code does
feel odd.

Additionally, I think this implies that live_selftests will break if
i915 is built-in (i.e., =y, not =m), as we'll again run in a
kernel-thread context at boot time. But I would hope nobody is trying to
run them that way? I guess this gets even hairier, because even if the
driver is built into the kernel, it's possible to kick them off from a
process context by tweaking the module parameters later, and then
re-binding the device... So all in all, this bug leaves an ugly
situation, with or without my patch.

I'm still curious about the reported failures, but maybe they require
some particular sequence of tests? I also don't have the full
igt-gpu-tools set running, so maybe they do something a little
differently than my steps in [1]?

Brian

[1] I have a GLk system, if it matters. I figured I can run some of
these with any one of the following:

  modprobe i915 live_selftests=1
  modprobe i915 live_selftests=1 igt__20__live_workarounds=Y
  modprobe i915 live_selftests=1 igt__19__live_uncore=Y
  modprobe i915 live_selftests=1 igt__18__live_sanitycheck=Y
  ...
