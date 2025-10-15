Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C21BDE61C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 14:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55B3810E799;
	Wed, 15 Oct 2025 12:04:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.b="FjT2tTY1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com
 [209.85.222.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D5DA10E797
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 12:04:06 +0000 (UTC)
Received: by mail-qk1-f177.google.com with SMTP id
 af79cd13be357-856701dc22aso931009785a.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 05:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar.org; s=google; t=1760529845; x=1761134645;
 darn=lists.freedesktop.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=X3tSr4HAvbS0zz40z1XcCEFjgrGlF3qXMnfs2AVWb3Y=;
 b=FjT2tTY1likXYrsS9/NRmwLnHrYQxO4FXckVp1djxQM8DEeFO+p0ZgzkvtWcGpjU8E
 qbM63jgDQwYSTSh39qNkJeFJ+1NHOdZ8BgcDNdbhxvt0B8mu+Zd1ePHMVMeAcWblFjn6
 Hw9WlC1dcs5sOl2tI5FnGf7vUEluIYA0Pf3A+WWH+LAthphRswfYMdw2dC1vTFvIr6GE
 ZwFzCohv4BZ+xGkBrb11EhvmV8isnfyYcvimkrjcdELhca1H4XEuNnqlo9ocadv6rqC+
 ojbY7UVCMAz191V6sbILbYwEJtnLEB3ICgnssKtZ/erpMIV8UQtXxrjxOoZTygBL+3TJ
 jWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760529845; x=1761134645;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=X3tSr4HAvbS0zz40z1XcCEFjgrGlF3qXMnfs2AVWb3Y=;
 b=OvP3qeLw3h5zXP6ll7miId2GNX/MDJLoJMkB9mNvOj/hmRTlTdvqbQV/gotc4FbXWo
 u0fLxijFBBQrIEZb5zCu3XsvsIEG6znbtgl/9wAMy1g1IfgwWSnseH1sNMC9U3v3+ZJz
 uuwMiwPTQTAQGYV38R394gz9kPxsnKKdmWAHBikBecgz2XUlEM4uOYzYCZfkmaDS7RU7
 9nMczIFVFM+EWrz1fXRvdph+kqs3sPhpE4CPNPyh5as2tuV4U+GIy4EL0tSDBctgyULo
 G3xv5B82Xd8rBLXHtK5AZy2gvRK30VDGaxmsl2yHL6+Mwm4ihJ15rRHRmpBt5fswPOHe
 lMww==
X-Forwarded-Encrypted: i=1;
 AJvYcCVllE6B0P8A3rKCO8DRPzCiKHt6NyE76TvikKplMdNSkHUu7NrkPYKB5CF9tHC4yEWl7AyvFeGTvZs=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwURvDLVEcfIc7DmMZ63ZykybR00+6wA6HF0l6b3y+0y0NTP8q2
 69deusQ19Iw/6F8SL/ccO5PFpX3hZGyQOV7EY3m0yhO+yLAWGJKJIK3LIW2X9/i1fj+fil1WYv3
 8GOKIu+ec5SLaz1xs+m8Q4YSL1vXn73lzxNCOkqlQvA==
X-Gm-Gg: ASbGncs/tnIyGq0ZHcj6k6uOJV7h+ER1Vm1UFB3kFY56gmpDWfYOpdi7jkJnXjoV898
 EBUjTVV6ez8Gqq1/dmRCDVHWYo5fP6U6HlGrAgi5FPGI9hAR1vPiYgUf/TdRt1ZontFAOccn7ux
 QjpdfAZIfHf9apt9QnnCPsouZFGBF5q6zv7l/gSkmDGz5h5VHOeypqcbxDdt5dNT8wRaLVU3Jzq
 qB8I2OKB8jbIKtei1Wr50mcFu2Pb7C2JA==
X-Google-Smtp-Source: AGHT+IHqCTndsaW9mNNOpEoxqpK+g671TVftkJwHJncfJRnISWrovh6jkW0GrLsJk4LzlYEdY/SfnIetRnQxqll+9N8=
X-Received: by 2002:a05:620a:d89:b0:859:7e5d:efb0 with SMTP id
 af79cd13be357-883521dbdb5mr3978297485a.43.1760529845105; Wed, 15 Oct 2025
 05:04:05 -0700 (PDT)
MIME-Version: 1.0
References: <20250718105407.32878-1-vignesh.raman@collabora.com>
In-Reply-To: <20250718105407.32878-1-vignesh.raman@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Wed, 15 Oct 2025 13:03:53 +0100
X-Gm-Features: AS18NWCXawAF8rrUemNB4cY6pOyINS36FA1C_QZssu58BBI9i4GnKsHpaQ9lquo
Message-ID: <CAPj87rMRKdm4BvfD8gMmSF3jjeMK4nurzTKPOFY15V0tBr4pyw@mail.gmail.com>
Subject: Re: [PATCH v1 0/7] drm/ci: add new jobs, uprev IGT and mesa
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.fornazier@gmail.com, airlied@gmail.com, simona.vetter@ffwll.ch, 
 robdclark@gmail.com, guilherme.gallo@collabora.com, 
 sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
 lumag@kernel.org, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
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

Hi VIgnesh,

On Fri, 18 Jul 2025 at 11:54, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> This series introduces new jobs to drm-ci for testing the following
> devices:
> - rk3588-rock-5b
> - mt8192-asurada-spherion-r0
>
> Other updates include:
> - Uprev IGT and updating test expectations accordingly.
> - Adapting to recent changes in Mesa CI, such as:
>    - LAVA overlay-based firmware handling
>    - Container/job rule separation
>    - Removal of the python-artifacts job
>    - Use of the Alpine container for LAVA jobs
>    - Various other CI improvements
> - Disabling bare-metal jobs for apq8016 and apq8096, as these devices
>   are being migrated to LAVA.
> - Updating the runner tag for i915: cml (switching from hatch to puff)
>   to improve device availability.
> - Adjusting parallelism in jobs (sm8350-hdk, amly) to better utilize
>   test resources.

Series is:
Reviewed-by: Daniel Stone <daniels@collabora.com>

Cheers,
Daniel
