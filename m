Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 350FB9C4255
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 17:03:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33D3B10E2E4;
	Mon, 11 Nov 2024 16:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fgJJGZQT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 878BD10E166;
 Mon, 11 Nov 2024 16:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731341022; x=1762877022;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=OOg/uOrqNyrjAm9AmqY3VdQSMjVxcBMBqm8U2UkP1Ak=;
 b=fgJJGZQTpouiodDBdWwsWlKC/RL2PXZlEIpiucX+lCabx8TOTBru56jP
 8dccIAqav5T6TV1XtX2E1WeyzsJZojEc+EPGU7JF8RHIJAeklVYGQ7vDH
 WBQ1DIYAt/YIhYM4chTC4srfngj74xPvdgq8qb7ryQwIMw2ybyQOp+9zh
 MSuxpGknLfHAgwOYmN/7UHOat4btqgD38izzwhBkngfdCTNsT/SIaNsFL
 Umqo1+OKkItilqEOSOErwhlDnaA2rmszW4CfEvWBafgjIk96mlSEuSaIs
 NjKwWguY4FqeUbO0IdWVh9wtzfkvICCBvXflFRbXbZJWJ/pD6X/TLkY1Y A==;
X-CSE-ConnectionGUID: lk2icqcCT7ueX6Y1YK4OYA==
X-CSE-MsgGUID: 8S/RhlEpT+24fA18rGA3WQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11253"; a="34937308"
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="34937308"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:03:42 -0800
X-CSE-ConnectionGUID: N3nidEDOSQSBGb7nNuZHCg==
X-CSE-MsgGUID: mM4hXj88SOWih9QNzO9vYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,145,1728975600"; d="scan'208";a="86956752"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 08:03:40 -0800
Date: Mon, 11 Nov 2024 18:04:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 4/8] drm/i915/mst: use primary_encoder in fake mst
 encoder creation
Message-ID: <ZzIq_443iIDYhhJ6@ideak-desk.fi.intel.com>
References: <cover.1731011435.git.jani.nikula@intel.com>
 <96be1ba5dcaf1a758f6b75527374b881bd01dd4a.1731011435.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <96be1ba5dcaf1a758f6b75527374b881bd01dd4a.1731011435.git.jani.nikula@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 07, 2024 at 10:32:17PM +0200, Jani Nikula wrote:
> Use a primary_encoder local variable in
> intel_dp_create_fake_mst_encoder() for clarity.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 558cf13b977f..6d0b4a8f4849 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1789,6 +1789,7 @@ static const struct drm_dp_mst_topology_cbs mst_cbs = {
>  static struct intel_dp_mst_encoder *
>  intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe pipe)
>  {
> +	struct intel_encoder *primary_encoder = &dig_port->base;
>  	struct intel_dp_mst_encoder *intel_mst;
>  	struct intel_encoder *encoder;
>  	struct drm_device *dev = dig_port->base.base.dev;
> @@ -1806,8 +1807,8 @@ intel_dp_create_fake_mst_encoder(struct intel_digital_port *dig_port, enum pipe
>  			 DRM_MODE_ENCODER_DPMST, "DP-MST %c", pipe_name(pipe));
>  
>  	encoder->type = INTEL_OUTPUT_DP_MST;
> -	encoder->power_domain = dig_port->base.power_domain;
> -	encoder->port = dig_port->base.port;
> +	encoder->power_domain = primary_encoder->power_domain;
> +	encoder->port = primary_encoder->port;
>  	encoder->cloneable = 0;
>  	/*
>  	 * This is wrong, but broken userspace uses the intersection
> -- 
> 2.39.5
> 
