Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DEC7651D87
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F2B910E35C;
	Tue, 20 Dec 2022 09:35:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0DD10E0EB
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:35:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528935;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=MvgP7d23zJJhJfNNtZXmaBwB7Yd8Vi68/FEO1UWvjSoBMAbWSvD8TvOu+Nlw7sMn28zIug
 CmK3+15pHFd/uK9lWWfpQuZ+W8byVpS/39khSnuagMJ/NfH7xyV68mzmpgfY7gFoJMsm8P
 3xsVIEG6AUhYkXuCWPTfBrGZUIMkYro=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-84-zVvtw0HVNvmwRV8VV6OQKw-1; Tue, 20 Dec 2022 04:35:34 -0500
X-MC-Unique: zVvtw0HVNvmwRV8VV6OQKw-1
Received: by mail-wr1-f70.google.com with SMTP id
 g12-20020adfbc8c000000b0024cdcc92637so1272928wrh.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:35:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=1J4eLv+5To8BjnLItTbs6pq8g5LjZHk9PMjLEQIi8Lo=;
 b=6vmhnzODD9oDVTYO2BZLz9pEQytOGOl3oeux6g+EZAMXS7dsJVlaosE0FszMghjlc5
 TCTgCdSNP2gwGcyeduHfsym0RyBVOATVUIfpOwPUJ+cXlUnHu/G90S5hv57pUosFCySZ
 nJ37smRYdhxMpICQYQP1BLYHnbtj20vhlwtSDp7KcRF4S8sDW9YO200RxQzF4mv+Lfom
 mnscp1meZE+dxZMc1tM6CQATCGX4J7eEHVHBZLooN2dthUYsaNaOuySUBuv+mxPkjwd9
 XorSH6EHPhhrd2LRHZiuVpaUM6AGLTM525BerqcmLbM3o/bX0FP+/WWvrqYpq9vqGWUo
 jKrw==
X-Gm-Message-State: ANoB5pldbD0mjcIF0G9/vjj7cMQSU5GpJv4wJ5THazsEBGOFGpKErxt7
 NHeM3qDLp0XWtZoJLSjv8DUuj6sWn3lmSIiEdcTPDX8JE5/ftWchXrjLo+qN98mHSSIMXNSLvT0
 PX17ZGtO2gsJQ7pOlqULeplk/ZGsr
X-Received: by 2002:a5d:550c:0:b0:242:2713:1fb9 with SMTP id
 b12-20020a5d550c000000b0024227131fb9mr24605044wrv.16.1671528933090; 
 Tue, 20 Dec 2022 01:35:33 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5UgRh9FZeAQW/rgYS4tJcqcpMr2W2F1LauhongkzEysTbAsUBQfYpe3JzD17C7VFjb9x9qPQ==
X-Received: by 2002:a5d:550c:0:b0:242:2713:1fb9 with SMTP id
 b12-20020a5d550c000000b0024227131fb9mr24605033wrv.16.1671528932912; 
 Tue, 20 Dec 2022 01:35:32 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 y18-20020a5d4ad2000000b002365cd93d05sm12313762wrs.102.2022.12.20.01.35.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:35:32 -0800 (PST)
Message-ID: <c8c3d52d-896b-b38b-00ac-b1686fc4ecaa@redhat.com>
Date: Tue, 20 Dec 2022 10:35:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-12-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-12-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 11/18] fbdev/efifb: Do not use struct
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
> Acquire ownership of the firmware scanout buffer by calling Linux'
> aperture helpers. Remove the use of struct fb_info.apertures and do
> not set FBINFO_MISC_FIRMWARE; both of which previously configured
> buffer ownership.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

