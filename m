Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F9246F1E4
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D4CF10E204;
	Thu,  9 Dec 2021 17:29:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFB510E204
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:29:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238104444"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="238104444"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:29:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="658828125"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 09 Dec 2021 09:29:23 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Dec 2021 19:29:22 +0200
Date: Thu, 9 Dec 2021 19:29:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YbI88n/N1Fq3nD2z@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
 <488179aa90110d979e61104973b255161ec36057.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <488179aa90110d979e61104973b255161ec36057.1639057801.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/reset: remove useless
 intel_display_types.h include
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

On Thu, Dec 09, 2021 at 03:50:56PM +0200, Jani Nikula wrote:
> Not needed.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_reset.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 63199f0550e6..b8ac454f2d96 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -6,7 +6,6 @@
>  #include <linux/sched/mm.h>
>  #include <linux/stop_machine.h>
>  
> -#include "display/intel_display_types.h"

intel_display_{prepare,finish}_reset() are in intel_display.h
so I'm thinking that is what we want to include here. I guess
atm it gets included via some more circuitous route?

>  #include "display/intel_overlay.h"
>  
>  #include "gem/i915_gem_context.h"
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
