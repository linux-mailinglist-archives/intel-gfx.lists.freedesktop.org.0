Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 059EF675337
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 12:13:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DED310EA08;
	Fri, 20 Jan 2023 11:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0323810E8E3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 08:40:42 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-4d13cb4bbffso17360757b3.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 00:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=Wz30k0eHuCJ5qW+R1e/5VxG1p016U2jxYAEXQ6zDyEk=;
 b=IYs36GIo4XvlIdNhAXfovMq2GHRF7gmKwKlRQmrnF4ajNS9SSKRkjhGtnAxNu+XsbF
 4lYop2I58AhUQvp6C1U8Sg08CXcjtReKV5TH3rsatEn+FiyLfnN9fgHV1E+wNqhtC7yG
 PG0GsRqAPE27R94ZCIOFARXmHTa5kkQNuo8c41oWFdmGazDVm9n0g/NEBvel22/cQdx8
 7qvT1InMrpl3t+rEjLo2EXjI7kfGnUUbPo+JU8AtVJgubdVEQaSNIXTB5foczjEY/yRD
 9SFXwwWe8k6x1G8apIF7slaNxKeCFm7zsrNxnNaHwXSzp0W7897zq3kN4mQl9VXyopSZ
 CCwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Wz30k0eHuCJ5qW+R1e/5VxG1p016U2jxYAEXQ6zDyEk=;
 b=pUZY1R+30VY6cNuu4vBFtbBGBWf1VuimNRtXKQohBN/h8mUNqvDabLwKwq8/85sDfK
 xnA7Uz8AgXcFZLk/252OFjbqtd6rbtLZ9d701N54eNmFrNdPwP3JdeImGtnEooCP+M3S
 pUtEPIMy3ER/7OCsZwg9dUjGGNuOLTtlr0icS/csaYa1lJWJ3VgRVW/2Ph6PgLwZ4n7Z
 74dwNS9shthkROsPFvA1YEBXJCksjMbjfV3P/AWWhS6G0SKnG/apGyEFd9RyNRVjFAqX
 B+sMHeX+yFbP88+IdbwBz32hP8tc46w8f1IYZ6VwU92yA+ky+R4FTcnOUC0yg+3Uoejf
 PXag==
X-Gm-Message-State: AFqh2kqp5gXrwLXx5cDIh5yErAk0P9VQuG+LrlTIvPgNEd8HgCaMe6Rw
 t1wo33ym8jn2LiyV23OA2gz3HTFF0gydczzbXKRQcA==
X-Google-Smtp-Source: AMrXdXvA8Npb0BzSkuo6iBimkuIOlahd1dNVQpsDdSqUrv249CwsCg4zyuf/p2yX6ErTXCQN9nQbqKKzNwL6V4wL72M=
X-Received: by 2002:a81:7582:0:b0:370:4c23:eacc with SMTP id
 q124-20020a817582000000b003704c23eaccmr1183986ywc.127.1674117641858; Thu, 19
 Jan 2023 00:40:41 -0800 (PST)
MIME-Version: 1.0
References: <20230118193015.911074-1-markyacoub@google.com>
 <20230118193015.911074-10-markyacoub@google.com>
In-Reply-To: <20230118193015.911074-10-markyacoub@google.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 19 Jan 2023 10:40:31 +0200
Message-ID: <CAA8EJppqft3vtB9PgLe=NunYCo48rAQzAb_nLYACAQ8Onr_ZaA@mail.gmail.com>
To: Mark Yacoub <markyacoub@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 20 Jan 2023 11:13:06 +0000
Subject: Re: [Intel-gfx] [PATCH v6 09/10] arm64: dts: qcom: sc7180: Add
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
Cc: quic_sbillaka@quicinc.com, konrad.dybcio@somainline.org,
 dri-devel@lists.freedesktop.org, dianders@chromium.org,
 krzysztof.kozlowski+dt@linaro.org, airlied@gmail.com, hbh25y@gmail.com,
 marex@denx.de, abhinavk@codeaurora.org, javierm@redhat.com,
 quic_khsieh@quicinc.com, agross@kernel.org, quic_jesszhan@quicinc.com,
 devicetree@vger.kernel.org, tzimmermann@suse.de, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com,
 quic_abhinavk@quicinc.com, swboyd@chromium.org, robh+dt@kernel.org,
 christophe.jaillet@wanadoo.fr, rodrigo.vivi@intel.com,
 bjorn.andersson@linaro.org, johan+linaro@kernel.org, andersson@kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, seanpaul@chromium.org,
 freedreno@lists.freedesktop.org, maxime@cerno.tech
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 Jan 2023 at 21:30, Mark Yacoub <markyacoub@chromium.org> wrote:
>
> From: Sean Paul <seanpaul@chromium.org>
>
> This patch adds the register ranges required for HDCP key injection and
> HDCP TrustZone interaction as described in the dt-bindings for the
> sc7180 dp controller. Now that these are supported, change the
> compatible string to "dp-hdcp".

No change in compatibles, so patch description should be updated.

>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
> Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3
> Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-14-sean@poorly.run #v4
> Link: https://patchwork.freedesktop.org/patch/msgid/20220411204741.1074308-10-sean@poorly.run #v5

Again, this probably belongs to a cover letter

>
> Changes in v3:
> -Split off into a new patch containing just the dts change (Stephen)
> -Add hdcp compatible string (Stephen)
> Changes in v4:
> -Rebase on Bjorn's multi-dp patchset
> Changes in v5:
> -Put the tz register offsets in trogdor dtsi (Rob C)
> Changes in v6:
> -Rebased: Removed modifications in sc7180.dtsi as it's already upstream
>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 178efaaa89ec..6f6fe5cb6563 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -817,6 +817,14 @@ &mdss_dp {
>         pinctrl-names = "default";
>         pinctrl-0 = <&dp_hot_plug_det>;
>         data-lanes = <0 1>;
> +
> +       reg = <0 0x0ae90000 0 0x200>,
> +             <0 0x0ae90200 0 0x200>,
> +             <0 0x0ae90400 0 0xc00>,
> +             <0 0x0ae91000 0 0x400>,
> +             <0 0x0ae91400 0 0x400>,
> +             <0 0x0aed1000 0 0x175>,
> +             <0 0x0aee1000 0 0x2c>;

Is there any reason for adding these to the -trogdor instead of adding
them to the base dtsi? Does hardware differ between the sc7180.dtsi
and sc7180-trogdor.dtsi?

>  };
>
>  &pm6150_adc {
> --
> 2.39.0.246.g2a6d74b583-goog
>


-- 
With best wishes
Dmitry
