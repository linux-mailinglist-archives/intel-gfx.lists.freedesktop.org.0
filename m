Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C003421821
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 22:04:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DA76E187;
	Mon,  4 Oct 2021 20:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com
 [IPv6:2607:f8b0:4864:20::333])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DB26E1AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 19:58:45 +0000 (UTC)
Received: by mail-ot1-x333.google.com with SMTP id
 c26-20020a056830349a00b0054d96d25c1eso23086405otu.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Oct 2021 12:58:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=g/yzddU3WVCKb8sDEoiCgKCNa1rqIwKAtvo70nJX4IU=;
 b=gfPKM3FjHdGBAhwt4uL+abGKcsFiQiGRM2hJ5cjclU1VruXjJd4Tj+wiXt43GCdYBJ
 n8XeX4r2eNjq39whRMoOnsfaxS25PS4KibNTNCBtamqzC4ERN3+1bj1ej0Bt2nzkjUuV
 2LoFbizg2jY/IkkRpJlsvltaw1UFHNhG7DDlDi7rR1CI+tsFO9nPLy7zKX5Ptwet/Fr8
 cXlenkWqm4cHBywcT6Z9LPnD8W4kSZ+sBZsxYw4Xi8viQVjiZX1x5uT2KMtB3Wm5bXIC
 U7neIcxze8C/9DZYxYMuQ8KFx7iKENpL4xvglowYrbQHMcv5rQgL1aRIrXcel49IEY6V
 D1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=g/yzddU3WVCKb8sDEoiCgKCNa1rqIwKAtvo70nJX4IU=;
 b=UA8bfVaIpecPLqoTgW450s7JOTX8X3lznFaUwGLfBqMus5u5BbY3mu1oHqDtNscQxX
 jiCpXsOBEwdqA6fUI/6woC5kF0UmYXHrc9ItVPhd7ZRo70MgtAlQicgi81mcLMyr8hcp
 MdBeZL/r0tAQYI5qMQUqgU0q+XBlGPIWFFx63mrbQJ/oZiemydA8y6MJVvTVTbxWZJYV
 iXvn3BB8NdlwG7O6lZVvADtZ/h20wejU1+Vk3AhDGRNNy2B62ro4UIxMtNOo1av3kpbR
 C/zXBKNeocgDjobfsA5J38qUtSpNYstnvznfwvLaHCtx0BP9i9uNPdZAJVNRKAkxSn8F
 AmPg==
X-Gm-Message-State: AOAM532Ne9dIBnjE9yoHxLuPIwmoGzVhYw2PY4UQsvxbZ98MkA5wl7b8
 gOoKIPstyL7amnsTrVvXUFUTAw==
X-Google-Smtp-Source: ABdhPJzYq4RED8G0SFOdF37jr9RVat/1OP+E44y/iGgXH9Gx2Xe/pW5QFihZ7IYmev2/tGszgXYxaA==
X-Received: by 2002:a9d:458b:: with SMTP id x11mr10939775ote.313.1633377524110; 
 Mon, 04 Oct 2021 12:58:44 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id p16sm2786526ood.37.2021.10.04.12.58.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 12:58:43 -0700 (PDT)
Date: Mon, 4 Oct 2021 14:58:41 -0500
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: Sean Paul <sean@poorly.run>
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, swboyd@chromium.org,
 jani.nikula@linux.intel.com, Sean Paul <seanpaul@chromium.org>,
 Rob Herring <robh@kernel.org>, Rob Clark <robdclark@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>,
 Kuogee Hsieh <khsieh@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Message-ID: <YVtc8ROAWAy1ja27@builder.lan>
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-13-sean@poorly.run>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211001151145.55916-13-sean@poorly.run>
X-Mailman-Approved-At: Mon, 04 Oct 2021 20:04:32 +0000
Subject: Re: [Intel-gfx] [PATCH v3 12/14] dt-bindings: msm/dp: Add bindings
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri 01 Oct 10:11 CDT 2021, Sean Paul wrote:

> From: Sean Paul <seanpaul@chromium.org>
> 
> This patch adds the bindings for the MSM DisplayPort HDCP registers
> which are required to write the HDCP key into the display controller as
> well as the registers to enable HDCP authentication/key
> exchange/encryption.
> 
> We'll use a new compatible string for this since the fields are optional.
> 

I don't think you need a new compatible, in particular since I presume
we should use the hdcp compatible in all platforms? Or is there a reason
for not picking that one?

Instead I suggest that you simply do minItems: 1, maxItems: 3 and detect
which of the two cases you have in the driver.

PS. I hope to get
https://lore.kernel.org/linux-arm-msm/20211001174400.981707-1-bjorn.andersson@linaro.org/
landed before we add these new optional regions...

Regards,
Bjorn

> Cc: Rob Herring <robh@kernel.org>
> Cc: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-13-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-13-sean@poorly.run #v2
> 
> Changes in v2:
> -Drop register range names (Stephen)
> -Fix yaml errors (Rob)
> Changes in v3:
> -Add new compatible string for dp-hdcp
> -Add descriptions to reg
> -Add minItems/maxItems to reg
> -Make reg depend on the new hdcp compatible string
> ---
> 
> Disclaimer: I really don't know if this is the right way to approach
> this. I tried using examples from other bindings, but feedback would be
> very much welcome on how I could add the optional register ranges.
> 
> 
>  .../bindings/display/msm/dp-controller.yaml   | 34 ++++++++++++++++---
>  1 file changed, 30 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 64d8d9e5e47a..a176f97b2f4c 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -17,9 +17,10 @@ properties:
>    compatible:
>      enum:
>        - qcom,sc7180-dp
> +      - qcom,sc7180-dp-hdcp
>  
> -  reg:
> -    maxItems: 1
> +  # See compatible-specific constraints below.
> +  reg: true
>  
>    interrupts:
>      maxItems: 1
> @@ -89,6 +90,29 @@ required:
>    - power-domains
>    - ports
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,sc7180-dp-hdcp
> +    then:
> +      properties:
> +        reg:
> +          minItems: 3
> +          maxItems: 3
> +          items:
> +            - description: Registers for base DP functionality
> +            - description: (Optional) Registers for HDCP device key injection
> +            - description: (Optional) Registers for HDCP TrustZone interaction
> +    else:
> +      properties:
> +        reg:
> +          minItems: 1
> +          maxItems: 1
> +          items:
> +            - description: Registers for base DP functionality
> +
>  additionalProperties: false
>  
>  examples:
> @@ -99,8 +123,10 @@ examples:
>      #include <dt-bindings/power/qcom-rpmpd.h>
>  
>      displayport-controller@ae90000 {
> -        compatible = "qcom,sc7180-dp";
> -        reg = <0xae90000 0x1400>;
> +        compatible = "qcom,sc7180-dp-hdcp";
> +        reg = <0 0x0ae90000 0 0x1400>,
> +              <0 0x0aed1000 0 0x174>,
> +              <0 0x0aee1000 0 0x2c>;
>          interrupt-parent = <&mdss>;
>          interrupts = <12>;
>          clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
> 
