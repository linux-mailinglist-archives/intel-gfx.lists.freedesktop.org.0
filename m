Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA556E85E8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 01:26:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BF310EB4B;
	Wed, 19 Apr 2023 23:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564B510EB43
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 23:26:39 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id c3so798854ljf.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Apr 2023 16:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1681946797; x=1684538797;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=tdy0bM0xKZr6oyQKfYHhwGkCtciOdDj0SXYRPcGsGuI=;
 b=ubL231BYxGK7HQEPhqowVdfMZ2aCYI5mDsSNuxYThQQHDca/RsvE29k5A6CFpukMk9
 iylwpkQx+cKG9Nwynr9DFrDZ9Vs+vw7CFARgtuZyMvvf1GTvkg0rQjnWlc3n7b5lsZcS
 MRTOw3+ONmnd75DeSm72s4FLHipfJGg9GC1qXULBncYI4A2xsMq1ifuEbc2F7JUnjmV6
 5kbvWwJwEkP3W9AfNYQnpWrmvOHB7pVZ2fJQ6Jl3987/lPbPmK606BkO7PQKb9NLQQ1l
 RsoON+O897BZQSRhryl+NDg7cqkuqh5bPxuZ+dUVUTOQ5juHiVs31mnjF2Xevvlxu8TR
 UCjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1681946797; x=1684538797;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=tdy0bM0xKZr6oyQKfYHhwGkCtciOdDj0SXYRPcGsGuI=;
 b=QJFK7dbNFnyzTKcMacuLfTm6TZOOO6FYWslCJyLDSJISGySDHgo0UFG++J7uiDt2sD
 K9Ed4mxwwFdnFMA3Fauc3142m3HDnpZdFirRa5wMyVITDw/5PKjcAvgXTas65W8qUN9c
 DpkaTgc1lhCNp8CbWgmBb4MR0ijtqsidqRGgG+96glyKYDLGN3iv565nwOPV77ygF9bS
 05L8/608MX/kZJaBtB9XaJ0fLyA5Ftg2hWG6gSV8Z1XXFyvqNx+gn/USeyNGzqtlE0ZA
 4Fz77m02t7IBc1arBZzQF3PBa116ifVEGPRu6tS20jPSd2QjGv9zmPxQ0PPO18XNPePy
 lJLw==
X-Gm-Message-State: AAQBX9dwVbPlLXmpxowiOIaqDq06zGOTq3cEwi8oHb72IPOF0sBSQS2T
 K/AesZB4vjYe3ES46vhERby2qw==
X-Google-Smtp-Source: AKy350aGF5EuTAPnF4k7kciyLYx05f7n7+qBryOAqx2OuHplJ1PtxA9Km8wRT+Ez0RlLnwoKVw0kWg==
X-Received: by 2002:a2e:9f49:0:b0:298:aad9:e377 with SMTP id
 v9-20020a2e9f49000000b00298aad9e377mr2290105ljk.14.1681946797482; 
 Wed, 19 Apr 2023 16:26:37 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5?
 (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
 by smtp.gmail.com with ESMTPSA id
 a17-20020a19f811000000b004ec8a7e5362sm41463lff.101.2023.04.19.16.26.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Apr 2023 16:26:37 -0700 (PDT)
Message-ID: <6ac50d82-c8f0-c0cd-25c4-348f901b88e6@linaro.org>
Date: Thu, 20 Apr 2023 02:26:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-GB
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>
References: <20230403092313.235320-1-dmitry.baryshkov@linaro.org>
 <20230403092313.235320-9-dmitry.baryshkov@linaro.org>
 <SN7PR11MB675048DBEDFE8CD781628198E3989@SN7PR11MB6750.namprd11.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <SN7PR11MB675048DBEDFE8CD781628198E3989@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 08/12] drm/display/dsc: add YCbCr 4:2:2
 and 4:2:0 RC parameters
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
Cc: "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/04/2023 20:25, Kandpal, Suraj wrote:
> Hi,
>> Include RC parameters for YCbCr 4:2:2 and 4:2:0 configurations.
>>
> 
> Looks Good to me
> 
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

And gentle reminder for patches 9-12. We would kindly ask to get this 
patches reviewed and ready to be merged into drm-intel after -rc1 or 
-rc2, so that we can backmerge the drm tree into msm-next and enqueue 
msm-specific DSC patches early during the cycle. Thank you for your 
understanding and collaboration.

-- 
With best wishes
Dmitry

