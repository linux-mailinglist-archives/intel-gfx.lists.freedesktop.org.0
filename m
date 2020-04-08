Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D41A1D8B
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:45:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5EA6E9D6;
	Wed,  8 Apr 2020 08:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B5A6E9D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:45:30 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id d202so4533039wmd.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=L2ORB2Iq5dWGV5GgI1zlWC8vBlrSkL0T1A+mCGPuu4s=;
 b=jOT6hyF6Qw+6T2JhL2K8Tn02aELK9UJBwVLPNk466XRNyoqoYDUowXwM4VPx7sB+R7
 G2n3RVMHXkRWbvObVO0f2NKv9rXxhAYmcaHbmEYGaxc+W6YBvNRPBu6FHrbuBatb7xRW
 KDOH/uzoDkqp2CyP6FQe4C63KEDdgKWVcTkg4Z8nJt8BIXvGJpndHnXx0c6i9Zi2Aqpx
 U2apHfnKYCwTHnLtHBrCQWHePV9cT5ZRs3pFTNMpX3xJg06hLkNGll9O9qgvb8FkGNv6
 5E2omBQ6DxI/q+3bX174nNy19WcS7ihAUV7yawkqfklZZfyPCefF03fXRNv99KiO1e45
 IcIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=L2ORB2Iq5dWGV5GgI1zlWC8vBlrSkL0T1A+mCGPuu4s=;
 b=U4kUD/HaBHpvYpuZdYper+i2z3y0WASS0sBbXgu23+tl7DLN4TIVFpsxm5XtUjFSdg
 gw3DLPhi9FYOwsAlpoiNMwPu19RF34fdh6hSEeemstnshh4GkPKpkmeKsb3BpgLQS+qy
 +cP3dCKovkdDWAVQiS+Anh96Zh/OTspNPOWxYkhB2vVZ0VAiAj6voJjpB6v8JQrta9tz
 LFIjweH9tV59AfceiVU6Dd+C21Gdqx3mftHQNK5Sq8Dl8JNutsUBGB4BlOPzZ28eIUFt
 rXw4uzy4jMfpqIB+0KmC365fg4JfdKwqlPkIZU0LUbJQanbnyGcAAhD2U9eWR6zfP3Xe
 qD3g==
X-Gm-Message-State: AGi0Pua1ZZSgTia1ZRKhV3OrK9JA2OMTTcpNC8pv8F5tLJU3do7OCwCJ
 fV1weW53lDHvkldIX4H3Fl8=
X-Google-Smtp-Source: APiQypL8lVLHvXCPSz25+4/XHG1BtHDP1891j31hSXpE63aw2bYbxr8ooxxrgdFNCC+Cnx9Cmsx+Yw==
X-Received: by 2002:a1c:bd8b:: with SMTP id n133mr3648551wmf.175.1586335529650; 
 Wed, 08 Apr 2020 01:45:29 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id u17sm39530393wra.63.2020.04.08.01.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:45:29 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:45:25 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-15-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081144510.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-15-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 15/17] drm/i915/stolen: prefer struct
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
> drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 5557dfa83a7b..dc250278bd2c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -381,14 +381,14 @@ static int i915_gem_init_stolen(struct drm_i915_private *i915)
> 	mutex_init(&i915->mm.stolen_lock);
>
> 	if (intel_vgpu_active(i915)) {
> -		dev_notice(i915->drm.dev,
> +		drm_notice(&i915->drm,
> 			   "%s, disabling use of stolen memory\n",
> 			   "iGVT-g active");
> 		return 0;
> 	}
>
> 	if (intel_vtd_active() && INTEL_GEN(i915) < 8) {
> -		dev_notice(i915->drm.dev,
> +		drm_notice(&i915->drm,
> 			   "%s, disabling use of stolen memory\n",
> 			   "DMAR active");
> 		return 0;
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
