Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EFE455B04
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Nov 2021 12:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 852536E90D;
	Thu, 18 Nov 2021 11:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44AC76E103
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 11:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637236512;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PKOvDTAFBhDmqnXLpoIbGl8D9QI4dRnPaHVnV1n7JeM=;
 b=cQ7ilm3Di9jMNyflLvbaVpx/zTcWDdcOe7Tlmap47VIX0WIDNpZpukDkq4ppwU78GmBUjf
 s+gtcRgjapBE3lHvWzw7kvP/bG9gncBIgf4OY2NXhYUdgaxe4/Q7DvseZAxdPp/Yaqzn6f
 0i7GcqRlxvzFNEjVQzJmg80BWsPFxjs=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-595-yD3QFT9_P3ap1l-DvR-Yiw-1; Thu, 18 Nov 2021 06:55:07 -0500
X-MC-Unique: yD3QFT9_P3ap1l-DvR-Yiw-1
Received: by mail-ed1-f70.google.com with SMTP id
 l15-20020a056402124f00b003e57269ab87so5065515edw.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Nov 2021 03:55:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PKOvDTAFBhDmqnXLpoIbGl8D9QI4dRnPaHVnV1n7JeM=;
 b=TNT/OGcVzSyDs3ADUB3c6goAYY8dToPKcqSs6eYqMC4qo1VP8hLV8Ro5wnSgCFN3zT
 YAhSD3tPKW+C1EtswI4waWqklOTfw5XXyzTYBGtohUi1cm18oORvwLvUdgT7WQdtZAEw
 V1+osqdnhNSCay5lZ+zvsTAecO6W3AtJetRjySlwJLw7h0rYROLbbtt4bYJ7VmvA16Y0
 Y8LhksBqtn3CI3000i0BA/9Die/K5LMnVMQsFcD1OQN70lGdw8ZdN+r8E9r3U5uqbvri
 rHaJf3XRc35B2W9OPQ+712p1PNUFdr71k/DSoHsskEZ2WCCrrqy1SI/XJwQXee+x/ZMa
 rXuA==
X-Gm-Message-State: AOAM5317qgOJn/PjdoQgrT6mgZbVap4qqjKGAGo5MLCHwbyJAQpN4xbY
 c+gxhRp6DeHKqJE7GdvB15WQ0HraSnqb6kreQJVXbT0Wfh7iwnwkX0Skrhhbe88YtgVbUsdoAYR
 2MrenEinDcjlXwpfyXWJXP1O4GVnM
X-Received: by 2002:a05:6402:5206:: with SMTP id
 s6mr10446460edd.113.1637236505985; 
 Thu, 18 Nov 2021 03:55:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwr+I+nxD7AjLfY9b2kvq0xzCH75smOJzqcr6LSQOb8QawBns0oHgGTfeVSlG0lA3tGiElJqA==
X-Received: by 2002:a05:6402:5206:: with SMTP id
 s6mr10446420edd.113.1637236505807; 
 Thu, 18 Nov 2021 03:55:05 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id de15sm1206723ejc.70.2021.11.18.03.55.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 18 Nov 2021 03:55:05 -0800 (PST)
Message-ID: <74c4f844-74d4-5af0-c31f-513e0483ecad@redhat.com>
Date: Thu, 18 Nov 2021 12:55:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20211024155020.126328-1-hdegoede@redhat.com>
 <87a6ixldqx.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87a6ixldqx.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vlv_dsi: Double pixelclock on
 read-back for dual-link panels
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org, Tsuchiya Yuto <kitakar@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/25/21 10:17, Jani Nikula wrote:
> On Sun, 24 Oct 2021, Hans de Goede <hdegoede@redhat.com> wrote:
>> In intel_dsi_get_config() double the pclk returned by foo_dsi_get_pclk()
>> for dual-link panels. This fixes the following WARN triggering:
>>
>>  i915 0000:00:02.0: [drm] *ERROR* [CRTC:51:pipe A] mismatch in pixel_rate (expected 235710, found 118056)
>>  i915 0000:00:02.0: [drm] *ERROR* [CRTC:51:pipe A] mismatch in hw.pipe_mode.crtc_clock (expected 235710, found 118056)
>>  i915 0000:00:02.0: [drm] *ERROR* [CRTC:51:pipe A] mismatch in hw.adjusted_mode.crtc_clock (expected 235710, found 118056)
>>  i915 0000:00:02.0: [drm] *ERROR* [CRTC:51:pipe A] mismatch in port_clock (expected 235710, found 118056)
>>  ------------[ cut here ]------------
>>  pipe state doesn't match!
>>  WARNING: CPU: 3 PID: 136 at drivers/gpu/drm/i915/display/intel_display.c:9125 intel_display_finish_reset+0x1bd3/0x2050 [i915]
>>  ...
>>
>> This has been tested on a Xiaomi Mi Pad 2 (with CHT x5-Z8500 SoC) tablet,
>> with a 1536x2048 dual-link DSI panel.
>>
>> Note this fix was taken from icl_dsi.c which does the same in
>> its get_config().
>>
>> Cc: Tsuchiya Yuto <kitakar@gmail.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Thank you, I've pushed this to drm-intel-next now.

Regards,

Hans


> 
>> ---
>>  drivers/gpu/drm/i915/display/vlv_dsi.c | 5 +++++
>>  1 file changed, 5 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index 3e646a58b38a..2b7909bc52ff 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1265,7 +1265,9 @@ static void intel_dsi_get_config(struct intel_encoder *encoder,
>>  				 struct intel_crtc_state *pipe_config)
>>  {
>>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>> +	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
>>  	u32 pclk;
>> +
>>  	drm_dbg_kms(&dev_priv->drm, "\n");
>>  
>>  	pipe_config->output_types |= BIT(INTEL_OUTPUT_DSI);
>> @@ -1277,6 +1279,9 @@ static void intel_dsi_get_config(struct intel_encoder *encoder,
>>  		pclk = vlv_dsi_get_pclk(encoder, pipe_config);
>>  	}
>>  
>> +	if (intel_dsi->dual_link)
>> +		pclk *= 2;
>> +
>>  	if (pclk) {
>>  		pipe_config->hw.adjusted_mode.crtc_clock = pclk;
>>  		pipe_config->port_clock = pclk;
> 

