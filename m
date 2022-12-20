Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E452651D46
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18A3810E356;
	Tue, 20 Dec 2022 09:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C68410E356
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528305;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hMFhZOuihLodO313fEA5R64i9CUhN9/n0ds4HavllAs=;
 b=iLfu5zOJwI5Oa37RMUSuWteZogrGUi5rXqWlUmm9QHW6kxu8Lwq6EwejgRhm24jNKuBD8q
 X4HISrO8c6IGyPdLYFIfrpLNnMziwYGkcknoILpoMWN/prFBECDLDEr5Aasaw3Vpbll7GF
 nwBJzxJyC8HjHlfINjhGz6tlxI8y+7o=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-378-gkImPXnlP_CAQYW7M8QxeQ-1; Tue, 20 Dec 2022 04:25:01 -0500
X-MC-Unique: gkImPXnlP_CAQYW7M8QxeQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 n8-20020a05600c294800b003d1cc68889dso2387320wmd.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:25:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hMFhZOuihLodO313fEA5R64i9CUhN9/n0ds4HavllAs=;
 b=ZtKjoHr1bBSgD6g2AdZGMxU/Ejqv1J+nzJi66JQYXknwye9nLgXJNJRq5Qv83Bj6+z
 iYAo5a6x03tISwocN5ewPM/j4QrbgetIqgwYFz/tQABk9/pSjr+LHSxNhaM8aiuRGC9x
 7jfgz5u0Cw/LgSKHIjDzi4ixZA4NVIBwGJvMGLImAcVC7Pvu6hPnQc2+Q+d7WKCVFAaZ
 RMMK4N5E9T760lbNKqJkc+Ra7frJnt2dcezzXusib1uGKQZbNwx8JYyOdRQsyDC+gINh
 V6LJ2/+xZAZp3MS7uKMSg+Mksa6iev4Ow8x6X6MXlYEZqBc3WztEK1dUZ1hirTh0B1pb
 /nAg==
X-Gm-Message-State: ANoB5pkFa2LV4ry+nH/cqqf9MoNIEQCETAFIpaFE80RQpdBjxr0UyiJM
 L9AcQmdAeg+Xy8l+yk/Imu3tCzTQ2ZGem7cKk6qGeNSCR+XshMX49PLnrBfpfGeoa7jI+073rt8
 Ovk2xAu0vdmv4HP2kk3sQk1Lqb/b+
X-Received: by 2002:a05:600c:1d27:b0:3d2:27ba:dde0 with SMTP id
 l39-20020a05600c1d2700b003d227badde0mr25905736wms.33.1671528300462; 
 Tue, 20 Dec 2022 01:25:00 -0800 (PST)
X-Google-Smtp-Source: AA0mqf6s+ju9wPrh/cxmy7d4OakLICIinEdQttdoLSS+PoembSG//ZlaMVN/BK9U8/HRYjVObQWlOA==
X-Received: by 2002:a05:600c:1d27:b0:3d2:27ba:dde0 with SMTP id
 l39-20020a05600c1d2700b003d227badde0mr25905720wms.33.1671528300274; 
 Tue, 20 Dec 2022 01:25:00 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 i27-20020a05600c4b1b00b003d220ef3232sm14440188wmp.34.2022.12.20.01.24.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:24:59 -0800 (PST)
Message-ID: <cc578fa7-31f0-8cfa-4cdd-981d7303412e@redhat.com>
Date: Tue, 20 Dec 2022 10:24:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-9-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-9-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 08/18] fbdev/hyperv-fb: Do not set struct
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
> not set the values in hyperv-fb.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

