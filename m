Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 061576A1B6B
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 12:32:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CB7310E881;
	Fri, 24 Feb 2023 11:32:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A51D610E881
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 11:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677238325; x=1708774325;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QNE2ivYcIEEakQt26hfGKUGoQht28I6ny8Z6VES9eYY=;
 b=HJwgCQS029Y2IinV/bGQrnLlSxysTIRci/jtxaSyjAV/nKlJVFob9RG2
 1/Yqg7Y9ymXqaVRkagks42cc43fmV8gE+d6u8H1NYp4aUhplQINUpfhf/
 GfaQ07TZbwJl/g6XM93N9wJyNhLJlU8Lhl0kvxoXgiGp8ccxZRXdLiN97
 gp7tWuAgqU8VZyq64RjJtti0nZD4BXKUPLZ+oyw85BMVWNTIh+Kvfj2u1
 IL+nSxaXJzbn8GDPHJLbsmqQ6UvNYiadKh7XVAsO8vc5ElXskxGDrilCY
 91uUwm8/ucbxkxVHJfT5Qa8vV5hoTfbRJeOfbet4qNl/3/osG71RYgqYs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="313090006"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="313090006"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 03:32:05 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="796720807"
X-IronPort-AV: E=Sophos;i="5.97,324,1669104000"; d="scan'208";a="796720807"
Received: from ttybulew-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.56.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 03:32:03 -0800
Date: Fri, 24 Feb 2023 12:32:00 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Y/igMDgvmQ+yrwdf@ashyti-mobl2.lan>
References: <20221220112736.161642-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221220112736.161642-1-matthew.auld@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: remove the virtualized start
 hack
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

On Tue, Dec 20, 2022 at 11:27:36AM +0000, Matthew Auld wrote:
> This was mostly needed to differentiate between mappable and
> non-mappable lmem, such that ttm would understand non-mappable ->
> mappable moves (or vice versa), and not just turn them into noops. We
> have since gained proper .intersects() and .compatible() hooks for the
> resource manager, which takes care of this for us.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thank you,
Andi

> ---
>  drivers/gpu/drm/i915/i915_ttm_buddy_manager.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> index a72698a2dbc8..a1bc804cfa15 100644
> --- a/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> +++ b/drivers/gpu/drm/i915/i915_ttm_buddy_manager.c
> @@ -139,13 +139,6 @@ static int i915_ttm_buddy_man_alloc(struct ttm_resource_manager *man,
>  
>  	mutex_unlock(&bman->lock);
>  
> -	if (place->lpfn - place->fpfn == n_pages)
> -		bman_res->base.start = place->fpfn;
> -	else if (lpfn <= bman->visible_size)
> -		bman_res->base.start = 0;
> -	else
> -		bman_res->base.start = bman->visible_size;
> -
>  	*res = &bman_res->base;
>  	return 0;
>  
> -- 
> 2.38.1
