Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4C94226C4
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Oct 2021 14:35:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C90A6F5DE;
	Tue,  5 Oct 2021 12:35:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C3626E249
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Oct 2021 22:52:31 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id y23so38770326lfb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Oct 2021 15:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pDk/FVPOlxwV0pour3j7eAFM0fv3H6VSdZ22j28Ul7U=;
 b=LIv4rNlTW8FZGeFN9OkcGsftb922JtWUGHeoNCbgBi6EOkzrphtlaL86X0Hx7bs80t
 p7VXvOlZVNc7F5AQNYcglEw20Ah86By1tMy+7LoL0pQ7DRafzu+tN99UGZ2PlKx0IOIK
 aPWXsf7+wTAFck25sXUSAL58cQVuU6rzuOc9KXLu/HwXWpthKx9f8pyq9GQ6PMwqhDRr
 UjsFpM7bZYRaH/8eKjibPnwG+lfKVEgnAl1nxyUoN6IqWK5Ml/aRS7ZCq6rnVyXOnPTY
 cle+wYnhZFt7nWOkdiccozA7HSZ9Suk6A4+aEVP3fGjfMDOQevNReKtFdSy2h6CnMjNV
 xsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pDk/FVPOlxwV0pour3j7eAFM0fv3H6VSdZ22j28Ul7U=;
 b=rwxLt8R8Ss9EPMIJI60nRK9+JWWL5C/UhGq7Zfhoik/mxctJyOsAjnNKapnHJx11XW
 Cqm8TaG2C6UNOLB85GSpv7oBtdCwNnSxbXkeXczHlzAGn04zGDZQSl/66RhzW9aqESav
 Q0I4wVxgZF6t1gkIJdeD+fl13d5MED4x49jO3MvlxjygTWYn1I0eyxlFoqx3vZQGA+Rf
 6b0gdKHH5EesWPOIdFEmqRFagTU5BuKl6vZppyjy4nE3r7ATS38SdZCF7OMBjW465w2X
 51Xms/PIQ6xXmGO8KoeyTb1eL/Fb7tC5ySMJdkkd7xRxO/h3igrbGbvbP4u0L+VnoqO5
 3k+Q==
X-Gm-Message-State: AOAM532TUGWUCqA9B8ZOrL3OL5geP6FuopmlonDD44BPUmHdGeNa9elr
 7uh6Vio/FfWLHVl2W9BfQOzwlw==
X-Google-Smtp-Source: ABdhPJwHXTIoF58UEmE9I595+cUvc0Pa9iUt0YlUP6A5/oqTKG230Mc7tliM7eddZqoG3qUtMqgpUw==
X-Received: by 2002:a05:651c:10a6:: with SMTP id
 k6mr7148355ljn.325.1633387949735; 
 Mon, 04 Oct 2021 15:52:29 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id s29sm1886275ljd.54.2021.10.04.15.52.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Oct 2021 15:52:29 -0700 (PDT)
To: Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org, jani.nikula@linux.intel.com,
 Sean Paul <seanpaul@chromium.org>, Abhinav Kumar <abhinavk@codeaurora.org>,
 Rob Clark <robdclark@gmail.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org
References: <20211001151145.55916-1-sean@poorly.run>
 <20211001151145.55916-12-sean@poorly.run>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <39d559a6-d656-7904-7f1c-ac891a386a7a@linaro.org>
Date: Tue, 5 Oct 2021 01:52:28 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211001151145.55916-12-sean@poorly.run>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Tue, 05 Oct 2021 12:35:13 +0000
Subject: Re: [Intel-gfx] [PATCH v3 11/14] drm/msm/dp: Re-order dp_audio_put
 in deinit_sub_modules
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
> Audio is initialized last, it should be de-initialized first to match
> the order in dp_init_sub_modules().
> 
> Reviewed-by: Abhinav Kumar <abhinavk@codeaurora.org>
> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Link: https://patchwork.freedesktop.org/patch/msgid/20210913175747.47456-12-sean@poorly.run #v1
> Link: https://patchwork.freedesktop.org/patch/msgid/20210915203834.1439-12-sean@poorly.run #v2

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> 
> Changes in v2:
> -None
> ---
>   drivers/gpu/drm/msm/dp/dp_display.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
> index fbe4c2cd52a3..19946024e235 100644
> --- a/drivers/gpu/drm/msm/dp/dp_display.c
> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
> @@ -714,9 +714,9 @@ static int dp_irq_hpd_handle(struct dp_display_private *dp, u32 data)
>   static void dp_display_deinit_sub_modules(struct dp_display_private *dp)
>   {
>   	dp_debug_put(dp->debug);
> +	dp_audio_put(dp->audio);
>   	dp_panel_put(dp->panel);
>   	dp_aux_put(dp->aux);
> -	dp_audio_put(dp->audio);
>   }
>   
>   static int dp_init_sub_modules(struct dp_display_private *dp)
> 


-- 
With best wishes
Dmitry
