Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0070C6EACC7
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 16:25:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534E410EE47;
	Fri, 21 Apr 2023 14:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D38010EE26
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 14:24:58 +0000 (UTC)
Received: by mail-il1-x130.google.com with SMTP id
 e9e14a558f8ab-328cb023b1dso695535ab.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 07:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20221208; t=1682087098; x=1684679098;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Fev/HjWH2B8yyfQiDGZ9D/O2oZYyJ9gGuApag0ZRVwc=;
 b=TVGpX8Rsft5hzMr9h6Hwyheu0HJYGuHxxs7ojc6Kil4QcUiO/DlWT0in/uLxRo6Cjj
 k1VQcRlDqVO4SIIb5IVwDa4JdfL4zYLvXGhLV/kB+NM5PH/u+XjBKfnkjEQ9QVQmK60w
 Vc8FzK6DfY5mi2TbK4uHxCC49bYsU4nxKZJdASBm+oks7LbQ+RxB90HBUI6mYlegxr7U
 1XR6A+LHNGRyTDAhBVssIxGbpCl6otjWPglcnEPEXNFs1XXpb+XtVA4I/tlXGMqxR+pq
 8D4T4nbhmC3rl/qw+IT0JwOuDIGlL0G4YOWFtTiFq80UoDYKM6UOS6EJnHjngA/3Jjn6
 mLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1682087098; x=1684679098;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Fev/HjWH2B8yyfQiDGZ9D/O2oZYyJ9gGuApag0ZRVwc=;
 b=CjlJLyIrOcnb6mwhVecJO0HTvUCvts4ngGnEOlxrHeFM/TTeNpvy7NsFq/zJUNVarB
 iNsUYj4AzgPfqzpt0xgJ01YOxIuZsKlqeb9ZBEBJeB8KsYdboULDtCVtnGRU4mhs9UOA
 M6bZjnNgxvy1LW4gd5NbyXAxWKPfA7nrWslZfK7/a24NT98NWTjLczs+8mmqZfhommSQ
 RFLbNT2eWfP28TLbQ0XXxQzDUMxOyFpNVdC1w5hU95Sa+mL7uw1PSI1QjfL5iwEXFjcg
 ZkHxT6dGuEEIG+lCuqnz5triXsXwuAMwDH7hd0UMsO4NEApsu6H2w6I+MDuVsvsgn6Rf
 y+wQ==
X-Gm-Message-State: AAQBX9clUqR8sMowcJsvtpNnB5kYH+GyeWEzo6m6PtzqdNfRqvwUnsc+
 6DXIeSoe2RwmBJdNSfQ6STUs2/BjefKaEwMDfYUCPw==
X-Google-Smtp-Source: AKy350Z0juoPECKlzKlGMdUfKVumXOK21XHMESzNTTUc7EvrFvimwX3M8kvTGyloRw/nYChUw0o5sGJI99iK2oqYk/g=
X-Received: by 2002:a05:6e02:1a22:b0:32a:b8fd:19be with SMTP id
 g2-20020a056e021a2200b0032ab8fd19bemr279553ile.18.1682087097600; Fri, 21 Apr
 2023 07:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230224-track_gt-v7-0-11f08358c1ec@intel.com>
 <20230224-track_gt-v7-1-11f08358c1ec@intel.com>
In-Reply-To: <20230224-track_gt-v7-1-11f08358c1ec@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 21 Apr 2023 16:24:43 +0200
Message-ID: <CANn89iL65YYs_+cJs6STTH=7n22VLi-eru2FzFh1rtrxp_a7Aw@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v7 1/7] lib/ref_tracker: add unlocked leak
 print helper
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
> To have reliable detection of leaks, caller must be able to check under t=
he same
> lock both: tracked counter and the leaks. dir.lock is natural candidate f=
or such
> lock and unlocked print helper can be called with this lock taken.
> As a bonus we can reuse this helper in ref_tracker_dir_exit.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---

SGTM, thanks.

Reviewed-by: Eric Dumazet <edumazet@google.com>
