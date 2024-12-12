Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 167B19EE146
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 09:31:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960DB10ECF4;
	Thu, 12 Dec 2024 08:31:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="fc8tOnGy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3720810ECF3
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 08:31:13 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 5b1f17b1804b1-4361f65ca01so2879865e9.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 00:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733992272; x=1734597072; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:from:to:cc:subject:date:message-id
 :reply-to; bh=5XYu4I8D9gBdmo7eYgjvc8ss5lWgqbeNPvu7neTItSw=;
 b=fc8tOnGyZ3fvSMPUe+VhqnboxA0o1P76HpVyz6h7A/LLn6YE9ciRU/pusvcb9ND3HE
 KrxEU38MZajGKwcB35UZiSQ8KdgJPZtBzXfnCAB+WJHVbTFXSRdYmVrMeOt+3t3jF/q7
 5xVsGwtKBtKh13vdXmSJB5oqNezYXR87DVRZ1V2yhVGbQEjD6Z5mtx0VN9ZOHCILTCKj
 kGa5LVzsHrpZC0VdnPC+IHzd2sCbQXj+ZvsDavDURPmHE74fsTs+4Rd82S/cYuk/BycL
 b3/TJ9ouxyr2iDe3Zg8EL1DhCDveQvBLwew9l3LXEaF4SiU+zUhKug/7UX/yUKTuOLLj
 Rv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733992272; x=1734597072;
 h=content-transfer-encoding:in-reply-to:organization:autocrypt
 :content-language:references:cc:to:subject:reply-to:from:user-agent
 :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
 :date:message-id:reply-to;
 bh=5XYu4I8D9gBdmo7eYgjvc8ss5lWgqbeNPvu7neTItSw=;
 b=tmKosPocoO/YVB6QC7OTKFIcvcnbR+JyrGhwMmHLX1mo9tPB+6K16/3bZ2Bg4lKBeY
 HADmz8rdJe1NCyBiQSpvDWqGITzyEuyWGQu+aNGZDEqSiCSQcF3hTeu0e8gfFeUdNH8y
 6o50ELHppJ4nIc9eS3zVBVMmCJo2CgeLWzwyxK47GsVyEYU/Rr2uH3qfO7ROut3dyOks
 ZJl6tW6XCMIexnQhmzfhcT5eJcEes+S/jObeihiZkqa0SAyFDa1hRKp0UgVz4n1SfiIx
 lNDKecclkVRs8IPUI+eacchbJP6JGAsVtKoiWkO1vKxKwo3D5l2MJiplYCkzzW8Yxodq
 jYSQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX3rZO4d+oMl9mDMM1svHVxs+SBgopxUF9glnEu4uZzCrl9BCnslbaO8GuuAQMq4XRmrcfYWeQi8eQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxS5m3/V2LsJc6o1cYX0j1zBD93w+N1FkFKrFqFPDKHY0nJ6Sac
 8i3WNGLFoKueCIJ6QDSKabgha8C8UXfxiYjH/v/flv3hAoIVmR25oAq33E4HGFM=
X-Gm-Gg: ASbGncujQuLck1AOFu+hwZ51PyXZduZK7GLihnmP98kl1kZYv5Ha0OMdv+LWfqjVMiu
 pMzG0x2viWZ38iXyEB9q6I4rULc+KGh0APZfbpl2CrlaL4SD3iseMEbCRAtw8IijUGqSWyWe/Ry
 uen1PaUpnftTmfUhDTHiqpPp2oohbEMbsB/yEV41jlOYD2VQ7LBhp2mDWn1u/3wFaqsKAvztFAW
 zuwDBULp4oYECTiF2HShakgBQK1LkEU4LFMR5GmQy3bAu4BH7fYbb/99JaieY8QTFwCQTyDpNB2
 8z1qsBoxPuIrtKYdLGXk8+o0bLT/TfQPcg==
