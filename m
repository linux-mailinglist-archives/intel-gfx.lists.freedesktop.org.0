Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C494A5DD6
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 15:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E480110E410;
	Tue,  1 Feb 2022 14:01:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EE7910E3F7
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 14:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1643724108;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=t0xhLey8NZwZfvq1aWQDBdLCgJjMsiCxuS9yKl0tV4E=;
 b=MkD6nQRY2OZ0VdlKZ2hsjj54s6reAu16xL6TuAK8gtz8ookZ0SzTabDXIbRKLm9yNfzINT
 pqlfhhdLAvX5nYTms64d7xi+oiS4ne052lo5Fjzc254ASmCyP+1/c2ddY+ZYO4Llwyyb6Y
 JRk4XvCcn3oYbiD79Lf81678VdOoxA4=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-536-NElheWoVP7Cskl8fL_Mb2g-1; Tue, 01 Feb 2022 09:01:47 -0500
X-MC-Unique: NElheWoVP7Cskl8fL_Mb2g-1
Received: by mail-wm1-f71.google.com with SMTP id
 7-20020a1c1907000000b003471d9bbe8dso666048wmz.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Feb 2022 06:01:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=t0xhLey8NZwZfvq1aWQDBdLCgJjMsiCxuS9yKl0tV4E=;
 b=bEc8Z89fUsNazzvrkVGgBfjpItvU1YSO1NS8VgysvTrYC86oqdDhc2v2Mnf0SOl5Aw
 sKxz4WY3a4KSsaUbgy3paNGMdQ36brTQ+PKKTKv53UgqBxZNfJ5g8nLoQcCX9Hp0RKUe
 h3p7nj1kV2hegVIDYzAy5UI70ypzRigb36D635o0nLoybskqJZe0sSBCMNZPiZCObI24
 q/iR31gXIa8r8vRPQvti5NcF5Yl8y6S+Q558C990lc7wduwVQCTqsjfR9wUm0y2W6P48
 45HytDCFpXPZ2xln92XxnXut638BFAWm2eOIT7NqF+PA1aj0YYIsxh98ZdtyTruC6TAf
 Kj8g==
X-Gm-Message-State: AOAM532Yo8DA4aWKeqltgZn++a0F4iOIXz5fEuyfWTrKFyP0/ouS8Zrq
 HB3AGkLxRxW3ZvoRoKfJ8p6cxR1nNxrb8Mz8cwGMtC3NpdAtH0EUcXlvhJcx2/aTFYjr8TBCHLQ
 7Q20XaVdxNGEKONZcjj+/sgSQmiP/
X-Received: by 2002:a1c:6a14:: with SMTP id f20mr1907066wmc.177.1643724106143; 
 Tue, 01 Feb 2022 06:01:46 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxiXh7XT/y9EhbXaaYFMW+Z8FLorkbaMP6N2gEv45FSVWMJcQUX+XJyy9OHO0UQo8Hz5UgkJg==
X-Received: by 2002:a1c:6a14:: with SMTP id f20mr1906977wmc.177.1643724105240; 
 Tue, 01 Feb 2022 06:01:45 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id v5sm2032210wmh.19.2022.02.01.06.01.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 01 Feb 2022 06:01:44 -0800 (PST)
Message-ID: <3ebc8a81-a27f-9ab7-d247-5203f286eeb2@redhat.com>
Date: Tue, 1 Feb 2022 15:01:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220131210552.482606-1-daniel.vetter@ffwll.ch>
 <20220131210552.482606-2-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220131210552.482606-2-daniel.vetter@ffwll.ch>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/21] MAINTAINERS: Add entry for fbdev core
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
Cc: linux-fbdev@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@intel.com>,
 Dave Airlie <airlied@gmail.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Gerd Hoffmann <kraxel@redhat.com>, Pavel Machek <pavel@ucw.cz>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sven Schnelle <svens@stackframe.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/31/22 22:05, Daniel Vetter wrote:
> Ever since Tomi extracted the core code in 2014 it's been defacto me
> maintaining this, with help from others from dri-devel and sometimes
> Linus (but those are mostly merge conflicts):
> 
> $ git shortlog -ns  drivers/video/fbdev/core/ | head -n5
>     35  Daniel Vetter
>     23  Linus Torvalds
>     10  Hans de Goede
>      9  Dave Airlie
>      6  Peter Rosin
> 
> I think ideally we'd also record that the various firmware fb drivers
> (efifb, vesafb, ...) are also maintained in drm-misc because for the
> past few years the patches have either been to fix handover issues
> with drm drivers, or caused handover issues with drm drivers. So any
> other tree just doesn't make sense. But also, there's plenty of
> outdated MAINTAINER entries for these with people and git trees that
> haven't been active in years, so maybe let's just leave them alone.
> And furthermore distros are now adopting simpledrm as the firmware fb
> driver, so hopefully the need to care about the fbdev firmware drivers
> will go down going forward.
> 
> Note that drm-misc is group maintained, I expect that to continue like
> we've done before, so no new expectations that patches all go through
> my hands. That would be silly. This also means I'm happy to put any
> other volunteer's name in the M: line, but otherwise git log says I'm
> the one who's stuck with this.
> 
> Cc: Dave Airlie <airlied@gmail.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Linus Torvalds <torvalds@linux-foundation.org>
> Cc: Linux Fbdev development list <linux-fbdev@vger.kernel.org>
> Cc: Pavel Machek <pavel@ucw.cz>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: DRI Development <dri-devel@lists.freedesktop.org>
> Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
> Cc: Claudio Suarez <cssk@net-c.es>
> Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
> Cc: Geert Uytterhoeven <geert@linux-m68k.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Sven Schnelle <svens@stackframe.org>
> Cc: Gerd Hoffmann <kraxel@redhat.com>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

