Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1AA712C0B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 19:50:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF3410E1E1;
	Fri, 26 May 2023 17:50:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F332B10E1E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 17:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685123429; x=1716659429;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=K6j9TB+O7v6k8fGExde5lyeuQ+tViMEdcB7t2z2jAzM=;
 b=cG9MznC6PAC1Km8t1EziuBNnMDIhiAv+lqdjbL1hvr0Imj4OHbgOAs3o
 8ryo+6uVX5lrYTYpBBE02kfWBGOie572FyvJv+qnTLByxxxDKAlDWI8OY
 WidiY+GGvsXk9Rj30VPK0ahXhJlJ6QjP86WmAyrvO7q9n6SBqrKWF4Rtl
 tfRP2rnvZCMzWTnThC6JbCrBHeXGulFPIu+re6dktdJl1L+gIfyvG0eUg
 /By3/vG9uc4y4fZBgpgTDfOfDsvFcahm/jWyHX5vCi/U8fCUiJKcDUnHG
 Qh0xf6PWK7x5aozN8BUXgY2IBo8Shq+MZUClbnBE3vfDOGXK67U2ROQCE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="354277911"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="354277911"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:50:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="879614637"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="879614637"
Received: from cyrillet-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.53.219])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 10:50:28 -0700
Date: Fri, 26 May 2023 19:50:25 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZHDxYQ3oep0K/5xO@ashyti-mobl2.lan>
References: <cover.1685119006.git.jani.nikula@intel.com>
 <9ee9e7d7a0a7ad4ff03c14e64b95d3fbcb7885a4.1685119007.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ee9e7d7a0a7ad4ff03c14e64b95d3fbcb7885a4.1685119007.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 10/15] drm/i915/gem: annotate maybe unused
 but set variable c
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Fri, May 26, 2023 at 07:38:03PM +0300, Jani Nikula wrote:
> Prepare for re-enabling -Wunused-but-set-variable.
> 
> The variable 'c' appears unused, but I'm not sure what should be done
> with it. Annotate it with __maybe_unused.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index cad4a6017f4b..33d5d5178103 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -455,7 +455,7 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
>  		struct page *page;
>  		void *data, *vaddr;
>  		int err;
> -		char c;
> +		char __maybe_unused c;

Yes... it's only initialized... maybe we need to come out with a
version of __get_user() that doesn't need 'c'. I think the
__maybe_unused fits good here.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

>  
>  		len = PAGE_SIZE - pg;
>  		if (len > remain)
> -- 
> 2.39.2
