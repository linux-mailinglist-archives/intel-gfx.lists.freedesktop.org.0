Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027FE4E5525
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:24:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A9510E6F6;
	Wed, 23 Mar 2022 15:24:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com
 [IPv6:2607:f8b0:4864:20::b2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E8DF10E6F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 15:24:21 +0000 (UTC)
Received: by mail-yb1-xb2c.google.com with SMTP id x20so3167537ybi.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 08:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0vD20m8g5PwvGzKInMp8Kg7Nyn6jhDP8wyiv6EKOnK8=;
 b=xnqYWHc9Rh/KAHAeNxANCstSj/vKV0eDjPvQRGBOBKB9YqALTq7KVdGn2to84O5G7T
 P3mgdIencXN4x7wUQrTzlNrzzV0BRZ0Yx4xovbKXai4SnqzTujKHqbp3iWIbd0xtjZqZ
 LtRKvedmitK/b3Zbr/FiN7PafpUguML/pZ16SrgXWu/ls6CPL9e2cmVeFd5RBFrgQ6ox
 8MILP2zq+M7RsYPkHsVBhuqJ88ds7F6BtQ3YEAtOsql0tGifEPzBB04BbAExp/vpHtvO
 EPD9j7pnl1cW12KM/PMcIy648Z3jTRKlAS6UAFrXCvkntQCpAebWb9tIP4gzN6TIHFfI
 q7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0vD20m8g5PwvGzKInMp8Kg7Nyn6jhDP8wyiv6EKOnK8=;
 b=vjHnqn3W/a5g3uftk+OjoRy1C6gcMJ5uAxUe+wWJz3LdVWyP6fluMwMZVAmC8STueP
 nlnAhaROPdFHMn5YIO4YEfpa8rjiH02EAlk0hMH60xMjtsCkGOwF+lxKENNVjfxuHffC
 dcSbvyUK8XuUXysOQgnEj/Rp7yKtfBqhWobkO55xJFf9enYKsz1ZhqYlXMb1Ph0zs8hI
 C40ThicGfjgmp3jmJuLbH1XT72RX/7APH6tLl0M5hxfZjBnUMdF8GpvAZElpK1OqS8Qv
 KDazsD2hHekYj/lbD4wgzE27oClpFzTgvb7qYSu3ThFz7NWgDwZVvHAqjFz5qdKSHYqg
 b4yA==
X-Gm-Message-State: AOAM530Vaa+tyjJfmZZEdHdGRsaYW/Lflopbli5IG5KoLBKUd4X9yxtt
 ASB1pkdZbkyPZFMosSe7J4tdN2zqmYik5fjuZ917RA==
X-Google-Smtp-Source: ABdhPJxo7ogDtwljQ4TL6S5M9NR8I7rdIXfXJWICIHLgh9As9vgbQ2EsxzjM3DXJI3ugzmS/82ZhN4yjYZAiNmP6F2s=
X-Received: by 2002:a5b:710:0:b0:633:98f0:47ad with SMTP id
 g16-20020a5b0710000000b0063398f047admr438074ybq.201.1648049060548; Wed, 23
 Mar 2022 08:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <20220323062552.228429-1-Arunpravin.PaneerSelvam@amd.com>
 <7addb3e7-d265-c1a7-d449-7d0056f06d63@molgen.mpg.de>
 <fc60c561-c12a-c031-9558-abae3e3474ec@amd.com>
 <6f0888a2-f74d-f41f-d593-a8362e7dc673@molgen.mpg.de>
 <398f8851-d37b-4020-24ce-8f2ab9723e40@amd.com>
 <CAPj87rMETV9UkpbGRYAT3mjVhRtW75m0e9OLON6_+gdcD0Fo2Q@mail.gmail.com>
 <CADnq5_NuaN_ZziNipdqvvTQ41you==VqJg5oxQovowokaJ2K1Q@mail.gmail.com>
 <CAPj87rNyjd1xkEEARMoiaEdjLxy2rvcKa03fnNCnpN91DLhF1A@mail.gmail.com>
 <CADnq5_Mt5sWCC7hLLBH_DJdvXGqSTbNNaxWpY+cWWD9Vpa8KGQ@mail.gmail.com>
In-Reply-To: <CADnq5_Mt5sWCC7hLLBH_DJdvXGqSTbNNaxWpY+cWWD9Vpa8KGQ@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 23 Mar 2022 15:24:08 +0000
Message-ID: <CAPj87rPhuVTDJSsY-HsKfvV3xkDhEn7nUd3WLsxNuJD=Mx2Zxg@mail.gmail.com>
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

On Wed, 23 Mar 2022 at 15:14, Alex Deucher <alexdeucher@gmail.com> wrote:
> On Wed, Mar 23, 2022 at 11:04 AM Daniel Stone <daniel@fooishbar.org> wrot=
e:
> > That's not what anyone's saying here ...
> >
> > No-one's demanding AMD publish RTL, or internal design docs, or
> > hardware specs, or URLs to JIRA tickets no-one can access.
> >
> > This is a large and invasive commit with pretty big ramifications;
> > containing exactly two lines of commit message, one of which just
> > duplicates the subject.
> >
> > It cannot be the case that it's completely impossible to provide any
> > justification, background, or details, about this commit being made.
> > Unless, of course, it's to fix a non-public security issue, that is
> > reasonable justification for eliding some of the details. But then
> > again, 'huge change which is very deliberately opaque' is a really
> > good way to draw a lot of attention to the commit, and it would be
> > better to provide more detail about the change to help it slip under
> > the radar.
> >
> > If dri-devel@ isn't allowed to inquire about patches which are posted,
> > then CCing the list is just a fa=C3=A7ade; might as well just do it all
> > internally and periodically dump out pull requests.
>
> I think we are in agreement. I think the withheld information
> Christian was referring to was on another thread with Christian and
> Paul discussing a workaround for a hardware bug:
> https://www.spinics.net/lists/amd-gfx/msg75908.html

Right, that definitely seems like some crossed wires. I don't see
anything wrong with that commit at all: the commit message and a
comment notes that there is a hardware issue preventing Raven from
being able to do TMZ+GTT, and the code does the very straightforward
and obvious thing to ensure that on VCN 1.0, any TMZ buffer must be
VRAM-placed.

This one, on the other hand, is much less clear ...

Cheers,
Daniel
