Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EE3969EAA
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 15:08:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3C0910E59B;
	Tue,  3 Sep 2024 13:08:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="qjjjgddi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com
 [209.85.166.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DD8010E59F
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 13:08:12 +0000 (UTC)
Received: by mail-il1-f180.google.com with SMTP id
 e9e14a558f8ab-39d30f0f831so18519305ab.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Sep 2024 06:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1725368892; x=1725973692; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZeRs4z3I8mmDPvKoL9y7zecAhLAZtwSgnEUeAq3N0pw=;
 b=qjjjgddi0YrLsTBZeuzFhaf3NymDMyNbzbONVzU2mJ0vk1k4QVdLyznLHfD9KZODWQ
 xaV+FHRSRA6hbLFGKxR9IIL5CXVnWH5GRSiAtTIhm/JQZasHgjmSHRJ3YzyVs1e3x/tB
 7Sm/XROWIVTgLPWR+Gw3lx8K0BCCo2MQ44aHfmeYS8ACt8E9R/GUp/6hnwotR84V3sKn
 XC0cciSn+Zmkr7T17wjsHiB0ngbJHQc4azs7jIXazI3rxFZdTLRHvawz7wKgDVDq4Zux
 76z1VuCzWcwMQQSsdA6gVBSO3KhdyfGHlMViVdYNuEwDFMvW7QwWZhhKoKaBxPEDe7VS
 WNDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1725368892; x=1725973692;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZeRs4z3I8mmDPvKoL9y7zecAhLAZtwSgnEUeAq3N0pw=;
 b=ePZ7r9N5Nw+H750tadJk80utwxtmChm696oyidPhn+YHpDF5Voj7wmCRGKCOtIWTHw
 4755PpedYktEucP3L0iHUBLx4EJiK9CesDfVaLn2MfI4PhYjxetL2k/YpOZZ+pTi56wq
 nX8CMXSBRT0NxhnHo0wkLZTvsaH9jAPQfGFAkEaHBQISXPHAdu76vl9R+z27EJsGJ2yT
 Y+XZmObq4nPVm+pthZ3zQOhb9cGxErNqwradEfnPeItPctsc+p/4h5UYspXSc4OjmPNr
 jl78vAEXwqPWniwm/6X6c+5SjZED77mqL7GuFGSVYO62fau8c0x2C+swZba6+sqNI1cl
 WbnA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGdgFNy4KymKx5Oy3Pntarnzh3JD9tyJrlZ98XWpHuFglAVawKWzseuFH3Dp19vBEPRCbJl7PDnwA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxQkaZgNyZPIT9kpIf6L2WYxWsfX3S0onBuIQcNnslhO1TkfLag
 Xv43+jq1353P18ezMJkeqdex/tAI3nzPddb+VE7+/YlFdrjO++nOJkFop9yiN+odIey0w3DtqzS
 kMi3MgzjAWVkygRMEgug7DsOcpEtyRI8ng75ovw==
X-Google-Smtp-Source: AGHT+IGHAgnSMNvuVful4dbf9WKc4xkX76uqFfFYB8rGHdSebPTzop/+5Lxf4E1tJz0Qa5koqY5wyz6U/9g7ZRt6e8w=
X-Received: by 2002:a05:6e02:12cf:b0:39b:32f6:5e90 with SMTP id
 e9e14a558f8ab-39f4e0d41e1mr118881735ab.15.1725368891480; Tue, 03 Sep 2024
 06:08:11 -0700 (PDT)
MIME-Version: 1.0
References: <20240830084456.77630-1-tzimmermann@suse.de>
 <20240830084456.77630-78-tzimmermann@suse.de>
In-Reply-To: <20240830084456.77630-78-tzimmermann@suse.de>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 3 Sep 2024 16:08:00 +0300
Message-ID: <CAA8EJpoX3X6+u7Nst4qj5J0hcUCeYQvULW1wMSjwnVyLQeszjA@mail.gmail.com>
Subject: Re: [PATCH v3 77/81] drm/msm: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: daniel@ffwll.ch, airlied@gmail.com, jfalempe@redhat.com, 
 javierm@redhat.com, dri-devel@lists.freedesktop.org, 
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
Content-Type: text/plain; charset="UTF-8"
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

On Fri, 30 Aug 2024 at 11:45, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>
> Rework fbdev probing to support fbdev_probe in struct drm_driver
> and remove the old fb_probe callback. Provide an initializer macro
> for struct drm_driver that sets the callback according to the kernel
> configuration.
>
> Call drm_client_setup() to run the kernel's default client setup
> for DRM. Set fbdev_probe in struct drm_driver, so that the client
> setup can start the common fbdev client.
>
> The msm driver specifies a preferred color mode of 32. As this
> is the default if no format has been given, leave it out entirely.
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  drivers/gpu/drm/msm/msm_drv.c   |   4 +-
>  drivers/gpu/drm/msm/msm_drv.h   |  13 ++-
>  drivers/gpu/drm/msm/msm_fbdev.c | 144 ++++++--------------------------
>  3 files changed, 38 insertions(+), 123 deletions(-)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry
