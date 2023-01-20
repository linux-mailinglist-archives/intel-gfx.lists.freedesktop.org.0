Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 258DC675946
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 16:55:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B52410EAAE;
	Fri, 20 Jan 2023 15:55:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com
 [IPv6:2607:f8b0:4864:20::82b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51610E090
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 15:55:00 +0000 (UTC)
Received: by mail-qt1-x82b.google.com with SMTP id q15so4482839qtn.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 07:55:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=cIZBov414cRAviPU8wwR8NqtPTpO7JU2x/UOZjpaEK8=;
 b=I+/367Wr7qAl4QZ19Xa8tMaf6OqBl6nT+owiFtMqLB3/Pk1nuu/DhyGmoEK7Lb+cBd
 //6UGaGGTvOGvzJ/mWDIIYHpM5WkOc2aTbH28Z5mpomge2PFcZWk0jPPE8ng1P9KJICw
 kYEMN9hgS7OBMWqEVVXpEj+uPpGaVXdsBHwT1L5aA7FsjQPf0Z3TStJ+iaepVd5A72HF
 wvf5b52cvYfFrjB5l0ouephNq/+wZXsmyY1xI7jEACR3zpiFVnJGl1fUMjGlE8xgQr2+
 9GwZy1WuKMfqeSoyDSpeMrCnVUYV9UONb7Y8Ru7Xa3AMfHs1LyJSouAVHeWITYRdqKw5
 NHYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=cIZBov414cRAviPU8wwR8NqtPTpO7JU2x/UOZjpaEK8=;
 b=MUlkHiikqTlY0W5P1GTRFIPCRK1SKpN64pWvTaP7K5IdCTTHd9oJ5peNJIqUr8xnxf
 4X/0uDRPlNo2Iedyh1GR0wOP9Yw9XFylPT0/pDcMrG5A1J9S+00BNWyuDgrAiffP5tsC
 n2bw+gpTbMcyWUzcvqbHw9AuMrZN74w4Z6NwyGVq7znNMkgAyxpl5IbIOksKDKKmJm5k
 ptfmK5I8EKDrde0GNqkoWJ4Wqbekc7nJ1gwYjf0/JAdU5T2hqjoDSOHlex2U9iRK7fGC
 Wc0gKemkYiZfuczYiqTeGYIFffuKUsM6cxe5dqz9B08T/azpaQi09oKYqA9QiJQuFY/X
 gagw==
X-Gm-Message-State: AFqh2krbE0NLN7b7duMsDMumr0tmEPMrQlbcD9juGm7+YtJsuoFsEAzn
 N2mku2Ee0pts0C82pjKuHrmPdg==
X-Google-Smtp-Source: AMrXdXsjEvmwrWcwoIJKQJn80PQaEbBtBLRSxwKE/E0XlC2LInWRVyvOb56cD5VovaJaFNuBUXq/4w==
X-Received: by 2002:ac8:7ed1:0:b0:3ab:5a62:453b with SMTP id
 x17-20020ac87ed1000000b003ab5a62453bmr21415426qtj.53.1674230099206; 
 Fri, 20 Jan 2023 07:54:59 -0800 (PST)
Received: from localhost (200.234.86.34.bc.googleusercontent.com.
 [34.86.234.200]) by smtp.gmail.com with ESMTPSA id
 g19-20020a05620a40d300b006cec8001bf4sm26567015qko.26.2023.01.20.07.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Jan 2023 07:54:58 -0800 (PST)
Date: Fri, 20 Jan 2023 15:54:57 +0000
From: Sean Paul <sean@poorly.run>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Message-ID: <Y8q5UfpIg0+qnAuG@art_vandelay>
References: <20230118193015.911074-1-markyacoub@google.com>
 <20230118193015.911074-10-markyacoub@google.com>
 <aee03688-54b6-ed9f-e32c-b46e31d72198@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aee03688-54b6-ed9f-e32c-b46e31d72198@linaro.org>
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
 bjorn.andersson@linaro.org, johan+linaro@kernel.org,
 Mark Yacoub <markyacoub@chromium.org>, andersson@kernel.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, dmitry.baryshkov@linaro.org,
 seanpaul@chromium.org, freedreno@lists.freedesktop.org, maxime@cerno.tech
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 19, 2023 at 11:35:32AM +0100, Krzysztof Kozlowski wrote:
> On 18/01/2023 20:30, Mark Yacoub wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > This patch adds the register ranges required for HDCP key injection and
> 
> Do not use "This commit/patch".
> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95
> 
> This applies to all your patches. Fix it everywhere.

My goodness, this is peak bikeshedding. Surely we have better things to do with
our time?

> 
> > HDCP TrustZone interaction as described in the dt-bindings for the
> > sc7180 dp controller. Now that these are supported, change the
> > compatible string to "dp-hdcp".
> 
> What does it mean? Where do you do it?
> 
> > 
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
> > Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
> > Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3
> > Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-14-sean@poorly.run #v4
> > Link: https://patchwork.freedesktop.org/patch/msgid/20220411204741.1074308-10-sean@poorly.run #v5
> 
> Drop the links.

Why? I've always done this, it seems helpful to me?

> 
> > 
> > Changes in v3:
> > -Split off into a new patch containing just the dts change (Stephen)
> > -Add hdcp compatible string (Stephen)
> > Changes in v4:
> > -Rebase on Bjorn's multi-dp patchset
> > Changes in v5:
> > -Put the tz register offsets in trogdor dtsi (Rob C)
> > Changes in v6:
> > -Rebased: Removed modifications in sc7180.dtsi as it's already upstream
> > 
> > ---
> 
> Changelog after --- .

It's common practice in drm subsystem to include this in the commit message.

Sean


> 
> >  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> > 
> 
> Best regards,
> Krzysztof
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
