Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2018832BA48
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 20:56:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D2B56E9C1;
	Wed,  3 Mar 2021 19:56:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68766E9C1
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 19:56:30 +0000 (UTC)
IronPort-SDR: 2/euNijtrMTe3CnTwXXQDMvNa0KU+YVv8QkveVP/aZp+vKek8AB6vH/DIgnbL+Nz6AC9bsYBT0
 2XhegIocgpqA==
X-IronPort-AV: E=McAfee;i="6000,8403,9912"; a="174907369"
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="174907369"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 11:56:26 -0800
IronPort-SDR: hRKs3W/Ticz/sdCKd8nUhA6KFVhsGypusjIyPO+YoUTi1t/PrnpqxBCtwI6SJXOcGUGRm3KGm8
 JmYjmwZiIFKA==
X-IronPort-AV: E=Sophos;i="5.81,220,1610438400"; d="scan'208";a="518402465"
Received: from aginocch-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.212.198.113])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2021 11:56:26 -0800
Date: Wed, 3 Mar 2021 14:56:35 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <YD/p82KP1elV5tzh@intel.com>
References: <20210301193200.1369-1-daniele.ceraolospurio@intel.com>
 <20210301193200.1369-17-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210301193200.1369-17-daniele.ceraolospurio@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 16/16] drm/i915/pxp: enable PXP for
 integrated Gen12
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

On Mon, Mar 01, 2021 at 11:32:00AM -0800, Daniele Ceraolo Spurio wrote:
> Note that discrete cards can support PXP as well, but we haven't tested
> on those yet so keeping it disabled for now.
> 
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a9f24f2bda33..f380a92e5c7c 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -880,6 +880,7 @@ static const struct intel_device_info jsl_info = {
>  	}, \
>  	TGL_CURSOR_OFFSETS, \
>  	.has_global_mocs = 1, \
> +	.has_pxp = 1, \
>  	.display.has_dsb = 1
>  
>  static const struct intel_device_info tgl_info = {
> @@ -908,6 +909,7 @@ static const struct intel_device_info rkl_info = {
>  	.memory_regions = REGION_SMEM | REGION_LMEM, \
>  	.has_master_unit_irq = 1, \
>  	.has_llc = 0, \
> +	.has_pxp = 0, \
>  	.has_snoop = 1, \
>  	.is_dgfx = 1
>  
> -- 
> 2.29.2
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
