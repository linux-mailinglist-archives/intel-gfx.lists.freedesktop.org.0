Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F3AA04410
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 16:18:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F85610EAFD;
	Tue,  7 Jan 2025 15:18:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="dTzU7dal";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E58CD10EAFD
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2025 15:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1736263116;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rUplG4F0XeXedPiFUz73Lrgro3oMqYtlKZ5uOAi7unA=;
 b=dTzU7dalRbiwr/a5lWJiCQ5p6L+dTKFCQi6ZQTYxLbYkupnNAn0+19upqrfzpCw3BwuARB
 LJCL2IDlDiZ4WuueMYcq4cd3iCww2TsZi8ZSn6dor9lNNNnAHFsfXDfOCJZc/SQYBL/eb1
 ikjLnSp/HJF2EROyTPJg1xtUY6i2iNk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-oxA8lvLCMxa1vHGdGo5DGA-1; Tue, 07 Jan 2025 10:18:34 -0500
X-MC-Unique: oxA8lvLCMxa1vHGdGo5DGA-1
X-Mimecast-MFC-AGG-ID: oxA8lvLCMxa1vHGdGo5DGA
Received: by mail-wm1-f72.google.com with SMTP id
 5b1f17b1804b1-4361efc9dc6so86601545e9.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jan 2025 07:18:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736263113; x=1736867913;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=rUplG4F0XeXedPiFUz73Lrgro3oMqYtlKZ5uOAi7unA=;
 b=aPxq1v59Cdq3fcaXSYCgajfEYZW2eOzx8is1tOVChO1qBB5P2iMyiZ0t7XYRdK4/cR
 yycbPFp00ys6j+QAeUG32qGKaKXLYQ3WKx0EN7XpqY05XAiUGVcg0g3GW0X3NfAuI6sU
 ZcO5lnMZZJdw+j/Is9ZA0gFzA8LFY7P2BT4GreSc82ZTb0fajjU2CUMTPbCZAoTL34k6
 +3bfYdkHVejK7SkY+jgRMvAefpytC8pF3l0YNOx7yerS8oeQlmcgDmmLP8KJ8UfIvkpg
 FoqX9GFjI6FjmBer4tfTKQsjEUh2dXGn4eBIrWTFOclJ4wwCBXMOcgLA1OqQ3zHjYyjd
 ZptA==
X-Gm-Message-State: AOJu0YwCkadzB78azfbAP+SiGwHw+FWJ6fRh5fEnSlEPkMnLba63/H2q
 OCHolrzIw+psiHwJpI5fmQfvJhNfqmYQKwf+/qYEAn1109pJR2N41iaSLT8BygqlGIuUAafmOps
 vDyIuGX42jw4xOHacZOf+ObQdnCprbb8qMBHPe6TIU/3syQP580h4URpYbNMYmbbajg==
X-Gm-Gg: ASbGncuuMwGyz0D2ZVKtxHPb59hzJBzhRpJEaFojbXJdEV7arSyovRO4eoXccL7XbuC
 8COuNYjSXFZytBvBo2Aoq8jTK9MgdEBgCw75A0R92b9iTWCmB8KWAekJET3wSpbKJqMdGUH2tkR
 CAy2pP8U1FGoVSNkrSIO/U25H/zaqMuZdOito+qq8UKruBnM4ojzxtPtHRCII8PzzlZplPfKgR5
 PQJN7JhNKcRT4yzQutpPP8mkiRf7JYOX2Jp/aHwYChc052N9ZegZzja/o7q1hnNclZobXnT4+3z
 lUP/1NBSa4ApbBflurlW
X-Received: by 2002:a05:600c:1994:b0:435:306:e5dd with SMTP id
 5b1f17b1804b1-43668b5dfaamr501387195e9.22.1736263113455; 
 Tue, 07 Jan 2025 07:18:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHimNiTTdzzguuYHGQ8lf7oorYauE7LFqE/pVfbyw+CccfhbHiXVwvu0+s5XK8lqHt82lbpMg==
X-Received: by 2002:a05:600c:1994:b0:435:306:e5dd with SMTP id
 5b1f17b1804b1-43668b5dfaamr501386895e9.22.1736263113060; 
 Tue, 07 Jan 2025 07:18:33 -0800 (PST)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-436611fc762sm597842465e9.11.2025.01.07.07.18.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jan 2025 07:18:32 -0800 (PST)
Message-ID: <6f46535b-1075-4ac7-8809-274dffada2c8@redhat.com>
Date: Tue, 7 Jan 2025 16:18:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/12] drm/{i915,xe}: Run DRM default client setup
To: Thomas Zimmermann <tzimmermann@suse.de>, jani.nikula@linux.intel.com,
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, lucas.demarchi@intel.com,
 thomas.hellstrom@linux.intel.com, simona@ffwll.ch, airlied@gmail.com,
 mripard@kernel.org, maarten.lankhorst@linux.intel.com, javierm@redhat.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20241212170913.185939-1-tzimmermann@suse.de>
 <20241212170913.185939-11-tzimmermann@suse.de>
 <8e175713-2762-4767-86c6-fe0c0b7e8cf2@redhat.com>
 <332ba13f-8dd8-4195-9af2-26b1f18cf1c8@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <332ba13f-8dd8-4195-9af2-26b1f18cf1c8@suse.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: KJ_9twZ_wT1zJbNgPYgSF0D3YpB1qfW9LC0E3bj2mE8_1736263114
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 07/01/2025 15:42, Thomas Zimmermann wrote:
> Hi Jocelyn
> 
> 
> Am 07.01.25 um 13:10 schrieb Jocelyn Falempe:
>> On 12/12/2024 18:08, Thomas Zimmermann wrote:
>>> Rework fbdev probing to support fbdev_probe in struct drm_driver
>>> and remove the old fb_probe callback. Provide an initializer macro
>>> that sets the callback in struct drm_driver according to the kernel
>>> configuration. Call drm_client_setup_with_color_mode() to run the
>>> kernel's default client setup for DRM.
>>>
>>> This commit also prepares support for the kernel's drm_log client
>>> (or any future client) in i915. Using drm_log will also require vmap
>>> support in GEM objects.
>>
>> I've tested this series on an Alderlake laptop, and it effectively 
>> breaks the boot with drm_log on i915. (I can still see the drm_log on 
>> simpledrm, but when it switches to i915, I get a blackscreen, and the 
>> laptop hard freezes).
>> Can we wait to have the proper vmap support in GEM objects, before 
>> merging this series?
>> Or at least prevent drm_log to load on i915, until it is fixed?
> 
> Did you add vmap support as advised here? i915 will not support drm_log 
> without and this series does not add it.
> 
> A patch for vmap functions is at [1], I think.

Thanks a lot, it works much better with this patch :)
That was the missing piece to have drm_log display something on i915.

Best regards,

-- 

Jocelyn

> 
> Best regards
> Thomas
> 
> [1] https://patchwork.freedesktop.org/series/135554/
> 
> 
>>
>> Best regards,
>>
> 

