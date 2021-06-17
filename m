Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 469453ABAB6
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 19:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14ECE6E970;
	Thu, 17 Jun 2021 17:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44C796E971
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 17:36:57 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id c84so3934276wme.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 10:36:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=hRboyT3Px4Bh5KPhImfvUXYzcpIAxMeOVL/V1Z4UHPE=;
 b=RR+u6A/06lfdqDqYmXZVMQjZG2N60Diui/M/YZ2oB28+Wa74KYcN/p1pfKLaaIg3S0
 +E64VBEumEsYQsXjI26hKD1Kv9XL9B5fe4flODe3AZ9sxyuZOTGQ0Z8hFxDr77yEcqnU
 Z7y9+7J5h170T/OeO0cgC5cSsrimM4jZghHLM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=hRboyT3Px4Bh5KPhImfvUXYzcpIAxMeOVL/V1Z4UHPE=;
 b=CkOo9ho2THfe+DsRVcYPVas8ZZNkb2G2QcsiEHG30Gm4wS9Am4NSlrPB0mwbCn6yIe
 hrzbZ3OWciupx4lTCQ6jc76pkSGQe9iKnBH4hDQKSIRg2U6YYZW0DVxdXnvQM++mg25K
 cOtcQRAubQmY8p2jsc1Q2DOhFbF+QJs2n+c+/gRL17OSe29FJwBRLCb+XfQ40iNpqYv4
 dWq23CwcaWyKoGilh8K1C0IR65WZTJDT2nU8lzECjHz5zCB0WJ6nmXGsGAeBtt/YR91v
 JJtpA89dL2NIJ6j5QZWOmWFeop30Y5GVqny0KzP6z9cBpXd/ImBKcodtlMm8GS3KIBWW
 M0EQ==
X-Gm-Message-State: AOAM5322OvI3kKqGKyYaRxae4OLHFHqIVOuvpmvZop+yXHteucmAhocW
 VTuEO7zi/yZ16zOmdUs11Cq0kg==
X-Google-Smtp-Source: ABdhPJymg8rF8PgFQgt+R9gf2l9QwPwixcZwWeo5KN3MgGywFLFVuPNg0334YonJgaX8o67kjenwdg==
X-Received: by 2002:a05:600c:2103:: with SMTP id
 u3mr6673005wml.0.1623951415925; 
 Thu, 17 Jun 2021 10:36:55 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o20sm8356179wms.3.2021.06.17.10.36.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 10:36:54 -0700 (PDT)
Date: Thu, 17 Jun 2021 19:36:52 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Wan Jiabing <wanjiabing@vivo.com>
Message-ID: <YMuINKQ/ScxdkCSx@phenom.ffwll.local>
Mail-Followup-To: Wan Jiabing <wanjiabing@vivo.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 CQ Tang <cq.tang@intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <20210615113522.6867-1-wanjiabing@vivo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210615113522.6867-1-wanjiabing@vivo.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove duplicate include of
 intel_region_lmem.h
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
Cc: dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 15, 2021 at 07:35:20PM +0800, Wan Jiabing wrote:
> Fix the following checkinclude.pl warning:
> drivers/gpu/drm/i915/gt/intel_region_lmem.c
> 8	#include "intel_region_lmem.h"
>      12	#include "intel_region_lmem.h"
> 
> Signed-off-by: Wan Jiabing <wanjiabing@vivo.com>

Applied to drm-intel-gt-next, thanks for your patch.
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index f7366b054f8e..119eeec98837 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -9,7 +9,6 @@
>  #include "intel_region_ttm.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
> -#include "intel_region_lmem.h"
>  
>  static int init_fake_lmem_bar(struct intel_memory_region *mem)
>  {
> -- 
> 2.20.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
