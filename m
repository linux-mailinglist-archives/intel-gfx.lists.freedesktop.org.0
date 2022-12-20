Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5452651D8D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 505C610E35E;
	Tue, 20 Dec 2022 09:37:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BE7110E35D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671529057;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4bHxLfE6qRmbmJ9vfsWvWUlnwpkYhHXJKMmhBNnZCVw=;
 b=gqLwjS+0HFrY6dwz4cyw57xPjgD+5ztn3YeeOHMopE7Jp9cQ35lr1XSjNOsQQok4vhZa/z
 tw9FfdugHbB0JCfbh8J/EvzH1AKg2uJPauiiQYtMeYhIc++YdIw5vTGP9SSz1NlheEfj8m
 guESQCRgiYsG9jJYWnHHWCF9aX9LQvw=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-56-gyNRHBLQN6SC90ZfTzzD-A-1; Tue, 20 Dec 2022 04:37:36 -0500
X-MC-Unique: gyNRHBLQN6SC90ZfTzzD-A-1
Received: by mail-wm1-f71.google.com with SMTP id
 g9-20020a7bc4c9000000b003d214cffa4eso2399861wmk.5
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:37:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=4bHxLfE6qRmbmJ9vfsWvWUlnwpkYhHXJKMmhBNnZCVw=;
 b=qJPYLiUSaCA3NywTV+9vozf/jjedRQjYLZayWAcn7xnHsgKVwSIYHG9wCbvVEZqSCs
 mHjgVXoLtQPIBm6flNRLxJkIUCjkjDWLb+ze3yuJLfW0h2KJGAZxMtIv/2I0xiA+KSWD
 8d3jfQ9B147WVpEgRuAL2v9DRgxsMli44kuS2TEedEMxbmyArutLNSMB93RicMleDPUj
 86t+ZjzfxZ94S35EmP12ofj71cH0TxvqVLhd8bsJA9SDXKKQMTT/EE+Vkpe+wN/aC8Ge
 EpWOBkgZKrkwgDBysdiIoAxcu3Bkj2pVL0U0xoKvu3GPSdrSaxU6HqL+fZ8Lo4nsiGM6
 vZjA==
X-Gm-Message-State: ANoB5plV5DE/US4FK76bpgLfbnwB39UexdzyQUnIORwU8PA6aHqjls2N
 ybwy9efO/aqujUkaJlHZBgm8hbJ/hbr2Oegm3iVUa5EiTCjywXj9RDyu0wZl+jS2/GsN5Gd5y3U
 4C4amZb2w3zA2A73eDK1F+vr+EqDN
X-Received: by 2002:a5d:6f11:0:b0:242:70f0:9196 with SMTP id
 ay17-20020a5d6f11000000b0024270f09196mr33065570wrb.45.1671529055091; 
 Tue, 20 Dec 2022 01:37:35 -0800 (PST)
X-Google-Smtp-Source: AA0mqf5A94U6u6cGzamMmT1GgT+wuXQtFEvsTtiTSWk5LQnUafJiCwGKhccUzi3oD1XqGmcmR4z97A==
X-Received: by 2002:a5d:6f11:0:b0:242:70f0:9196 with SMTP id
 ay17-20020a5d6f11000000b0024270f09196mr33065558wrb.45.1671529054902; 
 Tue, 20 Dec 2022 01:37:34 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 az17-20020adfe191000000b00241bd7a7165sm12231930wrb.82.2022.12.20.01.37.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:37:34 -0800 (PST)
Message-ID: <6a6e3bfb-d320-8ccf-f047-55999552c8fc@redhat.com>
Date: Tue, 20 Dec 2022 10:37:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-13-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-13-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 12/18] fbdev/offb: Allocate struct offb_par
 with framebuffer_alloc()
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
> Move the palette array into struct offb_par and allocate both via
> framebuffer_alloc(), as intended by fbdev. No functional changes.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

