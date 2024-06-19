Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E35890E857
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 12:29:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D73010EC1E;
	Wed, 19 Jun 2024 10:29:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="ZapTdZx3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
 [209.85.221.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B2B10EC22
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 10:29:52 +0000 (UTC)
Received: by mail-wr1-f44.google.com with SMTP id
 ffacd0b85a97d-35f2d723ef0so5421532f8f.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2024 03:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1718792991; x=1719397791;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=D7FOnG7ghLNUlIRVuhbxGcw1YdQeoztBhQMpmc4Rrsk=;
 b=ZapTdZx3pMRRyPuHr4wSXrEmivI77p0cMA41d6j3L/GA+iaZZdaj4l9+SSgxZKGAWb
 j6BRjRF7XYFzsAITJVWlXy2yp2KVB6bEXVfmx24scwNYI+tzyAGv46p8xYOSzQuL0SAA
 U0h31VVeZcrl0Z4wmUeGydFuUGZO46WNVby+HPvY0xysrhUgLHSIbIjQBkSlxk7z1TTO
 E1r9D3dYh0h2YrNsPwOpP56MNBxt/9QC4x9IrA40pCVa9tCZovMEw9X/2Uxb0kcPTWHT
 jTx+t/amXqDdrnetGlJo++ICOSDcArUQ2hO2gTE1luYcu4dxBB2rQwrPVWbpBfPvvYzY
 Sq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1718792991; x=1719397791;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=D7FOnG7ghLNUlIRVuhbxGcw1YdQeoztBhQMpmc4Rrsk=;
 b=GpF2rDzfvcB4Q7i4ltoyKcYonioE6Lgqa96sMLXqkqjVN6Z6ZgT3fKBH9pCLc8u730
 PbaTR9MnDLFhdO6fzm3EnN2bWP6xnER5cwW4Al+ro4tO2/mQyg84odblmWmYOq1ZIso3
 7plPJEMwLc9D4PQkhSokwHiGHJJReI09zCMhbR7C2p1crGbN6oZVVvxrNEWuex/+hrtf
 LBe6X61OaIsABVtTXxRyxGCjYv5FSjetdV8EmxpU14w8vaQqso84EhQNrjzL0PbiBDH/
 i3b0RcQhBFsq3uXbgE3L+fa7If0r96z1o6l1YD7FtcUd+2PYyd4ZH15K2/5h7Nkm6yRd
 t2dQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCWS+AM2Wu4qwJWKlmQGftqJVVc9o5N9iIj80pN5jNE7sfo4m9Nht7RnY3OsLAufyJ5+xlFixPZf8jPAeW9mt/lodKSKWDgh+L14956qF5fs
X-Gm-Message-State: AOJu0YzeipSkEfVDQoW8Lb0gJogz2a4AK6ViTuLW3eBWwDJs2ptZXoxf
 UMawC3HFZ/rRifITC2lZySVIFD6HCWaMd7lcX6FBcCWh48BcN5P4QyXibeD0ARs=
X-Google-Smtp-Source: AGHT+IFkv2KRV4gnTG0Y/mSJBveqNLf6VWju6YigxoWBZXkVh+VrcZqz1lPhfG+DVUcqdF15k8GvDQ==
X-Received: by 2002:a5d:4b4b:0:b0:360:79d2:a822 with SMTP id
 ffacd0b85a97d-363170ecbcfmr1560945f8f.14.1718792990952; 
 Wed, 19 Jun 2024 03:29:50 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3607509c7e5sm16892038f8f.30.2024.06.19.03.29.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jun 2024 03:29:50 -0700 (PDT)
Message-ID: <1417502f-1f9a-4839-b4ce-f27ed40c0320@ursulin.net>
Date: Wed, 19 Jun 2024 11:29:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 8/8] Revert "drm/i915: Depend on !PREEMPT_RT."
Content-Language: en-GB
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Thomas Gleixner <tglx@linutronix.de>
References: <20240613102818.4056866-1-bigeasy@linutronix.de>
 <20240613102818.4056866-9-bigeasy@linutronix.de>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240613102818.4056866-9-bigeasy@linutronix.de>
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


On 13/06/2024 11:20, Sebastian Andrzej Siewior wrote:
> Once the known issues are addressed, it should be safe to enable the
> driver.
> 
> Signed-off-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> ---
>   drivers/gpu/drm/i915/Kconfig | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 5932024f8f954..a02162d6b710e 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -3,7 +3,6 @@ config DRM_I915
>   	tristate "Intel 8xx/9xx/G3x/G4x/HD Graphics"
>   	depends on DRM
>   	depends on X86 && PCI
> -	depends on !PREEMPT_RT
>   	select INTEL_GTT if X86
>   	select INTERVAL_TREE
>   	# we need shmfs for the swappable backing store, and in particular

Cool!

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko
