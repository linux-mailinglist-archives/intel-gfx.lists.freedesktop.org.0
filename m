Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 108A75A7C91
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 13:55:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7239310E327;
	Wed, 31 Aug 2022 11:55:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCDD410E35A
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Aug 2022 11:55:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661946912; x=1693482912;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Wl5uEPQkRQEpLQAk8aLneU+D3VL78/aYNC78Nz1n6oA=;
 b=iXIwVyDmBslLPqS6tBA4kppeRgDFIxXeCj4NaPkkXnGzcqwgRo+HCVwA
 divYzQqVOsfoiCBuNYjqRlHTLgAq20Dl7HUUIApCpLV+v8HFj9dla1avA
 xNjamJhTXEcYNk8+KhWn1pr/x7CxmycTouqHPJtQAWAsi/RgmzdLvm4ix
 Z4xPVrgf4k/WrDfIZr6V+sknbAdrg+aDHHsljQMY/Az1/BrGUjDg24lA2
 S+UKKE9IVNYNgU7f8NfBy8vn3ywkilQGtMAXX1MvKIQsVQ2NKWCH2J4Nf
 1S0FAZNgDUXADMrZco9aojxESZ/1YS4jaKW40g15trwor9h5VCDUo2M1i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="293005326"
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="293005326"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 04:55:12 -0700
X-IronPort-AV: E=Sophos;i="5.93,277,1654585200"; d="scan'208";a="563008499"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2022 04:55:11 -0700
Date: Wed, 31 Aug 2022 14:54:37 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <Yw9L/dnCMKuDkpzJ@ideak-desk.fi.intel.com>
References: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220830085158.577157-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix warning callstack for
 imbalance wakeref
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Aug 30, 2022 at 02:21:58PM +0530, Mitul Golani wrote:
> While executing i915_selftest, wakeref imbalance warning is seen
> with i915_selftest failure.
> 
> Currently when Driver is suspended, while doing unregister
> it is taking wakeref without resuming the device.
> This patch is resuming the device, if driver is already suspended
> and doing unregister process.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_driver.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 1332c70370a6..be0d51c04cc5 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -953,7 +953,9 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  void i915_driver_remove(struct drm_i915_private *i915)
>  {
> -	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_wakeref_t wakeref;
> +
> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);
>  
> @@ -977,18 +979,19 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  
>  	i915_driver_hw_remove(i915);
>  
> -	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>  }
>  
>  static void i915_driver_release(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> +	intel_wakeref_t wakeref;
>  
>  	if (!dev_priv->do_release)
>  		return;
>  
> -	disable_rpm_wakeref_asserts(rpm);
> +	wakeref = intel_runtime_pm_get(rpm);
>  
>  	i915_gem_driver_release(dev_priv);
>  
> @@ -999,7 +1002,8 @@ static void i915_driver_release(struct drm_device *dev)
>  
>  	i915_driver_mmio_release(dev_priv);
>  
> -	enable_rpm_wakeref_asserts(rpm);
> +	intel_runtime_pm_put(rpm, wakeref);
> +
>  	intel_runtime_pm_driver_release(rpm);
>  
>  	i915_driver_late_release(dev_priv);
> -- 
> 2.25.1
> 
