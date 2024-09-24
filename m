Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E93B983CE5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 08:16:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60BB810E152;
	Tue, 24 Sep 2024 06:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="EcBA7Qss";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com
 [209.85.128.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F09F410E152
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 06:16:15 +0000 (UTC)
Received: by mail-yw1-f178.google.com with SMTP id
 00721157ae682-6de05b9fd0bso41363807b3.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 23:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727158575; x=1727763375; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=ZcweUFHFW/KJCW3gKD065UQS3lsmUsHAhy70Femt8O8=;
 b=EcBA7QssVrFlbR9tpASLkuzIepXvpQZS2alGs7SFqmlcArsJJikVY3lrbSS1q/q0gB
 6XEILUNzcnwqNqi0UF/KtOkZ4g1q2emm8wkVyeNCAxj9DgHAJ5iOAwHLWbDBWcg1/AAp
 6VBK8wRQ757nXCeZr4sko/lqd7583byAGZXl0DdFtetk3ip2MY/F+Ey9SwGnIs3hNFwp
 noD0uipef5FC5y+ohNy4fEo2Vi8ecefawPE0Y0Y8O9+MGcPHv7LfWtfpXkzoniihkC7+
 YgPUQRHTHqG7PRjvtUoSZlG0yqbBRERFvzop8qVxagrdqE5M/pz/Vw+gMmXEW7Jy5Iuv
 MjEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727158575; x=1727763375;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZcweUFHFW/KJCW3gKD065UQS3lsmUsHAhy70Femt8O8=;
 b=D40dkVfDh4EZz1CjKafeudfFRrGVKZgfjn4JqMYUW8/w6J5FjGJdBQssypHdhXAP8e
 QE2FPN24Kha1BUmy9VJUzEinqd09K5AVMTSTniKIZ6ydwP4s39TJ4B9BgicR+0DwsltB
 TNE2y/r7RI3oZOizaKVy6tcJ6lwUHgb7pMJuOb5L+Z7vTFrC10Kc08HSr4YsF4bWtAWH
 9TdkaiOw38c/+p1ZIfOIsO8TPRKakcFzqasy/znJI7l/Gvkq4OD+Resf/R1MqO0Ri8r5
 626SNMNw6PVAsp/daHVlM/KugrGVax6hcSSeFj/nxIcrDvtFX7mVfGxLOgTTjYn81rNz
 Bknw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXBuR7NlllSjHCXnhTjp+tjBrWM5H3yZqk1ZtQwg+bEAW1YlUjPEh3jWROBDBpWENGgRzMjfOgq8NM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzP0mbWpDt6XWKxqf02nlEIRDPWV5vDqCR6Z0SSzoYcBzW8xBCJ
 1Pw5N0iR6FS1NeimbYomJmNkTRKqHyOoWiuNMSxGQdLLhZBztfqbOhD4nxWLL0ZxAnfMqBYnaPD
 nO40pjkj3WQyeU5XFxZFM6pV9rB8uJMZ/BpVNxg==
X-Google-Smtp-Source: AGHT+IEF5j0JkBVAgP1jTlkYufGIlKJxFTmmd49IaW+yK41rQF/NpMRTMvOPM1xHJnDTOa2dEHhH9wuEn2USXNPEeWM=
X-Received: by 2002:a05:690c:89:b0:6b1:4948:f689 with SMTP id
 00721157ae682-6dff290379dmr105980107b3.34.1727158574971; Mon, 23 Sep 2024
 23:16:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240924022600.1441969-1-vignesh.raman@collabora.com>
In-Reply-To: <20240924022600.1441969-1-vignesh.raman@collabora.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Sep 2024 08:16:04 +0200
Message-ID: <CAA8EJprUUUc0iDph-HPrW1anrdnzYju7+JERQdHbwxvznq=H4w@mail.gmail.com>
Subject: Re: [PATCH v1] docs/gpu: ci: update flake tests requirements
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com, 
 mripard@kernel.org, rodrigo.vivi@intel.com, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux.dev, linux-kernel@vger.kernel.org
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

On Tue, 24 Sept 2024 at 04:26, Vignesh Raman
<vignesh.raman@collabora.com> wrote:
>
> Update the documentation to require linking to a relevant GitLab
> issue for each new flake entry instead of an email report. Added
> specific GitLab issue URLs for i915, xe and other drivers.
>
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
>  Documentation/gpu/automated_testing.rst | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/gpu/automated_testing.rst b/Documentation/gpu/automated_testing.rst
> index 2d5a28866afe..f73b8939dc3a 100644
> --- a/Documentation/gpu/automated_testing.rst
> +++ b/Documentation/gpu/automated_testing.rst
> @@ -67,20 +67,25 @@ Lists the tests that for a given driver on a specific hardware revision are
>  known to behave unreliably. These tests won't cause a job to fail regardless of
>  the result. They will still be run.
>
> -Each new flake entry must be associated with a link to the email reporting the
> -bug to the author of the affected driver, the board name or Device Tree name of
> -the board, the first kernel version affected, the IGT version used for tests,
> -and an approximation of the failure rate.
> +Each new flake entry must include a link to the relevant GitLab issue, the board
> +name or Device Tree name, the first kernel version affected, the IGT version used
> +for tests and an approximation of the failure rate.
>
>  They should be provided under the following format::
>
> -  # Bug Report: $LORE_OR_PATCHWORK_URL
> +  # Bug Report: $GITLAB_ISSUE
>    # Board Name: broken-board.dtb
>    # Linux Version: 6.6-rc1
>    # IGT Version: 1.28-gd2af13d9f
>    # Failure Rate: 100
>    flaky-test
>
> +The GitLab issue must include the logs and the pipeline link. Use the appropriate
> +link below to create an issue.
> +https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/ for i915 drivers
> +https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/ for xe drivers

drm/msm for msm driver, please. Otherwise we can easily miss such issues.

> +https://gitlab.freedesktop.org/drm/misc/kernel/-/issues for other drivers
> +
>  drivers/gpu/drm/ci/${DRIVER_NAME}-${HW_REVISION}-skips.txt
>  -----------------------------------------------------------
>
> --
> 2.43.0
>


-- 
With best wishes
Dmitry
