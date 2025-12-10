Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C64DBCB38C8
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 18:00:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6686F10E6EF;
	Wed, 10 Dec 2025 17:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="chRaOShM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD33510E6EF;
 Wed, 10 Dec 2025 17:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1765386054;
 bh=1e0EVK7hYcYs7Nr4d/xn0GCORy8rUE6yruIkrZp+0GQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=chRaOShMrhlf5SdfPoiCGKMvIolxAxNE6G3E4FjEbsVJWSK9f+yu1G2vWBXTijvD2
 6Kyo6KaLZ9WMzcCHj7XzWSYZBGFTrkg31/AaL9kaxltRvPB9MvpXqw3Sdo3K9Gm2I2
 pCWQ02QkLIPlL1sd21jFA5WmuKmAfgMHNO/xvgyARANZH8NYC9k291M1UVq5hu8Ft1
 AD0iPgrHJ/5r/hIbNryd4kZuzTq2khTvYHokc844YglCZlFKgQ6XZSs5Wuyp2jTrK9
 JiUof68h/1hU8l3p8bqPwUDvUk2CPsQXrd/C1UuXnJRbSxsR90UhUHdci1nnqw37LG
 UNOYiSdWpBuKg==
Message-ID: <cb0c9201-74f9-43c5-8177-5b5b77851973@lankhorst.se>
Date: Wed, 10 Dec 2025 18:00:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler for
 PREEMPT-RT
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
 <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
Content-Type: text/plain; charset=UTF-8
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

Hey,

Just needs a typo fixed, Matthew Brost also commented that the second I915 here should be PREEMPT-RT instead.

Den 2025-12-10 kl. 09:56, skrev Jani Nikula:
> On Tue, 09 Dec 2025, Maarten Lankhorst <dev@lankhorst.se> wrote:
>> No need for backporting, this is only useful for i915,
>> and it doesn't compile with I915 enabled.
> 
> Please elaborate. There's just riddles here.
> 
> BR,
> Jani.
> 
>>
>> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
>> ---
>>  drivers/gpu/drm/i915/display/intel_lpe_audio.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> index 5b41abe1c64d5..172c0062237eb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> @@ -262,7 +262,7 @@ void intel_lpe_audio_irq_handler(struct intel_display *display)
>>  	if (!HAS_LPE_AUDIO(display))
>>  		return;
>>  
>> -	ret = generic_handle_irq(display->audio.lpe.irq);
>> +	ret = generic_handle_irq_safe(display->audio.lpe.irq);
>>  	if (ret)
>>  		drm_err_ratelimited(display->drm,
>>  				    "error handling LPE audio irq: %d\n", ret);
> 

