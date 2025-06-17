Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0496ADC99B
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 13:39:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BDD10E622;
	Tue, 17 Jun 2025 11:39:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="UFyqq+4M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1968710E636
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 11:39:47 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-4532ff4331cso15634915e9.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jun 2025 04:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1750160385; x=1750765185;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=skUKd7kX+6qk/N8DZyTQpYq7wAOwvanKt+9CuhAfGRI=;
 b=UFyqq+4MQeb9Q64573K7NwCRaaFX5a5kefNRZjE60FoljwtxohyX/FEfkMXnOOZoSw
 MO/D/E7jqAMHY4FJExROHDqDFSwp3Y886vzjiy4rBu12Re62U0sACxndj+Wtaxz28Dgw
 ifiswrIEImq0fRTLHmh/Z7zmLlR6cb6XK5UdBaDWIjnfljtMM+EcIkwt43zgms3Y39Ye
 QtMdi6tefATuuW1vUM65WDVPJSkH0haUk1/ENl84+ADzKr9rNEV6+4eOhN+qf4MnqhqD
 9eCcRDngq9nX2BKHWU6JD+8pPlCIw3glyaEqbE8URSbXDHprIbAEdBk5Wn7OV+t1LOR2
 pN5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750160385; x=1750765185;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=skUKd7kX+6qk/N8DZyTQpYq7wAOwvanKt+9CuhAfGRI=;
 b=InX3G8FkkkDRlhC7NbDPTNl1rxRDqx+6/1dKW6wvQ6BSJQvqs8gEjjrG0ugg7mGKXP
 NAsL8nTHYKaNP30+yyVtPB1eY7YCmT8wYoVUgq+T379SGU9Yh2Ru7rth5B8vgM4qbaPS
 riWNaSAemwey1WDIRHPVjMrGZw7cRvKjhvlyj6bEIqHGjtOLVDoMV2oVHO0aukmGXVmS
 z9rRAsP+zFLpp9oaj7t7AZtXcKHoliTXXdz98mcVuP9rxVYjfjv3yxnkX09ewCoynOSo
 bcuUlu437rjcpqztRXWvMBh6fQ31CMx7PETFGU51aOirSTVitlVt0ZysDFQVChFSQIJh
 QBCA==
X-Forwarded-Encrypted: i=1;
 AJvYcCV19cNAAyUseJC6aP8UBNTsWL3Cc+e4rCYFSENNXPYHZSLfLIyxqoPf8kzM8FtXxFiXXOgDF+NeaIg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9foPCcxSv1wfNg/z37KbkUqfNqMXdZlaTZwia7Jnz2ItmbnM9
 mvlndo8PkF8k/8BA3I/HiUiP45Fgn3VZc/a6Ok94LyTjoZ6qFHxU7ItA5Oo/B/zV7cQ=
X-Gm-Gg: ASbGnctCRRzZm//oN6RjYSlU/iPdtYrDDr5dV3UmLXfrYOnJX60LQK5nikdsa8tPHts
 1PVwpepRliGpwe68QV/XguQb63qb/rBFuPxNu5YXdLms3PNlGT6hygg68QAO3qPspdtM6PM5ZKg
 XuH5+5D/9lQRI6YghztAqU5TxVYKscv1Hseip4zfTf4G4d4SuY/R7E9XjI7bC4vGPxiqJcbqr4Y
 iP85gLDcjAvCa3TUgapwJUud4y2nLhnoHEcXYVeA0fb53Pm2/F8CGKbdNzE0AiZGMlXG6ADFr1d
 8wVDx2uymvgAtI7otj2rtPdLDb/T/8IVGHzhfoHEW7JTMaB0xx6O2Ipzrhh8XW4Cf8JcO+7Q/Is
 3
X-Google-Smtp-Source: AGHT+IFtYjvvanXbg8bAMUYuBVlDVT7vMhwOEuP65viLyBs3hDlbJzdKyRMiPe44dDdoBHdGH3WhYQ==
X-Received: by 2002:a05:600c:4fc3:b0:441:b3f0:e5f6 with SMTP id
 5b1f17b1804b1-4533caecda9mr108943745e9.25.1750160385223; 
 Tue, 17 Jun 2025 04:39:45 -0700 (PDT)
Received: from [192.168.0.101] ([81.79.92.254])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-4532dea1cc5sm178264615e9.16.2025.06.17.04.39.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Jun 2025 04:39:44 -0700 (PDT)
Message-ID: <3e0562fd-ccfa-493b-b1af-601081a9d0b3@ursulin.net>
Date: Tue, 17 Jun 2025 12:39:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Add sanity check for relocation entry pointer
 in execbuffer
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: chris.p.wilson@intel.com, andi.shyti@linux.intel.com,
 krzysztof.niemiec@intel.com, krzysztof.karas@intel.com
References: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
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


On 16/06/2025 15:22, Sebastian Brzezinka wrote:
> This patch adds a defensive check in `eb_relocate_entry()` to validate
> the relocation entry pointer before dereferencing it. It ensures the
> pointer is non-NULL and accessible from userspace using `access_ok()`.
> 
> This prevents potential kernel crashes caused by invalid or non-canonical
> pointers passed from userspace.
> 
> If the pointer is invalid, an error is logged and the
> function returns -EFAULT.
> 
> The failure was observed on a Tiger Lake system while running the IGT
> test `igt@gem_exec_big@single`. An appropriate patch has also been
> submitted to fix the issue on the IGT side.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index ca7e9216934a..8056dea0e656 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1427,6 +1427,12 @@ eb_relocate_entry(struct i915_execbuffer *eb,
>   	struct eb_vma *target;
>   	int err;
>   
> +	/* Sanity check for non-canonical or NULL pointer */
> +	if (!reloc || !access_ok(reloc, sizeof(*reloc))) {

It doesn't look reloc is an user pointer - otherwise there wouldn't be 
simply dereferenced just below. So something looks dodgy here, you 
probably want to dig around a bit to figure out what is really going on.

Regards,

Tvrtko

> +		DRM_ERROR("Invalid relocation entry pointer: %p\n", reloc);
> +		return -EFAULT;
> +	}
> +
>   	/* we've already hold a reference to all valid objects */
>   	target = eb_get_vma(eb, reloc->target_handle);
>   	if (unlikely(!target))

