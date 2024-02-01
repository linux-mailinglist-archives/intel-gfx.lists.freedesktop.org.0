Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3DB845A68
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 15:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1A9510E6DA;
	Thu,  1 Feb 2024 14:37:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="KpXQuvK8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D44410E6AB
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 14:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1706798235;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=lMLjEJcBM6/wXWBc/+qBfB9DTUvRALAGJ5XKhqKkEOA=;
 b=KpXQuvK82uSuWu7QvS673bdI+/vhDvCflUfH8hGR1xTp2U5B973U2bQVbD7z7ZoMYHLriK
 gSpVTsJ5zxpp1/12agecfKiS7AjkoOaOCclUyTSKIpmSX3Rs53cGtwFHH28bywJ7AEDZzs
 rO/5ZDN0tVHQjd1TJguZiuzM2JKfQJY=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-170-jyc4A2YSN_KBbwkTzZspcA-1; Thu, 01 Feb 2024 09:37:14 -0500
X-MC-Unique: jyc4A2YSN_KBbwkTzZspcA-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-a336006ef27so109375466b.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 01 Feb 2024 06:37:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706798233; x=1707403033;
 h=content-transfer-encoding:in-reply-to:organization:from:references
 :cc:to:content-language:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lMLjEJcBM6/wXWBc/+qBfB9DTUvRALAGJ5XKhqKkEOA=;
 b=YE4ktzfp70fbTf4EyzyJlSS5b09Hj8MCwYxDLanc2jfy+2nwEWQiKxgcxrR4WTJvBZ
 DVA8jNln1W4CIn/6jS3v+knRWNGyKaMJiG4/5kz3sOlWgnfvxWx+Hrgb9Yt+DfeDY55s
 G9kX3U/pCX8PC+ScR2gyFAIg2EUOqBCeA+PNytgoX4jcomCoLqzcp+hEq3EmkZrMi+PE
 b6NJfuOslsWfGUkXHkwaZ26QIkJS78dMELKmfA8JwPa3EGr4db5BFL0VgZlSWx/hOmrZ
 aNY8N8BfUO2Bm7+sa7msXKJRTcHNkugMCvjWjGHhc1HcjAd0rhiMtwUCSkpvRZDIyLhl
 kXBg==
X-Gm-Message-State: AOJu0Ywr7FIPepXF9SuWJ3fQ38Dz55Xmp6Pk9Jgt09T5SoDnMSgTPV/y
 TNFIq+N+Pq+oDLAodaWSGmV4V7ha/a9Wd7sZL+qSgF7sEqOHPz8oCe4g8gTgKiX+GCgJ3XzNZBu
 EOPrRnzPKbcnrwdJxVTZ0secvaHUBm/GCVhpnI5/6eyBR1EP04WZqzoKaAomMMuXB4g==
X-Received: by 2002:a17:906:7192:b0:a35:3faf:c8d1 with SMTP id
 h18-20020a170906719200b00a353fafc8d1mr5219915ejk.22.1706798233034; 
 Thu, 01 Feb 2024 06:37:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQ/1HnKtFLGTnldZg5nkc849sUUQpcTj8sPZ397NfReI3hpzy/OksyGy8MSvwmIp1UrSQ4pQ==
X-Received: by 2002:a17:906:7192:b0:a35:3faf:c8d1 with SMTP id
 h18-20020a170906719200b00a353fafc8d1mr5219884ejk.22.1706798232752; 
 Thu, 01 Feb 2024 06:37:12 -0800 (PST)
X-Forwarded-Encrypted: i=0;
 AJvYcCWyg3LJhP9ZTgS149w4HROgpeP1sA8ZCXKjWvshLaXaGtZo2m3IjEf8tsulQ2IiKCcisLFTo7VA4O1w1wxyJVXQ2sNYAGZsPMoBY0mPQM9DRcr8jGrAhwyQ9gBRZFDGdm9Pbx2Zgyb7Ig1DK8TJFAENsRDtOrgkqPFycI2R3AABcL6zkopniEEPE5BmqOuhGDKP3oqLb3eeViNlCqvoT/ZJHNN/DXRD6oUiFdZevpCv1vEJnPKO9IkQzQwNFjPLSCnnpjUT8aJt9aK8ZYKH8SRU7nGS/0vcvUULnPoLv8xLVNYhPLQKHdzxhk+bsgEKtkn3aZrdWh/7U1mY/Ng23Lwy5oevs5IHgFTXhPZFpp4OLyxJlhyCPMBzxFPDxn2xucMI9ZjJguiw3j8AtNPRqZuY2SY7cqkVTlmz/tMUHDAB6ktQbAHQY1jL3mQPkCcoKVLQsi0wXjbCQT9RZFENWQZgL/RS18pVtyABC0Rf3L4lgxIZNHiSv2uFRGaMqLl9GO1MRRp0W4tG1wBgIquETdYvizbIMgjEjgszwuMWAdffo2MA1XSCpyt2ywF8UCi44F2r7XaI7+JhevgOW/lq4/rZrzGlpXjYIm5a7jHlbOtuy9PJE7MlwnsnNqhVFzpIFAELYFdBixkFGKGsT4KB+g9tgnOt2mLhwkwcCyPg20TxnLmQEXjJC9b4Kalj4RcYuVobgjEUbXkYCzfFExGN6IuTjKor
