Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F9853C098
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 00:06:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06BFD10F9D0;
	Thu,  2 Jun 2022 22:06:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE3A610F9D0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 22:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654207569; x=1685743569;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7StNUS7U3kD8c2YnymAvon7mx1I+YYRE0QRHdNwN1Ws=;
 b=gtqpGDZ7jVi3OOWJkLswQln2FYkzBDCevh4169F7C9tu8B7aarShoGHd
 WXcGXsutiKH5hcKCf6HSBnKavK6ju46pSdrDOLf0T3PEIQ3WsGK8bJrCd
 VyexlAeTXQbQCL3ZOKGMdj4m8MSU/ptt1aaTg4PXMVuUdW2MPgyn069vV
 nyrKErME4AMVnbtlr1NGzxLdc1TCkzhp0jKr504OXy2j/AyVq9oG2P04q
 915tdPFQo0s4SX1EVYxoW/esjQXtW20wHSz4rSeTBkSEg2mx06pR//rM+
 eRm7aCGPNch+i4/2VLHm8Z834PWNmsoJeeP4TXmqrhEiAd35FwcyObFJL A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="275829597"
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="275829597"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 15:05:58 -0700
X-IronPort-AV: E=Sophos;i="5.91,272,1647327600"; d="scan'208";a="721497421"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 15:05:58 -0700
Date: Thu, 2 Jun 2022 15:05:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Ypk0RdDBBI8eC4C6@mdroper-desk1.amr.corp.intel.com>
References: <20220602201730.199418-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220602201730.199418-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/fbc: Do not apply WA
 22014263786 to DG2
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 02, 2022 at 01:17:30PM -0700, José Roberto de Souza wrote:
> This workaround brings some regressions to DG2 and if really necessary
> for DG2 an alternative workaround will be implemented.
> 
> BSpec: 54077
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index bbdc34a23d548..8b807284cde1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -813,8 +813,8 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
>  
>  static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  {
> -	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,dg2,adlp */
> -	if (DISPLAY_VER(fbc->i915) >= 11)
> +	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp */
> +	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
>  		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
>  			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>  }
> -- 
> 2.36.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
