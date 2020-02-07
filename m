Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF811559CF
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:40:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19BFF6FCDE;
	Fri,  7 Feb 2020 14:40:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95626FCDE
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 14:40:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:40:16 -0800
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="225396147"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:40:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200207135048.2788199-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200207135048.2788199-1-chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 16:40:11 +0200
Message-ID: <87lfpe1mwk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix force-probe failure message
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
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 07 Feb 2020, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Do not try and deference the i915 private before it has been allocated
> and attached to the drvdata!
>
> Fixes: 7daac72e9a3f ("drm/i915/pci: conversion to drm_device based logging macros.")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Cc: Jani Nikula <jani.nikula@intel.com>

Whoops!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index da337aee632e..24b1f0ce8743 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -963,7 +963,7 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	if (intel_info->require_force_probe &&
>  	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> -		drm_info(&pdev_to_i915(pdev)->drm,
> +		dev_info(&pdev->dev,
>  			 "Your graphics device %04x is not properly supported by the driver in this\n"
>  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