Received: from ?IPV6:2a02:810d:4b3f:ee94:abf:b8ff:feee:998b?
 ([2a02:810d:4b3f:ee94:abf:b8ff:feee:998b])
 by smtp.gmail.com with ESMTPSA id
 vk3-20020a170907cbc300b00a36cd9624c0sm453790ejc.95.2024.02.01.06.37.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 01 Feb 2024 06:37:12 -0800 (PST)
Message-ID: <d3ae5dd8-ad5c-4d69-8e90-1363caa5f92c@redhat.com>
Date: Thu, 1 Feb 2024 15:37:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] drm: enable (most) W=1 warnings by default across
 the subsystem
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Pan@freedesktop.org, Xinhui <Xinhui.Pan@amd.com>,
 Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
 Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 Hamza Mahfooz <hamza.mahfooz@amd.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Sui Jingfeng <sui.jingfeng@linux.dev>, dri-devel@lists.freedesktop.org
References: <cover.1706797803.git.jani.nikula@intel.com>
 <b3f9cfa3304e4db1a964ec962dc0974857c0edf0.1706797803.git.jani.nikula@intel.com>
From: Danilo Krummrich <dakr@redhat.com>
Organization: RedHat
In-Reply-To: <b3f9cfa3304e4db1a964ec962dc0974857c0edf0.1706797803.git.jani.nikula@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
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


On 2/1/24 15:33, Jani Nikula wrote:
> At least the i915 and amd drivers enable a bunch more compiler warnings
> than the kernel defaults.
> 
> Extend most of the W=1 warnings to the entire drm subsystem by
> default. Use the copy-pasted warnings from scripts/Makefile.extrawarn
> with s/KBUILD_CFLAGS/subdir-ccflags-y/ to make it easier to compare and
> keep up with them in the future.
> 
> This is similar to the approach currently used in i915.
> 
> Some of the -Wextra warnings do need to be disabled, just like in
> Makefile.extrawarn, but take care to not disable them for W=2 or W=3
> builds, depending on the warning.
> 
> There are too many -Wformat-truncation warnings to cleanly fix up front;
> leave that warning disabled for now.
> 
> v3:
> - Drop -Wmissing-declarations (already enabled by default)
> - Drop -Wmissing-prototypes (already enabled by default)
> 
> v2:
> - Drop -Wformat-truncation (too many warnings)
> - Drop -Wstringop-overflow (already enabled by default)
> 
> Cc: David Airlie <airlied@gmail.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: Christian König <christian.koenig@amd.com>
> Cc: Pan, Xinhui <Xinhui.Pan@amd.com>
> Cc: Karol Herbst <kherbst@redhat.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>
> Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Marijn Suijten <marijn.suijten@somainline.org>
> Cc: Hamza Mahfooz <hamza.mahfooz@amd.com>
> Acked-by: Javier Martinez Canillas <javierm@redhat.com>
> Acked-by: Thomas Zimmermann <tzimmermann@suse.de>
> Acked-by: Sui Jingfeng <sui.jingfeng@linux.dev>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Acked-by: Danilo Krummrich <dakr@redhat.com>

> ---
>   drivers/gpu/drm/Makefile | 25 +++++++++++++++++++++++++
>   1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> index 104b42df2e95..04722a5dfb78 100644
> --- a/drivers/gpu/drm/Makefile
> +++ b/drivers/gpu/drm/Makefile
> @@ -5,6 +5,31 @@
>   
>   CFLAGS-$(CONFIG_DRM_USE_DYNAMIC_DEBUG)	+= -DDYNAMIC_DEBUG_MODULE
>   
> +# Unconditionally enable W=1 warnings locally
> +# --- begin copy-paste W=1 warnings from scripts/Makefile.extrawarn
> +subdir-ccflags-y += -Wextra -Wunused -Wno-unused-parameter
> +subdir-ccflags-y += $(call cc-option, -Wrestrict)
> +subdir-ccflags-y += -Wmissing-format-attribute
> +subdir-ccflags-y += -Wold-style-definition
> +subdir-ccflags-y += -Wmissing-include-dirs
> +subdir-ccflags-y += $(call cc-option, -Wunused-but-set-variable)
> +subdir-ccflags-y += $(call cc-option, -Wunused-const-variable)
> +subdir-ccflags-y += $(call cc-option, -Wpacked-not-aligned)
> +subdir-ccflags-y += $(call cc-option, -Wformat-overflow)
> +# FIXME: fix -Wformat-truncation warnings and uncomment
> +#subdir-ccflags-y += $(call cc-option, -Wformat-truncation)
> +subdir-ccflags-y += $(call cc-option, -Wstringop-truncation)
> +# The following turn off the warnings enabled by -Wextra
> +ifeq ($(findstring 2, $(KBUILD_EXTRA_WARN)),)
> +subdir-ccflags-y += -Wno-missing-field-initializers
> +subdir-ccflags-y += -Wno-type-limits
> +subdir-ccflags-y += -Wno-shift-negative-value
> +endif
> +ifeq ($(findstring 3, $(KBUILD_EXTRA_WARN)),)
> +subdir-ccflags-y += -Wno-sign-compare
> +endif
> +# --- end copy-paste
> +
>   drm-y := \
>   	drm_aperture.o \
>   	drm_atomic.o \

