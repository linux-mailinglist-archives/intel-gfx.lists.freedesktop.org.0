Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0550828A9F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 18:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA9810E496;
	Tue,  9 Jan 2024 17:01:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 182AF10E496
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 17:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1704819678;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iPJD5Y/JUAijIAEh4AaeHvftl8qt3fo8LRS92q+SjAo=;
 b=WXNYAAYAqN7LgN6WD4VXnzVkOVKZ0d48pfyPRb19meBidtt2F+1P7ea8p8BR3/2r1jPYUo
 R5fjOeSBmmQ/6r6eL0jvYVDia+5Yx/6TZlnxIUgE8k/h1PBJwKsadY4xvNJXfcq6KjPGWa
 6gNeJwifbfpf9GyhGHdbLOvvTXD2cCw=
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-1-Ulju7qb-Okmf-UiaAAzw0Q-1; Tue, 09 Jan 2024 12:01:16 -0500
X-MC-Unique: Ulju7qb-Okmf-UiaAAzw0Q-1
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-6800a9361a8so65852606d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jan 2024 09:01:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1704819676; x=1705424476;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iPJD5Y/JUAijIAEh4AaeHvftl8qt3fo8LRS92q+SjAo=;
 b=IsLc5h8RQJomUTejSjehbF+0nGaLoaAqRBfSFNppxavoMPT3Ol4eGeGfh7ESzctyIE
 cUszSrY+rlAX2YL8HVxvf/W0j6OEcjw5ERfxLX6PcyLrJPyU9VYHKLwMIeO2Mtg6xOYn
 2CkXqPr3xKhqu2wYVZvNgMAbZN68h+0Ye+wJODL3W/Avd3Zemj9+z2aRNvL+Gq7H+fUo
 oAASbrrVURpzhD/i/2E7E5d+eVfapfp4M+awOTXSvXB/s7IKVBLBnD47yQ0y2Dc/2Ov7
 YfRrSVp9qERCzPfVLzWKqb15UNubJ8+gb9yOS5yAiBhaLaVBv4yOG0oV/8KaurSWPMCA
 YCKg==
X-Gm-Message-State: AOJu0Yy++I4JlItjPwbo943UMDUWswUzcxQn/SO3zrWSGumgPS+xjTk7
 TJSRMvjPzGDaoMZfkrMa76lfQvgq9A4UKOw5NuHOLQkWFpzrvh1OrGZyoZlCG6pE87Q9oGu5mUw
 w6LCUykb4Jb8Eyx0uGY96JpNt1fQCgtW9Z0fU
X-Received: by 2002:ad4:5d61:0:b0:67f:7109:786e with SMTP id
 fn1-20020ad45d61000000b0067f7109786emr8107856qvb.123.1704819676328; 
 Tue, 09 Jan 2024 09:01:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHnUqM22+GhVZwe7FhzzDIvyc0qfTBRQqUSGBfzFwlIRvdJVaCiNeoegRcDWdEXvKLK5p4oRA==
X-Received: by 2002:ad4:5d61:0:b0:67f:7109:786e with SMTP id
 fn1-20020ad45d61000000b0067f7109786emr8107837qvb.123.1704819675939; 
 Tue, 09 Jan 2024 09:01:15 -0800 (PST)
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 bo4-20020a05621414a400b00680ce23bc29sm1032598qvb.71.2024.01.09.09.01.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jan 2024 09:01:15 -0800 (PST)
Message-ID: <6f343c87-fbb4-4779-aced-2e0df7b18e63@redhat.com>
Date: Tue, 9 Jan 2024 18:01:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/nouveau: include drm/drm_edid.h only where needed
To: Jani Nikula <jani.nikula@intel.com>
References: <20240104201632.1100753-1-jani.nikula@intel.com>
 <95f6815c-1ff5-4c89-b8c6-0445834a0083@redhat.com> <87ttnmx1wn.fsf@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <87ttnmx1wn.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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
Cc: nouveau@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Karol Herbst <kherbst@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/9/24 10:59, Jani Nikula wrote:
> On Mon, 08 Jan 2024, Danilo Krummrich <dakr@redhat.com> wrote:
>> On 1/4/24 21:16, Jani Nikula wrote:
>>> Including drm_edid.h from nouveau_connector.h causes the rebuild of 15
>>> files when drm_edid.h is modified, while there are only a few files that
>>> actually need to include drm_edid.h.
>>>
>>> Cc: Karol Herbst <kherbst@redhat.com>
>>> Cc: Lyude Paul <lyude@redhat.com>
>>> Cc: Danilo Krummrich <dakr@redhat.com>
>>> Cc: nouveau@lists.freedesktop.org
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> Reviewed-by: Danilo Krummrich <dakr@redhat.com>
> 
> Are you going to pick this up via the nouveau tree, or shall I apply it
> to drm-misc-next?

We don't maintain a separate tree, hence feel free to apply it to drm-misc-next.

- Danilo

> 
> BR,
> Jani.
> 
>>
>>> ---
>>>    drivers/gpu/drm/nouveau/dispnv50/head.c     | 1 +
>>>    drivers/gpu/drm/nouveau/nouveau_connector.h | 2 +-
>>>    2 files changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/nouveau/dispnv50/head.c b/drivers/gpu/drm/nouveau/dispnv50/head.c
>>> index 5f490fbf1877..83355dbc15ee 100644
>>> --- a/drivers/gpu/drm/nouveau/dispnv50/head.c
>>> +++ b/drivers/gpu/drm/nouveau/dispnv50/head.c
>>> @@ -32,6 +32,7 @@
>>>    
>>>    #include <drm/drm_atomic.h>
>>>    #include <drm/drm_atomic_helper.h>
>>> +#include <drm/drm_edid.h>
>>>    #include <drm/drm_vblank.h>
>>>    #include "nouveau_connector.h"
>>>    
>>> diff --git a/drivers/gpu/drm/nouveau/nouveau_connector.h b/drivers/gpu/drm/nouveau/nouveau_connector.h
>>> index a2df4918340c..0608cabed058 100644
>>> --- a/drivers/gpu/drm/nouveau/nouveau_connector.h
>>> +++ b/drivers/gpu/drm/nouveau/nouveau_connector.h
>>> @@ -35,7 +35,6 @@
>>>    
>>>    #include <drm/display/drm_dp_helper.h>
>>>    #include <drm/drm_crtc.h>
>>> -#include <drm/drm_edid.h>
>>>    #include <drm/drm_encoder.h>
>>>    #include <drm/drm_util.h>
>>>    
>>> @@ -44,6 +43,7 @@
>>>    
>>>    struct nvkm_i2c_port;
>>>    struct dcb_output;
>>> +struct edid;
>>>    
>>>    #ifdef CONFIG_DRM_NOUVEAU_BACKLIGHT
>>>    struct nouveau_backlight {
>>
> 

