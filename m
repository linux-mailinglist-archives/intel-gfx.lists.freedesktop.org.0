Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C8745960C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 21:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6100089B27;
	Mon, 22 Nov 2021 20:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17D9389B27
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 20:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637612656;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iFgW3nVTYDAQjzGUSQDcom6A5IYvPBERmakQAfRL0aA=;
 b=c72JgjcITxcL7ujOJQ/KK+vq2/vVykfi9YfoPnzwxq6Y/Wz3cU2Ad79dOMlyA+/2WHK3y7
 D1oEaUTB07/CfFIo3ddZa4X5/djmujJFb3AJzeVjK7N2ChRVUGIQZU4gyu7X2cT81vhC6J
 rf/LGgs+OrOK6oxxcs5bkIvgl/Kv09w=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-596-Dg5uiqxgNIK1CzYXmKHPJg-1; Mon, 22 Nov 2021 15:24:15 -0500
X-MC-Unique: Dg5uiqxgNIK1CzYXmKHPJg-1
Received: by mail-qk1-f197.google.com with SMTP id
 q5-20020a05620a0d8500b0045edb4779dbso15823459qkl.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 12:24:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=iFgW3nVTYDAQjzGUSQDcom6A5IYvPBERmakQAfRL0aA=;
 b=zQL9w4M90EhaUvGsXTci3MuWvnYDxGi0x5YQZ3WG81FHniK7J7YUraO4JC3I9XpKcb
 69u2iAeDODfgeWHZizVTrjdXpBO1mnFq+PZE3gZG5Vf8R+6t1IrYTEU/QDd4XVbeqRiV
 icGg1pClO5dGVda56u6iKRas1RkjPpqrCCdQPAr1sH5U27qkwzPToRjl7nbuji/2D3MU
 j9CaK16ErrgwSkpzNeIVjLtFIdV1k3G/yTMFirDxPuWHQsVYPLn1C18azGhSqaFjhJ8K
 TKhDC8wflC0D4oZ5BNVa4nxGZDmgszoBMZWZ5gpOlcpKv4iOKCmGg4Iv9JZ2Ik2noewC
 C/Vw==
X-Gm-Message-State: AOAM533FK939p+yP9lAiQyBsvb7U5C6Prd7UxyHZ6wg/kKvE7Giu+v8F
 vki822RUlU0ZcTihDUbRusM986wEf5Od/ngyFXICsN3qHJZCA+vYGmPVvkUcKJaV549F049sJjW
 fflC/kZjRgJO+TX1CUu1EJT4KV7zS
X-Received: by 2002:a05:620a:414a:: with SMTP id
 k10mr51006890qko.502.1637612655472; 
 Mon, 22 Nov 2021 12:24:15 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyObR1NeSvmI79L+srM3R5DOoF08MB34Ja7wMPWlLDgEc4ZFW5LhZPQLd/EWhtPW0um5iIhZg==
X-Received: by 2002:a05:620a:414a:: with SMTP id
 k10mr51006854qko.502.1637612655237; 
 Mon, 22 Nov 2021 12:24:15 -0800 (PST)
Received: from [192.168.8.138] (pool-96-230-249-157.bstnma.fios.verizon.net.
 [96.230.249.157])
 by smtp.gmail.com with ESMTPSA id x13sm5405873qkp.102.2021.11.22.12.24.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Nov 2021 12:24:14 -0800 (PST)
Message-ID: <37d79df166c90c0aead437bad44119d58ea44f82.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Hans de Goede <hdegoede@redhat.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>,  Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Mon, 22 Nov 2021 15:24:13 -0500
In-Reply-To: <20211121110032.4720-2-hdegoede@redhat.com>
References: <20211121110032.4720-1-hdegoede@redhat.com>
 <20211121110032.4720-2-hdegoede@redhat.com>
Organization: Red Hat Inc.
User-Agent: Evolution 3.42.1 (3.42.1-1.fc35)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/backlight: Make
 ext_pwm_disable_backlight() call intel_backlight_set_pwm_level()
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed-by: Lyude Paul <lyude@redhat.com>

On Sun, 2021-11-21 at 12:00 +0100, Hans de Goede wrote:
> At least the Bay Trail LPSS PWM controller used with DSI panels on many
> Bay Trail tablets seems to leave the PWM pin in whatever state it was
> (high or low) ATM that the PWM gets disabled. Combined with some panels
> not having a separate backlight-enable pin this leads to the backlight
> sometimes staying on while it should not (when the pin was high during
> PWM-disabling).
> 
> First calling intel_backlight_set_pwm_level() will ensure that the pin
> is always low (or high for inverted brightness panels) since the passed
> in duty-cycle is 0% (or 100%) when the PWM gets disabled fixing the
> backlight sometimes staying on.
> 
> With the exception of ext_pwm_disable_backlight() all other
> foo_disable_backlight() functions call intel_backlight_set_pwm_level()
> already before disabling the backlight, so this change also aligns
> ext_pwm_disable_backlight() with all the other disable() functions.
> 
> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 03cd730c926a..2758a2f6c093 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -421,6 +421,8 @@ static void ext_pwm_disable_backlight(const struct
> drm_connector_state *old_conn
>         struct intel_connector *connector =
> to_intel_connector(old_conn_state->connector);
>         struct intel_panel *panel = &connector->panel;
>  
> +       intel_backlight_set_pwm_level(old_conn_state, level);
> +
>         panel->backlight.pwm_state.enabled = false;
>         pwm_apply_state(panel->backlight.pwm, &panel->backlight.pwm_state);
>  }

-- 
Cheers,
 Lyude Paul (she/her)
 Software Engineer at Red Hat

