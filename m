Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6624994AA71
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 16:40:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC2D10E552;
	Wed,  7 Aug 2024 14:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ftFismsR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238F10E552
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 14:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723041623; x=1754577623;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=85+NjYMySd/ROQHkQt7cDe6dL7VMNBUBr+QIS7hIx9c=;
 b=ftFismsRR79gxM7UL/N3DM/uBBEcKCdpb1xrjO+ZYIa/NY7DmqOLbWEI
 5UvgS17dYHUSbyMqcQGFFBcifq/Cjt9mN9Rk1YjpyRm5n3UxQ728+YF1d
 mXTIhpO860JaSYVr6hPEUysd3KLAlx8Y2GKW+re4vEek0+D/BDn2FCUdi
 UhXe2W5x9OM2yGKR6GEC+DrXp30acnSL7gQS8g4ay0pB4+zETeM46XQW8
 twTmoqXRKDdszQpWkhG0gnBWD7NMz9iNu7KG4VLFTAdAjx3UkcwTtB3VV
 IDETKsk/MTpkr7DU0hNjsoyArFIv4CEwBeF89bhGtYHYkKzh1OPLBLEVy Q==;
X-CSE-ConnectionGUID: FDzfdFScS8GxgssmeyCYig==
X-CSE-MsgGUID: /3xz/t2wT9CmBw18OBlnWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11157"; a="32505253"
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="32505253"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:40:22 -0700
X-CSE-ConnectionGUID: i4M2Lq+zS1G4l0JEcBU5RQ==
X-CSE-MsgGUID: Be8NmbIhQmi2Mdmn2Soj1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,270,1716274800"; d="scan'208";a="61815095"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.245.245.8])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2024 07:40:18 -0700
Date: Wed, 7 Aug 2024 15:40:14 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Mikulas Patocka <mpatocka@redhat.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 Zdenek Kabelac <zkabelac@redhat.com>
Subject: Re: [PATCH] i915: change pr_info to pr_info_ratelimited
Message-ID: <ZrOHTg7f8uuzNWnY@ashyti-mobl2.lan>
References: <41f16eed-cc12-ad7d-45ae-bb67815d1728@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41f16eed-cc12-ad7d-45ae-bb67815d1728@redhat.com>
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

Hi Mikulaus,

On Mon, Aug 05, 2024 at 04:29:52PM +0200, Mikulas Patocka wrote:
> Zdenek Kabelac reported that his syslog was flooded with many messages:
> Purging GPU memory, 0 pages freed, 0 pages still pinned, 2029 pages left available.

Checkpatch complains here:

WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)

> It happened when he was testing the VDO device mapper module (which
> requires a lot of kernel memory).
> 
> This commit changes the message to be ratelimited, so that it doesn't spam 
> the syslog.
> 
> Signed-off-by: Mikulas Patocka <mpatocka@redhat.com>
> Reported-by: Zdenek Kabelac <zkabelac@redhat.com>

The sender's SoB should go at the end of the tag list.

> 
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> Index: linux-2.6/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
> ===================================================================
> --- linux-2.6.orig/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c	2024-03-11 12:53:59.000000000 +0100
> +++ linux-2.6/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c	2024-08-05 16:07:49.000000000 +0200
> @@ -375,7 +375,7 @@ i915_gem_shrinker_oom(struct notifier_bl
>  	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
>  
>  	if (freed_pages || available)
> -		pr_info("Purging GPU memory, %lu pages freed, "
> +		pr_info_ratelimited("Purging GPU memory, %lu pages freed, "
>  			"%lu pages still pinned, %lu pages left available.\n",
>  			freed_pages, unevictable, available);

This is not properly aligned. Now a wrapping of up to 100
characters is accepted (however 80 is preferred).

Patch looks good.

Thanks,
Andi
