Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1B9841CD7E
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 22:39:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A80889E26;
	Wed, 29 Sep 2021 20:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9EE89E26
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 20:39:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="204523709"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="204523709"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 13:27:06 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="520012563"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 13:27:05 -0700
Date: Wed, 29 Sep 2021 23:27:02 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210929202702.GK2192289@ideak-desk.fi.intel.com>
References: <20210927182455.27119-10-ville.syrjala@linux.intel.com>
 <20210929165525.11410-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210929165525.11410-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 9/9] drm/i915: Allow per-lane drive
 settings with LTTPRs
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

On Wed, Sep 29, 2021 at 07:55:25PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> LTTPRs should support per-lane drive settings I think, and even if
> they don't they should implement their own fallback logic to determine
> suitable common drive settings to use for all the lanes.
> 
> v2: Actually check the correct thing
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f26c44a6b568..eeea6c73e218 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -304,7 +304,7 @@ static u8 intel_dp_phy_preemph_max(struct intel_dp *intel_dp,
>  static bool has_per_lane_signal_levels(struct intel_dp *intel_dp,
>  				       enum drm_dp_phy dp_phy)
>  {
> -	return false;
> +	return !intel_dp_phy_is_downstream_of_source(intel_dp, dp_phy);
>  }
>  
>  static u8 intel_dp_get_lane_adjust_train(struct intel_dp *intel_dp,
> -- 
> 2.32.0
> 
