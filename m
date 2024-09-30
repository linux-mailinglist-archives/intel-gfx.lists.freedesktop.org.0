Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C0A98A13C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 13:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4D3F10E40A;
	Mon, 30 Sep 2024 11:56:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="ZvVsMaTu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60BF910E40D
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 11:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1727697413;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Nxq6YZmkTM9jk+Ql7XyTn1VEIFUz8hPH0AWQSJCQvSo=;
 b=ZvVsMaTuaEbgV8ob0wDGVGTaEY6CGtB9Cdzn0lrLHUxZTamJLbxXKYSwIwd4OQM25R++Hm
 UoZ29VMBs1FHvq6S2IdmuWCV/813LkmenE7EBaLgNWUSBLvBJmJo9YLBuYIxdyt4R+LxFK
 SBI/OMbkwGkQMpsO41kolmGU4RSqkgQ=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-203-eNdtpdIVOWa0-ZkAZGjusA-1; Mon, 30 Sep 2024 07:56:52 -0400
X-MC-Unique: eNdtpdIVOWa0-ZkAZGjusA-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-37ce063895cso675645f8f.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 04:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727697411; x=1728302211;
 h=content-transfer-encoding:in-reply-to:content-language:references
 :cc:to:from:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Nxq6YZmkTM9jk+Ql7XyTn1VEIFUz8hPH0AWQSJCQvSo=;
 b=oonrj1IAH5XXLiifT3nAMhMndVyVhSA6p66UeEyw3i1cETZCwlKe/DdtQc2dqpak4Q
 5j6e6TJhCoBo0c84rLMd9r3Qcm+Xw/8XtSroYnXDezl1SJ2lH/RTG7aiK9YR9UzuShuy
 5ZvAXXu8bsPXyRQD8vKbXp7qPzCVb0cAc0NUgtchsI5HrE8z/6MFqI9iPYFpYlY5ITr7
 64Lv00D/vm9do92875BFztAprsys3onup8ZwHMZh7QKbWPrtFNRHwCXOfyA+PoUXoTgP
 eRb88aqZ5mNdcOJQk7Q4UZbbU+fheiG35aTltjaQ9OcnaSFkQ7WH6UuxoQyNdme/oXP4
 Mt9w==
X-Forwarded-Encrypted: i=1;
 AJvYcCUVscltCC7KtvU5rkydZ7jzQr3SpZfPuH/YTm/UQoja0yRffrSfVlxpqKTekkbJYiZl3O3CAxopVR0=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxfhJA2ma8fC/GZQG2JnJO46onosREVWBSBaXEduND0RtR1urfF
 c0F54N8czsH/sxwirSts1F/ZwO5MzxpTtr9bTpZfJKcAKgtUzSSA0x2VWPiDSI67gWpC4nNoy6l
 r/hwnMofpz49vt7JwGbNg1U0jIcE7sO1eUQnOv5EmNsqQeM7/Z8FgOcjt67ju9hBN5g==
X-Received: by 2002:adf:edc9:0:b0:374:c949:836d with SMTP id
 ffacd0b85a97d-37cd5af262bmr6640393f8f.37.1727697410907; 
 Mon, 30 Sep 2024 04:56:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7Ker1ODfjeRHais1FUnX+sXBUh4Z2ptuze59c02C4GGacFQ0S5KBus9z41ehuRRQegeQBBQ==
X-Received: by 2002:adf:edc9:0:b0:374:c949:836d with SMTP id
 ffacd0b85a97d-37cd5af262bmr6640376f8f.37.1727697410459; 
 Mon, 30 Sep 2024 04:56:50 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:c:37e0:ced3:55bd:f454:e722?
 ([2a01:e0a:c:37e0:ced3:55bd:f454:e722])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-37cd5ef89c5sm8670536f8f.31.2024.09.30.04.56.49
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 30 Sep 2024 04:56:49 -0700 (PDT)
Message-ID: <ce2af7cc-0b7b-42a4-a072-2c1d5a382554@redhat.com>
Date: Mon, 30 Sep 2024 13:56:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm: Add client-lib module
From: Jocelyn Falempe <jfalempe@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, simona@ffwll.ch,
 airlied@gmail.com, javierm@redhat.com
