Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44847651D43
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:24:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A476510E350;
	Tue, 20 Dec 2022 09:24:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04A1310E0BA
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528253;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hYMKnwowgCZbmQLyZb+O1xPkwcQc1vWKiI5mpSCZQTU=;
 b=ODK4/HU/DUq0AuFneUL18/bPtq9eLqR8LSGV17VkDC86G+OIjVyZ4vTC0gB0HopWq58meM
 N4QQdc0Lofrxw5InCJ1sFeKlJ2ykKPcPBpIVZsm574pfVet2GhVcztgThYxqcDYdXi1PDC
 QsGH4OQ34WtMAQlO5PZ2IMB3HCWnj9o=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-471-pRQQQz5_OnaUMsiT_pCGqQ-1; Tue, 20 Dec 2022 04:24:09 -0500
X-MC-Unique: pRQQQz5_OnaUMsiT_pCGqQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 h64-20020a1c2143000000b003d65ff910e1so41325wmh.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:24:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hYMKnwowgCZbmQLyZb+O1xPkwcQc1vWKiI5mpSCZQTU=;
 b=R5+e3Q4xK0Rh0PvtoRdyMXwC2KsF6w1VmYvTRNYDraK1suGDBQrAldQfwPB3spldCi
 nsgtRufzmMlEv0FX2SPM9jdaX5b888YV+tkPf/DAY8dO7f8TZetP0mpWIl0206AR5b+B
 Ss7edOcyP0Y17v5sbCnbuA6kDm6XFIZMe/c9Ja9narAWIlCuALOaUpmilyIfjAZ4XJBW
 Cwu2t6R3rl5pqv11Fi1crgGJTIgDkg82ZHXcCYgLKwerBuO8yFWO+UUvshsKfIB8UrqG
 t8ketGgSFuvlDGz2a5xpHD/yLmtNhrXxqc0KX4R/pQIjbS6oXBefxR1hukP+Xj+UwfKr
 Qtug==
X-Gm-Message-State: ANoB5pkdsQm0ru+btwgOzs/Uut5YN0kFC0ZNDNWEbUMaf/cbtA4kGg47
 03IOi4nV+qFQBRPRwv91PYo5L31P+X+1tMgjN9HrLkLX1cnzvjeQStmaPagtNEYoHxzWw5Zxfdq
 14M/sGL2wW32McihY0NV+HoK56/Dd
X-Received: by 2002:a05:600c:3592:b0:3d1:bc32:2447 with SMTP id
 p18-20020a05600c359200b003d1bc322447mr34442419wmq.21.1671528248079; 
 Tue, 20 Dec 2022 01:24:08 -0800 (PST)
X-Google-Smtp-Source: AA0mqf63KxuIxT0M/bl3iLHanyFrnj5hgoC/KBz3bLt1CmA/PA7eDrziJ0q3Lz1WCcHGowxEUJxpPQ==
X-Received: by 2002:a05:600c:3592:b0:3d1:bc32:2447 with SMTP id
 p18-20020a05600c359200b003d1bc322447mr34442411wmq.21.1671528247925; 
 Tue, 20 Dec 2022 01:24:07 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 k18-20020a05600c1c9200b003a84375d0d1sm24663667wms.44.2022.12.20.01.24.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:24:07 -0800 (PST)
Message-ID: <e807855d-cfaa-ebab-8aff-7a3e78b1967d@redhat.com>
Date: Tue, 20 Dec 2022 10:24:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-8-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-8-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 07/18] fbdev/clps711x-fb: Do not set struct
 fb_info.apertures
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
> Generic fbdev drivers use the apertures field in struct fb_info to
> control ownership of the framebuffer memory and graphics device. Do
> not set the values in clps711x-fb.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

