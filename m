Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A52B3ABACB
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 19:44:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 922F16E974;
	Thu, 17 Jun 2021 17:44:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com
 [IPv6:2a00:1450:4864:20::332])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 252A16E975
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 17:44:36 +0000 (UTC)
Received: by mail-wm1-x332.google.com with SMTP id
 f16-20020a05600c1550b02901b00c1be4abso6933231wmg.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 10:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=0gu9khqafYbRngyKiTFSC+bYHLyhKbFlrZ0UOe7U7qE=;
 b=TtQWcNMpgBza9QW4TQTgS7qaug29DGNm1h5of6PDbO5NKu/566NDNLdiXFPjsk/tPn
 5MQuis9g9zgNew6kPlb2UPtbpgxrY/g+J+IygEQrlm/xIfJCIS9VtJivuDmk2/k1kvtr
 T6jJmg1SmjBCk9i6QpHnkerzC5uA+d5z+NOdw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=0gu9khqafYbRngyKiTFSC+bYHLyhKbFlrZ0UOe7U7qE=;
 b=guf/ElrE8mT8rGnFO2G9+n7L6T2XlzBfousqY2/VJCuE3yV6lFecZ8lvYCJ/3YgI3E
 uzHU5lJEqqOuz2HoD4WEM4Vt9mZtmMrbqEMp3+8JGKdFD2glPzynrxC35aoKsv8niDxO
 uEikLNCLzBQRNqG71ClVnBT6ZovG06r/1V35oPbuSExwB+JBQaUFsqz9/lna2+8tfryz
 IyBnBjsu+GUt3CYnSlhNHk8R5MkFyTPEcomMu+HV7MIIwQczIePjPx++iCGQI4DgtXtL
 OhBVKkeMs8rW8sPJrj4OtPjIQ06NZ1lgal8Do0+sBmK4r8zG3XmbrKXlf3a5RANw6kOg
 zwbg==
X-Gm-Message-State: AOAM5309R094F32rkTS+1/sE6MBafuMSXIyUKIgKnhNIHbJdyIg0OQ+r
 sJaEKbMojZeoGXTFWZq+00Lw6A==
X-Google-Smtp-Source: ABdhPJyTvxlyO/vdBn2yGT4wglYu6U9uOEjCwb9SQTK3XbdJmVJMN8xZehNwz7qHud6fuzXVGMfreA==
X-Received: by 2002:a7b:c110:: with SMTP id w16mr6685991wmi.4.1623951874860;
 Thu, 17 Jun 2021 10:44:34 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id t9sm5506437wmq.14.2021.06.17.10.44.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Jun 2021 10:44:34 -0700 (PDT)
Date: Thu, 17 Jun 2021 19:44:32 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
Message-ID: <YMuKAHhaYOaLP8JL@phenom.ffwll.local>
Mail-Followup-To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>,
 jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, airlied@linux.ie,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
References: <1623823318-6759-1-git-send-email-jiapeng.chong@linux.alibaba.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1623823318-6759-1-git-send-email-jiapeng.chong@linux.alibaba.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Fix duplicate included
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jun 16, 2021 at 02:01:58PM +0800, Jiapeng Chong wrote:
> Clean up the following includecheck warning:
> 
> ./drivers/gpu/drm/i915/gt/intel_region_lmem.c: intel_region_lmem.h is
> included more than once.
> 
> No functional change.
> 
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>

Already merged another one of these:

commit 6796c772850574ec0a9adc977e9889606b23d0f4 (HEAD -> drm-intel-gt-next, drm-intel/drm-intel-gt-next)
Author: Wan Jiabing <wanjiabing@vivo.com>
Date:   Tue Jun 15 19:35:20 2021 +0800

    drm/i915: Remove duplicate include of intel_region_lmem.h

Thanks anyway.

Cheers, Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index f7366b0..aa3cfca 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -5,7 +5,6 @@
>  
>  #include "i915_drv.h"
>  #include "intel_memory_region.h"
> -#include "intel_region_lmem.h"
>  #include "intel_region_ttm.h"
>  #include "gem/i915_gem_lmem.h"
>  #include "gem/i915_gem_region.h"
> -- 
> 1.8.3.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
