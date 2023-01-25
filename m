Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BBA67AE42
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:41:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B71B10E74E;
	Wed, 25 Jan 2023 09:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB75A10E74B
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 09:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674639668;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZiXmPj1TLICEH85h0g9ObpieXhmW8hbY1dyGTe1WVko=;
 b=Km6gExUB7q+SFkVkSURn+CyhaPLT6yTla50HLsl8iKD8VxS7MMwmWmSBiLC/G/JcsUSCk9
 KhK1bt2RopU1vxsA4uVAThRv2tIhysEDWxeCgBQl2ZSZcfMGlMv3Ya0Q4HwOdkuLd0+7Nf
 4wOFNqd+uqHuSWDWTj7GcD8F4aL7lg8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-27-9yZFDjClMBeYTC2oculv4Q-1; Wed, 25 Jan 2023 04:41:06 -0500
X-MC-Unique: 9yZFDjClMBeYTC2oculv4Q-1
Received: by mail-wr1-f70.google.com with SMTP id
 bo29-20020a056000069d00b002bfaf31719fso754160wrb.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 01:41:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZiXmPj1TLICEH85h0g9ObpieXhmW8hbY1dyGTe1WVko=;
 b=W3OGXsqEMOgWC0GJKEh8il7jzsqLj6o+M5HDxCMOPm5PMW4gO4m51QzKkrwVsTA4tb
 qIzYWzpyz6IGaM519pIN46cdKwDBCOhegd2OTSH12tguWQIy3hpI0iXFsN3/V2OvdlKB
 7t25BhTwsCuuwrLXCzSVrlRnDZpgDUvdLf278DDMv/Z7115ZJnBfosxbHfDoneT6Kvlr
 pA2T3Zx/1yM3oyMofGldNrKd7jSlL8tzRyI6p892q/qx+Y/oYlnwqnCygd+TyMaeMXQu
 XfJ3WoPbxVpeBpeukVnb1YvO1h0RY804XASRJX3zjv99LWHyeNM12hhImGxcus52OsSL
 DFZA==
X-Gm-Message-State: AFqh2kqRQaalsp/z+h/OC2z/8UJgn1bWXYVhV59WbvnBTer6mpOgf/MB
 JFayRKUwcEV9x2voD8cvZVxi+DS2Lvi2B4GvGZ2luYsABAEPhKMXKi5Vxq+c4FvmTAAriK3L76k
 tFxR/S7It1KtfDCkxWUSe7DeM+Jsf
X-Received: by 2002:a5d:5c0b:0:b0:2bd:15ef:fe7 with SMTP id
 cc11-20020a5d5c0b000000b002bd15ef0fe7mr27416462wrb.3.1674639665556; 
 Wed, 25 Jan 2023 01:41:05 -0800 (PST)
X-Google-Smtp-Source: AMrXdXspvSYF5UcTCX9Syl/sB5Wttapk1TJmAOGMxlySA2rIPpJprAbwV2wYhJQSWjxg72A43lgFrQ==
X-Received: by 2002:a5d:5c0b:0:b0:2bd:15ef:fe7 with SMTP id
 cc11-20020a5d5c0b000000b002bd15ef0fe7mr27416452wrb.3.1674639665344; 
 Wed, 25 Jan 2023 01:41:05 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 a18-20020a056000101200b002be25db0b7bsm4010247wrx.10.2023.01.25.01.41.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 01:41:04 -0800 (PST)
Message-ID: <66114220-d226-e0e9-bf09-707388ce98f3@redhat.com>
Date: Wed, 25 Jan 2023 10:41:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
References: <20230124134010.30263-1-tzimmermann@suse.de>
 <20230124134010.30263-7-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230124134010.30263-7-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 06/10] drm/fb-helper: Initialize
 fb-helper's preferred BPP in prepare function
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
Cc: linux-samsung-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/24/23 14:40, Thomas Zimmermann wrote:
> Initialize the fb-helper's preferred_bpp field early from within
> drm_fb_helper_prepare(); instead of the later client hot-plugging
> callback. This simplifies the generic fbdev setup function.
> 
> No real changes, but all drivers' fbdev code has to be adapted.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

