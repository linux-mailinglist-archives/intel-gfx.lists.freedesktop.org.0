Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A982557883
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 13:16:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51A9C10EC15;
	Thu, 23 Jun 2022 11:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com
 [IPv6:2607:f8b0:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02E8A10EC15
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 11:16:10 +0000 (UTC)
Received: by mail-pg1-x52a.google.com with SMTP id s185so13105007pgs.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 04:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fireburn-co-uk.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Eimu2r0+Putpb0Qf0slNyoDa6KslIz2JFxHLLNZKDkk=;
 b=FtQlk3bjUaOBSKtosQz1mzseIQUSbK8ApHoKshZJ9O5uYiG3SuvSkJBgQasxvGFXra
 n9/IsZYgKtXaKEDEBz2cpPOMtmuO459E9G296oacM/wZiKe1D0pkJOT47nixL5IuEyY4
 yK2dlVdFBcPgh3ZCcv+OKY/o7DQ/JFMDzfViAcpU0aTlRMtuQnrnI/8mwd9+oVHS6nx+
 5ChaGdMSvPFdCpdrPdypfB/tcrr7YfWFS+14rii9w01+f6GeOwPMosbHFYLwZNCQCbQm
 W1MMAh3ZyxMq0RhL4+CNEyiu7PqD5a+BNc4/bnLXC42AJF69Pp5RnaLzWHrb3EKgz7KE
 oW3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Eimu2r0+Putpb0Qf0slNyoDa6KslIz2JFxHLLNZKDkk=;
 b=623NSggf/wyaYzJiIMyue9KbdOWOQwnTV6bCPrn0LD2vXo+8PLSKIs2CdjdPZVO3RM
 canZY3lETna4+CRNEYH+2+M9EBVoNHCFUBSO+qn5ggqlrI8cIC+70CGhY9M+bQnd59Yv
 hKaMKu11H9q/KL/3oCU7RvpCJMnG8yp3yhhVu+CvCIabBnr2bVXbo6Y7RIovGVw/vsbd
 YPPL1yhSLv0nkdki0emLSp37huXs38EoRJdRvSNjkJBfCwefXCHX1X9/E9M/LnPXkupz
 ztJoK8IUtRWp5JOIydN81maSQexc1iVRKqJ3q9P6Gfe2KwqAjBQDsKrzDDDrhVnpRAV3
 lKrQ==
X-Gm-Message-State: AJIora+XYvCB5RbGb36gH8ENZE36prn5cP4NGG8PVurhUUdZWSkTHaab
 SZlSCWA9rHYH7sV8XD/1bRjKuC528MphFspUaipv7w==
X-Google-Smtp-Source: AGRyM1s7DqocWg0I8e4JgZw9XsKNBQGKACJNoE3kY5IZKvQ1e1xYIs+AMtz6aT8Gnqu64ArdLX/Xv0sD4yiTI+4A6mg=
X-Received: by 2002:a05:6a00:1481:b0:51c:4e9a:f618 with SMTP id
 v1-20020a056a00148100b0051c4e9af618mr41145833pfu.43.1655982970407; Thu, 23
 Jun 2022 04:16:10 -0700 (PDT)
MIME-Version: 1.0
References: <20220407054651.3924-1-Arunpravin.PaneerSelvam@amd.com>
 <CAHbf0-H5uE4RtZwY0L8Wz0VG6QnU1+E3yhg3fDFVc3n__=nrNQ@mail.gmail.com>
 <c0facbf4-0e14-fde5-4334-499135a36f0c@amd.com>
 <CAHbf0-FMqAA3vWx_uRDYG_vr=FX+tFoLAL6BZLDe5upv7KJqrg@mail.gmail.com>
 <CAHbf0-En606VT_HYDyeo6TtsfSZmR_+wsZaVgS4XiedLO9ndiA@mail.gmail.com>
 <8b99ca20-f711-ec32-0cd2-16fc52846ce0@amd.com>
 <CAHbf0-EzPP5gAyZQmxeAo3Ep0g-rO4XbDgEB_SdsR84xY+at9A@mail.gmail.com>
 <CAHbf0-G-rnvNXaXxMzkPerW6h=9vkxJyysUUV-oJV5UGD67KqA@mail.gmail.com>
 <CADnq5_PTRPTsCvGwKFzNA_k7diAVqYEv1xV1yJszRD1K-v2FfQ@mail.gmail.com>
 <MN2PR12MB43425B6EC07A7F6877B884C7E4DB9@MN2PR12MB4342.namprd12.prod.outlook.com>
 <CAHbf0-G8Qgv-uKHBYxhv=SLUv7-z4gzjMziN_x+oAobTrqW0PQ@mail.gmail.com>
In-Reply-To: <CAHbf0-G8Qgv-uKHBYxhv=SLUv7-z4gzjMziN_x+oAobTrqW0PQ@mail.gmail.com>
From: Mike Lothian <mike@fireburn.co.uk>
Date: Thu, 23 Jun 2022 12:15:59 +0100
Message-ID: <CAHbf0-F36EonCAUVeWnhoiXD95_7=8fnbNo0wGWD-L74L-cT-Q@mail.gmail.com>
To: "Paneer Selvam, Arunpravin" <Arunpravin.PaneerSelvam@amd.com>
Content-Type: text/plain; charset="UTF-8"
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 Alex Deucher <alexdeucher@gmail.com>, "Koenig,
 Christian" <Christian.Koenig@amd.com>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi

The buddy allocator is still causing me issues in 5.19-rc3
(https://gitlab.freedesktop.org/drm/amd/-/issues/2059)

I'm no longer seeing null pointers though, so I think the bulk move
fix did it's bit

Let me know if there's anything I can help with, now there aren't
freezes I can offer remote access to debug if it'll help

Cheers

Mike
