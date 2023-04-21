Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88A7D6EACBE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:22:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D105510EE47;
	Fri, 21 Apr 2023 14:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com
 [IPv6:2607:f8b0:4864:20::129])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850C010EE2A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 14:22:05 +0000 (UTC)
Received: by mail-il1-x129.google.com with SMTP id
 e9e14a558f8ab-329577952c5so693565ab.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 07:22:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1682086924; x=1684678924;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=iRE0WrMWpFap+y3dmkLyk4ksWv38PiYMbGEKVJWOWPE=;
 b=AnE8soA78cRTw/z6Mdl8v01EinY7b2zJC51/fkhvnxo5uCo0UL/jUJ5eGG8GHlK3q9
 /jEMi5cgCHXZY96W4+enSewpX/ixcLd+iCK8H+KhRTShFuwJT3LuyCk0JPDeGtQ0Pmvv
 HLI/WEYqsS8jVqiZz2E49H83PQPUgyz0+flfFchksW2GqE0c8RYZXnKJtBWNfwLf1LnU
 aE91dPOB9Vg6lS5Y+qM7c8I8fkR7pIyxcKyOPDs/EKeMZonyVcq3hu/VOJVghmjH3PuO
 McGPKBxcpjzc8u3VaiQw3aQhPKqqVbE5FZQcONugpSeuIDR7c0orO03m5TP30Nxd6Gbj
 vySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682086924; x=1684678924;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=iRE0WrMWpFap+y3dmkLyk4ksWv38PiYMbGEKVJWOWPE=;
 b=Jcis++jliBnRzOwA1p565ICavyBEZw7+mUqoe4sASPMnI9GndKDNRnYyYM86Sq/6wc
 DaqIz6HrnLBKovZ4Q4tx1DMHVyMePTfbeqRI9FO4fBDmd2/6yvweQ5UQrC6tgzWfNKzN
 bbLmH9FyHcOxDxb3vrArNWHqbLubDSQ46ArS0AV9RozfyPG2GlKi8PaQH5jUqKoS/mGZ
 A93K3RR2PawsvT6PrHF97gVgHMEvumnS4u4cUpLjH0d6nl9FXJITuAxl8suz93Dow61U
 wWqNx/89f0f1/Nrs+3mA0mZMyBJEROZbi0JrS4EYbhKonOuxvEMV10WhsaV06tDUdCVc
 I/sw==
X-Gm-Message-State: AAQBX9f47/vwojLOFdDOJ94VCNhrdhD2Csff4EjfMoXotYzxj5u1poIW
 D6POPZIlCvQYkdB8Uv+j1NNYV4ELKA81vgm0oEciDA==
X-Google-Smtp-Source: AKy350Z5Y1EuWQtA/tAHv2ZVhpFhudRKTHIxZvAilofNgLnO6LpBNA7CYSqGbpfNSM/qyCZvw+VVotb7Zt5JQ8D2KA0=
X-Received: by 2002:a92:ca05:0:b0:32a:baa8:2253 with SMTP id
 j5-20020a92ca05000000b0032abaa82253mr322511ils.8.1682086924161; Fri, 21 Apr
 2023 07:22:04 -0700 (PDT)
MIME-Version: 1.0
References: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
 <20230224-track_gt-v7-4-11f08358c1ec@intel.com>
In-Reply-To: <20230224-track_gt-v7-4-11f08358c1ec@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 21 Apr 2023 16:21:50 +0200
Message-ID: <CANn89i+1UML+p1N+bHFXG70V_AqOTQA7fh10_ASvThNK7gvUMw@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v7 4/7] lib/ref_tracker: remove warnings in
 case of allocation failure
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
Cc: netdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 David Airlie <airlied@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 21, 2023 at 1:35=E2=80=AFPM Andrzej Hajda <andrzej.hajda@intel.=
com> wrote:
>
> Library can handle allocation failures. To avoid allocation warnings
> __GFP_NOWARN has been added everywhere. Moreover GFP_ATOMIC has been
> replaced with GFP_NOWAIT in case of stack allocation on tracker free
> call.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---

Reviewed-by: Eric Dumazet <edumazet@google.com>
Thanks.
