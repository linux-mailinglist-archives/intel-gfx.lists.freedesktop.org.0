Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0916D0DC0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 20:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C03D610EF79;
	Thu, 30 Mar 2023 18:29:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55EFF10E3B3
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 18:29:41 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id cu36so17031424vsb.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680200978;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=J1mfsAVkmxLwhRt7IlI3jhuOesEA4D6U7D/dfayN2QA=;
 b=MOGm1VqeuelvWydwOeZe7j2bl24u03Ml/sqnQ8wtHhI7luYrcx6XexkPdh1+XGg8X7
 ebLwoFTfM/YVgVdz4rJU3ROd5aWIFR/AJTdDWu93BwzxoFkP87H022wHHMwUQF4HNJg8
 +A9AYY77V/W0EWSlFW9hCGnTSnAmvXHGEn4/c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680200978;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=J1mfsAVkmxLwhRt7IlI3jhuOesEA4D6U7D/dfayN2QA=;
 b=vbxK8vsUEZmEIQ4r2ZK6KF2rt82TmstgPx6t/rQbTJ5yv9ijinCVLzhxHgYxRJgB4l
 SQVvnrIDLW8vy8z+kSGL3aeA0481x3pVSOqEoRqHBLLe+R0JBgkH0118EzncyIBEHxE0
 xX2OcrVHcJVjFg0EEn1NEAe5ZqWNzOfQa4kRkcMyB5jJmzmnbutTzqLhztEjM2WzOui7
 2k/2Apl566ZeH6tpsj5adXDsgoC+dvRAK85VQB4DX6FioMGYf780htEBbcBTunjYpoJn
 wl/kKgFDHW/zbKJ8lFXLQYkLc93H0E3JEAV8voobGXqQ9Bzl7GnylekdnmX23QZhkKky
 8XFg==
X-Gm-Message-State: AAQBX9cSNQWRbgR525wITPGNwYrhmi5PvnnkorXFwbCCwkKHSFGuYpUL
 143FqRoBVZEF858RtroT9ueNTgoeyEK/6AFbxi4=
X-Google-Smtp-Source: AKy350Zc/ZYMP1WBx0WFG8TLcibBG5dMglmKwz8o6xBwDVoz6dYFGP/YsEQvPHnVSt9+G5sd00doIQ==
X-Received: by 2002:a67:f60f:0:b0:426:24e5:67f5 with SMTP id
 k15-20020a67f60f000000b0042624e567f5mr8055039vso.14.1680200978185; 
 Thu, 30 Mar 2023 11:29:38 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com.
 [209.85.217.52]) by smtp.gmail.com with ESMTPSA id
 e1-20020a0561020f8100b004264f2fb990sm3044500vsv.11.2023.03.30.11.29.37
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 11:29:37 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id dg15so5408128vsb.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:29:37 -0700 (PDT)
X-Received: by 2002:a67:d493:0:b0:426:a319:a226 with SMTP id
 g19-20020a67d493000000b00426a319a226mr9101769vsj.7.1680200976855; Thu, 30 Mar
 2023 11:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230324195555.3921170-1-markyacoub@google.com>
 <20230324195555.3921170-9-markyacoub@google.com>
In-Reply-To: <20230324195555.3921170-9-markyacoub@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Mar 2023 11:29:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wq8Z+rf++08fyYvsBUqdWX23qoUSOBBR5nP=hBUk2mzA@mail.gmail.com>
Message-ID: <CAD=FV=Wq8Z+rf++08fyYvsBUqdWX23qoUSOBBR5nP=hBUk2mzA@mail.gmail.com>
To: Mark Yacoub <markyacoub@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v7 08/10] dt-bindings: msm/dp: Add bindings
 for HDCP registers
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
Cc: freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh@kernel.org>, intel-gfx@lists.freedesktop.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, dri-devel@lists.freedesktop.org,
 Kuogee Hsieh <quic_khsieh@quicinc.com>, Rob Herring <robh+dt@kernel.org>,
 seanpaul@chromium.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-msm@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Stephen Boyd <swboyd@chromium.org>, David Airlie <airlied@gmail.com>,
 devicetree@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, Mar 24, 2023 at 12:56=E2=80=AFPM Mark Yacoub <markyacoub@chromium.o=
rg> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Add the bindings for the MSM DisplayPort HDCP registers
> which are required to write the HDCP key into the display controller as
> well as the registers to enable HDCP authentication/key
> exchange/encryption.
>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
>
> ---
> Changes in v2:
> -Drop register range names (Stephen)
> -Fix yaml errors (Rob)
> Changes in v3:
> -Add new compatible string for dp-hdcp
> -Add descriptions to reg
> -Add minItems/maxItems to reg
> -Make reg depend on the new hdcp compatible string
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
> Changes in v4.5:
> -Remove maxItems from reg (Rob)
> -Remove leading zeros in example (Rob)
> Changes in v5:
> -None
> Changes in v6:
> -Rebased: modify minItems instead of adding it as new line.
> Changes in v7:
> -Revert the change to minItems
> -Added the maxItems to Reg
>
>  .../devicetree/bindings/display/msm/dp-controller.yaml     | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
