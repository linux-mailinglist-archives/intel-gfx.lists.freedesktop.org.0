Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 057A6928B7F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 17:19:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09AD010E25B;
	Fri,  5 Jul 2024 15:19:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kxtsEfwX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8816110E25B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 15:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720192741; x=1751728741;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dt1g8r/Cn2uKIn4rHQPc0fCKnyK9xU71Zv8xFqRToWw=;
 b=kxtsEfwXXL/01tfV7LUVqsD0+64yYt1KSg0WHqq+bxEoidLcvW8ukmhd
 AE48IzhzV8hr1cyCNqlJYaRARxfVf7l/W2rBhO6BYCq7ioIXdaiw8M8li
 HJbqg5A2KbJuu0hIvQ5sHKIilMvx7Zk+Res4DvaMtBVDzhxyWTAhDE8uB
 tLS6wk7Qeksaf3J5T6lcSAHkp9X45Ds8z/TVqwG7FtCndOyC23TSA2Mzq
 oON0gi/fPK1f//9ehkm8GHRw/cYhINNjhCf5Nzoqb5f3xsJUK5dMoQKfp
 ungITzeX1Q/h+LiplldNRXux8yAVWCeB0AQopTrV9r3TdZbcQ7WmCyOza g==;
X-CSE-ConnectionGUID: SaFdVU5gSOuN/ZAA5ZboIw==
X-CSE-MsgGUID: A0KpN7SIRKST0xRAb8kpNg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="28879381"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="28879381"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 08:19:01 -0700
X-CSE-ConnectionGUID: HCpl3RfiQ/GckM5c34aytQ==
X-CSE-MsgGUID: KgabHGsmRvGTg21ytdhPOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46870590"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 08:18:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 18:18:58 +0300
Date: Fri, 5 Jul 2024 18:18:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/dp: Dump the LTTPR PHY descriptors
Message-ID: <ZogO4ijb5t0rRm02@intel.com>
References: <20240703155937.1674856-1-imre.deak@intel.com>
 <20240703155937.1674856-6-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240703155937.1674856-6-imre.deak@intel.com>
X-Patchwork-Hint: comment
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

On Wed, Jul 03, 2024 at 06:59:37PM +0300, Imre Deak wrote:
> Dump the descriptor of the detected LTTPRs in non-transparent mode to
> help the debugging related to LTTPRs easier.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../drm/i915/display/intel_dp_link_training.c | 22 ++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 31089f1b316d2..52b149793f3d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -199,6 +199,24 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
>  	return 0;
>  }
>  
> +static void intel_dp_dump_lttpr_phy_desc(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	struct drm_dp_dpcd_ident ident;
> +
> +	if (drm_dp_dpcd_read(&intel_dp->aux, DP_OUI_PHY_REPEATER(dp_phy),
> +			     &ident, sizeof(ident)) < 0)
> +		return;
> +
> +	drm_dbg_kms(&i915->drm,
> +		    "%s: %s: OUI %*phD dev-ID %*pE HW-rev %d.%d SW-rev %d.%d\n",
> +		    intel_dp->aux.name, drm_dp_phy_name(dp_phy),
> +		    (int)sizeof(ident.oui), ident.oui,
> +		    (int)strnlen(ident.device_id, sizeof(ident.device_id)), ident.device_id,
> +		    ident.hw_rev >> 4, ident.hw_rev & 0xf,
> +		    ident.sw_major_rev, ident.sw_minor_rev);

Dunno if we could share some code with drm_dp_read_desc()...

> +}
> +
>  static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEIVER_CAP_SIZE])
>  {
>  	int lttpr_count;
> @@ -206,8 +224,10 @@ static int intel_dp_init_lttpr(struct intel_dp *intel_dp, const u8 dpcd[DP_RECEI
>  
>  	lttpr_count = intel_dp_init_lttpr_phys(intel_dp, dpcd);
>  
> -	for (i = 0; i < lttpr_count; i++)
> +	for (i = 0; i < lttpr_count; i++) {
>  		intel_dp_read_lttpr_phy_caps(intel_dp, dpcd, DP_PHY_LTTPR(i));
> +		intel_dp_dump_lttpr_phy_desc(intel_dp, DP_PHY_LTTPR(i));
> +	}
>  
>  	return lttpr_count;
>  }
> -- 
> 2.43.3

-- 
Ville Syrjälä
Intel
