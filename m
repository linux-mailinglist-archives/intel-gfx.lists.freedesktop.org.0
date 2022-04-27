Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7658551167A
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Apr 2022 13:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39B9E10E346;
	Wed, 27 Apr 2022 11:55:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com
 [IPv6:2607:f8b0:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8584C10E243
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 11:55:31 +0000 (UTC)
Received: by mail-pl1-x62f.google.com with SMTP id d15so1348981plh.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Apr 2022 04:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fireburn-co-uk.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=XBfYKgyvKuh7NYO35F2lopTiElAeAwWqKXu995VG6ks=;
 b=c3STxWdlX83L33uy28WQFadwyaHWa2fehuwmqjshJCoCeeOZyvT5CxFuKdFsW3VEGg
 ffuxqmn2cPlBjBWAuStUHEmYHbnyWy3yBrkkHpX67KybBXKv2ffyUR5fwLulyeCyRTdP
 Z4BZE3Y/yOTTB3CwYNoTvPgwjlb3w5u0Pvux12HWho3PD86ZupboSBhYlx9ak7fqMDzX
 cXYAOHcuOJr3Pp9HQnwg8diDivRS8xh0WPiBebi4wWXH9denxqhBgGdD7PL+bSWBAYPv
 CCxZ7oZ1fDU0+568hOPwKDkG+CmnoMSqHQgM/hpz7fe/tMywyx/TGB2yUsn6/z3B+XHS
 oCTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XBfYKgyvKuh7NYO35F2lopTiElAeAwWqKXu995VG6ks=;
 b=Sh45jkp/oC8wfNORt26qrHSmq8Se1wfFcxB2YxN6vFDHPXhDX4Oju5BBTnIzacD2c9
 CBo2uZU7Sn33xd/iPFMmEb5XNLkNPnw9TMi1ggKR5Vm1TNZHrqpj8CoGlvhT/8RgLABS
 t9EfbZwa+lVuUWZID4ncCVP+XXYPr02qoYv/QpQHD4z7VAndValwjgXWykCz1IubuWP2
 hX4Qoq5tdY/l9P8TTb5Dmy9fAA7JQIw+cptiW4NzUZim6z/mRWb2y6KlTETpzx22SwCA
 Ou8OVYdaoxUeAdPEl734XPHRa/UBeKgYlO4/eU3R9rl54mIpXja8yR6IUo3vE1WHvBet
 7Ulg==
X-Gm-Message-State: AOAM533SQZ+FIERSCTZSGXQQxg7gAAVPq1i30uOo6jCabdjqqH1wBX8s
 FBARuuS9zeXolk+HNYlBZ7NiF8LdbV0ulqGTatT3tg==
X-Google-Smtp-Source: ABdhPJw8CrMPYh7Hj0TvqgDAmyTAHMro5hMBI1YiAfxE4sJ8Dfmdih8Crhpjae+e9JnAwGMKx1ooBj8qvIz43d397Uc=
X-Received: by 2002:a17:903:31d1:b0:159:804:e852 with SMTP id
 v17-20020a17090331d100b001590804e852mr27999972ple.19.1651060531108; Wed, 27
 Apr 2022 04:55:31 -0700 (PDT)
MIME-Version: 1.0
References: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
 <CAHbf0-H5uE4RtZwY0L8Wz0VG6QnU1+E3yhg3fDFVc3n__=nrNQ@mail.gmail.com>
 <c0facbf4-0e14-fde5-4334-499135a36f0c@amd.com>
In-Reply-To: <c0facbf4-0e14-fde5-4334-499135a36f0c@amd.com>
From: Mike Lothian <mike@fireburn.co.uk>
Date: Wed, 27 Apr 2022 12:55:19 +0100
Message-ID: <CAHbf0-FMqAA3vWx_uRDYG_vr=FX+tFoLAL6BZLDe5upv7KJqrg@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
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
Cc: dri-devel@lists.freedesktop.org,
 Arunpravin Paneer Selvam <Arunpravin.PaneerSelvam@amd.com>,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, alexander.deucher@amd.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 26 Apr 2022 at 17:36, Christian K=C3=B6nig <christian.koenig@amd.co=
m> wrote:
>
> Hi Mike,
>
> sounds like somehow stitching together the SG table for PRIME doesn't
> work any more with this patch.
>
> Can you try with P2P DMA disabled?

-CONFIG_PCI_P2PDMA=3Dy
+# CONFIG_PCI_P2PDMA is not set

If that's what you're meaning, then there's no difference, I'll upload
my dmesg to the gitlab issue

>
> Apart from that can you take a look Arun?
>
> Thanks,
> Christian.
