Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A6B394CBDE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2024 10:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51C7D10E86B;
	Fri,  9 Aug 2024 08:09:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PbYYfiFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886B210E86B;
 Fri,  9 Aug 2024 08:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723190967; x=1754726967;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=od8v6A6ppKSQrOwPYMMlWnnUj3X6rmcG0KTTGsd6OLk=;
 b=PbYYfiFLcXtwm4XTpGd5At9yK435FmKHWb/EUBKMZbMJCzBSipmc/XET
 hiNLhEn8Os3NjiEtZVu4L4WXpkRVE9AbfgVzYvplEUYMiyjApmCM7NlNM
 G8TXce0/3WlqYw6gjwOIhTGchkNjn+Jz4iVRx2HRiDruB4Gt6jl/XHMqL
 517W8exm/rJ9YNBLz+4uijTpve5SNlVBAjMxRiRprTlgPp4KX1aADFXsF
 9ZeEwvGHQPE1bd3wn8erjW8f+w7j05RbllnPVuaRP2smw+qaFzgEbyYH/
 RzYDCMes7PacosIKcM9I8Tqh8OPT9PPdQ/J6oGPqUXe2ygGIwbEqv6ZDw w==;
X-CSE-ConnectionGUID: TCtdnfkXTda4O1jTft+fGA==
X-CSE-MsgGUID: Ez+T6R+SRjWI3MVHzzeLIQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="25225149"
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="25225149"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 01:09:27 -0700
X-CSE-ConnectionGUID: Pbf6H4E2SzmFE5LGn51+JA==
X-CSE-MsgGUID: ZGh3RtIqScq2W57aWjanRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,275,1716274800"; d="scan'208";a="61888254"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2024 01:09:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2] drm/xe/display: Change HPD to polling on runtime suspend
In-Reply-To: <20240808070037.3187006-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240808070037.3187006-1-arun.r.murthy@intel.com>
Date: Fri, 09 Aug 2024 11:09:20 +0300
Message-ID: <87v80a2k3z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 08 Aug 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> HPD is interrupt based and on runtime suspend change it to polling as
> HPD is not a wakeup event. A worker thread is scheduled for doing this
> polling and it keeps polling for HPD live status on an internval of 10s.
> On runtime resume disable polling and fallback to interrupt mechanism.
>
> v2: move poll_enable() to xe_display(Imre)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 78cccbe28947..989022d21052 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -315,6 +315,10 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>  
>  	intel_hpd_cancel_work(xe);
>  
> +	/* Enable hpd polling on runtime suspend */

What information does this comment add that is not obvious from the
code?

I'm not against helpful comments, but they need to be something more
than just explaining the same code in English.

BR,
Jani.


> +	if (runtime)
> +		intel_hpd_poll_enable(xe);
> +
>  	intel_suspend_encoders(xe);
>  
>  	intel_opregion_suspend(xe, s2idle ? PCI_D1 : PCI_D3cold);

-- 
Jani Nikula, Intel
