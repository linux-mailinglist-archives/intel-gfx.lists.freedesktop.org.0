Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A759DAAE2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2024 16:34:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6088D10EB37;
	Wed, 27 Nov 2024 15:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YMBQO7LG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25BB410EB33;
 Wed, 27 Nov 2024 15:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732721677; x=1764257677;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rHTrr2hv/+YAHY2u6qhsmoi75AL8FjdDlS7pOtBrSuE=;
 b=YMBQO7LGAYGPUDiLgu088GoN2ELCNz1MnwdsrU3ecgt+slKtrAMEN1Tl
 Wkkl7Y259ZCR2jupoiLhoGgt6UpYqf2TruwHqcq6NZbaQGVBGCtoaY8CB
 rjqIBkfMKKxlTNrZHNfAAgEvhNu+FYamWhemsGWeS8ceo8EBDNQ9HFKiA
 YXa0Hq0vVSbO5d4xo7PxP0UboXfw4rfym6o0SFy51cpAnplPFSVBT4P4V
 2dVTBLWrjAP+WTxo8AqJBmmMpb2bT+dPsiSocr9kQkQe5cl+uCkNJl99U
 IUoktgJuQ82lgZgrZJX3vN/KOI2eQGzTEmx7wx5jAeCPZEmvAaPSUo++/ g==;
X-CSE-ConnectionGUID: 4a81N3sAR1yjKVQXoToX2g==
X-CSE-MsgGUID: b+V2P1IGQciDvJQZIHw5mw==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="32302616"
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="32302616"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 07:34:36 -0800
X-CSE-ConnectionGUID: JYp1Mk9GSze1kGPgFo9liA==
X-CSE-MsgGUID: KfkZFiqCQeuQuxERD1xz3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,189,1728975600"; d="scan'208";a="92146536"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 07:34:35 -0800
Date: Wed, 27 Nov 2024 17:34:32 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/dp: use seq buf for printing rates
Message-ID: <Z0c8CH-CYD7F8e9m@black.fi.intel.com>
References: <20241127131838.3268735-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241127131838.3268735-1-jani.nikula@intel.com>
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

On Wed, Nov 27, 2024 at 03:18:38PM +0200, Jani Nikula wrote:
> Hand rolling the buffer overflow handling with snprintf() is a bit
> tedious. The seq_buf interface is made for this. Switch to it.
> 
> Use struct intel_display while at it.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 36 ++++++++++---------------
>  1 file changed, 14 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 053a9a4182e7..4471c8fcd478 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -28,6 +28,7 @@
>  #include <linux/export.h>
>  #include <linux/i2c.h>
>  #include <linux/notifier.h>
> +#include <linux/seq_buf.h>
>  #include <linux/slab.h>
>  #include <linux/sort.h>
>  #include <linux/string_helpers.h>
> @@ -1506,41 +1507,32 @@ bool intel_dp_source_supports_tps4(struct drm_i915_private *i915)
>  	return DISPLAY_VER(i915) >= 10;
>  }
>  
> -static void snprintf_int_array(char *str, size_t len,
> -			       const int *array, int nelem)
> +static void seq_buf_print_array(struct seq_buf *s, const int *array, int nelem)

Perhaps with more users worth introducing as part of core lib?

Andy and I did something similar with kmemdup.
https://lore.kernel.org/linux-gpio/20241126172240.6044-1-raag.jadav@intel.com/

Raag
