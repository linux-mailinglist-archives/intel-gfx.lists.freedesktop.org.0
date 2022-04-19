Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB8B507BE5
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 23:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E6D10E2C5;
	Tue, 19 Apr 2022 21:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E63310E2C5
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 21:26:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650403602; x=1681939602;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=xp7jAPzJ3EjF12Z6mCtlnX8cN/9CbcNzwCuRA3mOpb0=;
 b=l6tzi1r0Awhz1O3/MdM93UozVrDplyD4wPPpl1f6o2bkO8za3gNCiUfc
 djYkrhfHSB4Jf1cBzzDPVZwuayEFgL1KwvXb80OMGF1A5t0RI9tPsTLXu
 NSCU/KRu/DLqmCnQJ5LTYvXHCqyc8PawGMY36S/o4rvmY0v9p/ZKqShWL
 UExwjfyWK8nX1qEgk3+XH9VIShTUwt4opeQBufF8ZYZYYR5m7VYPOwBx5
 7q9xjqhfw5gkq2R9OxCz0K3yTGABT2dhrKvBOVs3YIuOtRDr8p93C3apM
 uDiU6rnjCacGFcksxdrv2E/14tneGZTrr/wXX96ShA88JLJ8wJbFTbD5c g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="243808702"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="243808702"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 14:26:42 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="554902152"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 14:26:41 -0700
Date: Tue, 19 Apr 2022 14:26:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <Yl8pELkiy2YcrMdS@mdroper-desk1.amr.corp.intel.com>
References: <20220419182753.364237-1-jose.souza@intel.com>
 <20220419182753.364237-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220419182753.364237-2-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/dg2: Add workaround
 18019627453
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

On Tue, Apr 19, 2022 at 11:27:53AM -0700, José Roberto de Souza wrote:
> A new DG2 workaround added to fix some corner cases hangs.
> 
> v2:
> - implementing the second and preferred option for this workaround
> 
> BSpec: 54077
> BSpec: 68173
> BSpec: 71488
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 29c8cd0a81b6f..a05c4b99b3fbc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2194,11 +2194,15 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_write_or(wal, GEN7_FF_THREAD_MODE,
>  			    GEN12_FF_TESSELATION_DOP_GATE_DISABLE);
> +	}
>  
> +	if (IS_ALDERLAKE_P(i915) || IS_DG2(i915) || IS_ALDERLAKE_S(i915) ||
> +	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/*
>  		 * Wa_1606700617:tgl,dg1,adl-p
>  		 * Wa_22010271021:tgl,rkl,dg1,adl-s,adl-p
>  		 * Wa_14010826681:tgl,dg1,rkl,adl-p
> +		 * Wa_18019627453:dg2
>  		 */
>  		wa_masked_en(wal,
>  			     GEN9_CS_DEBUG_MODE1,
> -- 
> 2.35.3
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
