Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A30C2B8F80
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 10:56:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B508D6E51A;
	Thu, 19 Nov 2020 09:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25AA6E51A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 09:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1605779796;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=HjhZUEinBP0lhzVx6Q2JFW28N+BgAWSIZlPlGEn4bFs=;
 b=AQLx5Sre+NfOCkLuFdAdb360Z3X/DkmEPyxX2wcmVeoA3F/3QLf7yIVQH5fnu70g97UGDd
 Mb69VbsqdZSqMVCf14zEujy2Oqv2GT+uNpbeX4wERS/8gYoaU4MfUloBi724kr1wl405TZ
 cIARiFzZy4/cMyu7WvhMwNG2XMScv5c=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-521-Dfte8fuBMGOENwKpfhB5QQ-1; Thu, 19 Nov 2020 04:56:34 -0500
X-MC-Unique: Dfte8fuBMGOENwKpfhB5QQ-1
Received: by mail-ed1-f70.google.com with SMTP id n25so2124141edr.20
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 01:56:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HjhZUEinBP0lhzVx6Q2JFW28N+BgAWSIZlPlGEn4bFs=;
 b=WabW+xKWZIeDiDbS9sEMSsS6Z2tyIUjJ+V8o3ffM0+lPNGyDAtUclR5FGI4qMuUvdy
 jAgln1ThAlc0UBlw64jM91aoRCGPwJqqfIPgexX32FX8sl8t6fjfNuR1vLGcGTno68IA
 oz8KMsUM/B6XO0AxoaGGJZO+or8mt7HtAcN2pCj5tKp38FceIMogOkJfLH19b2/80pfx
 ZOCn/2iSXGgw1H4vGWmh98NO7oZIO7x5RtGj0FeEe9YrQz23lTg+Sn1Zb1pF5OXPHe45
 g+XAFSyEyJM14ciOa+Z+nl7ftQihnNt+d8m5MZZQpLGkeADcuxXbNz+Lm7gKFq6CbptN
 PWNA==
X-Gm-Message-State: AOAM530cPDFWbDHQM9jiBlCZAYu4jC9omRdmK1qLpN294oumnHYBOQ6W
 pddT8XhDNwwt6m6gSbrzd4K896krylyRkKiU+WLsC+rXXG70DLGl+EBTT04eHamkS4VIePujj8i
 wtjHr69jzHT7JiF9YVWQ9PChvgc5vS5G4TfCMFk82LfAqtFpUZHOGNH7sW2ClF4ul+a6+ru6JT7
 SdimM7
X-Received: by 2002:a17:906:b150:: with SMTP id
 bt16mr28336940ejb.257.1605779792973; 
 Thu, 19 Nov 2020 01:56:32 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwUJwvlQ0XJELt38/e4PFzzq+n0Fg4hFM/GA5EbC+536220C9f6IvX/G0zMJH/KxN/zHxqOsg==
X-Received: by 2002:a17:906:b150:: with SMTP id
 bt16mr28336925ejb.257.1605779792737; 
 Thu, 19 Nov 2020 01:56:32 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id e18sm14223451eja.124.2020.11.19.01.56.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Nov 2020 01:56:32 -0800 (PST)
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20201119071331.10934-1-manasi.d.navare@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <97f31d1d-3c72-9c4b-0528-747eabbb2efc@redhat.com>
Date: Thu, 19 Nov 2020 10:56:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201119071331.10934-1-manasi.d.navare@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11/19/20 8:13 AM, Manasi Navare wrote:
> This should fix the boot oops for dsi
> 
> Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 5c07c74d4397..739be96e998d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7211,7 +7211,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>  
> -	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
>  		if (!transcoder_is_dsi(cpu_transcoder))

This condition is now always true so this nested if can be dropped now and the
code it guards can be executed unconditionally now (within the parent if).

Regards,

Hans



>  			intel_set_transcoder_timings(new_crtc_state);
>  
> @@ -7224,7 +7224,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  			intel_cpu_transcoder_set_m_n(new_crtc_state,
>  						     &new_crtc_state->fdi_m_n, NULL);
>  
> -		hsw_set_frame_start_delay(new_crtc_state);
> +			hsw_set_frame_start_delay(new_crtc_state);
>  	}
>  
>  	if (!transcoder_is_dsi(cpu_transcoder))
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
