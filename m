Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D3610301607
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jan 2021 15:46:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDAB6E1D8;
	Sat, 23 Jan 2021 14:46:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc36.google.com (mail-oo1-xc36.google.com
 [IPv6:2607:f8b0:4864:20::c36])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 346F46E1D8
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Jan 2021 14:46:36 +0000 (UTC)
Received: by mail-oo1-xc36.google.com with SMTP id g46so1786526ooi.9
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Jan 2021 06:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0CEMIdOHkgQwZynQVZC5Kix69xU4YOiyFzHOgJFIIRY=;
 b=Dsh7b5/mKBh75gkHpF4s/sAWqMy6B4mKKcheJAO3xAoznUkaEH3KzFzT2voeVNHh1x
 DF6HupqFt0Tp0cain4sTFrY6DrgcsoZ+rN0jnZ5uUwkPQ/JKd7EmozKVFW547/VCynJR
 YO2PSLbiqnTio5P4T0lLaEo82Xzf3I2XacrVxeDIYtd7DOYG0ShGiAikEHW8sw7Zo51W
 cYjFMmzw4mwSdfURxvld0CJuP5z3OitH9rAE0MEwVv9vo2PoITzTGo3Q7PdRIp5I5l+H
 pQ79ur6GA7MuYt5tTcdFW4iGjUzRudFmGxsL2q2jzmin3SV87LbF//Dl2wQrmmt8tcdI
 y4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=0CEMIdOHkgQwZynQVZC5Kix69xU4YOiyFzHOgJFIIRY=;
 b=t5XSk18+JYzgLwj4S3UQO4JW+tVHZ9K+WByqLdzgRR8vRH5QblTmFDNkk7jRyTxlpO
 06Kh+yTgwhAG47CpLHBS/EIeXrkbsYrYMvjDfS0UEQsj/Xls4Khw3sIro3aK3YnVDteN
 N7FUEZrM38k/71brbQbTyJDIhiTeWv3vzOXIMbzqB4sRjaDleVpJxsOBEu/PG/IZv7wa
 GWIgaqIq275BzykQ9LBcQvWsNjWZaDvSmJbAB4shN4HSI73yHrg5FxAOPKpCa3MBraFB
 CdlgdiwA4oXtmPw+JT9ssplXBCqq3G5n5va7QYCe2spXdavP2/kLYJMyOIfroUCC+/JL
 a/+A==
X-Gm-Message-State: AOAM532qteTObGXjijpObutf2XMxACA7MSR14OveXmfvAK2S3SRbLIXC
 +pXeWQvfDcthdrUMC3/jWdoGK2Q4ny4=
X-Google-Smtp-Source: ABdhPJx3T30vIxMbhlIrYEiBP63kupRdYYvVVyghx2koxXHRJPgHL0j8Y1v+lxAOOuZ5ymog/nM+vg==
X-Received: by 2002:a4a:9e55:: with SMTP id w21mr7217448ook.67.1611413195469; 
 Sat, 23 Jan 2021 06:46:35 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id e205sm2339516oia.16.2021.01.23.06.46.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 23 Jan 2021 06:46:34 -0800 (PST)
Date: Sat, 23 Jan 2021 06:46:33 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20210123144633.GA88631@roeck-us.net>
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
 <20210119144912.12653-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210119144912.12653-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/gem: Almagamate clflushes on
 freeze
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 19, 2021 at 02:49:08PM +0000, Chris Wilson wrote:
> When flushing objects larger than the CPU cache it is preferrable to use
> a single wbinvd() rather than overlapping clflush(). At runtime, we
> avoid wbinvd() due to its system-wide latencies, but during
> singlethreaded suspend, no one will observe the imposed latency and we
> can opt for the faster wbinvd to clear all objects in a single hit.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_gem.c | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index c013148835e6..d3a287bf56c5 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1175,19 +1175,13 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
>  	 * the objects as well, see i915_gem_freeze()
>  	 */
>  
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> -
> -	i915_gem_shrink(i915, -1UL, NULL, ~0);
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
> +		i915_gem_shrink(i915, -1UL, NULL, ~0);
>  	i915_gem_drain_freed_objects(i915);
>  
> -	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
> -		i915_gem_object_lock(obj, NULL);
> -		drm_WARN_ON(&i915->drm,
> -			    i915_gem_object_set_to_cpu_domain(obj, true));
> -		i915_gem_object_unlock(obj);
> -	}
> -
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> +	wbinvd_on_all_cpus();

with CONFIG_SMP=n, this results in:

drivers/gpu/drm/i915/i915_gem.c: In function 'i915_gem_freeze_late':
drivers/gpu/drm/i915/i915_gem.c:1182:2: error: implicit declaration of function 'wbinvd_on_all_cpus'

Other drivers calling this function include <asm/smp.h>.

Guenter

> +	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link)
> +		__start_cpu_write(obj);
>  
>  	return 0;
>  }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
