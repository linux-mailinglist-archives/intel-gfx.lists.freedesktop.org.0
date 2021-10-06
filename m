Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F12424265
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 18:16:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 905966EDBB;
	Wed,  6 Oct 2021 16:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C216EDAE
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 16:16:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="223428329"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="223428329"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 09:12:29 -0700
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="560232219"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 09:12:27 -0700
Date: Wed, 6 Oct 2021 19:12:23 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20211006161223.GE3025323@ideak-desk.fi.intel.com>
References: <20211004170535.4173-1-ville.syrjala@linux.intel.com>
 <20211004170535.4173-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211004170535.4173-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 5/5] drm/i915: Call
 intel_dp_dump_link_status() for CR failures
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

On Mon, Oct 04, 2021 at 08:05:35PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I suppose intel_dp_dump_link_status() might be useful for diagnosing
> link training failures. Hoever we only call from the channel EQ phase
> currently. Let's call it from the CR phase as well.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 18f4b469766e..c92044710012 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -649,6 +649,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u8 old_link_status[DP_LINK_STATUS_SIZE] = {};
>  	int voltage_tries, cr_tries, max_cr_tries;
> +	u8 link_status[DP_LINK_STATUS_SIZE];
>  	bool max_vswing_reached = false;
>  	char phy_name[10];
>  
> @@ -678,8 +679,6 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  
>  	voltage_tries = 1;
>  	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
> -		u8 link_status[DP_LINK_STATUS_SIZE];
> -
>  		intel_dp_link_training_clock_recovery_delay(intel_dp, dp_phy);
>  
>  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
> @@ -697,6 +696,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  		}
>  
>  		if (voltage_tries == 5) {
> +			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>  			drm_dbg_kms(&i915->drm,
>  				    "[ENCODER:%d:%s][%s] Same voltage tried 5 times\n",
>  				    encoder->base.base.id, encoder->base.name, phy_name);
> @@ -704,6 +704,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  		}
>  
>  		if (max_vswing_reached) {
> +			intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>  			drm_dbg_kms(&i915->drm,
>  				    "[ENCODER:%d:%s][%s] Max Voltage Swing reached\n",
>  				    encoder->base.base.id, encoder->base.name, phy_name);
> @@ -732,6 +733,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
>  			max_vswing_reached = true;
>  	}
>  
> +	intel_dp_dump_link_status(intel_dp, dp_phy, link_status);
>  	drm_err(&i915->drm,
>  		"[ENCODER:%d:%s][%s] Failed clock recovery %d times, giving up!\n",
>  		encoder->base.base.id, encoder->base.name, phy_name, max_cr_tries);
> -- 
> 2.32.0
> 
