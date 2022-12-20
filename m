Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6473F651D01
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:18:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0149F10E34B;
	Tue, 20 Dec 2022 09:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 929BD10E344
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671527847;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=E8TwpXV0XnYsgvagPag9L7MpjXeefLJTkMJCGh9V7pg=;
 b=HUKxeEe/NQ/7x/sMkaAuGBSclBSx+N8Sk2siij16PkayDl/RrfDxowt0mcgQGXTuDGkaQL
 j3EIJzcO4QTMVomAbTALtfCIQBikU38/e90T25U043YmAwozoraOLHUofUAKjEko+GbWA+
 UvTSIplJwSrGoIExdDb+Co7xWCQFeW8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-312-ajQccmHmM9GASAE0LL0jmQ-1; Tue, 20 Dec 2022 04:17:26 -0500
X-MC-Unique: ajQccmHmM9GASAE0LL0jmQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 k1-20020adfb341000000b0024215e0f486so2087698wrd.21
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:17:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=E8TwpXV0XnYsgvagPag9L7MpjXeefLJTkMJCGh9V7pg=;
 b=Bn5IBAhzBPWjqjk72LdN1vJiIc/wSJVEMYyDdaVnis1+DF4CSlbD+MX9vrXrbarAYb
 iKQrMt0cxxv96UnCwXilOFQkcjIfHZZVtYAEhkCNBqLVNT65MiK538TX40c0ttg3rjON
 Ji/jDfroZAyx04FOcrAtFl1FoFCy7kRJM/8mGu2VjTTGxr5Plux8O6BjaVvWAcYWCjih
 c/w6r+of8DXf6Jf5tIscj+t7z1BBhHBKXjUqB6TPQ2T+Gdj8Z+DGvcITAIxldJ/8KPcT
 x4Oxq7bc1Faead/3bjGlk2HcOeLEbY37Tv2kcB3+/I8JWgboMEKeCOtL0fNXZAY2Ss6Q
 8jLQ==
X-Gm-Message-State: AFqh2kr9ltrq8PICf9xucL8G7SWtVAT4yVlt40s1USyZgEiT/XVLkWht
 g/ywv9QNUvjwmM1lEjcy777q1MlyMqzgv6HTJJGGru3AU79pfwI0OtHPtFCVGxW3cobO4inaSLV
 jYkpB/EJx13eBeKGH0SaphYxPmRKm
X-Received: by 2002:a05:600c:220c:b0:3d2:3831:e5c4 with SMTP id
 z12-20020a05600c220c00b003d23831e5c4mr995459wml.40.1671527845213; 
 Tue, 20 Dec 2022 01:17:25 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuuo6HgeH5yLW955AXoTEHdpszfHBedFCr5hOSv462STXosZPN5E6XN8VtP9mnawtIRXA48sQ==
X-Received: by 2002:a05:600c:220c:b0:3d2:3831:e5c4 with SMTP id
 z12-20020a05600c220c00b003d23831e5c4mr995452wml.40.1671527845031; 
 Tue, 20 Dec 2022 01:17:25 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 h15-20020a05600c350f00b003c71358a42dsm30460043wmq.18.2022.12.20.01.17.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:17:24 -0800 (PST)
Message-ID: <4bb928f8-ee2c-7b3c-9390-7efb53c23b80@redhat.com>
Date: Tue, 20 Dec 2022 10:17:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-3-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-3-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 02/18] Revert "fbcon: don't lose the console
 font across generic->chip driver switch"
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
Cc: linux-fbdev@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-hyperv@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/19/22 17:05, Thomas Zimmermann wrote:
> This reverts commit ae1287865f5361fa138d4d3b1b6277908b54eac9.
> 
> Always free the console font when deinitializing the framebuffer
> console. Subsequent framebuffer consoles will then use the default
> font. Rely on userspace to load any user-configured font for these
> consoles.
> 
> Commit ae1287865f53 ("fbcon: don't lose the console font across
> generic->chip driver switch") was introduced to work around losing
> the font during graphics-device handover. [1][2] It kept a dangling
> pointer with the font data between loading the two consoles, which is
> fairly adventurous hack. It also never covered cases when the other
> consoles, such as VGA text mode, where involved.
> 
> The problem has meanwhile been solved in userspace. Systemd comes
> with a udev rule that re-installs the configured font when a console
> comes up. [3] So the kernel workaround can be removed.
>
> This also removes one of the two special cases triggered by setting
> FBINFO_MISC_FIRMWARE in an fbdev driver.
> 
> Tested during device handover from efifb and simpledrm to radeon. Udev
> reloads the configured console font for the new driver's terminal.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=892340 # 1
> Link: https://bugzilla.redhat.com/show_bug.cgi?id=1074624 # 2
> Link: https://cgit.freedesktop.org/systemd/systemd/tree/src/vconsole/90-vconsole.rules.in?h=v222 # 3
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

