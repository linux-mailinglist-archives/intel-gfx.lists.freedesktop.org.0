Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E40B1651D19
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:20:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B0D010E350;
	Tue, 20 Dec 2022 09:19:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D393210E34B
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671527979;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ABmxoLEyhLmWYUbBrwSAozB1mTvmA41c/n7InFI0eTk=;
 b=cyJJ0I19auZaMfVHveFdYbza75xMjvhXI1d5XVRnYTYMwKKyCz9hbjnBJRslEX1dqkFcJb
 bpy9z8B5YvEU78giMMhSrp8J8m6+/3q63JdLJLmHha6a9Q941LDB6NsRV1qiEY0pQlskX8
 4WC8kXdEkrtFExEsyoX/4R2BO6ep5BM=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-477-7KJGlq8DPcCgjcYlJd1sJQ-1; Tue, 20 Dec 2022 04:19:35 -0500
X-MC-Unique: 7KJGlq8DPcCgjcYlJd1sJQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 21-20020a05600c021500b003d227b209e1so2390369wmi.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:19:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ABmxoLEyhLmWYUbBrwSAozB1mTvmA41c/n7InFI0eTk=;
 b=EU5pqLawBUnO0ZsyBcBqMcPwVyg3Gc+41Qshe22l1RxOQvILrpGTkpC1OfWR9SQ/LC
 rXIwzmlq8SSO57DSBHxBzbFFfJO/URkikQieX3iY4nQEGXmJXrTg0knazx9owASjGbPw
 MWaorqPCMHwh4EED8OEqKMGR8rXjELwvfu1ewYAgGYsYpYlvsRawjq71uxMr2BULV1wa
 wGxMRoYqDhr8NFi9n6YPXTlx2bJapjTaUGlJF3aEftANsddIQMnsJ6iC9lZrVDzsv3Rk
 xJ0aUbIlq3reLSxCTSVVNmGa3MtKdBucWjOV8GhPCcd9IdGraBh0GauBi8SfSG8Z+wAQ
 3TWw==
X-Gm-Message-State: AFqh2kpRBC4pzeW0DyJt8suE4gm2klZAX/J7bVlWTdpY8qu6N/HjS4QD
 GWwRsmj1OTJaEZYwB40fvwZwIO1llS6TCvTlQwqIC3N4IX1rwBJHwD6G6IqQ+AAhAKO6yD6Nk+z
 kBvoHW1B+03i36IdefJx+vAF2eaob
X-Received: by 2002:a5d:5752:0:b0:244:48b3:d13f with SMTP id
 q18-20020a5d5752000000b0024448b3d13fmr814497wrw.41.1671527974610; 
 Tue, 20 Dec 2022 01:19:34 -0800 (PST)
X-Google-Smtp-Source: AMrXdXtLG6B6o+Iq76Uq1s7q/P5T3qehN9lnU31N4pqMHcN5FUQ5i4K5iNalaLBn7T7/AoIpv82Xvg==
X-Received: by 2002:a5d:5752:0:b0:244:48b3:d13f with SMTP id
 q18-20020a5d5752000000b0024448b3d13fmr814479wrw.41.1671527974427; 
 Tue, 20 Dec 2022 01:19:34 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 bj19-20020a0560001e1300b002238ea5750csm14570460wrb.72.2022.12.20.01.19.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:19:34 -0800 (PST)
Message-ID: <d9fa03ac-4e71-dcd4-2d79-698410c9c444@redhat.com>
Date: Tue, 20 Dec 2022 10:19:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-5-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-5-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 04/18] drm/i915: Do not set struct
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
> not set the values in i915.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

