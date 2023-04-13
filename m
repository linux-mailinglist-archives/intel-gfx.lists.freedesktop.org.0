Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5E36E08B9
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 10:15:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80BF910E030;
	Thu, 13 Apr 2023 08:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9518B10E030;
 Thu, 13 Apr 2023 08:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681373746; x=1712909746;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vu4OEu4n9OHOU9LpnDqXdW4qfU3iQsDUoqGpqlbd5Qs=;
 b=lU7ixeqpxSric/F1+uK29SiQWhzgjOFcxV+O07pwo8ORb4VOkzab+cYE
 ijnraGRiJ3giLixASrFelWMQjI9iP5pLG+hkWdOkI1uGmp5YsQf1g7oW1
 7XqgsD/JJm45W0qtZFyN5WnwpxS6tN7sYYm2JYIZJs9BnjXD/wePBRhWy
 GTFtDydX/xz065QiuFqltdE4sLa8Ey5RjI7TlqUGk79ALRvh9AkVdcslp
 DWLk4HXWOy8rJ7QVrTOgHiJwFBfnF7EQ31Z0nEvIWljag3UheWu8nlgK0
 rSWj8WMxCXHwyhCabYLRaZmhfOf1DnA/ag7oVtp4qqFGdx7gdoD2N+f2P w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="346801339"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="346801339"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:15:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="682871344"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="682871344"
Received: from zbiro-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.212.144])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 01:15:37 -0700
Date: Thu, 13 Apr 2023 10:15:10 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Cong Liu <liucong2@kylinos.cn>
Message-ID: <ZDe6Dvq8p5qsZlCk@ashyti-mobl2.lan>
References: <20230413031349.9026-1-liucong2@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230413031349.9026-1-liucong2@kylinos.cn>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix memory leaks in i915 selftests
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
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Cong,

> Fixes: c3bfba9a2225 ("drm/i915: Check for integer truncation on scatterlist creation")
> 
> Signed-off-by: Cong Liu <liucong2@kylinos.cn>

As Jani suggested we need a commit message here. Would something
like this work for you?

"
We forget to free 'pages' after checking for overflow. Be sure to
properly free the allocated memory before exiting the
fake_free_pages() function.
"

If it's OK for you, then I can add this message and fix the blank
space before pushing this patch.

In any case:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> ---
>  drivers/gpu/drm/i915/selftests/i915_gem_gtt.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> index 5361ce70d3f2..154801f1c468 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
> @@ -69,8 +69,10 @@ static int fake_get_pages(struct drm_i915_gem_object *obj)
>  
>  	rem = round_up(obj->base.size, BIT(31)) >> 31;
>  	/* restricted by sg_alloc_table */
> -	if (overflows_type(rem, unsigned int))
> +	if (overflows_type(rem, unsigned int)) {
> +		kfree(pages);
>  		return -E2BIG;
> +	}
>  
>  	if (sg_alloc_table(pages, rem, GFP)) {
>  		kfree(pages);
> -- 
> 2.34.1
> 
> 
> No virus found
> 		Checked by Hillstone Network AntiVirus
