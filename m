Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D498F4DE
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2024 19:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC6F10E23A;
	Thu,  3 Oct 2024 17:10:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="TqcSFOgq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A0910E219
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2024 17:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1727975438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3TUpUWDff61umzzNctkBT/nE/LxkaiRdHSEY2M1EV1U=;
 b=TqcSFOgqSWDeRc1AIQ8Qoygf4RYIMLbVKYTKfJ3nVEC+kUbPpUs6eoyQ1YZbba2BFGFOtG
 JSkwFt4noNAnIWHsRTvSiFaRX83FVQLsobOBYuYU0BVqNc/xRrzOUseDn3zcbpe2VQExS7
 QeCC67LnqTzJYF50OQPiI/NiO5N4Mpk=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-395-PjOnZiDfM0SpRrAbC-umfQ-1; Thu, 03 Oct 2024 13:10:37 -0400
X-MC-Unique: PjOnZiDfM0SpRrAbC-umfQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-37cd2044558so561203f8f.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 03 Oct 2024 10:10:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727975436; x=1728580236;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=3TUpUWDff61umzzNctkBT/nE/LxkaiRdHSEY2M1EV1U=;
 b=jHLwu/zzd9Ayms37HX8t9nN33y5pYT5/23hyFJYpXKjM6jajpJWPS//1gI6fTugQu7
 aCMJoqmAoUT/gSkoY3f0KQMUjHFlukGA+HwQO7DQgqPeCBludwEzSLrBpLAPC7Sit+rs
 /oJG+ApggoL8J0tjzz3GNWGzrGsvRHNWrDVzFS0XkWxxFTc7/cIVU3ZRN4e5+Tn4NRSi
 EoA9bDyFVc8tsGvRo4rz7IPdphV/qugBmMcF2pr84EyZBAcvuZCbk8zqwsAZQVrqELNk
 9r6sJSySLmtaYW/ByRcSKOPO0DHBLMCUey/i9Wa7W64m3aIFQFkreJ+LWeQSb6Nybbm3
 16GQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCW9fPMNr3VpleCskaCX34yJAqaZ9Tjw2psLXn/QyDpYKNon1zE3Ns6zJ+FdFoyxy+iatrYGcTYpmfA=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxD/BAGdwNLBJIjmAE0kkl/qNcSJaDmfdUTvCVnVyXYRj88+7ty
 q+3FpJyF/kJJx9Fe3zEQP91WLlmNIqJtbUMwkrXPG3L+L8PrBVgfP1rOAn1aAPAbjK2B5ciSCWN
 Vg6q3+bb6JtB6FMpv55diypLRt9/JBFKO5zcQ8YPCAicZmZa3YrGMw5OePDw/PJqF5Q==
X-Received: by 2002:a05:6000:1243:b0:374:c64e:3fe7 with SMTP id
 ffacd0b85a97d-37d0eaf2263mr54292f8f.59.1727975436116; 
 Thu, 03 Oct 2024 10:10:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHfzUmJePTytDjbiR5l9ifWG/PuzBprmfDmMU4fpbK/E1FnN9Y2LUkOOPCbAXDDAsKb7+JrkA==
X-Received: by 2002:a05:6000:1243:b0:374:c64e:3fe7 with SMTP id
 ffacd0b85a97d-37d0eaf2263mr54279f8f.59.1727975435696; 
 Thu, 03 Oct 2024 10:10:35 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37d082d230dsm1674791f8f.94.2024.10.03.10.10.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 03 Oct 2024 10:10:34 -0700 (PDT)
Message-ID: <f78895ac-3d64-4ef9-bd85-c5f94e24cbac@redhat.com>
Date: Thu, 3 Oct 2024 19:10:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 00/11] drm: Introduce DRM client library
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20241002131306.288618-1-tzimmermann@suse.de>
From: Jocelyn Falempe <jfalempe@redhat.com>
In-Reply-To: <20241002131306.288618-1-tzimmermann@suse.de>
X-Mimecast-Spam-Score: 0
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