X-Google-Smtp-Source: AGHT+IFg5rVsYNoj1OLL00/jahvhS0YEuapxQEmBGH2dEHoxfZsQpcAyjRpBUgBdyI8WiwrhrVyjPA==
X-Received: by 2002:a05:600c:348e:b0:435:14d:f61a with SMTP id
 5b1f17b1804b1-436228638c1mr17805585e9.25.1733992271590; 
 Thu, 12 Dec 2024 00:31:11 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:b98a:c6fe:3a5d:f20a?
 ([2a01:e0a:982:cbb0:b98a:c6fe:3a5d:f20a])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436255830b0sm9467275e9.18.2024.12.12.00.31.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2024 00:31:11 -0800 (PST)
Message-ID: <0d0a8157-32a4-4e8e-92cd-dac9a4471641@linaro.org>
Date: Thu, 12 Dec 2024 09:31:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 1/4] drm/dp: Add helper to set LTTPRs in transparent
 mode
To: Johan Hovold <johan@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Danilo Krummrich <dakr@redhat.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org
References: <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-0-d5906ed38b28@linaro.org>
 <20241211-drm-dp-msm-add-lttpr-transparent-mode-set-v2-1-d5906ed38b28@linaro.org>
 <Z1mk08SHEd5_vc99@hovoldconsulting.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <Z1mk08SHEd5_vc99@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Reply-To: neil.armstrong@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/12/2024 15:42, Johan Hovold wrote:
> On Wed, Dec 11, 2024 at 03:04:12PM +0200, Abel Vesa wrote:
>   
>> +/**
>> + * drm_dp_lttpr_set_transparent_mode - set the LTTPR in transparent mode
>> + * @aux: DisplayPort AUX channel
>> + * @enable: Enable or disable transparent mode
>> + *
>> + * Returns 0 on success or a negative error code on failure.
>> + */
>> +int drm_dp_lttpr_set_transparent_mode(struct drm_dp_aux *aux, bool enable)
>> +{
>> +	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
>> +			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
>> +	int ret = drm_dp_dpcd_writeb(aux, DP_PHY_REPEATER_MODE, val);
>> +
>> +	return ret == 1 ? 0 : ret;
> 
> This looks correct, but I had to go look at drm_dp_dpcd_writeb() to make
> sure it never returns 0 (for short transfers).
> 
>> +}
>> +EXPORT_SYMBOL(drm_dp_lttpr_set_transparent_mode);
> 
> This appears to be what the driver currently uses, but why not
> EXPORT_SYMBOL_GPL?

drivers/gpu/drm/display/drm_dp_helper.c is not GPL licenced, so
this is the right macro to use.

Neil

> 
>> +
>> +/**
>> + * drm_dp_lttpr_init - init LTTPR transparency mode according to DP standard
>> + *
>> + * @aux: DisplayPort AUX channel
>> + * @lttpr_count: Number of LTTPRs
>> + *
>> + * Returns 0 on success or a negative error code on failure.
>> + */
>> +int drm_dp_lttpr_init(struct drm_dp_aux *aux, int lttpr_count)
>> +{
>> +	if (!lttpr_count)
>> +		return 0;
>> +
>> +	/*
>> +	 * See DP Standard v2.0 3.6.6.1 about the explicit disabling of
>> +	 * non-transparent mode and the disable->enable non-transparent mode
>> +	 * sequence.
>> +	 */
>> +	drm_dp_lttpr_set_transparent_mode(aux, true);
> 
> Error handling?
> 
>> +
>> +	if (lttpr_count > 0 && !drm_dp_lttpr_set_transparent_mode(aux, false))
> 
> No need to check lttpr_count again here.
> 
>> +		return 0;
> 
> I'd check for errors instead of success here and do the rollback before
> returning -EINVAL.
> 
>> +
>> +	/*
>> +	 * Roll-back to tranparent mode if setting non-tranparent mode failed or
>> +	 * the number of LTTPRs is invalid
>> +	 */
>> +	drm_dp_lttpr_set_transparent_mode(aux, true);
>> +
>> +	return -EINVAL;
> 
> And return 0 explicitly here.
> 
>> +}
>> +EXPORT_SYMBOL(drm_dp_lttpr_init);
> 
> In any case this works well and is needed for external display on the
> Lenovo ThinkPad T14s, while not breaking the X13s which does not need
> it:
> 
> Tested-by: Johan Hovold <johan+linaro@kernel.org>
> 
> Johan
> 

