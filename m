Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA6D651D36
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424DD10E356;
	Tue, 20 Dec 2022 09:22:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96D3010E353
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528149;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kA4MxY/xt1b965fBBWiuXbuP8HCDa5veURhTEDS4ghc=;
 b=HEqdrtOb4dhOeFzHEt0A6Ilyx5PXgy78PT+Ar67DoKc47kCxKNiVKzqqPQ+9viSnhI+oh4
 2ifrTFnaMfKAiYFhJ6l1AfoxVELxHrMQND8xRgYU3fzIBLvpizzgKoSF4oikg7d/4l2Gf9
 lTOSasTbdQdw9PMM9z3Am5eaPVNpewY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-497-95oxuO0BP4CFe4oc5R7aeA-1; Tue, 20 Dec 2022 04:22:26 -0500
X-MC-Unique: 95oxuO0BP4CFe4oc5R7aeA-1
Received: by mail-wr1-f71.google.com with SMTP id
 v14-20020adf8b4e000000b0024174021277so2092579wra.13
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:22:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=kA4MxY/xt1b965fBBWiuXbuP8HCDa5veURhTEDS4ghc=;
 b=MBASyvawCpVQpCn/lXw9IX2Of7jYaFaoY1lY3LoJzjOq0YXpZtvAaLuw8KgIlE9E5F
 44UBT2tFRPgV6Q7lm5sxZa6BOhzMBfPt0ZZLxkIyRUC63TRwae0E4+Dw5rVEcoVDnkoH
 bmsYxR7lSz/ks5xvCCcPfQR+FXKKPg1skRIJe1q0hp310osQnRtQGSVw6vAngt9rhz0x
 PwZ0x+WOEqAaPRQLUj3I6ffQTilRvZdY96LBSr5vrHvqH3tLYuSAufqczkIrQOnw9RVN
 KjYSRJy2R6jS2Ep4YIkdez9goV8k34/881Wz7/WjHSeS25k0otubV+j2orj+MiEfvwgV
 JfqA==
X-Gm-Message-State: ANoB5plXyvWPSnqojXKNhBpmnbkfSJcl7YHXYqilJd5KBQ/rgEfvYjJL
 62RC3Q/efegjHUGJK+Ma6Ya0kY6CLlX4p7EvMQbNirf1h3ICuyTfxvXcp3cs2kMMmoFf6LLcgxk
 f1jUULyYhJVQYvkKmCULyDxw3ny+5
X-Received: by 2002:a05:600c:4e14:b0:3d2:4234:e8fe with SMTP id
 b20-20020a05600c4e1400b003d24234e8femr16310099wmq.19.1671528145672; 
 Tue, 20 Dec 2022 01:22:25 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7D1EDbJcc4QdZIvJK/Fm89Zwd1JGt/mFkIkcyx0LysVtTks8a6AInaJGEHTgImFr5Ff5SiAA==
X-Received: by 2002:a05:600c:4e14:b0:3d2:4234:e8fe with SMTP id
 b20-20020a05600c4e1400b003d24234e8femr16310078wmq.19.1671528145416; 
 Tue, 20 Dec 2022 01:22:25 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 m1-20020a1c2601000000b003d1d5a83b2esm22817348wmm.35.2022.12.20.01.22.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:22:25 -0800 (PST)
Message-ID: <d3370b05-cf1f-c3b2-678b-30708c549acb@redhat.com>
Date: Tue, 20 Dec 2022 10:22:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-7-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-7-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 06/18] drm/fb-helper: Do not allocate unused
 apertures structure
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
> The apertures field in struct fb_info is not used by DRM drivers. Do
> not allocate it.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

