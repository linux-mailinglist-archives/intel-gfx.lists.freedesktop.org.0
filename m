Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DD2651D1A
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:20:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562DA10E353;
	Tue, 20 Dec 2022 09:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3065810E353
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528005;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1OcEOi6wfApoNJ5QX9xUUF80M6DZAUCfFxv9pSqRsVA=;
 b=bxDC6pTnCn2XVOGcaW+vvpiqTxbR4jf2JHHjSptA69Eotkkmcs+VlEWEu5woCQ416naPy4
 wCY4oyjpt2ISyp6tsFokvbOiBhMkoN7nUQuaA94g/O4FMybSVsDhL77tWV7qrNt+0QQPOv
 cM1gzNvUSVN8QHr94khHzDLgd7Y3Cyo=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-631-sObxb1CYNZy5H-KYNBxv2Q-1; Tue, 20 Dec 2022 04:20:02 -0500
X-MC-Unique: sObxb1CYNZy5H-KYNBxv2Q-1
Received: by mail-wr1-f70.google.com with SMTP id
 a7-20020adfbc47000000b002421f817287so2067828wrh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:20:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1OcEOi6wfApoNJ5QX9xUUF80M6DZAUCfFxv9pSqRsVA=;
 b=l1vj0lLP1s2UlrJv05F/cvhILBCwIthjHDScg06SBXB8HGVOJvFPcF4sUjWlpPOfhb
 MARYAucGoVvTxEA/EFwIhvM5b9SXoQs7YnHHoewNWosC6hAqp3HOWNW7xBosgz2eV815
 HAzcHFrA7X5TbBq86WEb9N0hE4tC68Q3hCYlxpU9UMaPxGFRCVcQbU0D/cZY2Zd+AL/H
 63w27l8NaG69W4vTNDuOkRoZmY48T1oD7yfArhdY6A1VmLR93W9WITUnDekZuKCQ65Cp
 0Aht83L7zYkxUegoir84rRVY9Gi+GOqIknDRZZotnTOcmUVncNsP7gHxw99pYR/k/z6O
 I54A==
X-Gm-Message-State: ANoB5pkKJr/5b4fzV+Y0ENXGHVAvU0BK8m3N/SniSSmL13CF9njxdSoh
 W/AtGZCA86a/cAG078sUKtsLQnvq0XoMSjuv+72ipcghtZfqmwLZY1DumLdhhnjTW2PLsBy5+71
 vSNr+98ekJriVSnsH3rgjsY0iisTv
X-Received: by 2002:a05:600c:4f85:b0:3cf:93de:14e8 with SMTP id
 n5-20020a05600c4f8500b003cf93de14e8mr33662653wmq.39.1671528001150; 
 Tue, 20 Dec 2022 01:20:01 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7YfyRC8GN1CmHHU+h6zQnG8fHr/grTiv22vuNVltDRj2C7JBfNLZj3eqwiClNyExLknW6NJw==
X-Received: by 2002:a05:600c:4f85:b0:3cf:93de:14e8 with SMTP id
 n5-20020a05600c4f8500b003cf93de14e8mr33662634wmq.39.1671528000916; 
 Tue, 20 Dec 2022 01:20:00 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 p16-20020a1c5450000000b003d07de1698asm21890206wmi.46.2022.12.20.01.20.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:20:00 -0800 (PST)
Message-ID: <bf88b4bf-4c81-29d3-3518-ef149f93265d@redhat.com>
Date: Tue, 20 Dec 2022 10:19:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-6-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-6-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 05/18] drm/radeon: Do not set struct
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
> not set the values in radeon.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

