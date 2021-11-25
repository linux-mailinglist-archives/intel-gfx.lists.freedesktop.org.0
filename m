Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E88E64615A5
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Nov 2021 14:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F776FCF8;
	Mon, 29 Nov 2021 13:00:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com
 [IPv6:2a00:1450:4864:20::22d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 549A16EE17
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 13:26:55 +0000 (UTC)
Received: by mail-lj1-x22d.google.com with SMTP id l9so12523143ljq.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Nov 2021 05:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=Gxl3XvhS3jy/Vg4tNUDSLVXMW/QY1KlnmAlTBNyzUmw=;
 b=Z0idp8uhQ9AsUuYWi2RnXFNxiSFeD/SgsFtNGz10ZBJzP7SsQtNgnkZLl/0Yq6zw88
 ZtfWmpPkursnohrG1+gdmVYyX+4ItJgd/a3eYJ8N668kcslwO1r1ZELpeljaLyoGtHT3
 ONQcpMAQhkdGCAiAKUqSzvyYfmJqCUR8U2VdpKiSaK3DNepZx5z6BX2s2ozokIcJIZeR
 9zG5NwH6IbCEJ6xEGZrbe3YkP7d9J3sLxLtwUNLhKBX2vF21orTi+1TKC0oNNfK2T4K5
 F+QSOhdkG7MyzKuaVEkIkoA83s5Na6NAXGf2NjKR90pY8sDx13MpmxC9g4RebyrmUKsy
 5moA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Gxl3XvhS3jy/Vg4tNUDSLVXMW/QY1KlnmAlTBNyzUmw=;
 b=iIb1Shv2W2RLp6Ier2Tds064ZddtBHjAv5DQaIekjutFbun5XbL+zldg93oJL7JN3/
 ev8bVn3R/+jT78Sxy0E5QG3XDkcUyJCNhyBR1Dy5PBXf4Y7eWdBkveSEKWEk9wzdvjoD
 tpyOzJuIvREjO01PCaibhq4tYg9WqRpHUZwAk16FdQfbzDtzSAiB71yJwy4v+DTM8JMV
 IEp7rZEMnYb2lGT3eXwS5FXfN4iDEROpZLVnB6OI1eqkon5RSGb339/wzZoei6HMYzCw
 hec7Lk/HL1ypgHko1/WsqlItQHlRFRLwGJHHo50drtxK3TFJA5XYoMybgI2oCAxJWWxo
 Eltw==
X-Gm-Message-State: AOAM533IX1ofw0K6I/iXZ2bBUJotaBHX6y/KnYpWQOjhJZBlE9O3eyYc
 uyM+v/g/z2gkyLT3HNmem0Xzqw==
X-Google-Smtp-Source: ABdhPJzk0rkyZtS6FTgYDoC1LTJrxi0JVWAKHJVNqgGa3UJSxIleCmDGIlTtkxqSRMXBy9YzDuv34g==
X-Received: by 2002:a2e:9a05:: with SMTP id o5mr24471640lji.488.1637846813476; 
 Thu, 25 Nov 2021 05:26:53 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id k14sm229478ljk.57.2021.11.25.05.26.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Nov 2021 05:26:53 -0800 (PST)
To: Claudio Suarez <cssk@net-c.es>, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Pan Xinhui <Xinhui.Pan@amd.com>, Emma Anholt <emma@anholt.net>,
 Maxime Ripard <mripard@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Clark <robdclark@gmail.com>,
 Sean Paul <sean@poorly.run>, linux-arm-msm@vger.kernel.org,
 freedreno@lists.freedesktop.org, Chen-Yu Tsai <wens@csie.org>,
 Sandy Huang <hjc@rock-chips.com>, heiko@sntech.de,
 Neil Armstrong <narmstrong@baylibre.com>,
 Robert Foss <robert.foss@linaro.org>, Ben Skeggs <bskeggs@redhat.com>,
 nouveau@lists.freedesktop.org, ville.syrjala@linux.intel.com
References: <20211016184226.3862-1-cssk@net-c.es>
 <20211016184226.3862-8-cssk@net-c.es>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Message-ID: <32c14b83-c5ee-1690-525d-8cf3d02a2394@linaro.org>
Date: Thu, 25 Nov 2021 16:26:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211016184226.3862-8-cssk@net-c.es>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Mon, 29 Nov 2021 13:00:35 +0000
Subject: Re: [Intel-gfx] [PATCH v2 07/13] drm/msm: replace
 drm_detect_hdmi_monitor() with drm_display_info.is_hdmi
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

On 16/10/2021 21:42, Claudio Suarez wrote:
> Once EDID is parsed, the monitor HDMI support information is available
> through drm_display_info.is_hdmi. Retriving the same information with
> drm_detect_hdmi_monitor() is less efficient. Change to
> drm_display_info.is_hdmi
> 
> Signed-off-by: Claudio Suarez <cssk@net-c.es>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   drivers/gpu/drm/msm/hdmi/hdmi_connector.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> index 58707a1f3878..07585092f919 100644
> --- a/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> +++ b/drivers/gpu/drm/msm/hdmi/hdmi_connector.c
> @@ -364,8 +364,8 @@ static int msm_hdmi_connector_get_modes(struct drm_connector *connector)
>   
>   	hdmi_write(hdmi, REG_HDMI_CTRL, hdmi_ctrl);
>   
> -	hdmi->hdmi_mode = drm_detect_hdmi_monitor(edid);
>   	drm_connector_update_edid_property(connector, edid);
> +	hdmi->hdmi_mode = connector->display_info.is_hdmi;
>   
>   	if (edid) {
>   		ret = drm_add_edid_modes(connector, edid);
> 


-- 
With best wishes
Dmitry
