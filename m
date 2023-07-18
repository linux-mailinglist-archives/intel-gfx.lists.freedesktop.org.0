Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B35A759858
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 16:29:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 342CD10E4BE;
	Wed, 19 Jul 2023 14:29:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.nfschina.com (unknown [42.101.60.195])
 by gabe.freedesktop.org (Postfix) with SMTP id 049E810E30C;
 Tue, 18 Jul 2023 10:10:50 +0000 (UTC)
Received: from [172.30.11.106] (unknown [180.167.10.98])
 by mail.nfschina.com (Maildata Gateway V2.8.8) with ESMTPSA id 6C27B60D1198C; 
 Tue, 18 Jul 2023 18:10:45 +0800 (CST)
Message-ID: <8e3e945b-9cae-71e9-fc68-dc1c64e5ea86@nfschina.com>
Date: Tue, 18 Jul 2023 18:10:44 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>
X-MD-Sfrom: suhui@nfschina.com
X-MD-SrcIP: 180.167.10.98
From: Su Hui <suhui@nfschina.com>
In-Reply-To: <d763816b-07c9-4346-8f7c-f95e86cba488@kadam.mountain>
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
Cc: kernel-janitors@vger.kernel.org, llvm@lists.linux.dev,
 dri-devel@lists.freedesktop.org, trix@redhat.com,
 intel-gfx@lists.freedesktop.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, nathan@kernel.org, mripard@kernel.org,
 daniel@ffwll.ch, rodrigo.vivi@intel.com, airlied@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2023/7/18 13:39, Dan Carpenter wrote:
> On Mon, Jul 17, 2023 at 04:52:51PM +0200, Andrzej Hajda wrote:
>>
>> On 17.07.2023 08:22, Su Hui wrote:
>>> Clang warning: drivers/gpu/drm/i915/display/intel_tv.c:
>>> line 991, column 22 Division by zero.
>>> Assuming tv_mode->oversample=1 and (!tv_mode->progressive)=1,
>>> then division by zero will happen.
>>>
>>> Fixes: 1bba5543e4fe ("drm/i915: Fix TV encoder clock computation")
>>> Signed-off-by: Su Hui <suhui@nfschina.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_tv.c | 3 ++-
>>>    1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
>>> index 36b479b46b60..82b54af51f23 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_tv.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
>>> @@ -988,7 +988,8 @@ intel_tv_mode_to_mode(struct drm_display_mode *mode,
>>>    		      const struct tv_mode *tv_mode,
>>>    		      int clock)
>>>    {
>>> -	mode->clock = clock / (tv_mode->oversample >> !tv_mode->progressive);
>>> +	mode->clock = clock / (tv_mode->oversample != 1 ?
>>> +			tv_mode->oversample >> !tv_mode->progressive : 1);
>> Seems too smart to me, why not just:
>> mode->clock = clock / tv_mode->oversample;
>> if (!tv_mode->progressive)
>>      mode->clock <<= 1;
> This is nice.

mode->clock = clock / tv_mode->oversample << !tv_mode->progressive;

But I think this one is much better,  it has less code and run faster.
Should I resend v3 to add some explanation or follow Dan's advice?

Su Hui

> regards,
> dan carpenter
