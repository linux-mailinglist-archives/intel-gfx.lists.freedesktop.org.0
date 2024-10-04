Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DC1F9903F1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 15:22:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9201010E9F9;
	Fri,  4 Oct 2024 13:22:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dU+325j1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3136D10E9F5
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2024 13:22:53 +0000 (UTC)
Received: by mail-wm1-f45.google.com with SMTP id
 5b1f17b1804b1-42ca6ba750eso13198495e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 04 Oct 2024 06:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728048171; x=1728652971; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=Sm3n8jQ8I/ZFaSlWrkRiGZ4VitqLenJldkPb6VkCrH0=;
 b=dU+325j1n9EnnDzlKu3bIFCMDk15xc35QtNempJwCWQG0kaqH4bQeRXv+ON1ixzE1r
 eFWF4M9P9G99ihFFJXIexTJrf4HWr0Zm2zQGHJFr8uhicKcl0fPoUh4WMPsWOZREGeDg
 4V/b9m4LeiPEuG1+SrxBnILVLTdDqJjIB+S649ddi9H0K4zQv93bFbHuNv11Aj87gxiV
 N0Z/EDgdQMqHGkr5MjQXHKv56UgC9+kgTJARo1RcrGQZLYOPucfwJ7fFMkJ6EwzoWevt
 fM2tIp022mCJeuKAN9gR7oBx09rNfoYDgebIB3OiQJEoVXtTN3yiFv7XWVv4I/4+NwSJ
 9d7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728048171; x=1728652971;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=Sm3n8jQ8I/ZFaSlWrkRiGZ4VitqLenJldkPb6VkCrH0=;
 b=Ee9ly75GRgQCpRqSkGlih9s7ryUAmXWcxGsFlcS0gvfF5FN9HgacYQNVQjV68fjwcy
 8+LJIyLarB2RrksnyxHHZzhEw6x3QfQsSds9NPntRjf7T/QCKJlI8CMAGLPHZu+vGFnl
 G/EB0pJHhE7jrtKwJtaHo5JXdkXS0+YMR2kXyRwQnzfqTS1xPV9K63nzHvrCDRuOyDez
 WNSo1N7qayDP5dwLOl6flsQ7da2J3QGVPsGe+PNwdzs6E2I1bFsgXkyDhBBY3gQwbFJ+
 x40XOruLUEs6WEfBHEzwwa1OOm2kXTY2UehH6fijwyjiEkAOPNfwrfDqGTDkPBs7ZeEA
 p+3A==
X-Forwarded-Encrypted: i=1;
 AJvYcCWxIKn4rMZuSJayYRaU8tYKrDjfSegutAtd8AOBsDVyKKV0FdZdYgZtCOguJsVzF0OxPzmQhtAgZpM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwbU48Y+7ruc3CoUef04wfU83ihQiOPnRTsYnyzTLOmd1jz08wM
 SuPqt97vcJJWJjG0TriRx+zxd7S9i2nMBnfcMmnfgoX9B/RJ1EddA7U03ZUiIXo=
X-Google-Smtp-Source: AGHT+IFI9+/hUhr5vDQsd2mrS3mVUbzfTHJt2WimQG9fzgGTNT0+gpSgsYwH9bRLGTUS/8mZ90NBbA==
X-Received: by 2002:a05:600c:3c92:b0:42c:b73b:fb43 with SMTP id
 5b1f17b1804b1-42f7df9fe14mr45973335e9.12.1728048171146; 
 Fri, 04 Oct 2024 06:22:51 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.72])
 by smtp.googlemail.com with ESMTPSA id
 ffacd0b85a97d-37d0822b970sm3247993f8f.43.2024.10.04.06.22.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Oct 2024 06:22:50 -0700 (PDT)
Message-ID: <da0ae2cf-85a6-4ada-b9a6-088cecc78148@gmail.com>
Date: Fri, 4 Oct 2024 16:22:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/7] drm/i915: Disable compression tricks on JSL
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20240918144445.5716-3-ville.syrjala@linux.intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 18.9.2024 17.44, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Bspec asks us to disable some compression trick on JSL. While the
> bspec description is pretty vague it looks like this is some extra
> trick for 10bpc+ CCS which presumably the ICL derived display engine
> doesn't support.
> 
> Note that we aren't currently exposing 10bpc CCS scanout support,
> but once that gets added this presumably becomes an issue.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 +
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 +++++++++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 57a3c83d3655..67c47c8b75fb 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -432,6 +432,7 @@
>   #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
>   
>   #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
> +#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
>   #define   RC_OP_FLUSH_ENABLE			(1 << 0)
>   #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
>   #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..6972525fe6be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2299,6 +2299,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
>   	}
>   
> +	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
> +		/*
> +		 * "Disable Repacking for Compression (masked R/W access)
> +		 *  before rendering compressed surfaces for display."
> +		 */

I think here would be needed the wa number mentioned since it's on all 
the other cases.

> +		wa_masked_en(wal, CACHE_MODE_0_GEN7,
> +			     DISABLE_REPACKING_FOR_COMPRESSION);
> +	}
> +
>   	if (GRAPHICS_VER(i915) == 11) {
>   		/* This is not an Wa. Enable for better image quality */
>   		wa_masked_en(wal,

