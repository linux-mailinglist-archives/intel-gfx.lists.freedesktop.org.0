Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7958CCFC8
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 11:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB99A10E3E6;
	Thu, 23 May 2024 09:59:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="CUwZwGa1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com
 [209.85.219.169])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97C610E23D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 09:59:48 +0000 (UTC)
Received: by mail-yb1-f169.google.com with SMTP id
 3f1490d57ef6-dbed0710c74so5010702276.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 02:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716458387; x=1717063187; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=4eLg5W63v6nyWYGdaPlQGL+64DpELLePyMxWT5qrNUU=;
 b=CUwZwGa1oObdnC2Yoa+UmDfJ0Oi3NqHQ2bQCXLkKvZca40KOBADLqpEmUGYQjTzOy5
 EM9uJnzrVYEFQW6vsKl4nvN2PWTM5Xraj38NcQUjoQmcHSojZQYTXEwxr9T3+Gz9QQHN
 Z0z04VW1VD0UdHthZ0UJAfkl9M8TS+9S+J8fPsRs1y/1OzZhxUNflGXxd6mhILd9T0hd
 PA24e9McRvVmLB1HjpueDctREW41pQP5vnid+Xybotr5d1uJaLkLmSTDGvL7EKVoZuiw
 Er4/zy6RNYseJhbrbjMrUhXCOumTYB2ofHsa+twSIimhGFQXPJv4Gh/X4jkf7eja1rUQ
 +c9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716458387; x=1717063187;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=4eLg5W63v6nyWYGdaPlQGL+64DpELLePyMxWT5qrNUU=;
 b=ot5Qa6GqyGaNdWCi905LB3L50VEtswW/MTk0h0gryINCUvmIEDTiXdBTkSQzvoAGLf
 5KHd0dykn0Xn/E8juz6Vi3nlINfqc7nOQ5A09zJasUyyuzdc6FLgbToEjBy8ivre3kHs
 DwcExlBK+5oFzjq/aJj8d5H0mbJbwPFOJojbYCJwVsJV00fHZ9f7I6f57Ufd8QSYLzXO
 dz5wOOFhBts7Fq7sKM8fR++CZFxGHwDaBrQgRkWd/QPuxn6fdb74PpET19uewWHtfmiZ
 +BnM9u4RbuhJ09yiSiuhrFWXrxZPX5xB4s2xYv59x5DYTOCz1BzcH4HW8sc/2IcN6v4v
 EzMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVsy5UhFnXNtfJjck5t9gZEq0yC7eCrRGRIu9WUz4uOjQQPHLJflrWq1jrLfuNaBdGtkAB9/JPxIcOHWfwXCCp5Tz7PZRZc93W6vMaSOf9u
X-Gm-Message-State: AOJu0YxSw6O07SMFxqhb5sO4qpX+Rvm52yXlHT/9YiU5jXuX5pwQZCpU
 ItLK3phAjkwqSsgu7G3ESpd8AKwAx8vmX5V7mNXpmhIQ3PRyASAcxunxEnSj6CKvzhRMk93zFpe
 Jxz+UxErO3gqCqNDosxUO4EPROmXwcM1aevymfA==
X-Google-Smtp-Source: AGHT+IEH2bet0vxbyQkGUI55R017CbgvtHVbrVup5m0zjkPeCkh3N7ZUjMndzd5BhJJAs4TMZp+oQ52G6r3Sss4urHM=
X-Received: by 2002:a25:b181:0:b0:dee:607c:3528 with SMTP id
 3f1490d57ef6-df4e0a9cfa9mr4821493276.3.1716458387642; Thu, 23 May 2024
 02:59:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240517092502.647420-1-vignesh.raman@collabora.com>
 <20240517092502.647420-2-vignesh.raman@collabora.com>
 <2qzmfv3oc6feihwxu3tl37rg6w3qsj2vddu5olvqk6vhqr26cc@bxu5y6ijvtfa>
 <9cd0667a-12ee-4d45-80e8-dc34259bf01d@collabora.com>
