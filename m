Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 923FB48C1DE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 11:01:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AB9F113730;
	Wed, 12 Jan 2022 10:01:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F62113730
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 10:01:34 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id t24so7674654edi.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 02:01:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=T5yvoHZXf5sRcIr28nRZ918Ghx2PDXySAnpXVpTEeyo=;
 b=IFnPU1h6tQdehMMmQirBcyt3PUDYvOYItJ7Gc2qM2IvjLICD+XK0IF0sEZnFTQ6aHg
 n2++qzfy9+/2SstO58HcFlkSXrXky9rMusNMOMWIom7d7hQeTilkwcspTekZ2lKPzg4r
 0xpEifFX8O1cCdxr8NyqVOr4UxU7UKQscxxcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=T5yvoHZXf5sRcIr28nRZ918Ghx2PDXySAnpXVpTEeyo=;
 b=BgTvuug4m+ooM5E0Xl3Pp1wvfIT6eYSSDyPZ/Huwl//3KpLg0wRuXMqKAtngKHlEyL
 ydU7DyXmQfvCqZtUOj5VxVi9bkDggicNF8sYsHJwAUaHY9uORG30WXEV6s99TqMkHDB9
 LFUBMFaXf/4OuI+bErgCBJioG3egbpC0HYHHblOkNq2/kFxsG0rOdhR+4jMh1bDQLNCJ
 5c9740L6VxieVVgIOrKzNgE/UTRecCcQKhZy8ICVB6WLhY5RC9VoJDbgXsX5qIjuHFhm
 uuFDCnGJJWKMOsYkghjkgW9fV1S3fdp/AzfqMV7OiAwXjN82QxlD1K+800uBewB7dbnA
 oDXA==
X-Gm-Message-State: AOAM531X3+WU1LzFUcDjQYQp1pynVTp2DvXa0UG1VfMYTA+/oKiygZy7
 iV2JqAu+JaM+C9Yr7nR6+W9ryo43aKupiB5jZEjoww==
X-Google-Smtp-Source: ABdhPJzBCKeQImyBz9RVwKOY2T54xBFQQK7yDRACZFnbHnlAKzoMjJH8dsFKhcz6QDIsGnLn67HJYp60Nwck4y9NKCk=
X-Received: by 2002:a17:906:bc56:: with SMTP id
 s22mr7649762ejv.760.1641981692859; 
 Wed, 12 Jan 2022 02:01:32 -0800 (PST)
MIME-Version: 1.0
References: <20211222090552.25972-1-jose.exposito89@gmail.com>
 <20211222090552.25972-7-jose.exposito89@gmail.com>
In-Reply-To: <20211222090552.25972-7-jose.exposito89@gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 12 Jan 2022 15:31:21 +0530
Message-ID: <CAMty3ZD_R+Tzab-qcWEcbTKVCKq3pNTi7Mr7903Vu9a9M5EefQ@mail.gmail.com>
To: =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/stm: ltdc: Drop
 format_mod_supported function
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
Cc: marex@denx.de, mcoquelin.stm32@gmail.com, kernel@pengutronix.de,
 s.hauer@pengutronix.de, tzimmermann@suse.de, airlied@linux.ie,
 contact@emersion.fr, intel-gfx@lists.freedesktop.org,
 alexandre.torgue@foss.st.com, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, yannick.fertre@foss.st.com, linux-imx@nxp.com,
 benjamin.gaignard@linaro.org, dmitry.baryshkov@linaro.org, shawnguo@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 philippe.cornu@foss.st.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 22, 2021 at 2:36 PM Jos=C3=A9 Exp=C3=B3sito <jose.exposito89@gm=
ail.com> wrote:
>
> The "drm_plane_funcs.format_mod_supported" can be removed in favor of
> the default implementation.
>
> Signed-off-by: Jos=C3=A9 Exp=C3=B3sito <jose.exposito89@gmail.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # i.Core STM32MP1
