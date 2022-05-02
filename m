Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C19A517449
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 18:31:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE7AB10F011;
	Mon,  2 May 2022 16:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B37F10F011
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 16:31:48 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 w5-20020a17090aaf8500b001d74c754128so16560398pjq.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 02 May 2022 09:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fireburn-co-uk.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=5DXG6OzenA4JxtNcAqNdKZ6Lnghc0/nVTmrMktg2yAk=;
 b=LlUW4MSGAJS1SLkyE1EdQEV65iwM7GxuDb2kIuMt4hooqHVfbTsRCpiX597FOdcwh1
 fNGA86LPOwPSszNc0Fc/qJ1ojsIUDlpdUMvNa3PRDJ4XorjGpGnJgplS4mlpAOhguYT0
 wH82H0baFaNP+FBMuq3GAxoRKqaaBvwIGMuFE/0AcPEJ0WLd8iz6wCnGQvHxPmAV6xKn
 QhLnEB4rsrtfTw6/BCcAWaUdSchoaODdFOv1Kr/MNGn3vw9wAUYn1gvzJmOc2Gmi9WGK
 RhHX3CKOOluMCZVXY3uAA1A4/c3tO+7uq3h8RLtUWAuC8scNjhg+8nH7OQ4or2Yv+ax4
 lRjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=5DXG6OzenA4JxtNcAqNdKZ6Lnghc0/nVTmrMktg2yAk=;
 b=X+HEyRjFb80Wpuyd2uEFis5l7CwErqgRC3W35WF/87vX6TJm+035u5PCTcv4LtOwS2
 YRIoC0TnUykOlQVwK97mF8RamcdL3u+TyrNywtB7ooLkbGQurGNej94lN7+AnwRVhtXL
 KyGo2eFsF4/i1gsEBby43FMp/qrYkqlZ2v+xmpZwOGcV5AicnhGCJPRUpu2IEiUQUUh+
 /+D4zE3KGSt0Dmuh88H8IoqUTJPETuwcsU/fv77Kj7nFXijis/L3+hEck1wO/5aquOfK
 z8iQc8WnGVEUT/MOUc9X/mzmP6bZxt2pt8plojiBv4Ng++TreDXyR4fi8WQrLi/m2gX6
 O0Kw==
X-Gm-Message-State: AOAM532HNST/zbr8Qw4DLwkkDQqlDbi022tG4/ZL6hbIQF1cTVv1InrC
 2XWGvbACJc4rnyusc5Lfmp2w8hHomLmvPDCLpCo7Bw==
X-Google-Smtp-Source: ABdhPJzP7IBFrgDen677xLa2KBjavhGqOeefQGiz2x7MgXuduTru3h3L+KFwL6GQGbduyB4IEEU4ukYbo6JWa851fUA=
X-Received: by 2002:a17:902:c7d3:b0:15e:b2f1:15f4 with SMTP id
 r19-20020a170902c7d300b0015eb2f115f4mr1154642pla.39.1651509107921; Mon, 02
 May 2022 09:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
 <CAHbf0-H5uE4RtZwY0L8Wz0VG6QnU1+E3yhg3fDFVc3n__=nrNQ@mail.gmail.com>
 <c0facbf4-0e14-fde5-4334-499135a36f0c@amd.com>
 <CAHbf0-FMqAA3vWx_uRDYG_vr=FX+tFoLAL6BZLDe5upv7KJqrg@mail.gmail.com>
 <CAHbf0-En606VT_HYDyeo6TtsfSZmR_+wsZaVgS4XiedLO9ndiA@mail.gmail.com>
 <8b99ca20-f711-ec32-0cd2-16fc52846ce0@amd.com>
In-Reply-To: <8b99ca20-f711-ec32-0cd2-16fc52846ce0@amd.com>
From: Mike Lothian <mike@fireburn.co.uk>
Date: Mon, 2 May 2022 17:31:36 +0100
Message-ID: <CAHbf0-EzPP5gAyZQmxeAo3Ep0g-rO4XbDgEB_SdsR84xY+at9A@mail.gmail.com>
To: Arunpravin Paneer Selvam <arunpravin.paneerselvam@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v12] drm/amdgpu: add drm buddy support to
 amdgpu
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
Cc: intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, alexander.deucher@amd.com,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2 May 2022 at 16:54, Arunpravin Paneer Selvam
<arunpravin.paneerselvam@amd.com> wrote:
>
>
>
> On 5/2/2022 8:41 PM, Mike Lothian wrote:
> > On Wed, 27 Apr 2022 at 12:55, Mike Lothian <mike@fireburn.co.uk> wrote:
> >> On Tue, 26 Apr 2022 at 17:36, Christian K=C3=B6nig <christian.koenig@a=
md.com> wrote:
> >>> Hi Mike,
> >>>
> >>> sounds like somehow stitching together the SG table for PRIME doesn't
> >>> work any more with this patch.
> >>>
> >>> Can you try with P2P DMA disabled?
> >> -CONFIG_PCI_P2PDMA=3Dy
> >> +# CONFIG_PCI_P2PDMA is not set
> >>
> >> If that's what you're meaning, then there's no difference, I'll upload
> >> my dmesg to the gitlab issue
> >>
> >>> Apart from that can you take a look Arun?
> >>>
> >>> Thanks,
> >>> Christian.
> > Hi
> >
> > Have you had any success in replicating this?
> Hi Mike,
> I couldn't replicate on my Raven APU machine. I see you have 2 cards
> initialized, one is Renoir
> and the other is Navy Flounder. Could you give some more details, are
> you running Gravity Mark
> on Renoir and what is your system RAM configuration?
> >
> > Cheers
> >
> > Mike
>
Hi

It's a PRIME laptop, it failed on the RENOIR too, it caused a lockup,
but systemd managed to capture it, I'll attach it to the issue

I've got 64GB RAM, the 6800M has 12GB VRAM

Cheers

Mike
