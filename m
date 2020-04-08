Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CE91A1D88
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:44:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F4B26E9D2;
	Wed,  8 Apr 2020 08:44:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCAF6E9D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:44:22 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id f13so233272wrm.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:44:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=jm3I3FmLYJLm9g0RJQi2gS9r9VIeW3sspufzHZlB8/I=;
 b=DviGEni7Oc/8lnl4Y7SxEVM2ZriHBhMpb7AZj4PXKaN+q9XdvSO22BSQNQ+nlsS5jZ
 SsoOCkBKb+7Fd/tZJ8gYJvbQOr0Ap2KPiSzOQ9mompMmIXixEuLsdabR0whFn7qVmxpO
 YzCc563CaSJQQctc6gLql7/NqagVVgkTYA76T9Ryxs5QiQ0dj3LerlojPYbnO2KXFzBQ
 jmTLreHDb4Si/B+6IxBy4+NdlSranpDQRN+HNgkoxVC3aMo/OfxYPk8PNU2W9ZLoF22q
 P+AFi2tA6rcB8/jqLIosAJUq2WAd1pv+0gUjQ9YE7V7O66Vw3n73Fevs6qi8VT627qYW
 5wSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=jm3I3FmLYJLm9g0RJQi2gS9r9VIeW3sspufzHZlB8/I=;
 b=G+bYNcS16hYyNnjQMQLu1zha1lhIZxniw6XqOxyCOL9J8yle7MqnXko2bkYVBl/Vvz
 NfOXhhPhVJD5bpJKm77LlTqAOV83EZAODtlb/rS1l1H9z7DBt9iwzuwiN3p04ntXgZqJ
 Vz4Tbr3VU1Vix2UO5qkT2Co4HlffeEzB1Klf/H0Tjp5aqWDh56Cbao+qYTCXh+nbZOyF
 9j+7liiM6oaW1PoCTh88hWiXo3Om+AFao7Q/GpYf7qCfvgPNdSb3zuEaTWdtr7BhgYoL
 /8KiqcVVfxf5oC2V1iyui7D+xtvG5/dxw0bvBdjOFBGYIn0ywnSmwxbiZIz8VHec1pdC
 5gww==
X-Gm-Message-State: AGi0Pub9w6GSJ22x1GGk0nbRQSqZ8/+sQdjUXkG8E1Wj5/d5T7aHNAJC
 gXVhmawjLkccFnWqKnH8sZk=
X-Google-Smtp-Source: APiQypJ5g42dryXlqT2TwaDnKNvZwcxxujZyXUUxpctuVI7B0zEIzfW5cSR2DRx8DLD/EG/y1G1MCQ==
X-Received: by 2002:adf:f790:: with SMTP id q16mr6825162wrp.94.1586335461472; 
 Wed, 08 Apr 2020 01:44:21 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id z17sm24677008wru.39.2020.04.08.01.44.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:44:20 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:44:17 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-14-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081143440.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-14-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 14/17] drm/i915/uncore: prefer struct
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
> drivers/gpu/drm/i915/intel_uncore.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 013312e9b55c..fa86b7ab2d99 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -665,7 +665,7 @@ void intel_uncore_forcewake_user_put(struct intel_uncore *uncore)
> 		mmio_debug_resume(uncore->debug);
>
> 		if (check_for_unclaimed_mmio(uncore))
> -			dev_info(uncore->i915->drm.dev,
> +			drm_info(&uncore->i915->drm,
> 				 "Invalid mmio detected during user access\n");
> 		spin_unlock(&uncore->debug->lock);
>
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
