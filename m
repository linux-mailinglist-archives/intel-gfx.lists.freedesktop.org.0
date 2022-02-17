Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A62D4B9C7D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 10:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73AA910EC9D;
	Thu, 17 Feb 2022 09:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 754CF10EC8B
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1645091518;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GjAkGPjCABeyW0Gcd3V5/Yp+7WRVwbV3GUQOEkRq3r4=;
 b=e7cwtOyBqDM5FL5qtdoQfSuXizTaN92mi2uUprXAsBP4PIdilV0zTAP8dQv23i9GKzonCI
 o5tarvYMh5MyDRkRgtRF0Ni3kYKTrEZ1+i+YeU4HR7LyRvN7vVzPHv1420YmX/gmP3EQ2f
 MP1PK9bKqVXybeaJtV/2G/2oLUnzJsA=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-639-1nz6tW3WNdaVhHuxVLtkUA-1; Thu, 17 Feb 2022 04:51:57 -0500
X-MC-Unique: 1nz6tW3WNdaVhHuxVLtkUA-1
Received: by mail-wm1-f71.google.com with SMTP id
 125-20020a1c0283000000b0037bf720e6a8so3990221wmc.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 01:51:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=GjAkGPjCABeyW0Gcd3V5/Yp+7WRVwbV3GUQOEkRq3r4=;
 b=LEgwQUNKpKUQOvubDi9B7EJjTwDRUmDreceQi9YQcPVcZucFymXJOT/GaTViU1fxis
 ZT89QSj7FRwHE1RAeixH1jZ5nBt+4fFgEdoJKsIjHJvjyYAmwR7rseuQB5H7gsl8INTo
 Gihp7ZubYyIxc+shbz2QW41RZZxfoDn140ts0Z/IdFGzy5KL4y2B12PzrGvl+5AFZ5X3
 yys/jJp4QwQ3lbt+ol6BtgRrMlrYLO5+uHXIUVEt5SxKZvwnLx6K25t1QMvlipgWBk+q
 chaODQVMaXz96oXj9VpUhLYmdiDyNs0KvOxhiRNT4Sbnhy4qNM7OqNWO1cvo0Y2HvwLj
 O5KQ==
X-Gm-Message-State: AOAM533K3WqHjwIy9tAuCuIDoWdoCHmCoOgxibpcJ2bhAIt9NperZYPX
 vz0/BiVRGJ8gBCWstq7qH2eB2JSpz5sw3QD7WM1gvED5qcYE+y3AqG6EggtP4QeewCS+iDXi2VV
 D/Px5Ig3P8TOy06UEWBRocASftRtx
X-Received: by 2002:adf:f44e:0:b0:1a9:f21:2250 with SMTP id
 f14-20020adff44e000000b001a90f212250mr1658094wrp.263.1645091515963; 
 Thu, 17 Feb 2022 01:51:55 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyZllfGRweBQ8shZ+yBvcfWtgaeNv0G0mGqBezZOKeBuh1xIW/cWJX8HtYpgXMY57Gpy8G+/w==
X-Received: by 2002:adf:f44e:0:b0:1a9:f21:2250 with SMTP id
 f14-20020adff44e000000b001a90f212250mr1658084wrp.263.1645091515744; 
 Thu, 17 Feb 2022 01:51:55 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id n7sm688930wmd.30.2022.02.17.01.51.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 17 Feb 2022 01:51:55 -0800 (PST)
Message-ID: <dc350aa0-9f59-36c2-9534-f0798f3d0d6a@redhat.com>
Date: Thu, 17 Feb 2022 10:51:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas De Marchi <lucas.demarchi@intel.com>
References: <202202171455.bclm1YBC-lkp@intel.com>
 <20220217063625.sm5ua5xf4jo2ekku@ldmartin-desk2>
 <79301ef2-03d4-ca96-3d7f-6f9b80f319e1@redhat.com>
 <20220217092545.4zpjnh344fmrcg26@ldmartin-desk2>
 <95cce34d-fa67-2da9-f065-a6dacfa980d6@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <95cce34d-fa67-2da9-f065-a6dacfa980d6@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [drm-tip:drm-tip 4/8]
 drivers/gpu/drm/solomon/ssd130x.c:451:18: error: incomplete definition of
 type 'struct dma_buf_map'
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
Cc: kbuild-all@lists.01.org, intel-gfx@lists.freedesktop.org,
 llvm@lists.linux.dev, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/17/22 10:41, Thomas Zimmermann wrote:
> Hi
> 
> Am 17.02.22 um 10:25 schrieb Lucas De Marchi:
> [...]
>>> $ git grep "TODO: Use mapping abstraction properly" | wc -l
>>> 15
>>>
>>> If you point me the proper way, I'll be happy to post a patch to 
>>> change it.
>>
>> It depends what you want to do with the address. There are APIs to copy
>> from/to. I also added a few to read/write to an offset. It seems the
>> problem here is that you need to pass that to a helper,
>> drm_fb_xrgb8888_to_mono_reversed(). I think the proper solution would be
>> to change the helper to accept an iosys_map* as argument rather than a
>> void*.
> 
> There are several of these TODOs in the DRM code, because our 
> format-conversion helpers are still from the time before 
> dma_buf_map/iosys_map. The easiest workaround is to take the raw pointer 
> and give it to them. One day, DRM's public blit and conversion 
> interfaces will take an iosys_map and handle the different memory types 
> internally.
>

Yes, as Lucas mentioned there are copy from/to helpers but didn't want to
use it because would be another unnecessary copy just to avoid to take the
map->vaddr raw pointer and pass directly to the format-conversion helper.

> Javierm, that's when the internal _line() helpers will become useful. 
> They can use system memory directly, and for I/O memory the 
> blit/conversion helpers allocate an internal temporary per-line buffer. 
> The code you made for the new driver has this designed outlined already.
>

Indeed. I understand now what you meant when proposing to add those helpers.
 
> Best regards
> Thomas
> 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

