Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 957546F5319
	for <lists+intel-gfx@lfdr.de>; Wed,  3 May 2023 10:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A84D910E1E1;
	Wed,  3 May 2023 08:25:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EC4C10E1E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 May 2023 08:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683102328; x=1714638328;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=0w+eCBiLZJK4V5pKw9ZL3v+w/Fj2BQ7zC0I9TDBnvCo=;
 b=hJLsVMwkCJtvOltLf5IB8ceD10OO+Jn3fgF2VeECISIZCx8JghxyRBz8
 58XGSHyVnDG2V1uNE6iJaGmT+QYp2bKg3UjX+1Zh+XGYYkZiL8ulT34Br
 AxIuOWwQElFtxomSC2TNiiYKeArZYFhkNd7S+ohQJdvRsA5tUKqPHtHIG
 6QLPNiwPwSuLgeRm1ittxzGB+BW3DOtkkIrH7Jdaipnjxzl5Mw3Pr4xnY
 C/85SrS/774vxz5ljjZTu9zAZN/W6ie13fQ4rh9BIQ+3mfasI/O+Wg/tR
 pQRqjKoRqLqNKNdJA+IIUw+goCg0TliTdTtD97bgI4FJlbeBUMCNYJ2ZL Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="346077368"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="346077368"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:25:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="1026420193"
X-IronPort-AV: E=Sophos;i="5.99,246,1677571200"; d="scan'208";a="1026420193"
Received: from ebrosekx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.204])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2023 01:25:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230420124050.3617608-7-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-7-mika.kahola@intel.com>
Date: Wed, 03 May 2023 11:25:04 +0300
Message-ID: <87cz3h255r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/mtl: For DP2.0 10G and 20G
 rates use MPLLA
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

On Thu, 20 Apr 2023, Mika Kahola <mika.kahola@intel.com> wrote:
> Use MPLLA for DP2.0 rates 20G and 20G, when ssc is enabled.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index f7720acaf58c..4231ba98f075 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2340,8 +2340,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>  
>  	/* TODO: HDMI FRL */
> -	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
> -	val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
> +	/* DP2.0 10G and 20G rates enable MPLLA*/
> +	if (crtc_state->port_clock == 1000000 || crtc_state->port_clock == 2000000)

Please use intel_dp_is_uhbr().

> +		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLA : 0;
> +	else
> +		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |

-- 
Jani Nikula, Intel Open Source Graphics Center
