Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D80DDC061AE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 13:53:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4834A10EA89;
	Fri, 24 Oct 2025 11:53:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="ebmD13Ef";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83E8710EA89
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 11:53:43 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4711b95226dso22182865e9.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Oct 2025 04:53:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1761306822; x=1761911622;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id:from
 :to:cc:subject:date:message-id:reply-to;
 bh=dLKkHxaaXLev4S7MszIKXrNS5/5lXSGaSbvt4iwt1po=;
 b=ebmD13EfkCX39Ghz4zLg7WWeYCmGI8J+4nvPj3mdSB0aqEOdrt9WcKWhUjfV+B/63j
 Qg9AfOhMiN1EXIVWPApdxTa61EoxFRHfhXbItLmdS9/XS7Ms4ILQjH65NE9y9r+8NsvC
 vMuyCD6o9WwPr5+SB4VZPkEf4la4UPNSaRG+a6b2U/THasP00hvtYlt1ehjDk+FPG3zV
 9hmdvhbHp84OBHNhMRzVHlsgMA0TkFdOKo6TfUJ3gGnI3WfS2EhmC6OJHugVNC84fDHW
 bNirNwCmp51NAh5yTTwq4fZUokxS4cybpkkn4igYeV3HEvHTXae3IeuLMJ4/vEBJEln2
 Z77A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1761306822; x=1761911622;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dLKkHxaaXLev4S7MszIKXrNS5/5lXSGaSbvt4iwt1po=;
 b=mVYRA2FYJbIOlMJcFgV/DzJA/xCAQYGqnr/5GpqUIShZnIDBx2fUkmwKPLg4CD2sna
 srrLvXjlLym1gBQgJUWK8DYmqZ/ZMlCahO+/gF7Lek3NDzjwzq/gTEuYn28WHR6FefzB
 V0tcMtkUfHkbr3wmx3KcIq9gZ0FpgIyfsSN3pN4EaSuNZ3s8+ZVW4FDLyZ8rB4eADUM8
 l2I/zYVYmejBVf1xd0GiNtoI+I770HGoTy+Yz7eSZYzLE+OXM6oLkTN2irpPquN1Z4e0
 O1XTmTXU6VNaVNC5BBTWHL40sGagYB5zy4h7dE9z2kNG0XTUMzwaG5zeLtHyg3XxzXN8
 zXQg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVUT0yMieMOaJv+LJHjBXGNEh0r3Sm4urc9GOvBwf8tc1UGY2zuBqAni5vbZcaL9bvcpVvG/LhPc34=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yycf3Bc6V5ETQZ42GJEgWetKrGieLXg6FqMR61wDwhBqg4kOPKU
 Wqt31Ex+rF0nuF17BMb/odgTG1NjnkS+sBFFmZC+3hDOpteuBAYWYDN3tEwpUj0B7xw=
X-Gm-Gg: ASbGnctwdSbdSPd6bc6Vw7DGIFFYMYc/ofD39i566AUSr8cwuEumk3CdF0JFeFkfRCj
 HmRpJwu6z9ekY55Om3bbssL1eHUfmqSy3sJISrlr7v8Zktq8apPB5Ps6vP36vULNU7v0ZNOSrxE
 QdVlIN4qYZdeEvflkTR1fh22RotNlgU7LxLzIXSjd++/Xz0mgnWqSrOz631QO021VXwElFhsMLY
 4O4M93nPuNpaILFU2vyhYssb6bGa45kA4GK65aMywtU4SjCVXKTancomvQomSrp+kzzRLNQtDl4
 8JR1Go4SRX2ComNeEeneC1NvGQiogxJQERlQaU3q+UsKZWZDakgx2xEjfU3UjjWfU8ktefwsWoK
 RT0clTYEjcgJ7TxMxiMh8Tl/4sFIANNy3Z8MNuzKmgfP1rbglJHWOkU8A/xTY6I6rDdLTV3AGL+
 hL9jPT0/bU8tnARS4=
X-Google-Smtp-Source: AGHT+IEHDNyAM/AY4b4niK5QxPDuQkNhY2BI2zlFLG8jhvTPww4hi6ttnOXH2lsTX1rfmST7yskKfQ==
X-Received: by 2002:a05:600c:19d4:b0:46e:4a13:e6c6 with SMTP id
 5b1f17b1804b1-47117907234mr218064735e9.19.1761306821463; 
 Fri, 24 Oct 2025 04:53:41 -0700 (PDT)
Received: from [192.168.0.101] ([90.242.12.242])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-429898adc81sm8968280f8f.26.2025.10.24.04.53.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Oct 2025 04:53:41 -0700 (PDT)
Message-ID: <a1d6cf1f-02b6-4c89-84e2-4b2af39829ef@ursulin.net>
Date: Fri, 24 Oct 2025 12:53:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dmabuf: Flush the cache in vmap
To: Jocelyn Falempe <jfalempe@redhat.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Christian Brauner <brauner@kernel.org>,
 Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20251024110432.1313391-1-jfalempe@redhat.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20251024110432.1313391-1-jfalempe@redhat.com>
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


On 24/10/2025 12:04, Jocelyn Falempe wrote:
> On a lenovo se100 server, when using i915 GPU for rendering, and the
> ast driver for display, the graphic output is corrupted, and almost
> unusable.
> 
> Adding a clflush call in the vmap function fixes this issue
> completely.

AST is importing i915 allocated buffer in this use case, or how exactly 
is the relationship?

Wondering if some path is not calling dma_buf_begin/end_cpu_access().

Regards,

Tvrtko

> 
> Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> index f4f1c979d1b9..f6a8c1cbe4d1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
> @@ -77,6 +77,7 @@ static int i915_gem_dmabuf_vmap(struct dma_buf *dma_buf,
>   		return PTR_ERR(vaddr);
>   
>   	iosys_map_set_vaddr(map, vaddr);
> +	drm_clflush_virt_range(vaddr, dma_buf->size);
>   
>   	return 0;
>   }
> 
> base-commit: 0790925dadad0997580df6e32cdccd54316807f2

