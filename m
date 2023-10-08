Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F5A7BCE6E
	for <lists+intel-gfx@lfdr.de>; Sun,  8 Oct 2023 15:03:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5ADA10E0CF;
	Sun,  8 Oct 2023 13:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3B2910E0CF
 for <intel-gfx@lists.freedesktop.org>; Sun,  8 Oct 2023 13:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1696770234;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=57zw0OKPUSzvJpAiJxGXUesAzc/Q2aH2UjVJr2ZxmAg=;
 b=EmNXySAlnBb4wmPiCmPKdsEtNzGJQm4hzx8vqEL9uCDAyWVzn7gP2yE2Ur4kuAv4nmAZBN
 cjryi1KrWx80ER0K9Se9Y2QrO+rtgEDfIPBdQzcyucBWU5lbGGh7PMj0ieg5cWeGYObA/v
 DBT7N0xjH2ZKdsaY+Szm6+1qU3OEPIo=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-119-Sw_gsLAcNZmJmGl7rnZhMA-1; Sun, 08 Oct 2023 09:03:37 -0400
X-MC-Unique: Sw_gsLAcNZmJmGl7rnZhMA-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-9b2e3f315d5so409001066b.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 08 Oct 2023 06:03:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696770216; x=1697375016;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=57zw0OKPUSzvJpAiJxGXUesAzc/Q2aH2UjVJr2ZxmAg=;
 b=E3rIrKgidL+Dr0ngorRupyGg+uWPjo+4QhSzsv9+zQa4+6MIrqR1Tcl+QxYjYKjZVG
 6+A+THKYSF5oXQxSVkgBB3743wHY74URc8cPqyN/LgJ2ePah84CecqxWbrksf7mVPs6x
 oia9YAIg6EvU7fj+Ylbh4o2SYiRVPcTYD6LPCQbYiCCJU3zK5Mu0qsUh8VVDwd6rrHQ9
 mIOd6mo1H/rHi3X9W+CM0qknOWTdlwR2hRf8qSkaFy80+Xiw/3vN7l4AQ+SGDIcCDC79
 TsL2+9mGvRoautYYMTdnL1tglKJdUFhBFXwK97bKSssr+OA3nraEBRNZ8tqGOxcvFftF
 0Wwg==
X-Gm-Message-State: AOJu0YxhyPcq8F6zitangftiY0h6FgEcN6n/bvek3iXaPOOj1zEuwTss
 boqz1yeZ0thAu/jJsgeThmqhe0TxDgWBjmWjyrsoO2CeDsROCp0VlxwE/uZdsVSIQy39QqH35mx
 u1jfIWznc6R3WoL/Rfu6507bO2nen
X-Received: by 2002:a17:906:3097:b0:9b2:b30f:deb with SMTP id
 23-20020a170906309700b009b2b30f0debmr8445275ejv.4.1696770216711; 
 Sun, 08 Oct 2023 06:03:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3NRRHjlJne5Or8peQMdH9SsX1fkZY8QkB6/VvPTeIFFhjxAtTfcdXCJNvJXeiU7bH85yWfg==
X-Received: by 2002:a17:906:3097:b0:9b2:b30f:deb with SMTP id
 23-20020a170906309700b009b2b30f0debmr8445258ejv.4.1696770216410; 
 Sun, 08 Oct 2023 06:03:36 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 x6-20020a170906b08600b009a19701e7b5sm5496519ejy.96.2023.10.08.06.03.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 08 Oct 2023 06:03:35 -0700 (PDT)
Message-ID: <b308ab49-ceec-e1eb-cbf4-b272cea91e2e@redhat.com>
Date: Sun, 8 Oct 2023 15:03:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230920195613.304091-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20230920195613.304091-1-hdegoede@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915/vlv_dsi: Add quirks for x86
 android tablets (v3)
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

Hi All,

Ping what is the status of this now? This v3 addresses all review
remarks from previous versions (specifically the request to file
+ link gitlab issues).

So AFAICT this is ready for merging ?

But I'm waiting for an ack for this before pushing it
do drm-intel-next myself ...

Regards,

Hans




On 9/20/23 21:56, Hans de Goede wrote:
> Hi All,
> 
> Some vlv/chv tablets ship with Android as factory OS. The factory OS
> BSP style kernel on these tablets does not use the normal x86 hw
> autodetection instead it hardcodes a whole bunch of things including
> using panel drivers instead of relying on VBT MIPI sequences to
> turn the panel/backlight on/off.
> 
> The normal i915 driver (which does not use panel drivers) mostly works
> since the VBT still needs to contain valid info for the GOP, but because
> of the Android kernel relying on panel drivers with various things
> hardcoded some DMI quirks are necessary to fix some issues on these
> devices.
> 
> Some of these issues also are related to which I2C bus to use for
> MIPI sequence elements which do I2C transfers. This series also
> includes a patch adding some extra debugging to mipi_exec_i2c() to
> help with debugging similar issues in the future.
> 
> These patches have been posted before but back then I did not get around
> to follow up on the series:
> https://lore.kernel.org/intel-gfx/20220225214934.383168-1-hdegoede@redhat.com/
> 
> v2:
> - Drop the changes how the I2C bus number is found, instead just have
>   the quirks set the right number directly where necessary. This should
>   avoid any chances of causing regressions on devices where the quirks
>   do not apply.
> - New quirk for backlight control issues on Lenovo Yoga Tab 3
> - Address Jani Nikula's remark about __func__ being redundant when using
>   drm_dbg_kms()
> 
> v3:
> - File 3 gitlab issues with drm.debug=0xe dmesg output, VBT dump for all
>   3 affected models. Add Closes: tags with links to gitlab issues
> 
> Regards,
> 
> Hans
> 
> 
> Hans de Goede (4):
>   drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on
>     Asus TF103C (v3)
>   drm/i915/vlv_dsi: Add DMI quirk for wrong I2C bus and panel size on
>     Lenovo Yoga Tablet 2 series (v3)
>   drm/i915/vlv_dsi: Add DMI quirk for backlight control issues on Lenovo
>     Yoga Tab 3 (v2)
>   drm/i915/dsi: Add some debug logging to mipi_exec_i2c (v2)
> 
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c |   3 +
>  drivers/gpu/drm/i915/display/vlv_dsi.c       | 124 +++++++++++++++++++
>  2 files changed, 127 insertions(+)
> 

