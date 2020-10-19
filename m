Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0772F292D8A
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 20:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F0F16EA2F;
	Mon, 19 Oct 2020 18:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED146EA2F;
 Mon, 19 Oct 2020 18:28:32 +0000 (UTC)
IronPort-SDR: 8wDSee1nGOaGIKKkPaTll5SiFAxbI0XhP0j9QAe+/GJgD54CoCYH5MkF/Vs12enJfJxZacRZyj
 tDQLc0Yyv2/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="154869758"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="154869758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 11:28:25 -0700
IronPort-SDR: oCPWbg7W8Rk4cHTse9EnvjaPFZoGKFkYc9jfqH4eiOV2/STKYbu+vEuwVkYYRgIIJdPXBJLoc9
 bapG/HF2Asfg==
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="315752878"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 11:28:24 -0700
Date: Mon, 19 Oct 2020 14:30:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Kamati Srinivas <srinivasx.k@intel.com>
Message-ID: <20201019183005.GB3149316@intel.com>
References: <20201015085308.3492-1-srinivasx.k@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201015085308.3492-1-srinivasx.k@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/jsl: Remove require_force_probe
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
Cc: hariom.pandey@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 15, 2020 at 08:53:08AM +0000, Kamati Srinivas wrote:
> Removing force probe protection from JSL platform. Did
> not observe warnings, errors, flickering or any visual
> defects while doing ordinary tasks like browsing and
> editing documents in a two monitor setup.

I'm afraid we first need to get a JSL on CI. Or what am I missing?

> 
> Signed-off-by: Kamati Srinivas <srinivasx.k@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 16d4e72bed09..a61195a1883a 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -849,7 +849,6 @@ static const struct intel_device_info ehl_info = {
>  static const struct intel_device_info jsl_info = {
>  	GEN11_FEATURES,
>  	PLATFORM(INTEL_JASPERLAKE),
> -	.require_force_probe = 1,
>  	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(VCS0) | BIT(VECS0),
>  	.ppgtt_size = 36,
>  };
> -- 
> 2.25.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
