Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96A9D6D0DC5
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 20:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE4810E207;
	Thu, 30 Mar 2023 18:31:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com
 [IPv6:2607:f8b0:4864:20::e2b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1067D10E207
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 18:31:53 +0000 (UTC)
Received: by mail-vs1-xe2b.google.com with SMTP id i10so17044175vss.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1680201111;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=6bmgWM4VeyB5ih4GlZbThd/2eiyQX/X/Evx0/5WbwLA=;
 b=n7Fbcx5kLC5PQCrKOLLphRB+Qj+CJ1V2n+6VE2q9x8tgdTfNT/TvljT9Ud5D0Sev+I
 jSx0/mE5wPBJBUslQrVt+msUKR8oj3psvddiRCxHXDNcC7JwUdR4++FURzyQa2lH2oPP
 QrylpyoNqKGTbaDitz5XTgPk8P5ruj9xa1qC8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680201111;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=6bmgWM4VeyB5ih4GlZbThd/2eiyQX/X/Evx0/5WbwLA=;
 b=50H/ModkVV8sd5clfjBt1vv9eyb5XSYsrcfL1SlVIoSVETPHmlLJvyMzOZDUV/F9GM
 BOWxK5Z8GCqFB55dZxDSdglxAnjhCPE6ezrEzgV7Fg7A/U8kUGMlo7gxLa5R+c7toD5b
 r72aIZK1fZQqbirPm4WtESPJkaHr9qHUumc3dt20jLWyqlHbK5iKlcl6FG2r+utODe/X
 ZPuwc4XInTMKV/JQRtlfn29p7QUXG1K21jAu+EYI5Xpof4XVtzIOhgPc15e0Zu+UEX/k
 fSwZ1ToW+7ghJzTReqoLgLuqNMXjjBucxYahq40gKs8C0wmfdrqwv938QzEXgJ72XHlo
 hucg==
X-Gm-Message-State: AAQBX9fTXaNQCaSmP1Bg2h+z7nGJui1sMSMkDz6E7jQeSs+yUlGvvqmP
 //yG1O4GKF6PzFzd44kDuXjYmw4pWULXpYXtWaA=
X-Google-Smtp-Source: AKy350bnyBU9v+2V1k8cNWYk5yYgluyt5qaXdW38JTv3nXLqUmI0u/w8jDhIWSPF3eOYTEE2K9c32A==
X-Received: by 2002:a67:ee4b:0:b0:426:3158:4062 with SMTP id
 g11-20020a67ee4b000000b0042631584062mr7797996vsp.14.1680201111099; 
 Thu, 30 Mar 2023 11:31:51 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com.
 [209.85.217.44]) by smtp.gmail.com with ESMTPSA id
 m187-20020a6726c4000000b0041f602f8f0bsm4874511vsm.25.2023.03.30.11.31.50
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Mar 2023 11:31:50 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id c1so17053535vsk.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 11:31:50 -0700 (PDT)
X-Received: by 2002:a67:c18a:0:b0:425:cf00:e332 with SMTP id
 h10-20020a67c18a000000b00425cf00e332mr13402479vsj.7.1680201109830; Thu, 30
 Mar 2023 11:31:49 -0700 (PDT)
MIME-Version: 1.0
References: <20230324195555.3921170-1-markyacoub@google.com>
 <20230324195555.3921170-10-markyacoub@google.com>
In-Reply-To: <20230324195555.3921170-10-markyacoub@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 Mar 2023 11:31:38 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xvu++Bvkkq+xORUB0OWq_49nupFgCqsbX0XJz8vgy0Zw@mail.gmail.com>
Message-ID: <CAD=FV=Xvu++Bvkkq+xORUB0OWq_49nupFgCqsbX0XJz8vgy0Zw@mail.gmail.com>
To: Mark Yacoub <markyacoub@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v7 09/10] arm64: dts: qcom: sc7180: Add
 support for HDCP in dp-controller
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Andy Gross <agross@kernel.org>, seanpaul@chromium.org,
 dri-devel@lists.freedesktop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, Mar 24, 2023 at 12:56=E2=80=AFPM Mark Yacoub <markyacoub@chromium.o=
rg> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> Add the register ranges required for HDCP key injection and
> HDCP TrustZone interaction as described in the dt-bindings for the
> sc7180 dp controller.
>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
>
> ---
> Changes in v3:
> -Split off into a new patch containing just the dts change (Stephen)
> -Add hdcp compatible string (Stephen)
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
> Changes in v5:
> -Put the tz register offsets in trogdor dtsi (Rob C)
> Changes in v6:
> -Rebased: Removed modifications in sc7180.dtsi as it's already upstream
> Changes in v7:
> -Change registers offset
>
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/bo=
ot/dts/qcom/sc7180-trogdor.dtsi
> index 47f39c547c41a..63183ac9c3c48 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -816,6 +816,14 @@ &mdss_dp {
>         status =3D "okay";
>         pinctrl-names =3D "default";
>         pinctrl-0 =3D <&dp_hot_plug_det>;
> +
> +       reg =3D <0 0x0ae90000 0 0x200>,
> +             <0 0x0ae90200 0 0x200>,
> +             <0 0x0ae90400 0 0xc00>,
> +             <0 0x0ae91000 0 0x400>,
> +             <0 0x0ae91400 0 0x400>,
> +             <0 0x0aed1000 0 0x174>,
> +             <0 0x0aee1000 0 0x2c>;

Reviewed-by: Douglas Anderson <dianders@chromium.org>
