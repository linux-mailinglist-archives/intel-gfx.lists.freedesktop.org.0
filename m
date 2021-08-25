Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC163F7B40
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Aug 2021 19:10:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5736E3E5;
	Wed, 25 Aug 2021 17:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C6876E3E5
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Aug 2021 17:10:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217290052"
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="217290052"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 10:09:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,351,1620716400"; d="scan'208";a="536445045"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2021 10:09:56 -0700
Date: Wed, 25 Aug 2021 10:09:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210825170955.GV461228@mdroper-desk1.amr.corp.intel.com>
References: <20210825145811.4227-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210825145811.4227-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/snps: constify struct
 intel_mpllb_state arrays harder
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

On Wed, Aug 25, 2021 at 05:58:11PM +0300, Jani Nikula wrote:
> The tables should be const arrays of const pointers, not just arrays of
> const pointers.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_snps_phy.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> index d81f71296297..58ec2467ad66 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
> @@ -171,7 +171,7 @@ static const struct intel_mpllb_state dg2_dp_hbr3_100 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, 1),
>  };
>  
> -static const struct intel_mpllb_state *dg2_dp_100_tables[] = {
> +static const struct intel_mpllb_state * const dg2_dp_100_tables[] = {
>  	&dg2_dp_rbr_100,
>  	&dg2_dp_hbr1_100,
>  	&dg2_dp_hbr2_100,
> @@ -284,7 +284,7 @@ static const struct intel_mpllb_state dg2_dp_hbr3_38_4 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, 61440),
>  };
>  
> -static const struct intel_mpllb_state *dg2_dp_38_4_tables[] = {
> +static const struct intel_mpllb_state * const dg2_dp_38_4_tables[] = {
>  	&dg2_dp_rbr_38_4,
>  	&dg2_dp_hbr1_38_4,
>  	&dg2_dp_hbr2_38_4,
> @@ -421,7 +421,7 @@ static const struct intel_mpllb_state dg2_edp_r432 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_STEPSIZE, 65752),
>  };
>  
> -static const struct intel_mpllb_state *dg2_edp_tables[] = {
> +static const struct intel_mpllb_state * const dg2_edp_tables[] = {
>  	&dg2_dp_rbr_100,
>  	&dg2_edp_r216,
>  	&dg2_edp_r243,
> @@ -584,7 +584,7 @@ static const struct intel_mpllb_state dg2_hdmi_594 = {
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, 1),
>  };
>  
> -static const struct intel_mpllb_state *dg2_hdmi_tables[] = {
> +static const struct intel_mpllb_state * const dg2_hdmi_tables[] = {
>  	&dg2_hdmi_25_175,
>  	&dg2_hdmi_27_0,
>  	&dg2_hdmi_74_25,
> @@ -593,7 +593,7 @@ static const struct intel_mpllb_state *dg2_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -static const struct intel_mpllb_state **
> +static const struct intel_mpllb_state * const *
>  intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>  		       struct intel_encoder *encoder)
>  {
> @@ -627,7 +627,7 @@ intel_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>  int intel_mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			   struct intel_encoder *encoder)
>  {
> -	const struct intel_mpllb_state **tables;
> +	const struct intel_mpllb_state * const *tables;
>  	int i;
>  
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> @@ -823,7 +823,7 @@ void intel_mpllb_readout_hw_state(struct intel_encoder *encoder,
>  
>  int intel_snps_phy_check_hdmi_link_rate(int clock)
>  {
> -	const struct intel_mpllb_state **tables = dg2_hdmi_tables;
> +	const struct intel_mpllb_state * const *tables = dg2_hdmi_tables;
>  	int i;
>  
>  	for (i = 0; tables[i]; i++) {
> -- 
> 2.20.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
