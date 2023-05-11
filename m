Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F416E6FED3D
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 09:57:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0355B10E5B6;
	Thu, 11 May 2023 07:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com
 [IPv6:2a00:1450:4864:20::32e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83AE010E5B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 07:57:23 +0000 (UTC)
Received: by mail-wm1-x32e.google.com with SMTP id
 5b1f17b1804b1-3f315712406so273725845e9.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 00:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683791840; x=1686383840;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=ZJD56VX7XDxpylDoEXLyU/pg3/QOAEr8FuCx7zRwkY8=;
 b=aIk/osrGceKcLiekpOta4pWIb4wmypUEuV6WTON/BFr833y3CrICdLnzAvrOUjseT/
 qSNsSbqx8RGKItoxCSmXqDIe491qiu1uqblpf3T7EehKuAx49hh7PKddJevcrSP5zIQb
 sefSa08xTvXha2eAuwZUheGiJiKbtRlAYoL33+aY4NoNeIBgo5fOSPjiXgEbtCuYFEgN
 gNm+5GXI2v/33zgng/NHRHaFMqm5S0uN/BpYyBoEFmt0Q2hJfud7BTLE6QAr2V7Xqxj3
 d9u28Jm2+Oo7akWWaoQAJtfLcSFmTlEgGgFyMC3bjXdaHzqB9UKKj1UVMVXWnxEKULZi
 RsWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683791840; x=1686383840;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZJD56VX7XDxpylDoEXLyU/pg3/QOAEr8FuCx7zRwkY8=;
 b=dep14mVBNRmAbq0ygKHZd0BvMJ43IqpFaBsINAMbyO9n7yAoLLTubPYycbFpDBCh3i
 PO5zlHHry5SfKrhfvwj/zCBgYdUDr8n6+2HAXTJs8wvlqtb33mVtB3mgdW8TZWf8b3TB
 qhONeMfya5wbxQIgfPiJ5aCBp0xrE1epFfa+Gjzd4gOFgFOPZ0HH4jE/04nQdTwPgh1p
 K69TXr+LWAljxx0YpUTkMXldiaspQMVHZ6x8C3bvFYeV/p4tjfsxwmRqL6KGFexqxI67
 iLSknsvS8dNR0Kks5Yp2BzRwVtdDi1DaXkTMRt1u/4IYZ2JnL/ePxBB+4HLRhPMvJRaG
 CFvg==
X-Gm-Message-State: AC+VfDyRftkwAsPKQ2xty9kLNO0XbeCcPVEfPn1PI6o7jurOT+Xgz3+B
 rG2hZV4XQQE8dcs0lLCEgnMZk/eHl1n4oQ==
X-Google-Smtp-Source: ACHHUZ6yF30ylW2LsS6Vbn8Y2MVqYu0oZNnIqvP9bRAuJ5jD1twTHf6J6f1hwe0PDoAMf2E0D2ZUSQ==
X-Received: by 2002:a5d:4d0b:0:b0:306:d736:2c50 with SMTP id
 z11-20020a5d4d0b000000b00306d7362c50mr15217990wrt.16.1683791839338; 
 Thu, 11 May 2023 00:57:19 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id
 j15-20020a05600c1c0f00b003f1738d0d13sm10382017wms.1.2023.05.11.00.57.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 May 2023 00:57:19 -0700 (PDT)
Message-ID: <9b6ff5e6-7094-14e7-acf8-aad7eccfe605@gmail.com>
Date: Thu, 11 May 2023 10:57:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20230509154808.3035-1-juhapekka.heikkila@gmail.com>
 <87sfc4minx.fsf@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <87sfc4minx.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/fourcc: define Intel Meteorlake
 related ccs modifiers
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

On 10.5.2023 16.15, Jani Nikula wrote:
> On Tue, 09 May 2023, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>> Add Tile4 type ccs modifiers with aux buffer needed for MTL
> 
> Please send this Cc: dri-devel too.

Sure, I'll resend shortly. Here I just didn't want to spam dri-devel 
since from original set this patch is already sent there and didn't get 
any changes since that.

/Juha-Pekka

> 
>>
>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>> ---
>>   include/uapi/drm/drm_fourcc.h | 43 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 43 insertions(+)
>>
>> diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
>> index de703c6be969..cbe214adf1e4 100644
>> --- a/include/uapi/drm/drm_fourcc.h
>> +++ b/include/uapi/drm/drm_fourcc.h
>> @@ -657,6 +657,49 @@ extern "C" {
>>    */
>>   #define I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC fourcc_mod_code(INTEL, 12)
>>   
>> +/*
>> + * Intel color control surfaces (CCS) for display ver 14 render compression.
>> + *
>> + * The main surface is tile4 and at plane index 0, the CCS is linear and
>> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
>> + * main surface. In other words, 4 bits in CCS map to a main surface cache
>> + * line pair. The main surface pitch is required to be a multiple of four
>> + * tile4 widths.
>> + */
>> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS fourcc_mod_code(INTEL, 13)
>> +
>> +/*
>> + * Intel color control surfaces (CCS) for display ver 14 media compression
>> + *
>> + * The main surface is tile4 and at plane index 0, the CCS is linear and
>> + * at index 1. A 64B CCS cache line corresponds to an area of 4x1 tiles in
>> + * main surface. In other words, 4 bits in CCS map to a main surface cache
>> + * line pair. The main surface pitch is required to be a multiple of four
>> + * tile4 widths. For semi-planar formats like NV12, CCS planes follow the
>> + * Y and UV planes i.e., planes 0 and 1 are used for Y and UV surfaces,
>> + * planes 2 and 3 for the respective CCS.
>> + */
>> +#define I915_FORMAT_MOD_4_TILED_MTL_MC_CCS fourcc_mod_code(INTEL, 14)
>> +
>> +/*
>> + * Intel Color Control Surface with Clear Color (CCS) for display ver 14 render
>> + * compression.
>> + *
>> + * The main surface is tile4 and is at plane index 0 whereas CCS is linear
>> + * and at index 1. The clear color is stored at index 2, and the pitch should
>> + * be ignored. The clear color structure is 256 bits. The first 128 bits
>> + * represents Raw Clear Color Red, Green, Blue and Alpha color each represented
>> + * by 32 bits. The raw clear color is consumed by the 3d engine and generates
>> + * the converted clear color of size 64 bits. The first 32 bits store the Lower
>> + * Converted Clear Color value and the next 32 bits store the Higher Converted
>> + * Clear Color value when applicable. The Converted Clear Color values are
>> + * consumed by the DE. The last 64 bits are used to store Color Discard Enable
>> + * and Depth Clear Value Valid which are ignored by the DE. A CCS cache line
>> + * corresponds to an area of 4x1 tiles in the main surface. The main surface
>> + * pitch is required to be a multiple of 4 tile widths.
>> + */
>> +#define I915_FORMAT_MOD_4_TILED_MTL_RC_CCS_CC fourcc_mod_code(INTEL, 15)
>> +
>>   /*
>>    * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
>>    *
> 

