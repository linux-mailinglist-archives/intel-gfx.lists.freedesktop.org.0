Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D7E715A679B
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 17:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D98A410E13B;
	Tue, 30 Aug 2022 15:44:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 852F610E13B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 15:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661874264; x=1693410264;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=AoEM3zlWYC+tLcwQTDgu9UB3/Hd39qk9lM99AOMhKtE=;
 b=elxsV/YCacgquE5D8ZuiWmV0YsiYqqVEdqMJ84uOy6YqWMc3aCjVHykY
 Xp/6jJXL0c0ZEruYjMEn3CeYswox7vim7kcIk3fS7dhuNCelzgDt+dIRa
 I/QWJnOrjmPo/8cqJM0GwHP7+emyxO0+G/H01koB9uCj37G9yeziX+80Z
 C84yUiTsjO5M3K/qN9ruGCOsUMCC6xqHPFluP6w3wkVqSC9f8c0aIgKGQ
 i9vER/m5iRhmM9W44ODjS8B5oPq+DFX/JCwN1C4tIuv6MfzfXWFM0CJm8
 8IDvusljDBX730Y5VonD5abwFwerdWstVcCsYML8m5BVvdFjpBAT0xVWU Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="295212217"
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="295212217"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 08:44:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,275,1654585200"; d="scan'208";a="588653843"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 08:44:22 -0700
Date: Tue, 30 Aug 2022 18:43:48 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <Yw4wNANUwyokCJg6@ideak-desk.fi.intel.com>
References: <20220829083124.368196-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220829083124.368196-1-mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [Intel-gfx] drm/i915/display: Fix warning callstack for
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

On Mon, 29 Aug 2022 14:01:24 +0530, Mitul Golani wrote:
> While executing i915_selftest, wakeref imbalance warning is seen
> with i915_selftest failure.
> 
> Currently when Driver is suspended, while doing unregister
> it is taking wakeref without resuming the device.
> This patch is resuming the device, if driver is already suspended
> and doing unregister process. It will check the suspend state and
> if driver is not resumed before taking wakeref then resume before
> it.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 1332c70370a6..281bf6cd5e4c 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -953,7 +953,11 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  void i915_driver_remove(struct drm_i915_private *i915)
>  {
> -	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	intel_wakeref_t wakeref = 0;

Initing wakeref right before assigning to it is redundant.

> +	/*
> +	 * Resuming Device if already suspended to complete driver unregistration
> +	 */

No need for the above comment, which the function name makes clear
already.

> +	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>  
>  	i915_driver_unregister(i915);
>  
> @@ -977,18 +981,20 @@ void i915_driver_remove(struct drm_i915_private *i915)
>  
>  	i915_driver_hw_remove(i915);
>  
> -	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> +	if (wakeref)
> +		intel_runtime_pm_put(&i915->runtime_pm, wakeref);

wakeref can't be 0, so the call can be unconditional.

>  }
>  
>  static void i915_driver_release(struct drm_device *dev)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_runtime_pm *rpm = &dev_priv->runtime_pm;
> +	intel_wakeref_t wakeref = 0;
>  
>  	if (!dev_priv->do_release)
>  		return;
>  
> -	disable_rpm_wakeref_asserts(rpm);
> +	wakeref = intel_runtime_pm_get(rpm);
>  
>  	i915_gem_driver_release(dev_priv);
>  
> @@ -999,7 +1005,9 @@ static void i915_driver_release(struct drm_device *dev)
>  
>  	i915_driver_mmio_release(dev_priv);
>  
> -	enable_rpm_wakeref_asserts(rpm);
> +	if (wakeref)
> +		intel_runtime_pm_put(rpm, wakeref);
> +
>  	intel_runtime_pm_driver_release(rpm);
>  
>  	i915_driver_late_release(dev_priv);
