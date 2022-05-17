Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F0D52ACAB
	for <lists+intel-gfx@lfdr.de>; Tue, 17 May 2022 22:24:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B7010EA69;
	Tue, 17 May 2022 20:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1C0810EA69
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 May 2022 20:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652819075; x=1684355075;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=BdmUVdUArFt8e3zlfQO2aR+YrEoTsuHU7KILHNvt37I=;
 b=YH0crJquWIISgYJ3Y9FbUQ3puhkT/1C0rXrf1op6fRy/I+3Sv0vPcQBR
 erslSHqR7DO/chTsbuO7q40bAHknqkHyFrIyyAD60F+3oCH88JRuGy+SI
 e3cIrA7DunC46if397GmEoEkr+wUgPtnnAJtK2CCUrJqX4H4WngQkGjRB
 4bRw1e3l5iwUNSIz6K1cyq4nl5PZxVkidZzQmX9njyyzP9Kiv5V7OTHy8
 sqbF1FPQK7GEp2nIls4peIvhLwUkf1e0mM8T8UCsgjbrc6QLUVZZg47N7
 bt2xIeHAOlYeI+68veSdZIyfskswc9+TeIdB86nXkM13yfWkrs6ey7DhP g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="268902260"
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="268902260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:24:34 -0700
X-IronPort-AV: E=Sophos;i="5.91,233,1647327600"; d="scan'208";a="626663604"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2022 13:24:34 -0700
Date: Tue, 17 May 2022 13:24:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
Message-ID: <YoQEgZY7W7P/7Ja2@mdroper-desk1.amr.corp.intel.com>
References: <20220517201338.7291-1-swathi.dhanavanthri@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220517201338.7291-1-swathi.dhanavanthri@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Extend Wa_22010954014 to
 DG2-G11 and DG2-G12
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

On Tue, May 17, 2022 at 01:13:38PM -0700, Swathi Dhanavanthri wrote:
> Signed-off-by: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ee0047fdc95d..d0e0d6a324ee 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7513,10 +7513,9 @@ static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void dg2_init_clock_gating(struct drm_i915_private *i915)
>  {
> -	/* Wa_22010954014:dg2_g10 */
> -	if (IS_DG2_G10(i915))
> -		intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
> -				 SGSI_SIDECLK_DIS);
> +	/* Wa_22010954014:dg2 */
> +	intel_uncore_rmw(&i915->uncore, XEHP_CLOCK_GATE_DIS, 0,
> +			 SGSI_SIDECLK_DIS);
>  
>  	/*
>  	 * Wa_14010733611:dg2_g10
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
