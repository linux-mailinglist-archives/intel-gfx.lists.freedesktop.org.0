Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3901421822
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Oct 2021 22:04:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64AD26E0B8;
	Mon,  4 Oct 2021 20:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com
 [IPv6:2607:f8b0:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8AC56E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 20:00:57 +0000 (UTC)
Received: by mail-ot1-x330.google.com with SMTP id
 o59-20020a9d2241000000b0054745f28c69so23048823ota.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Oct 2021 13:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=J/N5xXP3XszcLimjb3V0HTC1MVBpgM9ZA1sK5TjSsuA=;
 b=fb1ynP6sdAZcOAKPf6k0RP4Z/fnaQKYx7e04HillspFj6WBenAjxlvclyFWB1u2TZ9
 7Rtsh8/fQRbD5ApkZsPyqQ37XTRuI7F/kS0OahUBHXC2YvMGVYPgHCo+xWLMiRTczbKM
 JxF+o1KgtYXMwpDvUg5xEbyNIOnrMtY/lc30PehqZbXMQ2+yBNucEIS78+2oWiqJcDTf
 vRG7+zhoSPdMOuv5l77jMhPvyoGJR9j2QnhrZXR7uvc/UE8GrmY5AWSYG8+VCU2kzqCg
 qFqzD3u+nI/nvPFOmCbwc+wTR3RKxZ8LRqtWOERt+yCpkBEP2M/a1nlSUTzDH79CeeZ1
 68Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=J/N5xXP3XszcLimjb3V0HTC1MVBpgM9ZA1sK5TjSsuA=;
 b=BNChvQQleUI8zq+eDFTuqG+QJdWX+YT6s9HjJbKVISA4cnNzekciskoIHcz/oQ65QY
 QHDEcgw0g3+d3SQHBfMTLpfqDDXKNoBHOtgxxTkP/nT6n+v8S1pQtD4eL2QZ2OBWZvZx
 CG/fTHbgO46XxDIJ76R6nJsVAx5mXPD8hZDiblpdGeSA9SYHMMriCNSKOaVDxruTD4Bn
 y9SMhKX2d+UDscK21xZAvCpXfzjowj2EaL06HGQLDyvgVfReOz51v/8wPLySXPGyqRvA
 /ggjmUSOWiCdhwAGlq6Fdj6nQPBTzDiyoBe+Ad4wxjj9K+32OuubeSRahWQ73Tk+jgQq
 kZLg==
X-Gm-Message-State: AOAM533qYy6gqjoUrzy0qGovHC8AYY/lIl9epVDce/aPFiClvVWHfWg7
 gZRavOJWyQv8VsONnhIXHK3pGw==
X-Google-Smtp-Source: ABdhPJwuV9CjiGCB4paZPKDuSfcGCVQJII2+BskiX5DRJsygA14pmy/OLbebzffWeLf1NgXHPzxkuw==
X-Received: by 2002:a9d:458b:: with SMTP id x11mr10945333ote.313.1633377656946; 
 Mon, 04 Oct 2021 13:00:56 -0700 (PDT)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
 by smtp.gmail.com with ESMTPSA id c5sm3052476otb.35.2021.10.04.13.00.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Oct 2021 13:00:56 -0700 (PDT)
Date: Mon, 4 Oct 2021 15:00:54 -0500
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
Message-ID: <YVtddoe6Ty841Kra@builder.lan>
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

Forgot to mention, #address-cells = #size-cells = <1> in the example
"environment", so you have to omit the lone 0s in the example to make it
pass the tests.

Regards,
Bjorn

>          interrupt-parent = <&mdss>;
>          interrupts = <12>;
>          clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> -- 
> Sean Paul, Software Engineer, Google / Chromium OS
> 
