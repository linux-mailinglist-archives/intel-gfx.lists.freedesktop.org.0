Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B20F1A1D72
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:32:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C41836E9DD;
	Wed,  8 Apr 2020 08:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 088F889E52
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:32:08 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id f13so192120wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=Uh/WZPo4NmvqG51XBp+m4iYb7ZftFHKT2mP1p4eLAUE=;
 b=ulF0v2sCguzKaIeJQztpe5QsnslDWZeogrmJkZep+PhD4OEyKi24ERj1jGpkHSLFmr
 S/vCKSIXu3sorZ+5vN8wixTmIaWR4tvUMOcZvN6RyWymtF1+SRczcmbsNHspR04TJ0PD
 SsH+mKHufpwev7EPU+P2EoWVd+P63qVcoJLO6ZnkpT1EER60UR5XeKP9dMgzq4CwK7Kr
 Zg0fjmygSmgk7xk1RzDMndeFLG0Eju8ijCx+fk3SLKNBB91dXlYHhbHkq8lGcxhYUnBR
 li0+uQdUbn99FHE15OCcVPeE7FhyAyWzv8fNbLJsIbTRZUzfTInJ91H67ZCJEKMhcAo/
 9mxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=Uh/WZPo4NmvqG51XBp+m4iYb7ZftFHKT2mP1p4eLAUE=;
 b=mUi9GcrHZzavBbfuxD0MsWMGrLWMkm1+EJCDA92W0osT3c2vjlQY8BpkOrjxuWmBUK
 rCEvY/7MidGByGrsm/vr50XIWxLh9fHVYanEuBCYE553huln9zkgYogzd+tYfOWMSyBN
 oqI4B9M7YMyyc1nv2DAtY7vIxqRCdce+q2lC+tjGI+97GBomQAessQPvgRoilu5ZXNY+
 dG8isieBVn2QS3CyBr9mqdcllRZV+A4wWr2/2rp0VGgLnhIP0oZ2zmJfP6j53xxlQ+i3
 3yih4rnF9vKCiwQs+YbyEkCTr/wW1cX6Gg5CUJWE6Cnp/fc8mT/Fum2/013IVY1ZzcIQ
 BXhw==
X-Gm-Message-State: AGi0Puax7d31pizogOCkK5lBeOpDZnrl6VrIynf29YfUTgMecNKpRVrs
 /TpdYE1IFm9ZewiHOtgyuejTShfX
X-Google-Smtp-Source: APiQypIBoHZ13mldylDar6ZI1Y9Wbhfj1pSwjn3howZUR2cOzSv8zcnbheDh/Dp1RSaDzBbbKuLIVA==
X-Received: by 2002:adf:ef51:: with SMTP id c17mr7043453wrp.130.1586334726670; 
 Wed, 08 Apr 2020 01:32:06 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 89sm5832589wri.11.2020.04.08.01.32.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:32:06 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:31:57 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-11-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081131290.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-11-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 11/17] drm/i915/error: prefer struct
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
> drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 2a4cd0ba5464..424ad975a360 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -1858,7 +1858,7 @@ void i915_error_state_store(struct i915_gpu_coredump *error)
> 		return;
>
> 	i915 = error->i915;
> -	dev_info(i915->drm.dev, "%s\n", error_msg(error));
> +	drm_info(&i915->drm, "%s\n", error_msg(error));
>
> 	if (error->simulated ||
> 	    cmpxchg(&i915->gpu_error.first_error, NULL, error))
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
