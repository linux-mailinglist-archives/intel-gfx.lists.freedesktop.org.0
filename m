Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CBC8AE5E9
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 14:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD08010F6AB;
	Tue, 23 Apr 2024 12:23:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="Beag5LIJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
 [209.85.219.172])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB8810FC23
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 12:23:18 +0000 (UTC)
Received: by mail-yb1-f172.google.com with SMTP id
 3f1490d57ef6-de55708c616so415847276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 05:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1713874997; x=1714479797; darn=lists.freedesktop.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=zdEuS8XRlyMWs8i+nahfC/xh1vWX2u7uUNV94NmtyxI=;
 b=Beag5LIJTSmA6WUKg7LoR8J/hhNLUcpSOzopilPTTr4NRZiIwfZFoVJvsieSfIWfou
 Vjoe5EDC1HV2tH4WRhlJfTXIsh64l/fYGwXkJWXUzcyb1JxN/NPwKFAj40tSfWyOKPmM
 I1lU4eKgtfk32BkJRCsfMerlbsmqwzPnB8aqZneOAdMycq7TrDMq3/0atYvk8Dr5O/T+
 h8yA9ONVMUM0LWOcNS3jKAFnIymxHp5hDQBehgFftKBEsLGtbBYbEtUtFH0jtspmvj9g
 cH+j8nIPDx4Kac+PUWy5PvRxEk+10M5abhSVuVBfb+YUy7DIuPDfV3akUVwFYPP24fzq
 slyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713874997; x=1714479797;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zdEuS8XRlyMWs8i+nahfC/xh1vWX2u7uUNV94NmtyxI=;
 b=WQclyVN3K1GTr0hS2LB+Y//ifBy+nSTA7uXu4Catti+2pcy4j5fKK2A+1WL6T/Finr
 xnFuWEICOK1kM2zesEl2q2clhwGKW2bmvzxnLj3IzP9cfmz9nS+zAxfzC46hfKrmVEEx
 uIjHfxYQB82lRKn4pxk41l8bPyPzyPdUt4KqXdJI34prYnQYYmw8XR05Mc6vfExe6Di7
 mrsB/YMR3ckvCHOP03gtmhpVrWjcgF6+Dm265L88VBf+6MrClxCBYjb4ou4Bk9mMPMQv
 9UpeZg3h1IhmugmN4baJNUXaJjseLiGM3YqIwySDAz8tHiG0dqBKMGEx5cBS7JMd+d4n
 GJQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWbR4MjiAWajI005X4iDjOMK6US+ZdffnC0JiUMNBoYzT0Ul6iDpjEtWLdQzCUcqRAnVrdvIjZEn76/hGoSxEvKCM+WqTSTsG34/2ParzTX
X-Gm-Message-State: AOJu0YyIm1FHWD228Y2iRXDU1VGJ4QIykmqKLFczPcNQ6CgSCK82Eq7f
 7gZp72SJB9NY7B/206BuUDxM1CW36o3Qk2/926ty/EsCVy7FY37M+Nhokz0DjBd389qs+2teAZK
 56AE9fr4CIrTBuV0BZ92u8C//aR9GH0L5VjyLEg==
X-Google-Smtp-Source: AGHT+IFGEmHXL5CwAkBYa70XCoYWKwe8UnjgAcbc2h7iJmpsycDinZVPrwrOVKWCKX5O935DZ/QH6hClp73iSys2pzI=
X-Received: by 2002:a25:8251:0:b0:dc7:4067:9f85 with SMTP id
 d17-20020a258251000000b00dc740679f85mr12766959ybn.58.1713874997608; Tue, 23
 Apr 2024 05:23:17 -0700 (PDT)
MIME-Version: 1.0
References: <20240423040243.448091-1-vignesh.raman@collabora.com>
 <20240423040243.448091-4-vignesh.raman@collabora.com>
 <e3a0ea8f-d306-488c-a69c-aa18078e5e03@igalia.com>
In-Reply-To: <e3a0ea8f-d306-488c-a69c-aa18078e5e03@igalia.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 23 Apr 2024 15:23:06 +0300
Message-ID: <CAA8EJppaaitcXkXSFTB4-S2CbBcrAVHouB0wWiU5Nw2FvpagqA@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] drm/ci: uprev IGT and generate testlist from build
To: =?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>
Cc: Vignesh Raman <vignesh.raman@collabora.com>,
 dri-devel@lists.freedesktop.org, 
 daniels@collabora.com, helen.koike@collabora.com, airlied@gmail.com, 
 daniel@ffwll.ch, robdclark@gmail.com, david.heidelberg@collabora.com, 
 guilherme.gallo@collabora.com, sergi.blanch.torne@collabora.com, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, 
 linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 virtualization@lists.linux-foundation.org, linux-kernel@vger.kernel.org
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

On Tue, 23 Apr 2024 at 13:24, Ma=C3=ADra Canal <mcanal@igalia.com> wrote:
>
> On 4/23/24 01:02, Vignesh Raman wrote:
> > Uprev IGT to the latest version and stop vendoring the
> > testlist into the kernel. Instead, use the testlist from
> > the IGT build to ensure we do not miss renamed or newly
> > added tests.
>
> Nitpick: wouldn't it be better to (1) stop vendoring the
> testlist into the kernel in one patch and then (2) uprev
> IGT to the latest version? I feel that this patch is changing
> a lot of different stuff.

Definitely. Otherwise it's hard to understand whether a change to
fails/flakes is caused by the uprev or by the testlist change. E.g. in
several cases the list of failing subtests seems to be replaced with
the test itself.

>
> Best Regards,
> - Ma=C3=ADra
>
> >
> > Skip kms tests for panfrost driver since it is not a kms
> > driver and skip driver-specific tests. Update xfails with
> > the latest testlist.
> >
> > Increase the timoout of i915 jobs to 2h30m since some jobs
> > takes more than 2 hours to complete.
> >
> > Signed-off-by: Vignesh Raman <vignesh.raman@collabora.com>
> > ---


--=20
With best wishes
Dmitry
