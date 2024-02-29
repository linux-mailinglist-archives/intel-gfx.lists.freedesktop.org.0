Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 134FB86CBF9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 15:49:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9407C10E399;
	Thu, 29 Feb 2024 14:49:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KN0Fr9M0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADC3710E3B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 14:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709218165; x=1740754165;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2J7Jmr0O1ErOK3nKzSNZ7J9xQU3/bu/tzJhlqgUbMQc=;
 b=KN0Fr9M0ujjYNtIABjaNFh/GLTWoNeeoJ8X14EqBBklonq6EGulF0nOT
 B891jGZzYmN0Yyg0kVwy9VNW+yvNtJf0YgqpDnxeM/m+Uojo5Vh5I3a3m
 8lOV58nPxlbFGgHr1qXVCFNHX39aLzcKH7CYeySwfe4ilXJT7Zd8V18IU
 c8dQd8pwfdRyRYfVBfEADZYOd1ib+xsviITe71JUOc/vStJO3mEKMvDhj
 KzT7aN4ju3lO5Nx+DbTaYvCiPgvnK9T6nKs9MgQY0kU6zwuPCTUkMJzVI
 abQHjtvG7/nFv05AOJFWycmBgpDxhOXYHLi4hEFTg4rwWDTJAHPJUjTZT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14842608"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14842608"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 06:49:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="38689998"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 06:49:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, clinton.a.taylor@intel.com,
 shekhar.chauhan@intel.com
Subject: Re: [PATCH] drm/i915/lnl: Modeset sequence change for DP on LNL
In-Reply-To: <20240229025752.651864-1-shekhar.chauhan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240229025752.651864-1-shekhar.chauhan@intel.com>
Date: Thu, 29 Feb 2024 16:49:18 +0200
Message-ID: <87zfvj72c1.fsf@intel.com>
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

On Thu, 29 Feb 2024, Shekhar Chauhan <shekhar.chauhan@intel.com> wrote:
> Currently, the driver is only waiting for 1ms for
> idle patterns. But starting from LNL and beyond,
> the MST wants the driver to wait for 1640us before
> timing out (which we round up to 2ms).
>
> BSpec: 68849
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

Replied in the other thread:

https://lore.kernel.org/r/878r338nhs.fsf@intel.com


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bea441590204..05ba3642d486 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3680,7 +3680,7 @@ static void intel_ddi_set_idle_link_train(struct intel_dp *intel_dp,
>  
>  	if (intel_de_wait_for_set(dev_priv,
>  				  dp_tp_status_reg(encoder, crtc_state),
> -				  DP_TP_STATUS_IDLE_DONE, 1))
> +				  DP_TP_STATUS_IDLE_DONE, 2))
>  		drm_err(&dev_priv->drm,
>  			"Timed out waiting for DP idle patterns\n");
>  }

-- 
Jani Nikula, Intel
