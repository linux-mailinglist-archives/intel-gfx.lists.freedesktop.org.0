Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8397F596EB6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBC7E911A3;
	Wed, 17 Aug 2022 12:50:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9219116D
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660740591; x=1692276591;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=B1Vo5fW5PzueJYm7BLMvhs2ZvJ1JUTAxZ+c3pgR9TOI=;
 b=K7OOA4cHDuwQQmyQrqyJo/VJjhmH5ZVGhm3F2O6+14AjTYNZ4I2C26b4
 khRvLakyi/JkfyJr2Aif839NfO8D2Y7uGwfd8C9UQlT4nMLJr8rdEb+sm
 oqfKdB+5DiFYptfPbPWgrnZtrSXMaZoYecetf1MREpKCGLxXRbWk6KtW3
 W7gtnRIPOhZdVF4Al/ODN2m5gQLSDoL4MT9dv4Q55MDxlPuhF/4NoLSen
 t4pW8KIV5jlDSU/UDxfeS9/hB2AqOr+wlAyW29lijwgXrd/VqbihCsRr0
 8JVKuDW/p1y35fjs1JnOK1qfosqAFCBqypWokDdKCx/C+POB1wPZeaUFf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10442"; a="290053109"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="290053109"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:49:51 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="583755405"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:49:49 -0700
Date: Wed, 17 Aug 2022 15:49:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <Yvzj6otIylJ8nwoJ@ideak-desk.fi.intel.com>
References: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220812044724.12131-1-mitulkumar.ajitkumar.golani@intel.com>
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

On Fri, Aug 12, 2022 at 10:17:24AM +0530, Mitul Golani wrote:
> While executing i915_selftest, wakeref imbalance warning is seen
> with i915_selftest failure.
> 
> When device is already suspended, wakeref is acquired by
> disable_rpm_wakeref_asserts and rpm ownership is transferred back
> to core. During this case wakeref_count will not be zero.
> Once driver is unregistered, this wakeref is released with
> enable_rpm_wakeref_asserts and balancing wakeref_count acquired
> by driver.
> 
> This patch will fix the warning callstack by adding check if device
> is already suspended and rpm ownership transfer is going on.
> 
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index deb8a8b76965..6530a8680cfd 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1670,7 +1670,13 @@ static int intel_runtime_resume(struct device *kdev)
>  
>  	drm_dbg(&dev_priv->drm, "Resuming device\n");
>  
> -	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count));
> +	/*
> +	 * When device is already suspended, Wakeref is acquired by disable_rpm_wakeref_asserts
> +	 * and rpm ownership is transferred back to core. During this case wakeref_count will
> +	 * not be zero. Once driver is unregistered, this wakeref is released with
> +	 * enable_rpm_wakeref_asserts and balancing wakeref_count acquired by driver.
> +	 */
> +	drm_WARN_ON_ONCE(&dev_priv->drm, atomic_read(&rpm->wakeref_count) && !rpm->suspended);

I can't see how disable/enable_rpm_wakeref_asserts() can lead to this
WARN. They are always called in pairs both in intel_runtime_suspend()
and intel_runtime_resume(), leaving rpm->wakeref_count unchanged.

The root cause is probably somewhere else, incrementing
rpm->wakeref_count without runtime resuming the device.

The WARN() condition is corret, we shouldn't get here with a non-zero
wakeref_count. rpm->suspended - set in intel_runtime_suspend() and
cleared in intel_runtime_resume() - should be always false here, so the
above change would just disable the WARN in all cases.

>  	disable_rpm_wakeref_asserts(rpm);
>  
>  	intel_opregion_notify_adapter(dev_priv, PCI_D0);
> -- 
> 2.25.1
> 