On 02/10/2024 15:04, Thomas Zimmermann wrote:
> With the next DRM client coming soon (drm_log) and most of DRM's
> fbdev emulation consolidated in a few places, it's time to provide
> a single place for the clients.
> 
> The new module drm_client_lib.ko stores most of the in-kernel client
> code. It is designed such that drivers can opt into client support,
> but the presence of the client module depends on the user's kernel
> configuration. Without selected clients, no client module will be
> build.

I think I would rather rename drm_client.c to drm_client_lib.c, and have 
a drm_client.ko. Users may need to interact with module name more than 
with C file.

> 
> Version 2 of this patchset is a significant rework of the patches,
> so there are no R-bs kept. The base client code and client event
> handling remains in the DRM core. This simplifies module dependencies.
> But suspend and resume are now handled in client helpers instead of
> direct calls to fbdev emulation. This breaks a cyclic dependency
> among the involved modules. It also allows any client to process
> suspend and resume events.

Thanks a lot for this work. I rebased my drm_log proof of concept on top 
on this v2, and it works great.
I think I can add a suspend/resume callback to drm_log, just marking the 
console as CON_SUSPENDED should work, I will test that shortly.


Best regards,

-- 

Jocelyn

> 
> v2:
> - rework of the overall design
> - keep base client code in DRM core.
> 
> Thomas Zimmermann (11):
>    drm/i915: Select DRM_CLIENT_SELECTION
>    drm/xe: Select DRM_CLIENT_SELECTION
>    drm/fbdev: Select fbdev I/O helpers from modules that require them
>    drm/fbdev: Store fbdev module parameters in separate file
>    drm/client: Move client event handlers to drm_client_event.c
>    drm/client: Move suspend/resume into DRM client callbacks
>    drm/amdgpu: Suspend and resume internal clients with client helpers
>    drm/nouveau: Suspend and resume clients with client helpers
>    drm/radeon: Suspend and resume clients with client helpers
>    drm/client: Make client support optional
>    drm/client: Add client-lib module
> 
>   Documentation/gpu/drm-client.rst              |   3 +
>   drivers/gpu/drm/Kconfig                       |  39 +++-
>   drivers/gpu/drm/Makefile                      |  20 +-
>   drivers/gpu/drm/amd/amdgpu/Kconfig            |   1 +
>   drivers/gpu/drm/amd/amdgpu/amdgpu_device.c    |  22 +-
>   drivers/gpu/drm/drm_client.c                  | 121 -----------
>   drivers/gpu/drm/drm_client_event.c            | 195 ++++++++++++++++++
>   drivers/gpu/drm/drm_client_setup.c            |   3 +
>   drivers/gpu/drm/drm_drv.c                     |   2 +-
>   drivers/gpu/drm/drm_fb_helper.c               |  31 ---
>   drivers/gpu/drm/drm_fbdev_client.c            |  30 ++-
>   drivers/gpu/drm/drm_file.c                    |   2 +-
>   drivers/gpu/drm/drm_internal.h                |   7 +
>   drivers/gpu/drm/drm_kms_helper_common.c       |  38 ++++
>   drivers/gpu/drm/drm_modeset_helper.c          |  14 +-
>   drivers/gpu/drm/drm_probe_helper.c            |   2 +-
>   drivers/gpu/drm/i915/Kconfig                  |   1 +
>   .../drm/i915/display/intel_display_driver.c   |   2 +-
>   drivers/gpu/drm/nouveau/nouveau_display.c     |   8 +-
>   drivers/gpu/drm/nouveau/nouveau_vga.c         |   2 +-
>   drivers/gpu/drm/radeon/radeon_device.c        |  19 +-
>   drivers/gpu/drm/radeon/radeon_fbdev.c         |   6 -
>   drivers/gpu/drm/radeon/radeon_mode.h          |   3 -
>   drivers/gpu/drm/xe/Kconfig                    |   1 +
>   include/drm/drm_client.h                      |  39 +++-
>   include/drm/drm_client_event.h                |  27 +++
>   26 files changed, 423 insertions(+), 215 deletions(-)
>   create mode 100644 drivers/gpu/drm/drm_client_event.c
>   create mode 100644 include/drm/drm_client_event.h
> 

