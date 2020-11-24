Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC692C209D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Nov 2020 10:01:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73F0C6E283;
	Tue, 24 Nov 2020 09:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC4816E252
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 09:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1606208468;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xE3JcwOKuWzwtveAKJpsJ+7+ide6TXe062FQruBLRd4=;
 b=Asi/GAmt+3pXfsdbi25PN/sZ4Ptbdet7F/j4N1nFP5VCCkn9te2IoqZU0mOAZmeN3rE3V+
 qY3Kcm46lmxvPHi09tvUR0mQs0kbXPxvxO7IemIyE8+RQ+3k2wZEKORkIV6xzpp+uOr66a
 4bimcbvc1kQCAnh96ReRimNGgdHjdI4=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-285-gN7GYa6_P1arpz06I8i-aA-1; Tue, 24 Nov 2020 04:01:05 -0500
X-MC-Unique: gN7GYa6_P1arpz06I8i-aA-1
Received: by mail-ed1-f69.google.com with SMTP id o11so7726880edq.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Nov 2020 01:01:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xE3JcwOKuWzwtveAKJpsJ+7+ide6TXe062FQruBLRd4=;
 b=lbEgM97cqUjCTIl0+SzX5dhAwp+xFW6Q1s6uec3fGBLaYof6aY1AlsQkM1S+zot8N+
 lgQFOudTjuMhalvxCliQ44GuUWZdOmpKOvIo4twJDpDo7y9HuB1drNjJMbJRIn9qM8bE
 QyHB1oRoVeLBZuQgLhvZnLFojiKd72mKprKAtvWWt/TUTkmqM4ug6TGOZ6/p3yDnThYW
 kT0oGt9IS6CNKWV0iVjhOWiambJfNsjRNExMiDjZ8UW/sq4hfI60ObGfSOj1LUKPXdYv
 oLvUbHTBJIotiaKiFKvWa5mTizbzLZtE2SasKHtlZ410uXWnIIOKyTXOPWuB6r6UVtx8
 3l4w==
X-Gm-Message-State: AOAM530vngn5TgY/6Om+9B/mnw30wfHnU5YML/mKdZyamCrmVZxIzEXc
 rfSwcpQgikRjYiBBgDRfREc0zSM3IOUIZLwXsLLqjzNhHznEpAfLBWSVdqbv0im/8D7o7VqdF2O
 aObyUhD4o8BUpFd/Jb2gNI43OsNyo
X-Received: by 2002:a17:906:ca83:: with SMTP id
 js3mr3405905ejb.42.1606208464138; 
 Tue, 24 Nov 2020 01:01:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJx6hHGQ4OX2/KzGAlPumGB3IBYje/1wOzkEI3Lv2m36gcJJvVLRPThkFuLmCf1+AIbd7hYcyw==
X-Received: by 2002:a17:906:ca83:: with SMTP id
 js3mr3405881ejb.42.1606208463913; 
 Tue, 24 Nov 2020 01:01:03 -0800 (PST)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-6c10-fbf3-14c4-884c.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:6c10:fbf3:14c4:884c])
 by smtp.gmail.com with ESMTPSA id y15sm6498668eds.56.2020.11.24.01.01.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 24 Nov 2020 01:01:03 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20201118124058.26021-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8b8d0e94-28db-1c4d-e14c-29a9920d0f76@redhat.com>
Date: Tue, 24 Nov 2020 10:01:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20201118124058.26021-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: Use unconditional msleep for
 the panel_on_delay when there is no reset-deassert MIPI-sequence
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11/18/20 1:40 PM, Hans de Goede wrote:
> Commit 25b4620ee822 ("drm/i915/dsi: Skip delays for v3 VBTs in vid-mode")
> added an intel_dsi_msleep() helper which skips sleeping if the
> MIPI-sequences have a version of 3 or newer and the panel is in vid-mode;
> and it moved a bunch of msleep-s over to this new helper.
> 
> This was based on my reading of the big comment around line 730 which
> starts with "Panel enable/disable sequences from the VBT spec.",
> where the "v3 video mode seq" column does not have any wait t# entries.
> 
> Given that this code has been used on a lot of different devices without
> issues until now, it seems that my interpretation of the spec here is
> mostly correct.
> 
> But now I have encountered one device, an Acer Aspire Switch 10 E
> SW3-016, where the panel will not light up unless we do actually honor the
> panel_on_delay after exexuting the MIPI_SEQ_PANEL_ON sequence.
> 
> What seems to set this model apart is that it is lacking a
> MIPI_SEQ_DEASSERT_RESET sequence, which is where the power-on
> delay usually happens.
> 
> Fix the panel not lighting up on this model by using an unconditional
> msleep(panel_on_delay) instead of intel_dsi_msleep() when there is
> no MIPI_SEQ_DEASSERT_RESET sequence.
> 
> Fixes: 25b4620ee822 ("drm/i915/dsi: Skip delays for v3 VBTs in vid-mode")
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>

Ping can I get a review/ack for this please?

Regards,

Hans


> ---
>  drivers/gpu/drm/i915/display/vlv_dsi.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index 194c239ab6b1..ef673277b36d 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -816,10 +816,14 @@ static void intel_dsi_pre_enable(struct intel_atomic_state *state,
>  		intel_dsi_prepare(encoder, pipe_config);
>  
>  	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
> -	intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
>  
> -	/* Deassert reset */
> -	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> +	if (dev_priv->vbt.dsi.sequence[MIPI_SEQ_DEASSERT_RESET]) {
> +		intel_dsi_msleep(intel_dsi, intel_dsi->panel_on_delay);
> +		/* Deassert reset */
> +		intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
> +	} else {
> +		msleep(intel_dsi->panel_on_delay);
> +	}
>  
>  	if (IS_GEMINILAKE(dev_priv)) {
>  		glk_cold_boot = glk_dsi_enable_io(encoder);
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
