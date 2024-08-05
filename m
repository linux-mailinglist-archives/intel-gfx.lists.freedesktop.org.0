Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EB3947B9F
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 15:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A82D110E1FB;
	Mon,  5 Aug 2024 13:11:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar-org.20230601.gappssmtp.com header.i=@fooishbar-org.20230601.gappssmtp.com header.b="Cns48WTc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com
 [209.85.222.180])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F8E10E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 13:11:45 +0000 (UTC)
Received: by mail-qk1-f180.google.com with SMTP id
 af79cd13be357-7a1da036d35so627224785a.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Aug 2024 06:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20230601.gappssmtp.com; s=20230601; t=1722863504; x=1723468304;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wqu7bGkFRyONJ595ZHT2dPa2sQS3elnU8rD7fvADtto=;
 b=Cns48WTceIRcZ9dmvGs155YEvrbRR3IjNr1gBQMB776ihh1UnG319OwsQKHyw1PwQ6
 SZZryWqcuSX+Ws1rbAAmAG0wAh17CYk387b+zbMY5Rngt4EstBGQLj8gtWcEDG8uoa+/
 JnrWzJRwVlCIyjlsPX51WB/GIb+Jw3Zd5/vL42Og9tZsjQv2V/T3xCZKHmywvbOObpB4
 rFcLlPUanpqbEo4jxyjkZCJAUb3BSMyOnctTKfEQ14SJEPsIqJetyLqGGgQJGdz/5UH5
 Lv3FWAK2dEE/xWqm012V1rxI6D7M32yOu0X7+Ei3kgYbB6QjLT1dm7j+zkmI1oeys5WA
 CHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1722863504; x=1723468304;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wqu7bGkFRyONJ595ZHT2dPa2sQS3elnU8rD7fvADtto=;
 b=Ej5Seq3l9a8Q1Ci/hT6fTtdXC9zjbJoIK7kanEeQEoEuL1/0JOiyi2hN21Ln0rPx4h
 f9x7mvEVoiVjgQ8vEx37VZAaAKIy8gBeUY3yDPPBqmprucIzfZ9tdYwdO86nw/fB4TXz
 VO9d/py2putisPRwSurQIRgwEza3baFJJbTFftgw47JmUe6gJ8/vSFNzighwxTRnpi4N
 r7UomJTzc+vstoYm3hzA1+hRFOq3nEdpfzuzj5ky2ARfUiPlyALoTMHS+PtZmv/Am+BQ
 trvRAG5vA5qWQkNoB9PeodMdtGqskWiKod1VCalmdKuTPvFbxl3G14fMwTsyQVilCJTi
 Xt6g==
X-Forwarded-Encrypted: i=1;
 AJvYcCUU1Y2g7WdM/Fnkg9N3NyX4NgVujVD1YXMkBH0nW9EO3LBp18zy6AC8UqyP8wCD93ZsuImYvmhSIJbVmiUvAK70CW/uqmc8MLkVzRobaFb1
X-Gm-Message-State: AOJu0YyUSWESzEMwzJi2fncqxoDxxsnZRJaSRpo7LybJq7IccRYKUo8i
 Du4P//WIJ31CMrw/a0V8ujrsNXcwLOLpMLUMgteo38cgxZI61gCph9yQ8TpqPX+Yhgb3HUoN6fj
 n9nZOfvxafCiYUjyEIXNLXgs728hsZ2h/sbZe4Q==
X-Google-Smtp-Source: AGHT+IF/O5ePVsP9F9/4LdJgMcHnbAiRBVz6rWucn4L0+VzzRP1U+YIN/SKoA9Ocbj/mAccdLjT4/BuXBtCo084/sM8=
X-Received: by 2002:a05:620a:24c6:b0:7a2:e6c:41e7 with SMTP id
 af79cd13be357-7a34eeb959dmr1463955085a.9.1722863504285; Mon, 05 Aug 2024
 06:11:44 -0700 (PDT)
MIME-Version: 1.0
References: <20240730021545.912271-1-vignesh.raman@collabora.com>
In-Reply-To: <20240730021545.912271-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Mon, 5 Aug 2024 14:11:32 +0100
Message-ID: <CAPj87rOYVCG2A10ruyYan9y6NmMY0fUM6Z5-9ht7dEp_THYmNw@mail.gmail.com>
Subject: Re: [PATCH v9 0/6] drm/ci: Add support for GPU and display testing
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, deborah.brouwer@collabora.com, 
 dmitry.baryshkov@linaro.org, mcanal@igalia.com, melissa.srw@gmail.com, 
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

Hi Vignesh,

On Tue, 30 Jul 2024 at 03:16, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> Some ARM SOCs have a separate display controller and GPU, each with
> different drivers. For mediatek mt8173, the GPU driver is powervr,
> and the display driver is mediatek. In the case of mediatek mt8183,
> the GPU driver is panfrost, and the display driver is mediatek.
> With rockchip rk3288/rk3399, the GPU driver is panfrost, while the
> display driver is rockchip. For amlogic meson G12B (A311D) SOC, the
> GPU driver is panfrost, and the display driver is meson.
>
> IGT tests run various tests with different xfails and can test both
> GPU devices and KMS/display devices. Currently, in drm-ci for MediaTek,
> Rockchip, and Amlogic Meson platforms, only the GPU driver is tested.
> This leads to incomplete coverage since the display is never tested on
> these platforms. This commit series adds support in drm-ci to run tests
> for both GPU and display drivers for MediaTek mt8173/mt8183, Rockchip
> rk3288/rk3399, and Amlogic Meson G12B (A311D) platforms.
>
> Update the expectations file, and skip driver-specific tests and
> tools_test on non-intel platforms.

Thanks, series looks sensible and is:
Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
