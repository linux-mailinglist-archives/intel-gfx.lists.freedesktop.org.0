Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFA434FC7C
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Mar 2021 11:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 894696EA29;
	Wed, 31 Mar 2021 09:18:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2B0C6E8AB
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 11:06:12 +0000 (UTC)
Received: by mail-pj1-x1036.google.com with SMTP id s21so7575483pjq.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Mar 2021 04:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DskNrmJoVlSyLul5rgVfAIyNWef+AlzHHvEOelMyti0=;
 b=slVa6+xoi3BdoEmDA0VoVWkO8tuL/lXxZmvTYGJg7wGz1ScYaIRXrCfzU8ZDfT3ZM0
 ggp/ygaQGKJGhFRA5QW7f9U3EfpbXSMsXTYWx7p1nwBA8Ekc49nwzUS6jMME7z7gTQer
 pMAXay4GGKQ56ztl5Jx1BBEy9AL93xGYlIGeODixUv/aqu+Qb+EPVu6yig6as9K82Ctm
 Pc3Lb0tpzXuQ5QcHBiBeRUxF6g9QB2ZdsgL/8/oYQe2iFwggUqNONxGYgSPBasb/yQF+
 y9q6PFdQulOmXT/wl+s9SdMhbJRohu5/5mZE85W2ZPZCmG6ZrLW1OBmlPFp3zsxQu37T
 whJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DskNrmJoVlSyLul5rgVfAIyNWef+AlzHHvEOelMyti0=;
 b=LAFQAZ6QIUOf6Cm4qV3wY9eya44ocuwLzWTuyEBXt/Q8GqD/0mnwo65Mggw5C3Z4i4
 wbVySsNns7c1qtdwGDpiX4TecSMu4sWaQzkUecwVGqz+xmoz01YfcrUcrZdAeuq7r7p8
 v7xWhUlN+4eUOeHnxQEquADk6basCi/KMw+FtmJFT9xwj05DrySf9mN1xjDsT7o8HkU5
 G3behetfBPMN0vQASxMG2eBdmG2N/BPavUZwozWV+Ejx0wARAWIpFmjbCz8bj4Cf2CfF
 NQ1xsUsON1K6e2nkC5sKxKVxdMEX63Kvfw0V4jGrptT3j3U5LDOYs6RokDYZHb0ZTpsg
 mZBg==
X-Gm-Message-State: AOAM53399FM7nyBrcXv7x60jn4nYgE2ZSUioVL7yGnLYyD/2xPGgSLC9
 NoqGFM4gfMzItRHDBAX0+FFvQnKwKkkbrV6rKamixQ==
X-Google-Smtp-Source: ABdhPJxfOmfQB9fzlhBcQ+PyXZQEzxSloSUbr4UVE6rrRVfcHfZyWFno3tNgnDlI6rBdjWZE6AMTaSFq8fb0+pHpeFc=
X-Received: by 2002:a17:902:f68a:b029:e5:b17f:9154 with SMTP id
 l10-20020a170902f68ab02900e5b17f9154mr32285479plg.28.1617102372210; Tue, 30
 Mar 2021 04:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210326203807.105754-1-lyude@redhat.com>
 <20210326203807.105754-20-lyude@redhat.com>
In-Reply-To: <20210326203807.105754-20-lyude@redhat.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 30 Mar 2021 13:06:01 +0200
Message-ID: <CAG3jFytEUCqh6U6oG8hKqk-2bmr+qtcwg1gbWRQp_KxXTxfVsw@mail.gmail.com>
To: Lyude Paul <lyude@redhat.com>
X-Mailman-Approved-At: Wed, 31 Mar 2021 09:18:15 +0000
Subject: Re: [Intel-gfx] [PATCH v2 19/20] drm/dp_mst: Drop DRM_ERROR() on
 kzalloc() fail in drm_dp_mst_handle_up_req()
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, amd-gfx@lists.freedesktop.org,
 Thomas Zimmermann <tzimmermann@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey Lyude,

This patch looks good to me.

Reviewed-by: Robert Foss <robert.foss@linaro.org>

On Fri, 26 Mar 2021 at 21:40, Lyude Paul <lyude@redhat.com> wrote:
>
> Checkpatch was complaining about this - there's no need for us to print
> errors when kzalloc() fails, as kzalloc() will already WARN for us. So,
> let's fix that before converting things to make checkpatch happy.
>
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> ---
>  drivers/gpu/drm/drm_dp_mst_topology.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_dp_mst_topology.c b/drivers/gpu/drm/drm_dp_mst_topology.c
> index ec2285595c33..74c420f5f204 100644
> --- a/drivers/gpu/drm/drm_dp_mst_topology.c
> +++ b/drivers/gpu/drm/drm_dp_mst_topology.c
> @@ -4113,10 +4113,9 @@ static int drm_dp_mst_handle_up_req(struct drm_dp_mst_topology_mgr *mgr)
>                 return 0;
>
>         up_req = kzalloc(sizeof(*up_req), GFP_KERNEL);
> -       if (!up_req) {
> -               DRM_ERROR("Not enough memory to process MST up req\n");
> +       if (!up_req)
>                 return -ENOMEM;
> -       }
> +
>         INIT_LIST_HEAD(&up_req->next);
>
>         drm_dp_sideband_parse_req(&mgr->up_req_recv, &up_req->msg);
> --
> 2.30.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