Cc: dri-devel@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
References: <20240927144252.31813-1-tzimmermann@suse.de>
 <20240927144252.31813-6-tzimmermann@suse.de>
 <d4da8265-5bbc-44fc-95cc-385b6216b47b@redhat.com>
In-Reply-To: <d4da8265-5bbc-44fc-95cc-385b6216b47b@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, fr
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 30/09/2024 13:55, Jocelyn Falempe wrote:
> On 27/09/2024 16:37, Thomas Zimmermann wrote:
>> Add drm_client_lib.ko to contain most of the client code. Move the
>> existing client for fbdev emulation into the new module. Protect the
>> new module behind CONFIG_DRM_CLIENT.
>>
>> The Kconfig rules separate the DRM drivers from the DRM clients. A
>> driver can opt into the default clients, but the user configures
>> each client individually. To do so, DRM drivers still select
>> DRM_CLIENT_SELECTION. The option is now a tristate that further
>> selects all dependencies of the enabled DRM clients. There's
>> a menu option for each client. Enabling at least one client also
>> selects DRM_CLIENT_SETUP, so that drivers call drm_client_setup().
>> New DRM clients should depend on DRM_CLIENT_SELECTION.
>>
>> The KMS-helper module now exports handful of symbols needed by the
>> DRM client library.
>>
>> There are existing kernel options in drm_fb_helper.o, so leave this
>> file in the KMS-helper module for now.
>>
>> Amdgpu has an internal DRM client, so it has to select DRM_CLIENT by
>> itself unconditionally.
> 
> Thanks, I found a typo in the Makefile (see below), other than that it 
> looks good to me.

Sorry, this time with the typo below.
> 
> Reviewed-by: Jocelyn Falempe <jfalempe@redhat.com>
> 
>>
>> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
>> ---
>>   drivers/gpu/drm/Kconfig            | 31 ++++++++++++++++++++++++------
>>   drivers/gpu/drm/Makefile           | 19 +++++++++++++-----
>>   drivers/gpu/drm/amd/amdgpu/Kconfig |  1 +
>>   drivers/gpu/drm/drm_client.c       |  3 +++
>>   drivers/gpu/drm/drm_dumb_buffers.c |  2 ++
>>   drivers/gpu/drm/drm_file.c         |  2 ++
>>   drivers/gpu/drm/drm_framebuffer.c  |  2 ++
>>   drivers/gpu/drm/drm_gem.c          |  2 ++
>>   8 files changed, 51 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
>> index 88b2ba55fe16..379fccf3a6ea 100644
>> --- a/drivers/gpu/drm/Kconfig
>> +++ b/drivers/gpu/drm/Kconfig
>> @@ -9,8 +9,6 @@ menuconfig DRM
>>       tristate "Direct Rendering Manager (XFree86 4.1.0 and higher DRI 
>> support)"
>>       depends on (AGP || AGP=n) && !EMULATED_CMPXCHG && HAS_DMA
>>       select DRM_PANEL_ORIENTATION_QUIRKS
>> -    select DRM_KMS_HELPER if DRM_FBDEV_EMULATION
>> -    select FB_CORE if DRM_FBDEV_EMULATION
>>       select HDMI
>>       select I2C
>>       select DMA_SHARED_BUFFER
>> @@ -209,21 +207,40 @@ config DRM_DEBUG_MODESET_LOCK
>>         If in doubt, say "N".
>> +config DRM_CLIENT
>> +    tristate
>> +    depends on DRM
>> +    help
>> +      Enables the DRM client-lib module. DRM drivers that need
>> +      struct drm_client_dev and its interfaces should select this
>> +      option. Drivers that support the default clients should
>> +      select DRM_CLIENT_SELECTION instead.
>> +
>>   config DRM_CLIENT_SELECTION
>> -    bool
>> +    tristate
>>       depends on DRM
>> -    select DRM_CLIENT_SETUP if DRM_FBDEV_EMULATION
>> +    select DRM_CLIENT if DRM_FBDEV_EMULATION
>> +    select DRM_KMS_HELPER if DRM_FBDEV_EMULATION
>> +    select FB_CORE if DRM_FBDEV_EMULATION
>>       help
>>         Drivers that support in-kernel DRM clients have to select this
>> -      option.
>> +      option. It selects all modules and components according to the
>> +      enabled clients.
>>   config DRM_CLIENT_SETUP
>>       bool
>>       depends on DRM_CLIENT_SELECTION
>> +    help
>> +      Enables the DRM client selection. DRM drivers that support the
>> +      default clients should select DRM_CLIENT_SELECTION instead.
>> +
>> +menu "Supported DRM clients"
>> +    depends on DRM_CLIENT_SELECTION
>>   config DRM_FBDEV_EMULATION
>>       bool "Enable legacy fbdev support for your modesetting driver"
>> -    depends on DRM
>> +    depends on DRM_CLIENT_SELECTION
>> +    select DRM_CLIENT_SETUP
>>       select FRAMEBUFFER_CONSOLE_DETECT_PRIMARY if FRAMEBUFFER_CONSOLE
>>       default FB
>>       help
>> @@ -262,6 +279,8 @@ config DRM_FBDEV_LEAK_PHYS_SMEM
>>         If in doubt, say "N" or spread the word to your closed source
>>         library vendor.
>> +endmenu
>> +
>>   config DRM_LOAD_EDID_FIRMWARE
>>       bool "Allow to specify an EDID data set instead of probing for it"
>>       depends on DRM
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index c50443756457..419208b97f57 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -41,9 +41,7 @@ drm-y := \
>>       drm_blend.o \
>>       drm_bridge.o \
>>       drm_cache.o \
>> -    drm_client.o \
>>       drm_client_dev.o \
>> -    drm_client_modeset.o \
>>       drm_color_mgmt.o \
>>       drm_connector.o \
>>       drm_crtc.o \
>> @@ -144,14 +142,25 @@ drm_kms_helper-y := \
>>       drm_probe_helper.o \
>>       drm_self_refresh_helper.o \
>>       drm_simple_kms_helper.o
>> -drm_kms_helper-$(CONFIG_DRM_CLIENT_SETUP) += \
>> -    drm_client_setup.o
>>   drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) += bridge/panel.o
>>   drm_kms_helper-$(CONFIG_DRM_FBDEV_EMULATION) += \
>> -    drm_fbdev_client.o \
>>       drm_fb_helper.o
>> +drm_kms_helper-$(CONFIG_DRM_PANEL_BRIDGE) += bridge/panel.o

