Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB94E5570
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 16:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEDD610E6DF;
	Wed, 23 Mar 2022 15:40:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com
 [IPv6:2a00:1450:4864:20::22a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0803510E668
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 10:12:49 +0000 (UTC)
Received: by mail-lj1-x22a.google.com with SMTP id 17so1161756lji.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 03:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=A8hD1/tFFB4rgwz87Q4K65j6MtDksDJ6SuyPOc0I8WI=;
 b=voGSg26fPYddMSZ76hiQWACMZW+nmFMTLjq+ORhoRrUNqN4WkRY/Dc49Ffnpf9YLF1
 ANIf+d2EPF2h1txEALTPZwxLUNhk4hHzwGHOQYh8pcZRcNL0syjVrWy+sApdrrHjdEuI
 n/lWxunH8v2mvRKBxPiQ8mh59NYqU8VBkzSN1H/F5IGc85upCYNCNoxe743UkMZLut+H
 oPkdnA3rNkvKSI8yK6iEcBNzrLLuXdB+er83dBQCTEiVUkwW8c1dlJ6OYLfhiZRSHGMh
 Gg4xqH5/7K1aM28hZP1Tuna1Epfe2eN9c4DskLza+7vz92y0o7BDApVHPUEpvxWYd5rT
 vNPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=A8hD1/tFFB4rgwz87Q4K65j6MtDksDJ6SuyPOc0I8WI=;
 b=cWL1Qn7MVrgFoq+hv3HcLWLYC6ph0UbobJVvH6qvkhf8Luq/EwQbMrPcPQRXZLfuM1
 ABuMGxmGJZ0sZEIxgXJitviTw9U82IlbZMVBRPAbOO263+yq1G+HzwYRLH2pKALpP7rW
 tv9vYhkxAwBkS6O4Np+WBqvIXSJQ22YEfg0Xg2k7hMyZvmpyFXT2X4iCz2/K/zTgA7so
 oAeaFa7UEAD8tBdIUgp/qTEQBSqkLfn8fKPnPsD36noHDXEWsP31JgYqP63HK3R5R+WE
 Q0FhD2ZYBGcP+qAIBl3XRP/NMlaoPO9pvRAXLNfM5fomznPMXRgzme1Pzxy7Xof4iu6i
 CACQ==
X-Gm-Message-State: AOAM5302zNQY1bjssKpAy8zjYh8B5jrVgn9sR2H06EQBI3LmTpWjGnFc
 mn+0iMd+hMDHQVqe/8Ifnw2CKQ==
X-Google-Smtp-Source: ABdhPJwpcO0qcr4Yl6r71Htzu887GjSBGMS7k4TepkH3iSwqlMC0gokbq3Qmjt5IFN01sRKjHDvhaA==
X-Received: by 2002:a05:651c:50b:b0:249:8cac:11ff with SMTP id
 o11-20020a05651c050b00b002498cac11ffmr7564050ljp.484.1648030367399; 
 Wed, 23 Mar 2022 03:12:47 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id
 q17-20020a05651232b100b0044a211622aesm1302537lfe.282.2022.03.23.03.12.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 23 Mar 2022 03:12:47 -0700 (PDT)
Message-ID: <3b874b88-837b-bf72-0888-9464396a6ab7@linaro.org>
Date: Wed, 23 Mar 2022 13:12:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-GB
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <20220218100403.7028-13-ville.syrjala@linux.intel.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220218100403.7028-13-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 23 Mar 2022 15:40:20 +0000
Subject: Re: [Intel-gfx] [PATCH 12/22] drm/msm: Use drm_mode_copy()
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
> struct drm_display_mode embeds a list head, so overwriting
> the full struct with another one will corrupt the list
> (if the destination mode is on a list). Use drm_mode_copy()
> instead which explicitly preserves the list head of
> the destination mode.
> 
> Even if we know the destination mode is not on any list
> using drm_mode_copy() seems decent as it sets a good
> example. Bad examples of not using it might eventually
> get copied into code where preserving the list head
> actually matters.
> 
> Obviously one case not covered here is when the mode
> itself is embedded in a larger structure and the whole
> structure is copied. But if we are careful when copying
> into modes embedded in structures I think we can be a
> little more reassured that bogus list heads haven't been
> propagated in.
> 
> @is_mode_copy@
> @@
> drm_mode_copy(...)
> {
> ...
> }
> 
> @depends on !is_mode_copy@
> struct drm_display_mode *mode;
> expression E, S;
> @@
> (
> - *mode = E
> + drm_mode_copy(mode, &E)
> |
> - memcpy(mode, E, S)
> + drm_mode_copy(mode, E)
> )
> 
> @depends on !is_mode_copy@
> struct drm_display_mode mode;
> expression E;
> @@
> (
> - mode = E
> + drm_mode_copy(&mode, &E)
> |
> - memcpy(&mode, E, S)
> + drm_mode_copy(&mode, E)
> )
> 
> @@
> struct drm_display_mode *mode;
> @@
> - &*mode
> + mode
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
