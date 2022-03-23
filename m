Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC38C4E54D3
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:04:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BB210E76E;
	Wed, 23 Mar 2022 15:04:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38A8F10E777
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 15:04:08 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id j2so3266030ybu.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 08:04:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/q655hlpcKbYdO9fJyRr0g9SmFAUcvg0z56HSQrgBXs=;
 b=qaBK8sKppcaRzErNHs7XlKcRTafbewC4j9oQigOyjY+1s0DB/UVnbR2vqwyYSSVBmC
 9mSet1LA5w51T3rypL0RtYttSwMvpfGcHmyDFwpkgH/Z0sVuJkHy6754X9Atm2DRqH8K
 z+ZIeNy7BKAPSUH66Cucd2p1FCxNRax/c0fd9eJYtC9eAj0VGJShMuo0Ob0CoKy8LlBd
 Is+4Sj1BeQDIyGI1XUzAVUqXg3lpF0HBxCY5D8Eo69tpkaEJYLTWNGTEdxbZ9IXhu5bw
 z90PuLKPDYRsFMNE4zSeNGnzmhmTLDPRv/g2FEcX8uRShNbC4SsRP0KJ3qQ9DI3QP9no
 AImg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/q655hlpcKbYdO9fJyRr0g9SmFAUcvg0z56HSQrgBXs=;
 b=0xx3SbhjYMKvExZbZ1fLUja/KQ2p7kTgx8T8XRs+PdtpeoZ2m6CvM2M5g3wUIsTiGa
 3NaL3oy1pcLRLagDbtJ9IV45bSL9/386uRkx07qGLLJv39lB7+3V8NJFhj/IvKZvVoPA
 Ipp37W4mX1BkI8J0bJCZQvHAyqiEYWBr/08DZW1MwORksdoflP+YC/2rc+OEY7Rl97oK
 GhZtTDCFR6Anmc+oILDn0Qy8gbnMnQtd3GTU9SAD4kF6Swei23m/YqC56LSZ2vwyKOzg
 YhkRKDLGg3OgUKIPLtP2uZDsGEsbL7FcrnVt9ZZw5sHprQejq5pwdcwY/oA5AgXiM1dD
 fS5g==
X-Gm-Message-State: AOAM531NDcOAgkFj9UZJqrkhRXzGIVIlFSbBVksL15HEDnTaZgQKlqm1
 VwlGUmldTj2erpcCy06nQpukcaA7TaTg760vJvDGEA==
X-Google-Smtp-Source: ABdhPJxcMJ6+Hr2/I5UkaYfdaVtR0YnwOzthjjTl3lrRLZf4luG1nyVOV8v2NzvJt/qNmoaX0MFmxJtsdmgiECwWvn8=
X-Received: by 2002:a25:b7c8:0:b0:633:5650:781e with SMTP id
 u8-20020a25b7c8000000b006335650781emr339945ybj.466.1648047847294; Wed, 23 Mar
 2022 08:04:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220323062552.228429-1-Arunpravin.PaneerSelvam@amd.com>
 <7addb3e7-d265-c1a7-d449-7d0056f06d63@molgen.mpg.de>
 <fc60c561-c12a-c031-9558-abae3e3474ec@amd.com>
 <6f0888a2-f74d-f41f-d593-a8362e7dc673@molgen.mpg.de>
 <398f8851-d37b-4020-24ce-8f2ab9723e40@amd.com>
 <CAPj87rMETV9UkpbGRYAT3mjVhRtW75m0e9OLON6_+gdcD0Fo2Q@mail.gmail.com>
 <CADnq5_NuaN_ZziNipdqvvTQ41you==VqJg5oxQovowokaJ2K1Q@mail.gmail.com>
In-Reply-To: <CADnq5_NuaN_ZziNipdqvvTQ41you==VqJg5oxQovowokaJ2K1Q@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 23 Mar 2022 15:03:56 +0000
Message-ID: <CAPj87rNyjd1xkEEARMoiaEdjLxy2rvcKa03fnNCnpN91DLhF1A@mail.gmail.com>
To: Alex Deucher <alexdeucher@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] Commit messages (was: [PATCH v11] drm/amdgpu: add
 drm buddy support to amdgpu)
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
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Alex,

On Wed, 23 Mar 2022 at 14:42, Alex Deucher <alexdeucher@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 10:00 AM Daniel Stone <daniel@fooishbar.org> wrot=
e:
> > On Wed, 23 Mar 2022 at 08:19, Christian K=C3=B6nig <christian.koenig@am=
d.com> wrote:
> > > Well the key point is it's not about you to judge that.
> > >
> > > If you want to complain about the commit message then come to me with
> > > that and don't request information which isn't supposed to be publicl=
y
> > > available.
> > >
> > > So to make it clear: The information is intentionally hold back and n=
ot
> > > made public.
> >
> > In that case, the code isn't suitable to be merged into upstream
> > trees; it can be resubmitted when it can be explained.
>
> So you are saying we need to publish the problematic RTL to be able to
> fix a HW bug in the kernel?  That seems a little unreasonable.  Also,
> links to internal documents or bug trackers don't provide much value
> to the community since they can't access them.  In general, adding
> internal documents to commit messages is frowned on.

That's not what anyone's saying here ...

No-one's demanding AMD publish RTL, or internal design docs, or
hardware specs, or URLs to JIRA tickets no-one can access.

This is a large and invasive commit with pretty big ramifications;
containing exactly two lines of commit message, one of which just
duplicates the subject.

It cannot be the case that it's completely impossible to provide any
justification, background, or details, about this commit being made.
Unless, of course, it's to fix a non-public security issue, that is
reasonable justification for eliding some of the details. But then
again, 'huge change which is very deliberately opaque' is a really
good way to draw a lot of attention to the commit, and it would be
better to provide more detail about the change to help it slip under
the radar.

If dri-devel@ isn't allowed to inquire about patches which are posted,
then CCing the list is just a fa=C3=A7ade; might as well just do it all
internally and periodically dump out pull requests.

Cheers,
Daniel
