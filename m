Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C84C860C807
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 11:27:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F3F110E2F0;
	Tue, 25 Oct 2022 09:27:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BE2D10E2F0
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 09:27:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666690051; x=1698226051;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=y/c+ruBwxt30ovLGsBERF/fybqR7NnFu49MS+Nacg5w=;
 b=ANv+I7DS1J8pZZ3Y7Nt9uTM3BKzlw5YimJ0qwVwuTmjN/5EaHmLn34eq
 aBJC+fb5MfKO68J78IH3gU41VaFSyP0IXt8XDnSOhqw4v6FvUsmN7dSWP
 3hwzk+JLKOkH92yI/hvwghB1JyRKmK2WhvBuq1d4rp7l8jUrvCriSvlSQ
 kzwGtrXBKAlr+E9wNpAUGgOGT7LAoYUokUuxJlB4Kfjv76h/m5iFXypza
 mpqzSUaT4fPGZN+DZ5FzSlvEV5WIjT9yBf41Cme1xr8R0AhsTTYTjB/4N
 DGygsvMnlmcVO+yj8uLKeJrYqxJUvPoNEieMWz0hGFVgkVxVjzIVhNs0x A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="309319316"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="309319316"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:27:30 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="806602505"
X-IronPort-AV: E=Sophos;i="5.95,211,1661842800"; d="scan'208";a="806602505"
Received: from arybkin-mobl1.ccr.corp.intel.com (HELO intel.com)
 ([10.252.44.231])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 02:27:29 -0700
Date: Tue, 25 Oct 2022 11:27:26 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Karolina Drobnik <karolina.drobnik@intel.com>
Message-ID: <Y1er/myQsOayPTtb@ashyti-mobl2.lan>
References: <20221025091903.986819-1-karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221025091903.986819-1-karolina.drobnik@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915/i915_gem_context: Remove debug message
 in i915_gem_context_create_ioctl
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> We know that as long as GEM context create ioctl succeeds, a context was
> created. There is no need to write about it, especially when such a message
> heavily pollutes dmesg and makes debugging actual errors harder.
> 
> Suggested-by: Chris Wilson <chris@chris-wilson.co.uk>
> Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks, Karolina!
Andi

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index 1e29b1e6d186..1456ca87c04e 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -2298,7 +2298,6 @@ int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
>  	}
>  
>  	args->ctx_id = id;
> -	drm_dbg(&i915->drm, "HW context %d created\n", args->ctx_id);
>  
>  	return 0;
>  
> -- 
> 2.25.1
