Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4657903FE
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Sep 2023 01:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D0510E062;
	Fri,  1 Sep 2023 23:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com
 [IPv6:2a00:1450:4864:20::535])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAC6310E7D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Sep 2023 23:23:10 +0000 (UTC)
Received: by mail-ed1-x535.google.com with SMTP id
 4fb4d7f45d1cf-52c88a03f99so38789a12.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 01 Sep 2023 16:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1693610589; x=1694215389;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=eH2M981EP90qaHAB4qQzOBDNvRY7/kzKPU1903tIMN0=;
 b=hMQYJZd/JzwejM45mBb36pOUhDRCtD4Qfj27phebLAdDb832EzDYCLTDiOAq0U3Axq
 3PcDFp7Y+iHPz2RA6JLCe4EwnfqeQdvWnTBM/MrffTcThm7DMEBzDXzBwhXCTmYRl0qZ
 ZkYdrjKxsnM9TcIlpqrH2za8DcDttYqltM34I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693610589; x=1694215389;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=eH2M981EP90qaHAB4qQzOBDNvRY7/kzKPU1903tIMN0=;
 b=QOhoosPvzw00p47ZX3b8LW9OV3G51AfIJzTUTJYwAWn7ul5Vv46W2vUBniQoFrQsuv
 HioVvUw8OrH3eZm2brxgS3F6DR/4pdh3ar7Emzv4c8xKxmFL5wZmzMGdQ6pArTw/u6HM
 OV/Ye6WVBXvW5mJTWP2ZUxEo58DpXefrrfpqjMyWFGOvKOAzfPhvF3zXq/xN3tcxeEiX
 zwbjpUhjeqmxa/teswx36xaRpqd0dk9UJUdqt8Ek0tUmBgAKoQ4cCM0U0GJQI8sORQHI
 MyFG5l8lCnoZmylsSGj1XNa1WjbuC8G1NVZKXr3oPrpbcKOccEjy+iJq4UTlJi8VNUZI
 MyTg==
X-Gm-Message-State: AOJu0Yxl7DdEYHXFRpuoxpmonoYU5Wo9c3vJKDQMcBMVY09z7+GikmvJ
 q3THmK/pKDcmlKJOD5AErDi350jX1S2Gb1LDOfMfQA==
X-Google-Smtp-Source: AGHT+IEZ6KZYL76fmYB8g5SAHyjDqPLK5yxAfOVcthBV4aYY0nU9RV+cqAZ485VFcfgG93zjcFuM8zkWvKGrnGCIf0I=
X-Received: by 2002:a17:906:73d2:b0:9a1:c370:1aef with SMTP id
 n18-20020a17090673d200b009a1c3701aefmr2874614ejl.55.1693610589066; Fri, 01
 Sep 2023 16:23:09 -0700 (PDT)
MIME-Version: 1.0
References: <20230824205335.500163-1-gildekel@chromium.org>
 <20230824205335.500163-7-gildekel@chromium.org>
In-Reply-To: <20230824205335.500163-7-gildekel@chromium.org>
From: Manasi Navare <navaremanasi@chromium.org>
Date: Fri, 1 Sep 2023 16:22:58 -0700
Message-ID: <CAE72mNm=PznP94Q9e2AyRzAYrLEJjriX9t1hZLmXt3=bNc=aPw@mail.gmail.com>
To: Gil Dekel <gildekel@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v4 6/6] drm/i915/dp_link_training: Emit a
 link-status=Bad uevent with trigger property
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
Cc: seanpaul@chromium.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks Gil for completing the logic here by emitting link status =3D BAD
even for final link failure state.

On Thu, Aug 24, 2023 at 1:54=E2=80=AFPM Gil Dekel <gildekel@chromium.org> w=
rote:
>
> When a link-training attempt fails, emit a uevent to user space that
> includes the trigger property, which in this case will be
> link-statue=3DBad.

Fix the typo above for link-status

>
> This will allow userspace to parse the uevent property and better
> understand the reason for the previous modeset failure.

I think we need to add more explanation in the commit message as to
current problem of no link status =3D BAD for final failure wrongly reflect=
s link
is good in userspace even when there could have been a failure and black sc=
reen.

But that this patch in conjunction with proper handling in userspace fixes =
it.

Also here we should mention that this patch also now uses:
drm_sysfs_connector_property_event
instead of the earlier generic drm_kms_helper_connector_hotplug_event.

This will need some changes in other userspaces that parse this else it wil=
l
cause failures for other userspace once this lands.

With all the above changes,

Acked-by: Manasi Navare <navaremanasi@chromium.org>


Regards
Manasi

>
> Signed-off-by: Gil Dekel <gildekel@chromium.org>
>
> V2:
>   - init link_status_property inline.
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e8b10f59e141..328e9f030033 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -42,6 +42,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_edid.h>
>  #include <drm/drm_probe_helper.h>
> +#include <drm/drm_sysfs.h>
>
>  #include "g4x_dp.h"
>  #include "i915_drv.h"
> @@ -5995,6 +5996,8 @@ static void intel_dp_modeset_retry_work_fn(struct w=
ork_struct *work)
>         struct intel_dp *intel_dp =3D
>                 container_of(work, typeof(*intel_dp), modeset_retry_work)=
;
>         struct drm_connector *connector =3D &intel_dp->attached_connector=
->base;
> +       struct drm_property *link_status_property =3D
> +               connector->dev->mode_config.link_status_property;
>
>         /* Set the connector's (and possibly all its downstream MST ports=
') link
>          * status to BAD.
> @@ -6011,7 +6014,7 @@ static void intel_dp_modeset_retry_work_fn(struct w=
ork_struct *work)
>         }
>         mutex_unlock(&connector->dev->mode_config.mutex);
>         /* Send Hotplug uevent so userspace can reprobe */
> -       drm_kms_helper_connector_hotplug_event(connector);
> +       drm_sysfs_connector_property_event(connector, link_status_propert=
y);
>  }
>
>  bool
> --
> Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
