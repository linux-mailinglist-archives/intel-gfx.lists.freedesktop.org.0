Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0F17009FC
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 16:11:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10FC810E6CB;
	Fri, 12 May 2023 14:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF3110E6CD
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 14:11:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683900699; x=1715436699;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=CVEUlnWyd1nkCF3tbKTcb3TenrJ7WDX1S4uPItzlopo=;
 b=YqO4tgT3XdGDH27IXQtigLKjgvmMy4FwgUITvjNMq9RxTaXwvr+EbKAb
 19sN4Qc59SmTB7dhf2UtU9rSmoMAgPmc3it+W4h9eDmbXipvXEc2AeaOT
 u6Pu5dUZYo4CyabaSZPGA1ZNl2mpJGedaX6SyWO22HSJw5y4wUmhvesvi
 KF5x+rNBsWqBdh4HgXnlnccHwq5BVykDAmQZEy5XMLU3/6cMvgfqZNt2t
 u26uZLmyITg3aJXvQFLkxKWWsqvsHZ/4Ts+riqKK36eGzepX+OQEyI4x5
 gaAj5+wR8gErDMz9mXr+a3tcxFpggJc5M8GA6CSk5qI+jCctng6+8IwIO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="416430051"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="416430051"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 07:11:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="824370211"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="824370211"
Received: from unknown (HELO ideak-desk.fi.intel.com) ([10.237.72.78])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 07:11:37 -0700
Date: Fri, 12 May 2023 17:12:16 +0300
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZF5JQKK5KRo+oIXT@ideak-desk.fi.intel.com>
References: <20230512120003.587360-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230512120003.587360-1-mika.kahola@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix expected reg value for
 Thunderbolt PLL disabling
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

On Fri, May 12, 2023 at 03:00:03PM +0300, Mika Kahola wrote:
> While disabling Thunderbolt PLL, we request PLL to be stopped and
> wait for ACK bit to be cleared. The expected value should be '0'
> instead of '~XELPDP_TBT_CLOCK_ACK' or otherwise we incorrectly
> receive dmesg warn "PHY PLL not unlocked in 10us".
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index d94127e7448b..c64cf6778627 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2861,9 +2861,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  
>  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
>  	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> -					 XELPDP_TBT_CLOCK_ACK,
> -					 ~XELPDP_TBT_CLOCK_ACK,
> -					 10, 0, NULL))
> +					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
>  		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
>  
> -- 
> 2.34.1
> 
