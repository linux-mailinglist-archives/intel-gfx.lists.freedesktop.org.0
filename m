Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A36C5653D59
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 10:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 990BB10E0B4;
	Thu, 22 Dec 2022 09:14:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4979910E0B4
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 09:14:35 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id
 z8-20020a05600c220800b003d33b0bda11so3725203wml.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 01:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=dOxrDZ2tF2x8XHzhL/cJUTPseHMWErEct6ibQxQdZdU=;
 b=Cti52/8f/2XmvFuNNG6mPwqS0rQI5hYfeZCaS13e6/9NRC1SgZb/pwp8dnNHURbHKj
 FNzjpnhJgbhN3lYUz4+w67l7/ULAWplAMq9e4kVdHHpQusoG17SU6tIxe1OpgzRYcB5c
 u0qIW2N8XYgYxx0lrhc35EGyVNwR4IjD2WmOxt+wZ37ObOl13iv55KIQacN2JloTiHTr
 L3dYfXtLnmq/Z5g+oK5/7NN2IfdKV0CufCEtTBLPz5bbFP2fy3xUn944iep0VIGhOtXB
 YcIoAkPDYWSBpnm7z1y5KFGqD43SyFBGmJceAL7QnHNk1wjem8Kx+e02jJxaXKEMguDj
 HTVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=dOxrDZ2tF2x8XHzhL/cJUTPseHMWErEct6ibQxQdZdU=;
 b=N+mdOeLLEQ4r53BVzWz3e1O/ReaWTzmN6/luycdM4Rru3v1O546j36QxyeIA/njHZu
 xM0YkLFxYp8KWOOf4Xl2vGl7E45uOKnYVAPl8qfwHVigL+XzWf9KtCBGqiudAfI+JkhY
 Ft9QGF9ys1UuAEc33I6HkZjOxiHQ8hht8trltty/xuMG17bAKk1ung4D0L4Y90/2IKhX
 Pf4fccfKq5l91wg5F29nlqI47YvynCYQcMWSAyXv3c8GPed//CGGTIiSHEgbJCRtwxJY
 btBn0l/e373SaRJWyebpAgyaIje98887crpggSsBf8tgHb8ro2+nffmQWHN82/GUOZRi
 HWaA==
X-Gm-Message-State: AFqh2krVqWuNz/g8y+1ZBZ21qXsLTzOIovZk/jl/x5fS5g2oFCitE1y3
 GpdiTBC5xPUWo+/5IdhfcanEnt6yZ8y/AmAl
X-Google-Smtp-Source: AMrXdXtLCf9AE9p1EpaoSnnOSF+yt9AUSoLc3o4ZlCG/n1Ui6FOhix2xKRFu3Vn5uQ0ELeMllNlorQ==
X-Received: by 2002:a05:600c:1f15:b0:3cf:98e5:f72 with SMTP id
 bd21-20020a05600c1f1500b003cf98e50f72mr6507060wmb.3.1671700473508; 
 Thu, 22 Dec 2022 01:14:33 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.85])
 by smtp.googlemail.com with ESMTPSA id
 m4-20020a05600c3b0400b003c6b7f5567csm12757442wms.0.2022.12.22.01.14.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 Dec 2022 01:14:33 -0800 (PST)
Message-ID: <00575fd6-1fcf-781e-4a00-d58a83fa501b@gmail.com>
Date: Thu, 22 Dec 2022 11:14:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221221153514.3874262-1-jonathan.cavitt@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20221221153514.3874262-1-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Enable XE_HP 4Tile support
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>,
 Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.12.2022 17.35, Jonathan Cavitt wrote:
> Add .has_4tile tag to XE_HP_FEATURES set.
> Remove duplicate entry from DG2_FEATURES.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Bommu Krishnaiah <krishnaiah.bommu@intel.com>
> Cc: Roper Matthew D <matthew.d.roper@intel.com>
> Cc: Kempczynski Zbigniew <Zbigniew.Kempczynski@intel.com>
> Cc: Telukuntla Sreedhar <sreedhar.telukuntla@intel.com>
> Acked-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pci.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 668e9da52584..7fd74cc28c0a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1017,6 +1017,7 @@ static const struct intel_device_info adl_p_info = {
>   	.has_3d_pipeline = 1, \
>   	.has_64bit_reloc = 1, \
>   	.has_flat_ccs = 1, \
> +	.has_4tile = 1, \

Order look wrong, should be between has_3d_pipeline and has_64bit_reloc. 
With that fixed:

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

>   	.has_global_mocs = 1, \
>   	.has_gt_uc = 1, \
>   	.has_llc = 1, \
> @@ -1061,7 +1062,6 @@ static const struct intel_device_info xehpsdv_info = {
>   	.__runtime.graphics.ip.rel = 55, \
>   	.__runtime.media.ip.rel = 55, \
>   	PLATFORM(INTEL_DG2), \
> -	.has_4tile = 1, \
>   	.has_64k_pages = 1, \
>   	.has_guc_deprivilege = 1, \
>   	.has_heci_pxp = 1, \

