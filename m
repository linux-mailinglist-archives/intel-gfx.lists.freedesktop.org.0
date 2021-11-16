Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADCFA453C3D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Nov 2021 23:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469AF88220;
	Tue, 16 Nov 2021 22:32:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7990989F97
 for <Intel-gfx@lists.freedesktop.org>; Tue, 16 Nov 2021 22:32:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="213871063"
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="213871063"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 14:32:55 -0800
X-IronPort-AV: E=Sophos;i="5.87,239,1631602800"; d="scan'208";a="506646873"
Received: from jprocter-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2021 14:32:54 -0800
Date: Tue, 16 Nov 2021 17:32:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: clinton.a.taylor@intel.com
Message-ID: <YZQxlF5B0kcqzJvO@intel.com>
References: <20211115235345.32206-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211115235345.32206-1-clinton.a.taylor@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Remove require_force_probe
 protection
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 15, 2021 at 03:53:45PM -0800, clinton.a.taylor@intel.com wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
>     drm/i915/adlp: Remove require_force_probe protection
> 
>     Removing force probe protection from ADL_P platform. Did
>     not observe warnings, errors, flickering or any visual
>     defects while doing ordinary tasks like browsing and
>     editing documents in a two monitor setup.

some strange alignment here... please remove the extra
tabs here.

> 
>     For more info drm-tip idle run results :
>     https://intel-gfx-ci.01.org/tree/drm-tip/drmtip.html?

hmm... I could swear that I had seen the ADL-P green there a few
days ago as well... But right now I couldn't see ADL-P there...

So that fails on having a *reliable* green CI picture...
Any idea why that is down at this moment?

> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 4c7fcc5f9a97..af9f4988bd88 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -970,7 +970,6 @@ static const struct intel_device_info adl_p_info = {
>  	GEN12_FEATURES,
>  	XE_LPD_FEATURES,
>  	PLATFORM(INTEL_ALDERLAKE_P),
> -	.require_force_probe = 1,
>  	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D) |
>  			       BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1),
> -- 
> 2.33.1
> 
