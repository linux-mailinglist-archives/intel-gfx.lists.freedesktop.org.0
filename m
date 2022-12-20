Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38EE2651D07
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B010810E341;
	Tue, 20 Dec 2022 09:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 280E710E347
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671527905;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=CYPgbcL3YuPfVJ8jSVJcJdgIz73ia329cUV03P7B6jw=;
 b=bOUsTSXOlMEW133RLX9MsRAB4811MCey9OTVJnaZ3eEA571/b9gwHV5B6WNXf7edkud6xs
 liub5ALFpBwL4WsnGXAk11X1xIusxqBUe/EhDYsNZng3mc4Vtk8L9wkFIzNvPr8S7+wvi8
 YSK7xkp65bgbPBvFto8A5VDC6mv4peo=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-70-sJqmMHpJMMyWFM7GLhPy-g-1; Tue, 20 Dec 2022 04:18:24 -0500
X-MC-Unique: sJqmMHpJMMyWFM7GLhPy-g-1
Received: by mail-wr1-f69.google.com with SMTP id
 a7-20020adfbc47000000b002421f817287so2066881wrh.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:18:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=CYPgbcL3YuPfVJ8jSVJcJdgIz73ia329cUV03P7B6jw=;
 b=ntDAnHO3dhBIrRMtehjet7c4vmnREuaFrqQRjOwcgE3gGTVyaT4JTzHT3JIIxe2uBQ
 9bp6mmSzk61QqxH35sNumZ3Ed4Rkxved1u4XSFM7VbhO5ROUd6XtDHJYwImxEShQSjRM
 2Cvrtgv88e6PSjR0N0zdBWiu1aPUValzdSAODoDL5qlvwD7gyB7nnlyqDIYCz6FIUcC2
 tQgB8d+LaPiGEz9exbHw7bJcDM8G2U7JjN7zyRhmntw/IXeiJA8bFdKSnm8vNPcaYyzb
 DX7vy3DaHdbBQ4QMC6s6SS3kDuF+U4ycLkW4Oz6WI+KKS/7+RfJsF3//KTRmbILzw6Wo
 YTcA==
X-Gm-Message-State: ANoB5pkZodT1GB86FzBNZBfj6V1f6fRvno31vjUmJ09hv1DXh6pFCEbp
 lK9avudiJooqN/RTSe9L2ypiF/xcHfLuo56EN2qilKzFnd0QSok2I5MU/bETp7YcRbUYLDn1ZwF
 +UHo3a5cFU9hBaWL+gUiSaxix2Xxu
X-Received: by 2002:a05:600c:4688:b0:3d0:480b:ac53 with SMTP id
 p8-20020a05600c468800b003d0480bac53mr34783507wmo.12.1671527903072; 
 Tue, 20 Dec 2022 01:18:23 -0800 (PST)
X-Google-Smtp-Source: AA0mqf7a6jFw63UWWlEAcRGouWqv0+PyfmsRgEqFDZ0lDKi9NgqR6nR2LVLem8I8AFhmP6J9qXEYGA==
X-Received: by 2002:a05:600c:4688:b0:3d0:480b:ac53 with SMTP id
 p8-20020a05600c468800b003d0480bac53mr34783491wmo.12.1671527902879; 
 Tue, 20 Dec 2022 01:18:22 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 f24-20020a1c6a18000000b003b95ed78275sm14622837wmc.20.2022.12.20.01.18.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:18:22 -0800 (PST)
Message-ID: <3593e206-7c89-5cfe-1aca-d805ca76135e@redhat.com>
Date: Tue, 20 Dec 2022 10:18:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-4-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-4-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 03/18] drm/gma500: Do not set struct
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
> not set the values in gma500.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

