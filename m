Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7511A1D86
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:42:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0470A6E9B4;
	Wed,  8 Apr 2020 08:42:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 587436E9B4
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:42:08 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id y24so441010wma.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:42:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=T9hbX4JgRwpxhzYd2prKrjcm1764na5tkGGTN0C9OI8=;
 b=bO3zT5Vm1cA2sQ1FPHWz1oari6d0OxcuyWF/i5Rp6EYQliGI2n9thjt12IP4dgVYHb
 rn5+VsPoKfrqz0hLR6dHK436XZmZZCb4/BexL5CZbfx9Ed+lAfoAVdDvYzt2BLEXIBRj
 tWZxhlACsBrRqOj0W+mSFItLrqJVPxaV8DRK7mRFWIUuaXYSfQwvHsS89UeJcz7wL2hx
 IUQNs7k08vjY1uMy5NiQNKsOVDMgy8l1nlRxQazwkHwj36ReN8DpjppQs8THN4Nc19J1
 GNWISNNS9EOTAkh3yPG+EKY4TsNptZM2wctWblZiHLhQ2VZRTE8ZIMTFu04HsJb0IOgS
 ervg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=T9hbX4JgRwpxhzYd2prKrjcm1764na5tkGGTN0C9OI8=;
 b=sAog9k/3bi63DBToYdOpeunIOsUwiDz4Bb3GAFnVumoQQW61VkhIvFhN5zwC43Zaxa
 GOTD6s+IxhkwjNNQXJ+arz2aCgzpyBBJacqfEUI08CFSu4zLFBrRj2SOwGy/NMiynnmW
 79cNyj31jSTajJqyrdkD8lDSFjukgXzAbWv133KgCIKaraRbMiiVU1Fc7NKi8rUNDXLm
 ABFaD2JT8XcpZ7it1T6+fJQ3ba3NktU34D7NFK23KCzLa9tpObSs2ZlJHcKwYvMfEXA/
 ci5E5IE1ORCnLKfveBacdAsc3F9TtsMF2A1gf0vHYP7qw/GRSSUW/2VrF9gVVtDotRsg
 kraQ==
X-Gm-Message-State: AGi0Pub/ZByFok6BmjqfdkeQuthTsKk7Tj/vlSTqpgjdBOu7jkxU9lzU
 q1tk2kxRQ8B8hl6pcRte0Cme9kX8
X-Google-Smtp-Source: APiQypKjW3uZKD3Xp1qVdX3muWQhmxCCSJzNuDURQey8QnUo/oIcW+a01gYBcGZiPFWXNtHFHsHHRg==
X-Received: by 2002:a1c:5f56:: with SMTP id t83mr3357040wmb.61.1586335327071; 
 Wed, 08 Apr 2020 01:42:07 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id j5sm4700223wrm.76.2020.04.08.01.42.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:42:06 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:42:03 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-12-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081132410.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-12-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 12/17] drm/i915/pmu: prefer struct
 drm_device based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Prefer struct drm_device based logging over struct device based logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/i915_pmu.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 2c062534eac1..230e9256ab30 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -1115,7 +1115,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
> 	int ret = -ENOMEM;
>
> 	if (INTEL_GEN(i915) <= 2) {
> -		dev_info(i915->drm.dev, "PMU not supported for this GPU.");
> +		drm_info(&i915->drm, "PMU not supported for this GPU.");
> 		return;
> 	}
>
> @@ -1178,7 +1178,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
> 	if (!is_igp(i915))
> 		kfree(pmu->name);
> err:
> -	dev_notice(i915->drm.dev, "Failed to register PMU!\n");
> +	drm_notice(&i915->drm, "Failed to register PMU!\n");
> }
>
> void i915_pmu_unregister(struct drm_i915_private *i915)
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
