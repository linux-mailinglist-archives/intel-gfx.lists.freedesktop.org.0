Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 731B365472E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 21:35:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3D0710E582;
	Thu, 22 Dec 2022 20:35:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A593810E582
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Dec 2022 20:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671741343; x=1703277343;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=y1c6/jQBYQnK/B2o4wZhSLg4u93oQOw+IowwlhAnIxI=;
 b=diCLr/AP29o3pcdoRCflEm0mb64jp/YvXMTA6bt66TejpCyFV8/G74ji
 GML7uPtin2g5etRyx0skIO35llBQVWuizUdQPU0F2/hN6PhP/Fdr5ctC3
 CZ7KPPFDQbrUyqe2vnPoyaqwxJsi+kqbmel9ZcYHMTGKEazaHcnqv5Mmh
 L/y7lY77wQiStXljatm4a8Ieuvgv2HVgZd4YqXCC00W25elGpCZ10n0/S
 xQtFiJMXCpruErgy3orlbEauHBtz9+2opPbFAFb2t+zU7nAym5xJtZjyb
 Yb+6k8sN86pW/RmDJJcBhpWdGx0nCq9Bk6kvh7HFvjWxD+HZtZn0fWBFT g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="317857973"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="317857973"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 12:35:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10569"; a="715285624"
X-IronPort-AV: E=Sophos;i="5.96,266,1665471600"; d="scan'208";a="715285624"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2022 12:35:41 -0800
Date: Thu, 22 Dec 2022 22:35:38 +0200
From: Imre Deak <imre.deak@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <Y6S/msVyeS9dZoGH@ideak-desk.fi.intel.com>
References: <20221222201804.1380963-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221222201804.1380963-1-maarten.lankhorst@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush power delayed put when
 connector init failed
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 22, 2022 at 09:18:04PM +0100, Maarten Lankhorst wrote:
> When intel_dp_init_connector fails, some power wells used in dp aux
> communication may not be completely disabled yet. This may result in a
> null pointer dereference when icl_aux_pw_to_phy() is called from
> icl_combo_phy_aux_power_well_disable() after the encoder and connector
> are already freed.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
> This approach better?

Looks ok to me, thanks for fixing it. I think Jani's idea is good to
refactor things wrt. the encoder hooks, but imo that could be done later
keeping the fix simpler, so:

Acked-by: Imre Deak <imre.deak@intel.com>

> 
>  drivers/gpu/drm/i915/display/intel_dp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index bf80f296a8fd..8cf1d6ca86f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5492,6 +5492,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  	return true;
>  
>  fail:
> +	intel_display_power_flush_work(dev_priv);
>  	drm_connector_cleanup(connector);
>  
>  	return false;
> -- 
> 2.37.2
> 
