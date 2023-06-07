Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83D72662E
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 18:41:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D42F210E18F;
	Wed,  7 Jun 2023 16:41:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0654110E18F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 16:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686156089; x=1717692089;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=XMwG0HW7ZAh9b7beVLWs+G/7q2MtIHtqUUYLG77qvu8=;
 b=cikcJHpSFLR48sQT4IomfYqE13JT1cpAProy7Yp7CaXthKmCKpalOpQk
 6AKfRVnxzoQ+OFa3mXyVR+4C6rhbpz2GylkjtJXHref1FKbx/7hZcAakZ
 YuF7c0U609KK/9UJso6M4tRQOk6FLzEwj+jafSD+GaXOW2ncJcXIaVGiF
 4FxadLyRst0sjCUlmWEE97hcm2Y4nhLwZjg2S1TYToYndvQViyvxMwu66
 Jku1KuDJt7+uH9dcJtUWSV6DS42RsUL7AgcFu2rXVF4LZSzEAV3BmYGby
 MxiE4FxYPJ1bX250vgELMPOPZ8uJlWQjkGhvHJNnebom0TaqnuncKVzVo w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="360371740"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="360371740"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 09:41:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10734"; a="956357771"
X-IronPort-AV: E=Sophos;i="6.00,224,1681196400"; d="scan'208";a="956357771"
Received: from nnesher-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.222])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 09:41:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230607150946.1996087-1-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230607150946.1996087-1-matthew.d.roper@intel.com>
Date: Wed, 07 Jun 2023 19:41:01 +0300
Message-ID: <878rcvteci.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Include of display limits
 doesn't need 'display/'
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 07 Jun 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> Drop the unnecessary directory prefix.  This also makes
> intel_display_device.h easier to use from the Xe driver.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 4f931258d81d..706ff2aa1f55 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -8,7 +8,7 @@
>  
>  #include <linux/types.h>
>  
> -#include "display/intel_display_limits.h"
> +#include "intel_display_limits.h"
>  
>  struct drm_i915_private;

-- 
Jani Nikula, Intel Open Source Graphics Center
