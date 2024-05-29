Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 702018D2EB8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 09:44:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5D061133F7;
	Wed, 29 May 2024 07:44:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="F5SPuZwB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEE47112F3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 07:44:46 +0000 (UTC)
Received: by mail-lj1-f179.google.com with SMTP id
 38308e7fff4ca-2e72b8931caso17851921fa.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 00:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1716968685; x=1717573485; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=S1XyMvug7w7dhtxZdl8ZlGvff2YgfxxUHgfNNPJEirc=;
 b=F5SPuZwBm5Z/qjk6XGggfgrIjLX1DnQflZdLKexxg/3azcWFUWKRY+24C5XMdjJMlQ
 pp/udkxK2KRIUyd6w/diOxd73HDA6N3MirrcbjLle92rkDxlbZ5wBoWY+Oje5E+E8FNz
 kecOxOCS2aswsCfHm3m6bOd0317go0n04QeNFUMHKdAUrC4vWANlmNoPQWMRW0giIyjw
 8vP2IxvFjJeaCS0g/y0+CXy7VVOCT6/Mlec8l/tqeL2acf481iQZzbmvnTfOJrJ/tj/O
 fwPSw2gMqeiVMv9+/LxlT64qBmN4QIxFOchIeX/GULjNKcFxc7EqnT1oOP5osFbNPXk8
 wA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716968685; x=1717573485;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=S1XyMvug7w7dhtxZdl8ZlGvff2YgfxxUHgfNNPJEirc=;
 b=mUhOFGbJzPKrzuv0Or2km8z1eJB+dzwMrjV4jXUyEejHgx48dAjIucGzJavBTkRR3d
 6MXNLoeDtOO34PwKNVM734pGqBkAuaM7VxC1sJmoluNMa64EbEHi2GHIIoil0ChgTL3g
 E449njIFLvlmD1L9IHzYmpqM59pKLRvrOkUHO/EY9UzrhKWHU6gT358WyijyvbCJhTJ5
 U8H/qhywMiyWVarZKIhv28NTz5v1EY4tYL6RztrDdOdBEHQ0XSjr0JYZ0nQGz0Rb8FVy
 0shrpbhfMZion5b4Hd7wuW48GuEme/K/KLhVqys8H1rT51nFLS3OvLxv08ZMMVm2GDj5
 Bkhg==
X-Forwarded-Encrypted: i=1;
 AJvYcCXfJQrZGMio72YnV3kglUv9cm/8M9ZnYEi1EN9s7U2iwgahF8DbJLGXh0+Nc8GzGFzrglfjEEHRxsED19ljvYFxYatq447CAx3sfA/i116m
X-Gm-Message-State: AOJu0Yw7arthforequ0ugErIPcnfiYk3ogNxNh9motAgraSNmDn9rnV3
 lkkl3ZLh3SYm+M2v0e4FUkWL8j7UgRqFIg/ydbgUjIj2jcQZsIMzWFOZnjEvmp0=
X-Google-Smtp-Source: AGHT+IHWA2lvLG0B0kntbUD/V5owakoa3EW0tQI6tq3UwCSFqELYaCxoJok/0cawUBov1/1KRXreEw==
X-Received: by 2002:a2e:b05a:0:b0:2e7:c29:dadc with SMTP id
 38308e7fff4ca-2e95b24e06amr72686241fa.34.1716968684582; 
 Wed, 29 May 2024 00:44:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru
 (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
 by smtp.gmail.com with ESMTPSA id
 38308e7fff4ca-2e9816943d2sm6297271fa.61.2024.05.29.00.44.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 May 2024 00:44:44 -0700 (PDT)
Date: Wed, 29 May 2024 10:44:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, 
 helen.koike@collabora.com, airlied@gmail.com, daniel@ffwll.ch,
 robdclark@gmail.com, 
 david.heidelberg@collabora.com, guilherme.gallo@collabora.com,
 sergi.blanch.torne@collabora.com, 
 mcanal@igalia.com, linux-mediatek@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/6] drm/ci: generate testlist from build
Message-ID: <nsamdoevg6fhop3otikwsmu4ga6ysyrg2ogxbqhw3sqg2nbqq2@n5xbqid7ltiw>
References: <20240529024049.356327-1-vignesh.raman@collabora.com>
 <20240529024049.356327-4-vignesh.raman@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240529024049.356327-4-vignesh.raman@collabora.com>
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

On Wed, May 29, 2024 at 08:10:46AM +0530, Vignesh Raman wrote:
> Stop vendoring the testlist into the kernel. Instead, use the
> testlist from the IGT build to ensure we do not miss renamed
> or newly added tests.
> 
> Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> ---
> 
> v2:
>   - Fix testlist generation for arm and arm64 builds.
> 
> v3:
>   - Rename generated testlist file to ci-testlist.
> 
> ---
>  drivers/gpu/drm/ci/build-igt.sh  |   35 +
>  drivers/gpu/drm/ci/igt_runner.sh |    9 +-
>  drivers/gpu/drm/ci/testlist.txt  | 2761 ------------------------------
>  3 files changed, 40 insertions(+), 2765 deletions(-)
>  delete mode 100644 drivers/gpu/drm/ci/testlist.txt
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry
