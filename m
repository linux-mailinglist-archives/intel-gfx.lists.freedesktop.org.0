Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FE44226CA
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 14:35:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C29B6F5E3;
	Tue,  5 Oct 2021 12:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com
 [IPv6:2a00:1450:4864:20::12b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 622F76E226
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 22:48:43 +0000 (UTC)
Received: by mail-lf1-x12b.google.com with SMTP id e15so78106820lfr.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Oct 2021 15:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fuYKZBlsBN/oAWqlM2Px7R4QB8Yf2Dd4kLqSjdySbDs=;
 b=xDBuXAYBOQZ3FoLfObUjS3Oy8+W1+6Lc640YUmCqhW9bNWScjA3eE90pEkRYKrdxCP
 /+TqIXbhPi6BWze7P7HZ+u43LZtcMz7ob3A/I6JkY+1Ti+0WRu/34mRrDPuBiYWNhN1l
 JPvD0Za7digs9sr22Adxwxi+mnuQ1YfvtbV0wPYGGuyGhA756v13adXoa35h3r7ckczB
 fXSpc3+c9iDYrNhtSiquLEsVogw44iroJc3J7jsHUK1AIbD+3ckM0A2kdvsVT+omsa07
 H3THafo7jhLt739RjZuTHicfOpLwlJswq1sL/yrlmuc0ZFu/tt/mqRGo1v0YeZjdKADL
 pjFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fuYKZBlsBN/oAWqlM2Px7R4QB8Yf2Dd4kLqSjdySbDs=;
 b=uPXQwR0GAkpuRVy3HJM2gvPDAQFd0rn11zZGcgi93ngjwvK5J9/B1IpoVRnmAmWpBK
 RTeGHtb7xmiH9iw7WW2U3rLQbNdeWu5aVw8gu3Se/Bfh5u2DoNFlDaKRJU2zPlPCKFAu
 YAGwrpwszya0ZDmJBllBGbEBJPy57BkLCro6iocvMKLCjEpSnNh656yYsqqzw7+Ey9oJ
 wxb0nlYVHCN5+KfiYpJ2qqXzKfjV4QKAE41o+/zH237746j6BBxfrQyj/77rPLReowxl
 HcKN8q1xS2o6i8vl94+Th/AZAI4IWx1L248oamrOXM7ujgwQaeYXRFS26kdcMZ68h7/V
 RqfA==
X-Gm-Message-State: AOAM530m6N+vT5AiXPIIOowGvxQyhvz3y0EBPH28nCZG+/9vuxmG7O34
 s8Flb6pl3MM4kEgDGHlx1/ceYw==
X-Google-Smtp-Source: ABdhPJyQ5BQeCxSIG/H54WDxN3wJp13/97SBah0tsoBTsQykpd2oC1CCjJ2td9Srb0UGTiEzbAwXmw==
X-Received: by 2002:a05:6512:1520:: with SMTP id
 bq32mr17670181lfb.232.1633387721505; 
 Mon, 04 Oct 2021 15:48:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id e28sm1881117ljo.63.2021.10.04.15.48.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Oct 2021 15:48:40 -0700 (PDT)
To: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Abhinav Kumar <abhinavk@codeaurora.org>,
 Rob Clark <robdclark@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-9-sean@poorly.run>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <fe36a62f-11b7-aac5-5c6f-9690ab739fd1@linaro.org>
Date: Tue, 5 Oct 2021 01:48:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211001151145.55916-9-sean@poorly.run>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 05 Oct 2021 12:35:13 +0000
Subject: Re: [Intel-gfx] [PATCH v3 08/14] drm/msm/dpu_kms: Re-order dpu
 includes
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

On 01/10/2021 18:11, Sean Paul wrote:
> From: Sean Paul <seanpaul@chromium.org>
> 
> Make includes alphabetical in dpu_kms.c
> 
> Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-9-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-9-sean@poorly.run #v2
> 
> Changes in v2:
> -None
> Changes in v3:
> -None

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index ae48f41821cf..fb0d9f781c66 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -21,14 +21,14 @@
>   #include "msm_gem.h"
>   #include "disp/msm_disp_snapshot.h"
>   
> -#include "dpu_kms.h"
>   #include "dpu_core_irq.h"
> +#include "dpu_crtc.h"
> +#include "dpu_encoder.h"
>   #include "dpu_formats.h"
>   #include "dpu_hw_vbif.h"
> -#include "dpu_vbif.h"
> -#include "dpu_encoder.h"
> +#include "dpu_kms.h"
>   #include "dpu_plane.h"
> -#include "dpu_crtc.h"
> +#include "dpu_vbif.h"
>   
>   #define CREATE_TRACE_POINTS
>   #include "dpu_trace.h"
> 


-- 
With best wishes
Dmitry
