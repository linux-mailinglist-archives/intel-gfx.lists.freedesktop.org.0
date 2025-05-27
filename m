Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C449AC4FE5
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 15:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8212010E16D;
	Tue, 27 May 2025 13:35:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="XLZLRyxC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED9F10E4D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 13:35:35 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-47662449055so15404621cf.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 May 2025 06:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1748352934; x=1748957734;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YEZyB1x1F+5CkjV/pim3lCXpXrVwiFrJ/FhH6JZPB9I=;
 b=XLZLRyxCHg1cuUB7IGqMmpjogrVMzOvNS+Jsn0fEdiFud+/eCHhq8gDoMJiex4A2Ft
 mIEGB0oylmOieWXUARqBiqXrvhR7mmM2DqpqLEJo7PVGCIq8BEKtjVD4aKp30wDEqxHj
 +KkGpPObSDfrTX/DM1/rv9M6OfUr7NfadFKDYwlrNaHlIOgO2p34TF/YxLxpqoEbhrgK
 nlqqtd7k/10djYRO3NdSWhUGW4IksjyCdBJwYsG7yW4IeHs2fj7evbM+aGBj7e1HqXic
 I21EpYxCRV/k+5J+3aartRZHWuoFfywk53H41tp/JWW0rG1bEHP5m29zx5ns0iWu1co0
 3FWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1748352934; x=1748957734;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YEZyB1x1F+5CkjV/pim3lCXpXrVwiFrJ/FhH6JZPB9I=;
 b=DX/h9Xq3VH0GlX2mF4l6BNPSCx9IG5tOHcMfq3fw7r7i1fKoXnLfwK729jXqgQC9om
 eDkXUoSluf/H4Y4EMG5RylCw8er/o5bBhp4myB5XlUTV18Vd9tgcea40xrDs8AVOUvsw
 oSLspDhzjJWriq8UM1WXJxYPOi+43662glZ670yTxIXzK4pJd7xD3sHxfHp/9ZtI0nqf
 HfJhCfYRImosIxLie9IKQIARnmSLHGWI64QTiCY9x09ya62eyQ5XwJXrCcUxGW5grULO
 RGW6PwAOGQ5thXkHOjKtjXngRe38RtYcb0amjHhYs3KuUHTDt6h0hE8eSEtzV24zOgTv
 eVug==
X-Forwarded-Encrypted: i=1;
 AJvYcCUzIyivJQm+LH6xcUqZMv33HpBV/07IczF/mG8yZLWtD4699m2CBT5fpgjaYS+dMw/Z7X/PEgbeSWM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwbQ8u5i1exVvuslaEkkPZ5xpzYhDoVgVpihjx1jyacjc4pkULh
 eGqk4uf4XcEzzdYd3LUs51UrnXag0/9uOXzEZaBVrIbCa2RDL0xiXJxKoEq+zEbS8ZjgTS0ib/X
 IIKGHdSo6bfY7jn2FP9QPcPU8WG0mgITDmEUVX/Jx
X-Gm-Gg: ASbGncviotYFguj5G5TM+JFeJ5kDtjOxM2VCp6tjnONzzQWLKNo11L5QwlkCqlPUvem
 S0FaQlRoG1uWqhAcjLUHfw2cDHYLhO0dDBNEo1wZ/Q3mAleqjL6609azw9ogkus+rnUbkQi/PZ0
 2U+dp3kjZbrPOYlmyqpcGnaecDC+OuVnz+T5vrRiVrNDti
X-Google-Smtp-Source: AGHT+IH8RlW6fXMU8jqYWLoBXY1sSMdePhK4LTMkNh/Wwj5ogOouIbtFkZUDwPHlAhRg8OJT0lxhqcW9paNA2rzLz9A=
X-Received: by 2002:a05:622a:4c83:b0:477:5d31:9c3f with SMTP id
 d75a77b69052e-49f47b04961mr211606171cf.42.1748352933955; Tue, 27 May 2025
 06:35:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250527-reftrack-dbgfs-v10-0-dc55f7705691@kernel.org>
 <20250527-reftrack-dbgfs-v10-8-dc55f7705691@kernel.org>
In-Reply-To: <20250527-reftrack-dbgfs-v10-8-dc55f7705691@kernel.org>
From: Eric Dumazet <edumazet@google.com>
Date: Tue, 27 May 2025 06:35:23 -0700
X-Gm-Features: AX0GCFuUcYxaQRTirO6utZCvvEE-Lz0VFl_jzNkZ3QII3s7fn37-Kf5B5Nl9CTI
Message-ID: <CANn89i+PFJguSKfbiX1nWSvPA2S8O-pb7HxVT4+zkjMdD3meqg@mail.gmail.com>
Subject: Re: [PATCH v10 8/9] net: add symlinks to ref_tracker_dir for netns
To: Jeff Layton <jlayton@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 "David S. Miller" <davem@davemloft.net>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Kuniyuki Iwashima <kuniyu@amazon.com>, 
 Qasim Ijaz <qasdev00@gmail.com>, Nathan Chancellor <nathan@kernel.org>,
 Andrew Lunn <andrew@lunn.ch>, 
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 27, 2025 at 4:34=E2=80=AFAM Jeff Layton <jlayton@kernel.org> wr=
ote:
>
> After assigning the inode number to the namespace, use it to create a
> unique name for each netns refcount tracker with the ns.inum and
> net_cookie values in it, and register a symlink to the debugfs file for
> it.
>
> init_net is registered before the ref_tracker dir is created, so add a
> late_initcall() to register its files and symlinks.
>
> Signed-off-by: Jeff Layton <jlayton@kernel.org>
> ---
>  net/core/net_namespace.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
>
> diff --git a/net/core/net_namespace.c b/net/core/net_namespace.c
> index 8708eb975295ffb78de35fcf4abef7cc281f5a51..39b01af90d240df48827e5c31=
59c3e2253e0a44d 100644
> --- a/net/core/net_namespace.c
> +++ b/net/core/net_namespace.c
> @@ -791,12 +791,40 @@ struct net *get_net_ns_by_pid(pid_t pid)
>  }
>  EXPORT_SYMBOL_GPL(get_net_ns_by_pid);
>
> +#ifdef CONFIG_NET_NS_REFCNT_TRACKER
> +static void net_ns_net_debugfs(struct net *net)
> +{
> +       ref_tracker_dir_symlink(&net->refcnt_tracker, "netns--%lx-%u-refc=
nt",
> +                               net->net_cookie, net->ns.inum);

With proper annotations, you should be able to catch format error as in:

warning: format =E2=80=98%lx=E2=80=99 expects argument of type =E2=80=98lon=
g unsigned int=E2=80=99,
but argument x has type =E2=80=98u64=E2=80=99 {aka =E2=80=98long long unsig=
ned int=E2=80=99}
[-Wformat=3D]
