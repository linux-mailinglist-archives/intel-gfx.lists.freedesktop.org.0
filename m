Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8A66FDA6E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 11:10:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C91910E468;
	Wed, 10 May 2023 09:10:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE8110E468
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 09:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683709829; x=1715245829;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=P8JnD93ZHRpLVfTx9my1n/wiAw0EsobF7DRmHmhsXgQ=;
 b=fkrTFpUAke2EPDo1oYrowtetYLCEgwd3RVjCoQ0b6fqe5w7z8JpA4Zk0
 fE/X8PDA4tCD4AS97pEuXIYO3oy2BwY49flN5QxrLVV7lZPztQnzyMT/y
 LnZ+BQC3j3HtPHzwgy/S9c17ymOK5dCr/x0xuOFjHi8bOjeHsflenWALY
 /hajJXa7++mp7JIma07v6NbCWObNuOOqgAFXjLeLojwKtnfRBB8WbFZuT
 R8CmXQrHqe5Jk5kKYe7Si3Cc5WAM9TgxaF4Clh+YirPyfCZhC7Y3fPyi2
 H6RdVCnfPxjzs2tIeOU0QyOeI1DmpJ8LtLtDc0WdVIGBG4Ky+woWjvzL3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="329786573"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="329786573"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 02:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10705"; a="823484504"
X-IronPort-AV: E=Sophos;i="5.99,264,1677571200"; d="scan'208";a="823484504"
Received: from gchung-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.252.37.154])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 02:10:26 -0700
Date: Wed, 10 May 2023 11:10:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Jouni =?iso-8859-15?Q?H=F6gander?= <jouni.hogander@intel.com>
Message-ID: <ZFtffzlkDWujpMoH@ashyti-mobl2.lan>
References: <20230510085043.599326-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230510085043.599326-1-jouni.hogander@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix typo in intel_frontbuffer
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
Cc: intel-gfx@lists.freedesktop.org, chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jouni,

On Wed, May 10, 2023 at 11:50:43AM +0300, Jouni Högander wrote:
> Fix obvious typo in intel_frontbuffer forward declaration.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 830c11431ee8..cb362b09bf21 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -18,7 +18,7 @@
>  #include "i915_vma_resource.h"
>  
>  struct drm_i915_gem_object;
> -struct intel_fronbuffer;
> +struct intel_frontbuffer;

Then I guess this is not necessary.

Andi

>  struct intel_memory_region;
>  
>  /*
> -- 
> 2.34.1
