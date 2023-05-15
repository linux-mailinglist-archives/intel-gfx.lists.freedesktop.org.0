Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B269702F5A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 16:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41B410E1EB;
	Mon, 15 May 2023 14:14:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com
 [IPv6:2607:f8b0:4864:20::134])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 944FB10E1EB
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 14:14:47 +0000 (UTC)
Received: by mail-il1-x134.google.com with SMTP id
 e9e14a558f8ab-3319a6f989aso90296485ab.2
 for <Intel-gfx@lists.freedesktop.org>; Mon, 15 May 2023 07:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1684160086; x=1686752086;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=2MS5pErOMzbvk/m8xyqMY4LCt4dsHCCnspwEyjFHPZU=;
 b=TgSOmd9nOSgUwBEaamPGIBsQ2dnGg5xOjFJTOfPO52mpIuJrUWaQIbGCBMg69V0Wkt
 agKFK7IyrpDoxa3u2K6OP5e9fOLeo8rBxzNdqTYtpLohcZJJFP37icQILD5GoDenmWnX
 wsCk6RjuARlhUN2XznJ0uyy31EP47lnQNsqmA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684160086; x=1686752086;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=2MS5pErOMzbvk/m8xyqMY4LCt4dsHCCnspwEyjFHPZU=;
 b=gUDgiLNBQ4oiw/GtOgt2Qin6q65zedgGa72vb7RvwVrTuCZl+z/K8xNFDV4KIbTVvt
 4h31SvD4UeYnpEOKAG34WV7FW08RNHw07e7QwgITd61JE6sLFyAK9AtEIT/qPXlnLSv/
 JtSinvGmU0CnMlM4Mn4zhMk4UHpKICE6XYpoRIgQ6dZnLgZVNblD0OpeeNwPDoVGxIGk
 z9zheL+ocl40W87nLvUwOmcUL6QnjT1AlCoZtfvUXFFy94UPxkUsU1g39l95iel9QQyk
 TsoTTns19fLK94OImUVAoAdxHXQRX7aBLC6YaCYK0WfTHwrx5K7lmVYPMmY956Eei8b2
 GU4A==
X-Gm-Message-State: AC+VfDzoXGhuo7Cds5FXLLcppSgpven7ekohQofImPdpgBSHIW536a+5
 03QRvf+PKjZvHcKFlgXWW0S7WQKH4/DL3fHz8Hw3mw==
X-Google-Smtp-Source: ACHHUZ4A+iJyqIJrCSJTwSuMukBQeD17G9TycP/xyDPUcv+0di7XLHPF3K+lFiWNWCnIJtq6p0ssZqorGImUrrYO+zE=
X-Received: by 2002:a92:4a06:0:b0:328:39a6:ed13 with SMTP id
 m6-20020a924a06000000b0032839a6ed13mr20323235ilf.4.1684160086365; Mon, 15 May
 2023 07:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
From: Rob Clark <robdclark@chromium.org>
Date: Mon, 15 May 2023 07:14:35 -0700
Message-ID: <CAJs_Fx4tPYkPo-Oc2BduuzC09OfkB3PbFwBQ3b7U9rG_Akh_Fw@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/2] gputop/intel_gpu_top: Move name
 to be the last field
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 15, 2023 at 6:36=E2=80=AFAM Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>
> Rob,
>
> I thought maybe when you add memory stats the same field order like top(1=
)
> would feel more natural? That is client name comes last and is left justi=
fied.
> All other stats then come in the middle, between PID and NAME.
>
> DRM minor 0
>     PID     render         copy         video     video-enhance  NAME
>    2704 |=E2=96=8C           ||            ||            ||            | =
kwin_x11
>    2734 |=E2=96=8F           ||            ||            ||            | =
plasmashell
>    3932 |            ||            ||            ||            | krunner
>    4414 |            ||            ||            ||            | xdg-desk=
top-por
> 1999477 |            ||            ||            ||            | firefox
> 2162094 |            ||            ||            ||            | thunderb=
ir

Seems like a good idea, and more in line with top/htop/nvtop

BR,
-R

> intel-gpu-top: Intel Alderlake_s (Gen12) @ /dev/dri/card0 -   15/  15 MHz
>     99% RC6;  0.01/ 5.46 W;       34 irqs/s
>
>          ENGINES     BUSY                                        MI_SEMA =
MI_WAIT
>        Render/3D    1.31% |=E2=96=8C                                   | =
     0%      0%
>          Blitter    0.00% |                                    |      0% =
     0%
>            Video    0.00% |                                    |      0% =
     0%
>     VideoEnhance    0.00% |                                    |      0% =
     0%
>
>     PID   Render/3D      Blitter        Video      VideoEnhance  NAME
>    2734 |=E2=96=8F           ||            ||            ||            | =
plasmashell
>    2704 |=E2=96=8F           ||            ||            ||            | =
kwin_x11
>    1837 |=E2=96=8F           ||            ||            ||            | =
Xorg
> 3429732 |            ||            ||            ||            | kwrite
> 2162094 |            ||            ||            ||            | thunderb=
ird
>
> Cc: Rob Clark <robdclark@chromium.org>
>
> Tvrtko Ursulin (2):
>   gputop: Move client name last
>   intel_gpu_top: Move client name last
>
>  tools/gputop.c        | 19 +++++++++----------
>  tools/intel_gpu_top.c | 19 +++++++++----------
>  2 files changed, 18 insertions(+), 20 deletions(-)
>
> --
> 2.37.2
>