Typo: the above line is duplicated.

>>   obj-$(CONFIG_DRM_KMS_HELPER) += drm_kms_helper.o
>> +#
>> +# DRM clients
>> +#
>> +
>> +drm_client_lib-y := \
>> +    drm_client.o \
>> +    drm_client_modeset.o
>> +drm_client_lib-$(CONFIG_DRM_CLIENT_SETUP) += \
>> +    drm_client_setup.o
>> +drm_client_lib-$(CONFIG_DRM_FBDEV_EMULATION) += \
>> +    drm_fbdev_client.o
>> +obj-$(CONFIG_DRM_CLIENT) += drm_client_lib.o
>> +
>>   #
>>   # Drivers and the rest
>>   #
>> diff --git a/drivers/gpu/drm/amd/amdgpu/Kconfig b/drivers/gpu/drm/amd/ 
>> amdgpu/Kconfig
>> index 680a94c361ba..41fa3377d9cf 100644
>> --- a/drivers/gpu/drm/amd/amdgpu/Kconfig
>> +++ b/drivers/gpu/drm/amd/amdgpu/Kconfig
>> @@ -5,6 +5,7 @@ config DRM_AMDGPU
>>       depends on DRM && PCI && MMU
>>       depends on !UML
>>       select FW_LOADER
>> +    select DRM_CLIENT
>>       select DRM_CLIENT_SELECTION
>>       select DRM_DISPLAY_DP_HELPER
>>       select DRM_DISPLAY_DSC_HELPER
>> diff --git a/drivers/gpu/drm/drm_client.c b/drivers/gpu/drm/drm_client.c
>> index 549b28a5918c..864ee96e48cf 100644
>> --- a/drivers/gpu/drm/drm_client.c
>> +++ b/drivers/gpu/drm/drm_client.c
>> @@ -490,3 +490,6 @@ int drm_client_framebuffer_flush(struct 
>> drm_client_buffer *buffer, struct drm_re
>>                       0, 0, NULL, 0);
>>   }
>>   EXPORT_SYMBOL(drm_client_framebuffer_flush);
>> +
>> +MODULE_DESCRIPTION("In-kernel DRM clients");
>> +MODULE_LICENSE("GPL and additional rights");
>> diff --git a/drivers/gpu/drm/drm_dumb_buffers.c b/drivers/gpu/drm/ 
>> drm_dumb_buffers.c
>> index 70032bba1c97..7ed8f05a8d5c 100644
>> --- a/drivers/gpu/drm/drm_dumb_buffers.c
>> +++ b/drivers/gpu/drm/drm_dumb_buffers.c
>> @@ -95,6 +95,7 @@ int drm_mode_create_dumb(struct drm_device *dev,
>>       return dev->driver->dumb_create(file_priv, dev, args);
>>   }
>> +EXPORT_SYMBOL(drm_mode_create_dumb);
>>   int drm_mode_create_dumb_ioctl(struct drm_device *dev,
>>                      void *data, struct drm_file *file_priv)
>> @@ -141,6 +142,7 @@ int drm_mode_destroy_dumb(struct drm_device *dev, 
>> u32 handle,
>>       return drm_gem_handle_delete(file_priv, handle);
>>   }
>> +EXPORT_SYMBOL(drm_mode_destroy_dumb);
>>   int drm_mode_destroy_dumb_ioctl(struct drm_device *dev,
>>                   void *data, struct drm_file *file_priv)
>> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
>> index 01fde94fe2a9..dd847b574457 100644
>> --- a/drivers/gpu/drm/drm_file.c
>> +++ b/drivers/gpu/drm/drm_file.c
>> @@ -186,6 +186,7 @@ struct drm_file *drm_file_alloc(struct drm_minor 
>> *minor)
>>       return ERR_PTR(ret);
>>   }
>> +EXPORT_SYMBOL(drm_file_alloc);
>>   static void drm_events_release(struct drm_file *file_priv)
>>   {
>> @@ -261,6 +262,7 @@ void drm_file_free(struct drm_file *file)
>>       put_pid(rcu_access_pointer(file->pid));
>>       kfree(file);
>>   }
>> +EXPORT_SYMBOL(drm_file_free);
>>   static void drm_close_helper(struct file *filp)
>>   {
>> diff --git a/drivers/gpu/drm/drm_framebuffer.c b/drivers/gpu/drm/ 
>> drm_framebuffer.c
>> index 47e6e8577b62..761262529416 100644
>> --- a/drivers/gpu/drm/drm_framebuffer.c
>> +++ b/drivers/gpu/drm/drm_framebuffer.c
>> @@ -349,6 +349,7 @@ int drm_mode_addfb2(struct drm_device *dev,
>>       return 0;
>>   }
>> +EXPORT_SYMBOL(drm_mode_addfb2);
>>   int drm_mode_addfb2_ioctl(struct drm_device *dev,
>>                 void *data, struct drm_file *file_priv)
>> @@ -473,6 +474,7 @@ int drm_mode_rmfb(struct drm_device *dev, u32 fb_id,
>>       return 0;
>>   }
>> +EXPORT_SYMBOL(drm_mode_rmfb);
>>   int drm_mode_rmfb_ioctl(struct drm_device *dev,
>>               void *data, struct drm_file *file_priv)
>> diff --git a/drivers/gpu/drm/drm_gem.c b/drivers/gpu/drm/drm_gem.c
>> index ee811764c3df..07ae82e35517 100644
>> --- a/drivers/gpu/drm/drm_gem.c
>> +++ b/drivers/gpu/drm/drm_gem.c
>> @@ -1191,12 +1191,14 @@ int drm_gem_pin_locked(struct drm_gem_object 
>> *obj)
>>       return 0;
>>   }
>> +EXPORT_SYMBOL(drm_gem_pin_locked);
>>   void drm_gem_unpin_locked(struct drm_gem_object *obj)
>>   {
>>       if (obj->funcs->unpin)
>>           obj->funcs->unpin(obj);
>>   }
>> +EXPORT_SYMBOL(drm_gem_unpin_locked);
>>   int drm_gem_pin(struct drm_gem_object *obj)
>>   {
> 

