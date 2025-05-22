Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBFAAC0610
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 09:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E6E10FB57;
	Thu, 22 May 2025 07:48:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="20eAjPiW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E7010F875
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 07:48:09 +0000 (UTC)
Received: by mail-wr1-f49.google.com with SMTP id
 ffacd0b85a97d-3a3771c0f8cso2419680f8f.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 May 2025 00:48:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1747900088; x=1748504888;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=d5tHoEF081hTBrMTXmDGBdRAELQ7rm+VvY6CJYQNJKY=;
 b=20eAjPiWQs32zgVlxPeJjJt0SVq/g51ipnQx24ixOii0WaWJYWRsOuIFj2DnGuvu5X
 Ci4jQ/oBUwZ4sLgUMlmuW/eRHbigMZuVFuv+IGPxP7/5REGFo7A8w9R18lFqbt92Gr4h
 YRsAci5dPaZaOJJlm48lzXgrdmtNn0Wr2aAmm2kiuM8Rd7tlInws/CECjxgiH0NYHdJy
 YoC1H+3UTgNwYO1C92mg32tH7BQztgTDEyqgf0ReNF1xI0Pm+8+YlqVKymQM+JT4m7iZ
 ESZMoHVB4OO4/FKXw79MEO71w8JF7uVXGlyAXY5xfvc5Kat4ja1OqQbqjz2xSu93v3ZY
 nQmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1747900088; x=1748504888;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=d5tHoEF081hTBrMTXmDGBdRAELQ7rm+VvY6CJYQNJKY=;
 b=MlfYsB0q/r2uxkdfoBE9Jadt28eH71CDJpAfKmkprhjo2q7T9slwR4IJQ0KQ1GeMFA
 UWBf7kKrbygpoCawD/osmPZ8KeYiiTnyWOwUNcdu2XxxbGi0Xx+vuldBwjstjAbOz8Ta
 JGcCjlhxfBiK+SZJv0WtifBr8Boms+CDonSiO0+PwVPN0HNDEnW/Do6rJJwzEVD9/5xm
 0AT+Bcx8689gM55M85j+M0pltqMkFk3CYDms/csgs6t/sIliIelGHwUPWVL0+4WtLk4V
 BirBj2cod1f9Je32cNqlNOdyhVFj5SsMbImp4YwvHZXT+waRMXgEHUHNOm/S1sASk4zX
 C41g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVtCKs6gEC/v5xYXIkC5rhvaU13wwYKY7Rtd+1S8ikSE6rmo5mUhqBDm4UKKwcEXWM4XPT7vTcHmXQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwgRW6K62BhNFjp77VrGqroz2yAZ2diS8I58Voiip7iFu/Q5HQq
 P2eqxYi5zJ2bu4+UdZ+iagKeRGi/5RFAMyxI/ZnJi3uRoE0DvsWkDbylXi0jFHauyCU=
X-Gm-Gg: ASbGncvZsPbdcKt3jA9f2TDwSD2pMm3topAyCtZjUy8OfbWQeXzV7izQa5R05iZ7bBt
 aH7ttytJ5pH2Tu5Mhbr+xPk3FohJi1L/4r8pz+Zf/VVHvym1d79MTooxmtdqRHQT58B4iWkH9iE
 nW3pFQy3JPWfWJq0P7brtDJgoqcd6y4xaRwumhYODRYyfOUKbRt4W4Sf3ktomQjQ8zsLS1D2DnS
 vE7m7QNzwjq5LhDvWnDbPzdYLHD300flLQsNENe7FdYGo+RPiCWWI9uEjxsPuSEPqzmsILI6oQ1
 RKI36rOXe9Y9eLqMoAxp30t52DvXWHAagPPRBf5eA9NIJgU2mthMBk+uc2Yjdka5jQ==
X-Google-Smtp-Source: AGHT+IGbkJMnGYZ8P7cMd1tkBKxTGBPIh2TO5lh2gkJ9zR4cK2cD3xOSpXi64n3ioGsF9v/Q8vZu2g==
X-Received: by 2002:a5d:588e:0:b0:3a3:772e:e824 with SMTP id
 ffacd0b85a97d-3a3772ee85emr11517266f8f.26.1747900087533; 
 Thu, 22 May 2025 00:48:07 -0700 (PDT)
Received: from [192.168.0.101] ([81.79.92.254])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-3a3620dbc6asm20832300f8f.88.2025.05.22.00.48.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 22 May 2025 00:48:07 -0700 (PDT)
Message-ID: <dcbc785a-2c19-4caf-b33d-b9c5cc315e0f@ursulin.net>
Date: Thu, 22 May 2025 08:48:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915/gem: Allow EXEC_CAPTURE on recoverable
 contexts on DG1"
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: stable@vger.kernel.org, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
References: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20250522064127.24293-1-joonas.lahtinen@linux.intel.com>
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


On 22/05/2025 07:41, Joonas Lahtinen wrote:
> This reverts commit d6e020819612a4a06207af858e0978be4d3e3140.
> 
> The IS_DGFX check was put in place because error capture of buffer
> objects is expected to be broken on devices with VRAM.

I don't quite remember the history and it is a pity 71b1669ea9bd 
("drm/i915/uapi: tweak error capture on recoverable contexts") did not 
spell that out but almost made it sound like uapi disablement for some 
reason. But if there is an userspace fix, and you say VRAM capture is 
broken then that's fine by me.

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

> We seem to have already submitted the userspace fix to remove that
> flag, so lets just rely on that for DG1.
> 
> Cc: stable@vger.kernel.org # v6.0+
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 7d44aadcd5a5..02c59808cbe4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -2013,7 +2013,7 @@ static int eb_capture_stage(struct i915_execbuffer *eb)
>   			continue;
>   
>   		if (i915_gem_context_is_recoverable(eb->gem_context) &&
> -		    GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 10))
> +		    (IS_DGFX(eb->i915) || GRAPHICS_VER_FULL(eb->i915) > IP_VER(12, 0)))
>   			return -EINVAL;
>   
>   		for_each_batch_create_order(eb, j) {

