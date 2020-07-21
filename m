Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2496D228107
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jul 2020 15:35:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45FB6E1D7;
	Tue, 21 Jul 2020 13:35:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 797B36E1D7
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jul 2020 13:35:05 +0000 (UTC)
IronPort-SDR: 4+KGvZtJWAn2rIJp4DwRW1JGTRWI710tVm8umJdmwoWqqhX7lEJ9i/562Kxa+sKjrofUPoT34a
 UtIdaZHj4rEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9688"; a="214781341"
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="214781341"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 06:35:04 -0700
IronPort-SDR: gWTjGa9aWzE+YZtp3tcSUKBTxf50WhMtpiTjDUKfMZTY+2g7kG5sleapo+DDPVXcR0dAVrppf7
 jmVo2Msrz1+Q==
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; d="scan'208";a="431998412"
Received: from ideak-desk.fi.intel.com ([10.237.68.147])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 06:35:03 -0700
Date: Tue, 21 Jul 2020 16:32:17 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200721133217.GA24622@ideak-desk.fi.intel.com>
References: <20200717120425.20947-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200717120425.20947-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC] drm/i915: Disable connector polling at
 runtime suspend
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jul 17, 2020 at 05:34:25PM +0530, Anshuman Gupta wrote:
> While i915 device is in runtime suspend, DRM connector polling
> causing device to wakeup from runtime suspend.
> This harm overall cpu idle statistics, therefore
> disabling polling while in runtime suspend.

Before disabling polling we would need to enable hotplug interrupts
during the runtime suspended state. Also I haven't seen yet stats where
polling (which has a 10 sec period) have a significant effect on
idle residencies.

> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
> index 5fd5af4bc855..1229c72f19c9 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_drv.c
> @@ -1595,6 +1595,8 @@ static int intel_runtime_suspend(struct device *kdev)
>  
>  	disable_rpm_wakeref_asserts(rpm);
>  
> +	drm_kms_helper_poll_disable(&dev_priv->drm);
> +
>  	/*
>  	 * We are safe here against re-faults, since the fault handler takes
>  	 * an RPM reference.
> @@ -1699,6 +1701,8 @@ static int intel_runtime_resume(struct device *kdev)
>  	 */
>  	intel_gt_runtime_resume(&dev_priv->gt);
>  
> +	drm_kms_helper_poll_enable(&dev_priv->drm);
> +
>  	/*
>  	 * On VLV/CHV display interrupts are part of the display
>  	 * power well, so hpd is reinitialized from there. For
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
