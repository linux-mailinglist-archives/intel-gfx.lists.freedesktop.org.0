Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E70F9A9C37
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:20:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C61210E609;
	Tue, 22 Oct 2024 08:20:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RDP6/bOe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C6110E1CE;
 Tue, 22 Oct 2024 08:20:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585208; x=1761121208;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nm01cl+h2YzLRmBMSq6mKanbQhKF+pe3IHltRaqzpDQ=;
 b=RDP6/bOe4uugKOk4xBhnjAr5wYH3vtvwKpoMd72dF9PVix1q93m9D4S7
 TTGKPB/pewTLbuQR00/RunWuM0RK0c4cXF9gB3oNXDQh3ojc1ug4MVK02
 U6Hf14hJZS3sue/EPhnAUA3aPmDtASOZbct6UPhoPbrcZfEPQj1XoWfT2
 yevzSwfCIC/QspmvLw+GkiZK3YGjB3Tu/+Gfy8YZ9XHJeKXDFG3n/vLeJ
 fxd/f6nc+qY6YwPi7fZ0ndRVuqQoDjKkn+ElgdOVebxMVjy4VIc2kaY/H
 tWgWrH6Ujv1P7/hNhI0uwCUdbwPYbA3hggr7koQUYJF33q/17UOLj93H/ A==;
X-CSE-ConnectionGUID: VYJ57GCZRy69mREW7XKIZw==
X-CSE-MsgGUID: c+yq+KjmRC+WxsZvB4uxNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39649857"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="39649857"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:20:07 -0700
X-CSE-ConnectionGUID: lCii77FcQvO1V6oRzYPzTw==
X-CSE-MsgGUID: G+8W2z9gSCW87/2Y4UNd7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="84384249"
Received: from sosterlu-desk.ger.corp.intel.com (HELO [10.245.244.157])
 ([10.245.244.157])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:19:53 -0700
Message-ID: <ef474dc3-d338-4645-a0e6-25ca3de7ffda@intel.com>
Date: Tue, 22 Oct 2024 09:19:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [drm-intel-next PATCH] drm/xe: fix build failure originating from
 backmerge
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20241022080943.763580-1-jani.nikula@intel.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20241022080943.763580-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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

On 22/10/2024 09:09, Jani Nikula wrote:
> ../drivers/gpu/drm/xe/display/xe_display.c: In function ‘xe_display_pm_shutdown’:
> ../drivers/gpu/drm/xe/display/xe_display.c:382:27: error: passing argument 1 of ‘intel_dmc_suspend’ from incompatible pointer type [-Werror=incompatible-pointer-types]
>    382 |         intel_dmc_suspend(xe);
>        |                           ^~
>        |                           |
>        |                           struct xe_device *
> In file included from ../drivers/gpu/drm/xe/display/xe_display.c:24:
> ../drivers/gpu/drm/i915/display/intel_dmc.h:22:46: note: expected ‘struct intel_display *’ but argument is of type ‘struct xe_device *’
>     22 | void intel_dmc_suspend(struct intel_display *display);
>        |                        ~~~~~~~~~~~~~~~~~~~~~~^~~~~~~
> 
> Fixes: c141cf76918e ("Merge drm/drm-next into drm-intel-next")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Acked-by: Matthew Auld <matthew.auld@intel.com>


> ---
>   drivers/gpu/drm/xe/display/xe_display.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 957ae763531d..ca00a365080f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -379,7 +379,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>   
>   	intel_opregion_suspend(display, PCI_D3cold);
>   
> -	intel_dmc_suspend(xe);
> +	intel_dmc_suspend(display);
>   }
>   
>   void xe_display_pm_runtime_suspend(struct xe_device *xe)
