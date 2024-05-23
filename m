Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A55738CCE2A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 10:25:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 619AB10E037;
	Thu, 23 May 2024 08:25:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="Hmx0Auda";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7CFF10E037
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 08:25:48 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id
 ffacd0b85a97d-354ba5663c9so1579978f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 May 2024 01:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1716452747; x=1717057547;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=KWlpsrgTdFMlKdZeJj09DQy7ogfZ63oLDX7W+N9MC7U=;
 b=Hmx0AudaLxT2SwD4Uvqg/A6I6bKc812yy2zep/U5pwqDlLIrDdGHlk2j12vSgN1HoN
 WgXdKwfv6QJtAAhSTwqokDyAS7eT4YllcKiP2NRbt+2L35Ys1PtpvfOH9/OVyQtBn26h
 AODNJ7hHcQqronQaOI5oPfYN4rJD+EL6mwuC0KNGlu+bYW0eq1rLTBoTvA1C8O+AfPL8
 1mqClyu046JJPkoHsO0eVKzWsh6U+AcZ3E0S0ZK1Eo3QeUAYu5UuMQqHJBmK07CzJndi
 CRrwT+2eYil5EmYkC6cfCn15HOjXMhxhZdgEWzRibfJj+OUIZz9Cjpd5dX7hYXFJPDyl
 4aGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716452747; x=1717057547;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=KWlpsrgTdFMlKdZeJj09DQy7ogfZ63oLDX7W+N9MC7U=;
 b=npWFllJusw7oCOn/o1ZTs1lg2ljjDsxFEoSUA7JBwWItgtp6tb8sAivEOTIBK12+7E
 XEuqsfpKnfeau0V+bwkJtvcHZyVy08TCqME4tAaa5frDQfYrzXFHFz74z2fkXInAjboN
 YcuQ/4AgyTcOKEKlN7TImRvAN+ykb2y+nOdFvyDXSm/kcFVbTAhHDCl7TJ+Smbif8On5
 FihnlLiOOFuGkXazzu5da1Fg3jXkR5eDYFHH8rfrc2xTpE8B0Z8oqBBRh219wrbWu2xm
 DTqOCIAY6RPU1ZrN9lfeiaXjDnrEYky0Qz4T36R63ylCDX09xE97exZO7U3YLAtYsapL
 4Wjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWga3bfexuYmIWiVelhhFqOAoHNJ6tVOtEqHgg/FxyFRcig1CEMKRxvY97f5oZu1fHorXfSoUuqbHeVWxbYkX/zLofoMTH9a2qaOL026vnM
X-Gm-Message-State: AOJu0YyMuOnpYugnwkTuGaS/bGOo3cMzq6nftZEe/v+nivATBoME0vkH
 ZUCkf5aninEooZvsSkehsKtZRP3XjLvcYNCCd2GYXE/fParZXyHMnXdhnaZFZG4=
X-Google-Smtp-Source: AGHT+IHLjYW8dANbGfdTBG8MKS5bT5zzCt6MMnjUCO5bG7X7RdBxmhG7mM8qviAApDqwzNJ3eLr4OQ==
X-Received: by 2002:a05:6000:178e:b0:355:189:dd1a with SMTP id
 ffacd0b85a97d-3550189e239mr235651f8f.64.1716452746875; 
 Thu, 23 May 2024 01:25:46 -0700 (PDT)
Received: from [192.168.0.101] ([84.69.19.168])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-354f29f69a1sm2311426f8f.0.2024.05.23.01.25.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 23 May 2024 01:25:46 -0700 (PDT)
Message-ID: <5e5660ac-e14b-4759-a6f6-38cc55d37246@ursulin.net>
Date: Thu, 23 May 2024 09:25:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dpt: Make DPT object unshrinkable
Content-Language: en-GB
To: Vidya Srinivas <vidya.srinivas@intel.com>, intel-gfx@lists.freedesktop.org
Cc: shawn.c.lee@intel.com, Ville Syrjala <ville.syrjala@linux.intel.com>,
 stable@vger.kernel.org
References: <20240520165634.1162470-1-vidya.srinivas@intel.com>
 <20240522152916.1702614-1-vidya.srinivas@intel.com>
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20240522152916.1702614-1-vidya.srinivas@intel.com>
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


On 22/05/2024 16:29, Vidya Srinivas wrote:
> In some scenarios, the DPT object gets shrunk but
> the actual framebuffer did not and thus its still
> there on the DPT's vm->bound_list. Then it tries to
> rewrite the PTEs via a stale CPU mapping. This causes panic.
> 
> Suggested-by: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: stable@vger.kernel.org
> Fixes: 0dc987b699ce ("drm/i915/display: Add smem fallback allocation for dpt")
> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_object.h | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index 3560a062d287..e6b485fc54d4 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -284,7 +284,8 @@ bool i915_gem_object_has_iomem(const struct drm_i915_gem_object *obj);
>   static inline bool
>   i915_gem_object_is_shrinkable(const struct drm_i915_gem_object *obj)
>   {
> -	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE);
> +	return i915_gem_object_type_has(obj, I915_GEM_OBJECT_IS_SHRINKABLE) &&
> +		!obj->is_dpt;

Is there a reason i915_gem_object_make_unshrinkable() cannot be used to 
mark the object at a suitable place?

Regards,

Tvrtko

>   }
>   
>   static inline bool
