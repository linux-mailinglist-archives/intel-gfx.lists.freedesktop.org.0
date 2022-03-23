Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C04114E5577
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B8DD10E73B;
	Wed, 23 Mar 2022 15:40:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com
 [IPv6:2a00:1450:4864:20::22e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D7410E65C
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:11:28 +0000 (UTC)
Received: by mail-lj1-x22e.google.com with SMTP id bn33so1144634ljb.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 03:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=jwgWA/X0RRXgl0WnFOwsjqRBGwN8mzbJny7zhdufmd0=;
 b=MCGBOFs+rKcllQq9+jpxTmw+Mrwt3rLzBEHOXYTOMpEInm/iW6w9gtrBCzXZTRHsmR
 5JTSDsm0tSD8QyYINAWMwRGfq4pPbH9P9hGyzeGtxPyBnFGmqltotUK1NfHexgCZeTUg
 kfBv6ila4lDc9DlwXzBep5qIxkUh32iFChC3fdoyhJ3+9bYK+JLyowwWtScMAa8ugjlm
 SqFhlOZnVHKaEcTwijlDLYb9C2g8Qc0zKkkrh/gBlu5Q3kAwhu+lisUggcZZuhjPVB7m
 bXol6KaGDYVR0LVOtjevajppvklgynnZ6L3mj+ibzbnRDxQ+rmLrLVG7+Fev1t0nSHTS
 g8Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=jwgWA/X0RRXgl0WnFOwsjqRBGwN8mzbJny7zhdufmd0=;
 b=7tybfvfw9SVgv/vkVtgZtUYt8K2OA6zdXLDgO5pESsCXD6hmRX2aF0bxCZdy3U70Kh
 VcQ2R3aZvZl2/8nXS6M8iAk8Ukc0DOh5wx6dYtHnKN5+Mt2vIQlDW1Q2hxSWVE2zBv9e
 /zo55cz4kFpN1RRwFhDrdheSEdGPiO2kHVfQyrsDjATSeIY0kvwoh7Zzd94+JIVjzUg9
 kbBOaFGNxw+iAZOQ8zOn+NyyMg5oQklz4jkHA7ljgzzD9cZ35ou81Msjn9s5OwZpqy1v
 ZbzdGv5KSfxtCFCP/G0ttDDaq/ybJuNkqLO3bUriXI8tThbPwMbytO9bcAmxxtVk4Fa6
 dBJw==
X-Gm-Message-State: AOAM532Y+dDzn2PDGq9OFB8DRBhhD6S7/z8edf+JWbEB2F1+ZkNx+b2m
 MD4jJvkafva6CCOKkR25VdCLxQ==
X-Google-Smtp-Source: ABdhPJw3/4BmsBQX6KSLouGF3oSZXX6Gpptahf03S0Ln5K4DaU6o4La74k5NDOpjqtmM3ZLH64m+sQ==
X-Received: by 2002:a2e:914b:0:b0:249:24e7:cee8 with SMTP id
 q11-20020a2e914b000000b0024924e7cee8mr22015154ljg.143.1648030287023; 
 Wed, 23 Mar 2022 03:11:27 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 m24-20020a194358000000b0044a3851f193sm641374lfj.83.2022.03.23.03.11.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Mar 2022 03:11:26 -0700 (PDT)
Message-ID: <ef35b455-e629-51d4-0aab-e3e37aa14e7b@linaro.org>
Date: Wed, 23 Mar 2022 13:11:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-GB
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <20220218100403.7028-12-ville.syrjala@linux.intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220218100403.7028-12-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:20 +0000
Subject: Re: [Intel-gfx] [PATCH 11/22] drm/msm: Use drm_mode_init() for
 on-stack modes
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
Cc: linux-arm-msm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Abhinav Kumar <quic_abhinavk@quicinc.com>, freedreno@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18/02/2022 13:03, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Initialize on-stack modes with drm_mode_init() to guarantee
> no stack garbage in the list head, or that we aren't copying
> over another mode's list head.
> 
> Based on the following cocci script, with manual fixups:
> @decl@
> identifier M;
> expression E;
> @@
> - struct drm_display_mode M = E;
> + struct drm_display_mode M;
> 
> @@
> identifier decl.M;
> expression decl.E;
> statement S, S1;
> @@
> struct drm_display_mode M;
> ... when != S
> + drm_mode_init(&M, &E);
> +
> S1
> 
> @@
> expression decl.E;
> @@
> - &*E
> + E
> 
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: freedreno@lists.freedesktop.org
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---

-- 
With best wishes
Dmitry
