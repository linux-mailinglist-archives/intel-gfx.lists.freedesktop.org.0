Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A811C43FE5D
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Oct 2021 16:21:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E65426E0D4;
	Fri, 29 Oct 2021 14:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x12d.google.com (mail-il1-x12d.google.com
 [IPv6:2607:f8b0:4864:20::12d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F1B46EA64
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 14:21:17 +0000 (UTC)
Received: by mail-il1-x12d.google.com with SMTP id h20so10798050ila.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Oct 2021 07:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=sIUQzVNUIv7UCtk6VWOsz7d0/zFfTc744OnsuueWlvs=;
 b=DIQ887zrw4zChe9HYWt/WjLPNxc/iYt5HUHzQ4mwGE5XeORYC2UEpNsFOoZC3QwgaT
 TF48ji3W63maB8D8jK8tteg01GHEbd9pa35XXGVGX80TjCDIEKIfI58wstqA7F/JIHNv
 SWTVss33qnlUeJ2h7c6YErjgzxUafxydPSo7InFl1g0s1tf1NRKL22IHvQB/l0SZ4pnI
 XZuemEI4vmRoI3cL4HaUV/eMe/kyggaW74ioPY9b9lr/Yimb/Xq0gk6ZjeMdrKKJitsP
 0wkFL2SlldC7C7aEe5ZYFEXuLwNAti5Wn4gvsIG9MgorOSChREQ1+9aBARDvOMZvcGRX
 ifNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=sIUQzVNUIv7UCtk6VWOsz7d0/zFfTc744OnsuueWlvs=;
 b=lgB3yIg0QcRnXSDu/x27Mfsv1KVk4OwfRTI0vmisa7Ue7t021w4UDULJ2Pxql0Fq0C
 uR5pXLLFmK/z7TRPjxNFAT3hPLpzv6orUC3WW/+MBazOCpGvYjnnRDb2X54n9KA42gyH
 o90Kb2iK+xMFMEkCq+WeOkRHoqrubKPwbP1Tbbv1u3A0jq+JA9XhgWL7/w+CukEWOdcd
 UOU3+BD7zkQnuncPwRu6MzYMOjS3QiOiH23VKjPlNDOCDu2f1zhg+StmaXayE9mLeYW9
 EuVQSQOyLiIXxX8SOXPGSrSX0p6q5WbvFHMyV72ss7KEeZFr+KsypyQUN930oFh7Uim2
 LYKg==
X-Gm-Message-State: AOAM533NYg4jZaqNMXcrwSskgXEdhIozYWGLqCCjERU/GjqhxRMd5wsa
 j1sS3VGDYB7Wm/H7ZvLaVJQp8A==
X-Google-Smtp-Source: ABdhPJw9vVlq7THY7kGI75S7I+MnEeKid2R/HUuZH+tEX10TwwATfB8tr2VAt0rQHhT4bIf6sFsQUQ==
X-Received: by 2002:a05:6e02:1c08:: with SMTP id
 l8mr7574952ilh.203.1635517276430; 
 Fri, 29 Oct 2021 07:21:16 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id e10sm2972754ili.53.2021.10.29.07.21.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Oct 2021 07:21:15 -0700 (PDT)
Date: Fri, 29 Oct 2021 10:21:14 -0400
From: Sean Paul <sean@poorly.run>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Rob Herring <robh@kernel.org>,
 Rob Clark <robdclark@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 Kuogee Hsieh <khsieh@codeaurora.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org
Message-ID: <20211029142114.GF10475@art_vandelay>
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-13-sean@poorly.run>
 <YVtc8ROAWAy1ja27@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YVtc8ROAWAy1ja27@builder.lan>
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

On Mon, Oct 04, 2021 at 02:58:41PM -0500, Bjorn Andersson wrote:
> On Fri 01 Oct 10:11 CDT 2021, Sean Paul wrote:
> 
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > This patch adds the bindings for the MSM DisplayPort HDCP registers
> > which are required to write the HDCP key into the display controller as
> > well as the registers to enable HDCP authentication/key
> > exchange/encryption.
> > 
> > We'll use a new compatible string for this since the fields are optional.
> > 
> 
> I don't think you need a new compatible, in particular since I presume
> we should use the hdcp compatible in all platforms? Or is there a reason
> for not picking that one?
> 
> Instead I suggest that you simply do minItems: 1, maxItems: 3 and detect
> which of the two cases you have in the driver.

Thanks for your review, Bjorn! I had done this in v2 (see [1] & [2]), but it was
suggested that a new compatible would be better. I'll change it back to this
method rebased on top of your changes.

Sean

[1]- https://patchwork.freedesktop.org/patch/454066/?series=94712&rev=1
[2]- https://patchwork.freedesktop.org/patch/454068/?series=94712&rev=1


> 
> PS. I hope to get
> https://lore.kernel.org/linux-arm-msm/20211001174400.981707-1-bjorn.andersson@linaro.org/
> landed before we add these new optional regions...
> 
> Regards,
> Bjorn
> 
> > Cc: Rob Herring <robh@kernel.org>
> > Cc: Stephen Boyd <swboyd@chromium.org>
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-13-sean@poorly.run #v1
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-13-sean@poorly.run #v2
> > 
> > Changes in v2:
> > -Drop register range names (Stephen)
> > -Fix yaml errors (Rob)
> > Changes in v3:
> > -Add new compatible string for dp-hdcp
> > -Add descriptions to reg
> > -Add minItems/maxItems to reg
> > -Make reg depend on the new hdcp compatible string
> > ---
> > 
> > Disclaimer: I really don't know if this is the right way to approach
> > this. I tried using examples from other bindings, but feedback would be
> > very much welcome on how I could add the optional register ranges.
> > 
> > 
> >  .../bindings/display/msm/dp-controller.yaml   | 34 ++++++++++++++++---
> >  1 file changed, 30 insertions(+), 4 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > index 64d8d9e5e47a..a176f97b2f4c 100644
> > --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> > @@ -17,9 +17,10 @@ properties:
> >    compatible:
> >      enum:
> >        - qcom,sc7180-dp
> > +      - qcom,sc7180-dp-hdcp
> >  
> > -  reg:
> > -    maxItems: 1
> > +  # See compatible-specific constraints below.
> > +  reg: true
> >  
> >    interrupts:
> >      maxItems: 1
> > @@ -89,6 +90,29 @@ required:
> >    - power-domains
> >    - ports
> >  
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: qcom,sc7180-dp-hdcp
> > +    then:
> > +      properties:
> > +        reg:
> > +          minItems: 3
> > +          maxItems: 3
> > +          items:
> > +            - description: Registers for base DP functionality
> > +            - description: (Optional) Registers for HDCP device key injection
> > +            - description: (Optional) Registers for HDCP TrustZone interaction
> > +    else:
> > +      properties:
> > +        reg:
> > +          minItems: 1
> > +          maxItems: 1
> > +          items:
> > +            - description: Registers for base DP functionality
> > +
> >  additionalProperties: false
> >  
> >  examples:
> > @@ -99,8 +123,10 @@ examples:
> >      #include <dt-bindings/power/qcom-rpmpd.h>
> >  
> >      displayport-controller@ae90000 {
> > -        compatible = "qcom,sc7180-dp";
> > -        reg = <0xae90000 0x1400>;
> > +        compatible = "qcom,sc7180-dp-hdcp";
> > +        reg = <0 0x0ae90000 0 0x1400>,
> > +              <0 0x0aed1000 0 0x174>,
> > +              <0 0x0aee1000 0 0x2c>;
> >          interrupt-parent = <&mdss>;
> >          interrupts = <12>;
> >          clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> > -- 
> > Sean Paul, Software Engineer, Google / Chromium OS
> > 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
