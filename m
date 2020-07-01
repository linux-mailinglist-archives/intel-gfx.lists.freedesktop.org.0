Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD6821133B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 21:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D216E9C4;
	Wed,  1 Jul 2020 19:07:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FDB6E9CF
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 19:07:49 +0000 (UTC)
IronPort-SDR: T0sTZAEnrmrK+TuJ6nWm8UbTYba9Xb8N2hQRfB6D1Vv8MfFW8emTJT2jcnIJjCvod0g6wd5b3A
 UcvEAylnwnOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="126780332"
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="126780332"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 12:07:49 -0700
IronPort-SDR: NrvOyOwAOyOrqSTSWFPuaC1B9JTujcbF8AZY4q8ESwnIFrmxjaQ4brYNTJaRhg2y7+Z2yOuVnO
 6GnG3yZNphkw==
X-IronPort-AV: E=Sophos;i="5.75,301,1589266800"; d="scan'208";a="425690973"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com (HELO
 intel.com) ([10.237.72.190])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 12:07:47 -0700
Date: Wed, 1 Jul 2020 22:07:36 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200701190736.GA17127@intel.com>
References: <20200701180001.15857-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200701180001.15857-1-imre.deak@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the old vs. new epoch counter
 check during hotplug detect
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 01, 2020 at 09:00:01PM +0300, Imre Deak wrote:
> The old epoch counter was left uninited, so the function returned a
> changed state always.
> 
> While at it debug print the old epoch counter as well.
> 
> Fixes: 35205ee9ba46 ("drm/i915: Send hotplug event if edid had changed")
> Cc: Kunal Joshi <kunal1.joshi@intel.com>
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
> index 80bcfff032e9..3f1d7b804a66 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -288,6 +288,7 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  
>  	drm_WARN_ON(dev, !mutex_is_locked(&dev->mode_config.mutex));
>  	old_status = connector->base.status;
> +	old_epoch_counter = connector->base.epoch_counter;

Yep..did it in drm_helper_hpd_irq_event but forgot here..

Thank you very much for spotting!

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  
>  	connector->base.status =
>  		drm_helper_probe_detect(&connector->base, NULL, false);
> @@ -296,11 +297,12 @@ intel_encoder_hotplug(struct intel_encoder *encoder,
>  		ret = true;
>  
>  	if (ret) {
> -		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s(epoch counter %llu)\n",
> +		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\n",
>  			      connector->base.base.id,
>  			      connector->base.name,
>  			      drm_get_connector_status_name(old_status),
>  			      drm_get_connector_status_name(connector->base.status),
> +			      old_epoch_counter,
>  			      connector->base.epoch_counter);
>  		return INTEL_HOTPLUG_CHANGED;
>  	}
> -- 
> 2.23.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
