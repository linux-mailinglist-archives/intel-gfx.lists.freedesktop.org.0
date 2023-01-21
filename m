Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38CC367659D
	for <lists+intel-gfx@lfdr.de>; Sat, 21 Jan 2023 11:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C83F110E0F7;
	Sat, 21 Jan 2023 10:16:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BC5D10E0F7
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 10:16:24 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id g14so8118565ljh.10
 for <intel-gfx@lists.freedesktop.org>; Sat, 21 Jan 2023 02:16:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=R+Pyl+joRSSSHYvf7WpDkCWmQvZq+W+aRVbNCqAWyN0=;
 b=aw4vZZx4wkPSHemLhBCOWKkcGKy2I6AvBjN7UL/hvRcVPDSIlGrklw2jTtkH/RvGZb
 uueF5MZpeSFKiA06BhrDArxQaLgpWridTlFnBJcqHTMEN8Es+P7RiSkewrQNPSK/4g3K
 eqf2aNalnUtTCszMbvy4i2lDVXJUE56aCvqtzCQPf/d2rREW9rsLlnb3NRwtpkvW+0rg
 ZW19EDyGbGyLGScXmsOmfTRVSVKLQoSZJnVmY+4+H99Ueooe6NqfOPkITPYRuAhx4Rxi
 3NibyE+BBWFbhVxIs01RoDCYx7jr/UkqI8VdnfrR9x8kU3kL3uPF5LxS/Sv6NCiAZa2w
 IdBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=R+Pyl+joRSSSHYvf7WpDkCWmQvZq+W+aRVbNCqAWyN0=;
 b=sh5dO03tHCin4LbgmC15v6qJQKdNuAAysuF+6SK1mjPcZhElajxV0FkzYa1/9WDxLj
 dQhFVfaruIi01QJVqHPpnGARqSmFu54MZnYYyS5jBSdaexGnB26Bi/PUqZxnrFOLpufA
 F+NVlyAtMV0GKjKVuTg4NxFWICLDp06yhD3wolKlxtaYlG1tFKzP1OHtUA5znairjFjj
 L9Rq5+26puFL6KlzGiQgZHlOitl1aKc5v+sWswYZWt2WAL4Hn79yOGTnExA0dk5u8Z3w
 ZXjWNvHsVebsshXHwXV+3U2eab+UrAu0DV/qHf+dqMzQXQR9DJBdc6t64TZghsFS5G9+
 mUWg==
X-Gm-Message-State: AFqh2kqObvp2dLL3prB83o+avRAQ4Rl+6WkkXQFhoFydJhbK821p452A
 M8a6Td9qxS6X018BneXXQC9zRg==
X-Google-Smtp-Source: AMrXdXsmnMg48aeBhogSIz+DbIJdUnf4nEqxin4EPTgBYOA8j6w8atXnnKg+jW8ZCAvlcIjIEdWAAg==
X-Received: by 2002:a2e:3807:0:b0:276:dc01:8058 with SMTP id
 f7-20020a2e3807000000b00276dc018058mr4630164lja.1.1674296182695; 
 Sat, 21 Jan 2023 02:16:22 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 p19-20020a2ea4d3000000b0028a4a907a33sm3023710ljm.84.2023.01.21.02.16.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 21 Jan 2023 02:16:22 -0800 (PST)
Message-ID: <7116584e-f5a1-f404-8cfc-d1d159a4d647@linaro.org>
Date: Sat, 21 Jan 2023 12:16:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-GB
To: Sean Paul <sean@poorly.run>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20230118193015.911074-1-markyacoub@google.com>
 <20230118193015.911074-10-markyacoub@google.com>
 <aee03688-54b6-ed9f-e32c-b46e31d72198@linaro.org>
 <Y8q5UfpIg0+qnAuG@art_vandelay>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Y8q5UfpIg0+qnAuG@art_vandelay>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, seanpaul@chromium.org,
 freedreno@lists.freedesktop.org, maxime@cerno.tech
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 20/01/2023 17:54, Sean Paul wrote:
> On Thu, Jan 19, 2023 at 11:35:32AM +0100, Krzysztof Kozlowski wrote:
>> On 18/01/2023 20:30, Mark Yacoub wrote:
>>> From: Sean Paul <seanpaul@chromium.org>
>>>
>>> This patch adds the register ranges required for HDCP key injection and
>>
>> Do not use "This commit/patch".
>> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95
>>
>> This applies to all your patches. Fix it everywhere.
> 
> My goodness, this is peak bikeshedding. Surely we have better things to do with
> our time?

While I would not enforce this rule if there were no other issues with 
the commits, Mark will have to cleanup/rework commits anyway, see other 
review comments. Thus removing/slightly rephrasing a commit message 
sounds like a minor issue to me.

>>>
>>> Signed-off-by: Sean Paul <seanpaul@chromium.org>
>>> Signed-off-by: Mark Yacoub <markyacoub@chromium.org>
>>> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-15-sean@poorly.run #v1
>>> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-14-sean@poorly.run #v2
>>> Link: https://patchwork.freedesktop.org/patch/msgid/20211001151145.55916-14-sean@poorly.run #v3
>>> Link: https://patchwork.freedesktop.org/patch/msgid/20211105030434.2828845-14-sean@poorly.run #v4
>>> Link: https://patchwork.freedesktop.org/patch/msgid/20220411204741.1074308-10-sean@poorly.run #v5
>>
>> Drop the links.
> 
> Why? I've always done this, it seems helpful to me?
> 

I'd say, if you wish to include them, they belong to the cover letter, 
not to the per-commit message. Once landed, they will serve no purpose.

-- 
With best wishes
Dmitry