In-Reply-To: <9cd0667a-12ee-4d45-80e8-dc34259bf01d@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 23 May 2024 12:59:36 +0300
Message-ID: <CAA8EJprVVkQO7aPkehwL2zhYkGRkm4Foc13ErfuY6ikBA_4nLQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/6] drm/ci: uprev mesa version
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
 robdclark@gmail.com, david.heidelberg@collabora.com, 
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
 mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux-foundation.org, 
 linux-kernel@vger.kernel.org
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

On Thu, 23 May 2024 at 09:07, Vignesh Raman <vignesh.raman@collabora.com> wrote:
>
> Hi Dmitry,
>
> On 20/05/24 16:13, Dmitry Baryshkov wrote:
> > On Fri, May 17, 2024 at 02:54:57PM +0530, Vignesh Raman wrote:
> >> zlib.net is not allowing tarball download anymore and results
> >> in below error in kernel+rootfs_arm32 container build,
> >> urllib.error.HTTPError: HTTP Error 403: Forbidden
> >> urllib.error.HTTPError: HTTP Error 415: Unsupported Media Type
> >>
> >> Uprev mesa to latest version which includes a fix for this issue.
> >> https://gitlab.freedesktop.org/mesa/mesa/-/commit/908f444e
> >>
> >> Use id_tokens for JWT authentication. Since s3 bucket is migrated to
> >> mesa-rootfs, update the variables accordingly. Also copy helper scripts
> >> to install, so that the ci jobs can use these scripts for logging.
> >>
> >> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> >> ---
> >>
> >> v2:
> >>    - Uprev to recent version and use id_tokens for JWT authentication
> >>
> >> ---
> >>   drivers/gpu/drm/ci/build-igt.sh   |  2 +-
> >>   drivers/gpu/drm/ci/build.sh       |  6 +++--
> >>   drivers/gpu/drm/ci/container.yml  | 12 +++------
> >>   drivers/gpu/drm/ci/gitlab-ci.yml  | 44 +++++++++++++++++++++----------
> >>   drivers/gpu/drm/ci/image-tags.yml |  2 +-
> >>   drivers/gpu/drm/ci/lava-submit.sh |  4 +--
> >>   drivers/gpu/drm/ci/test.yml       |  2 ++
> >>   7 files changed, 44 insertions(+), 28 deletions(-)
> >>
> >
> > [skipped]
> >
> >> diff --git a/drivers/gpu/drm/ci/test.yml b/drivers/gpu/drm/ci/test.yml
> >> index 8bc63912fddb..612c9ede3507 100644
> >> --- a/drivers/gpu/drm/ci/test.yml
> >> +++ b/drivers/gpu/drm/ci/test.yml
> >> @@ -150,6 +150,8 @@ msm:sdm845:
> >>       BM_KERNEL: https://${PIPELINE_ARTIFACTS_BASE}/arm64/cheza-kernel
> >>       GPU_VERSION: sdm845
> >>       RUNNER_TAG: google-freedreno-cheza
> >> +    DEVICE_TYPE: sdm845-cheza-r3
> >> +    FARM: google
> >
> > I see that this is the only user of the FARM: tag. Is it correct?
>
> No, we need to add FARM variable for other jobs as well.

Why? Even if we have to, we don't have them now and the change doesn't
seem to be related to the uprev'ing of mesa. So this probably should
go to a separate commit.

>
> > Also we miss DEVICE_TYPE for several other boards. Should we be adding
> > them?
>
> Yes, device type needs to be added for msm:apq8016, msm:apq8096, virtio_gpu.
>
> I will add this. Thanks.

I'd guess, separate commit too.

>
> Regards,
> Vignesh
>
> >
> >>     script:
> >>       - ./install/bare-metal/cros-servo.sh
> >>
> >> --
> >> 2.40.1
> >>
> >



-- 
With best wishes
Dmitry
