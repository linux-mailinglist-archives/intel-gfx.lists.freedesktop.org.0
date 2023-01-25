Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B51F667AEC5
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:51:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F3910E758;
	Wed, 25 Jan 2023 09:51:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE51510E74E
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 09:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1674640258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=K/d1Iir0okyO1PXRE824II8zkHLTH6xPW+FwgTmuVIo=;
 b=i43tSzhaGlT3iP7kNF+8LzN0an29YTFMeBi1U+PA1dMET2VHr0oh5yow8+VryWBuQlNUYU
 UJ/bk/mDQxuPSIz4nni1fb8stQBsjkOHiYQ22fQgfuQhrE0DCs1QyUeP6aqiltjHPb2kDH
 fUjnLuOLzQWr4MzUGt9NdZqw9yl/okQ=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-671--CNiiP1jP_aUtVsVS_hPbQ-1; Wed, 25 Jan 2023 04:50:56 -0500
X-MC-Unique: -CNiiP1jP_aUtVsVS_hPbQ-1
Received: by mail-wr1-f72.google.com with SMTP id
 o15-20020a5d684f000000b002be540246e1so2509754wrw.22
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 01:50:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=K/d1Iir0okyO1PXRE824II8zkHLTH6xPW+FwgTmuVIo=;
 b=KcSuTr4g5WqjFWRoWdP2nKs2miNK+ovin7XplICm4GoTTddU3IGHJXRqoqh5zX1AYI
 rY0JhR6MQEL6p+Ic6LgOmdX0TFbySxrMoYak4WWFEk680luSrpopcUJlW75PfGvj5C1j
 t1fiL5uScdGM3d/Ouqy1iW0+nSUX4RQOX01GibyLuYloxre30KbsuH0z8Bv9qtHz/iM7
 xJQ5aeoqow+cr6pSeYzYnnPZadXsC5k3m0cBjuToapWthUCVgKPQqTndWQ1d1rQ1PhzE
 GMZ7qN2VZy7IYmfCsMd+XBF3OMC9wXL7In3wfL4IQpeyA0znZjtNCwVz4rl+8jTl88xI
 qEew==
X-Gm-Message-State: AFqh2kpY1NBCFqmyn/IrWWyrxDRC38oqYnoTn+39nrw7yhQkNr7ksGNv
 M+16CfwrQKtpJMrh1JE4t36ZXYkZES3p5C7seyG+ZSeXVw5sfB1MGB3bYDiUP5FFt8+W9J7nBLN
 7ckcxNOgtCM00ZnT9oYQIfCMfBaqD
X-Received: by 2002:a05:600c:3ac8:b0:3da:270b:ba6b with SMTP id
 d8-20020a05600c3ac800b003da270bba6bmr32346399wms.41.1674640255700; 
 Wed, 25 Jan 2023 01:50:55 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuwfL0Z6VaIwodqmubvV+5fPQ6Vvv5kGgzDLr7Nlz5OAeVqgi6a3bBFtOpmTalnPP5+47xPuw==
X-Received: by 2002:a05:600c:3ac8:b0:3da:270b:ba6b with SMTP id
 d8-20020a05600c3ac800b003da270bba6bmr32346388wms.41.1674640255501; 
 Wed, 25 Jan 2023 01:50:55 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 e18-20020a5d65d2000000b00294176c2c01sm3929576wrw.86.2023.01.25.01.50.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Jan 2023 01:50:54 -0800 (PST)
Message-ID: <498c2aa7-185f-d1cd-6e41-004880913870@redhat.com>
Date: Wed, 25 Jan 2023 10:50:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
To: Thomas Zimmermann <tzimmermann@suse.de>, airlied@gmail.com,
 daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org
References: <20230124134010.30263-1-tzimmermann@suse.de>
 <20230124134010.30263-9-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20230124134010.30263-9-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 08/10] drm/fbdev-generic: Minimize client
 unregistering
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
> For uninitialized framebuffers, only release the DRM client and
> free the fbdev memory. Do not attempt to clean up the framebuffer.
> 
> DRM fbdev clients have a two-step initialization: first create
> the DRM client; then create the framebuffer device on the first
> successful hotplug event. In cases where the client never creates
> the framebuffer, only the client state needs to be released. We
> can detect which case it is, full or client-only cleanup, be

s/be/by

> looking at the presence of fb_helper's info field.
> 
> v2:
> 	* remove test for (fbi != NULL) in drm_fbdev_cleanup() (Sam)
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

