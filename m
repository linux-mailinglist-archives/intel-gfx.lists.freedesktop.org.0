Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D01759855
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 16:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C4B510E4B9;
	Wed, 19 Jul 2023 14:29:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by gabe.freedesktop.org (Postfix) with SMTP id BAEA810E2C2;
 Tue, 18 Jul 2023 01:13:16 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id B112C6085E131; 
 Tue, 18 Jul 2023 09:13:11 +0800 (CST)
Message-ID: <8a94e6dc-f664-84fa-32f7-7f45f22a410a@nfschina.com>
Date: Tue, 18 Jul 2023 09:13:11 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 tvrtko.ursulin@linux.intel.com, airlied@gmail.com, daniel@ffwll.ch,
 nathan@kernel.org, ndesaulniers@google.com, trix@redhat.com
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
In-Reply-To: <0cae35ea-7635-383d-cae5-2051abbc6d64@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Wed, 19 Jul 2023 14:29:30 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tv: avoid possible division by zero
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
Cc: intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, mripard@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/7/17 22:52, Andrzej Hajda wrote:
>
>
> On 17.07.2023 08:22, Su Hui wrote:
>> Clang warning: drivers/gpu/drm/i915/display/intel_tv.c:
>> line 991, column 22 Division by zero.
>> Assuming tv_mode->oversample=1 and (!tv_mode->progressive)=1,
>> then division by zero will happen.
>>
>> Fixes: 1bba5543e4fe ("drm/i915: Fix TV encoder clock computation")
>> Signed-off-by: Su Hui <suhui@nfschina.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_tv.c | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c 
>> b/drivers/gpu/drm/i915/display/intel_tv.c
>> index 36b479b46b60..82b54af51f23 100644
>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>> @@ -988,7 +988,8 @@ intel_tv_mode_to_mode(struct drm_display_mode *mode,
>>                 const struct tv_mode *tv_mode,
>>                 int clock)
>>   {
>> -    mode->clock = clock / (tv_mode->oversample >> 
>> !tv_mode->progressive);
>> +    mode->clock = clock / (tv_mode->oversample != 1 ?
>> +            tv_mode->oversample >> !tv_mode->progressive : 1);
>
> Seems too smart to me, why not just:
> mode->clock = clock / tv_mode->oversample;
> if (!tv_mode->progressive)
>     mode->clock <<= 1;
> Or trying being smart:
> mode->clock = clock / tv_mode->oversample << !tv_mode->progressive;

Hi,

Yes, this is more readable and clear.
Thanks four your advice. I will send v2 soon.

Su Hui

>
> Btw in both cases there is assumption tv_mode->oversample != 0, I 
> guess it is true.
>
> Regards
> Andrzej
>
>>         /*
>>        * tv_mode horizontal timings:
>
