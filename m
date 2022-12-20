Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD889651D78
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 10:34:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E50710E35F;
	Tue, 20 Dec 2022 09:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACD9C10E361
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 09:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1671528836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fVZMgP3yXzrzjDhtvsp+tMbNXy6x5UaaSyaJJzd0B0g=;
 b=e9TRzOd1GM9BZy7nwUeFTzI2fs+3M19xRDSziQ7diozTs1U+dG32FnVeAxrndE+2rscfhV
 6sZIO//1MHH0nEQuphwpdWDT0gBLnOIcHFvZ+SFr87IT8IcNP5ab2G/BsS2RWSaCKvsWYp
 tTh9xmVYGQ0Qy2zAiARa2HEbY71FJ/E=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-22-hFhrcurdNY-tQKU60jNBkw-1; Tue, 20 Dec 2022 04:33:55 -0500
X-MC-Unique: hFhrcurdNY-tQKU60jNBkw-1
Received: by mail-wm1-f70.google.com with SMTP id
 t24-20020a1c7718000000b003d1fd0b866fso2403814wmi.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 01:33:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fVZMgP3yXzrzjDhtvsp+tMbNXy6x5UaaSyaJJzd0B0g=;
 b=Tj73Z1dOOcAa0QwpJO/MH+OF4EpvacgeA5PokpeY4SI3d5Ur4+uy5SdsZhEbH5I1IH
 VmZa7+aEzmnP0PRx/l3JOgWFT9RyhGZtTgPRgu7FrkW/8Ov6ZVOIht+rIVy8OpQNDQBD
 +oyxnD76JOkX3g8d6oTDfLI1hM6D06dQg9iaCWu3Kyojh4dfuZabyEmcPhM6yiA04wr1
 xfF5srV9r/tKGjgTipJR0DhhPCcYcwR92Yt+cW02kgQIR9nyECTdLgkYVH7VAaB5aXbO
 FtJWxH3KHkHYn3nnWMAS1j8n0y8GZl57VdryD7DPi/yjLoOBNDswfBB1V0EWR311qkDU
 piWw==
X-Gm-Message-State: AFqh2kp/ZsMaSxkXf9FtHpheV9PV3HHB1RQNbF38d7/po2pLguiHEpgJ
 DXt+y3/xCTPX9Z/QiXhCXfsxgFk/VirfgSdovn+Hno4pPkDf7xdCLpHiZlyN9+FnWN0qe6m0hQZ
 IJxxFcRMEAkiGl23Kba3+JwfQXQOX
X-Received: by 2002:a05:600c:b59:b0:3d6:4ba9:c111 with SMTP id
 k25-20020a05600c0b5900b003d64ba9c111mr241657wmr.40.1671528834238; 
 Tue, 20 Dec 2022 01:33:54 -0800 (PST)
X-Google-Smtp-Source: AMrXdXsPd0UOZgaV2usn9FHot5yPumcQTQ0WuQ30V9fRvNh8brfS+c9839HDYnoS7vxUK6doBa1czQ==
X-Received: by 2002:a05:600c:b59:b0:3d6:4ba9:c111 with SMTP id
 k25-20020a05600c0b5900b003d64ba9c111mr241645wmr.40.1671528834044; 
 Tue, 20 Dec 2022 01:33:54 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 bd26-20020a05600c1f1a00b003d070e45574sm15319946wmb.11.2022.12.20.01.33.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Dec 2022 01:33:53 -0800 (PST)
Message-ID: <8f63bb10-e1e4-0111-5032-dca1b4a2f437@redhat.com>
Date: Tue, 20 Dec 2022 10:33:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>, daniel@ffwll.ch,
 airlied@gmail.com, deller@gmx.de
References: <20221219160516.23436-1-tzimmermann@suse.de>
 <20221219160516.23436-11-tzimmermann@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20221219160516.23436-11-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 10/18] fbdev/efifb: Add struct efifb_par for
 driver data
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
> The efifb_par structure holds the palette for efifb. It will also
> be useful for storing the device's aperture range.
> 
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

