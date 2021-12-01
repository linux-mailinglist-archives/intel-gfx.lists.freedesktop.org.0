Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A400746536B
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 17:56:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 020326E80B;
	Wed,  1 Dec 2021 16:56:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5AF306E80B
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 16:56:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236725441"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="236725441"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 08:56:21 -0800
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="512110329"
Received: from suchicha-mobl1.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.209.110.120])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 08:56:21 -0800
Date: Wed, 1 Dec 2021 08:56:00 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: =?utf-8?B?Sm9zw6k=?= Roberto de Souza <jose.souza@intel.com>;,
 intel-gfx@lists.freedesktop.org
Message-ID: <20211201165600.GA11191@msatwood-mobl>
References: <20211119140931.32791-1-jose.souza@intel.com>
 <20211119140931.32791-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211119140931.32791-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add workaround numbers to
 GEN7_COMMON_SLICE_CHICKEN1 whitelisting
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 19, 2021 at 06:09:31AM -0800, José Roberto de Souza wrote:
> Those two workarounds needs to be implemented in UMD, KMD only needs
> to whitelist the registers, so here only adding the workaround number
> to facilitate future workaroud table checks.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index cd2935b9e7c81..c3211325c2d3e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1869,7 +1869,11 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>  				  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>  				  RING_FORCE_TO_NONPRIV_RANGE_4);
>  
> -		/* Wa_1808121037:tgl */
> +		/*
> +		 * Wa_1808121037:tgl
> +		 * Wa_14012131227:dg1
> +		 * Wa_1508744258:tgl,rkl,dg1,adl-s,adl-p
> +		 */
>  		whitelist_reg(w, GEN7_COMMON_SLICE_CHICKEN1);
>  
>  		/* Wa_1806527549:tgl */
> -- 
> 2.33.1
> 
