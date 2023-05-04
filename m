Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFB96F6E63
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 16:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585F910E505;
	Thu,  4 May 2023 14:56:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36DFA10E120
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683212212; x=1714748212;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iNyrrejIg491P1SNuvX/HPRnE5K14fYKAj6vMFqwo2U=;
 b=QanzuHPQVC9ARXFkyKf8EtMdfNW1f9HylSyIRggqJNPoMiVTAm/AyxRv
 /a3Pcd5AjcjIWicZI9hzW9/HBi1WrcpIl7Z+wOl02DzVNbhbsa8Yq45cd
 2UR576xqbXnM2RU/A4FknoHxlndWqjrSX0sEeJeT0pm+AVbnOxG8/DEKE
 gc77JWkWQvwMtmHhJYrm58n0udkAxCi55QS/PaTxEkUYN8+gWYZI8GikV
 ik+2AX0nV/oilkqaFJNTV6bfioPvhmO4wkIfHadQNp3GDFwK79l6yL9VZ
 yYc2he4W4+EPHhwWM+cCca+ZkTD7Q7xOi4bhwfCwYQvjMxDika0IvSy15 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="351068954"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="351068954"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 07:54:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="821200725"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="821200725"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 04 May 2023 07:54:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 04 May 2023 17:54:14 +0300
Date: Thu, 4 May 2023 17:54:14 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZFPHFj1dIwEczZFl@intel.com>
References: <20230503231048.432368-1-imre.deak@intel.com>
 <20230503231048.432368-9-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230503231048.432368-9-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915/dp: Convert link training
 error to debug message on disconnected sink
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

On Thu, May 04, 2023 at 02:10:44AM +0300, Imre Deak wrote:
> If a sink is disconnected it's expected that link training actions will
> fail on it, so downgrade the error messages about such actions to be a
> debug message. Such - expected - link training failures are more
> frequent after a follow up patch, after which an active TypeC link is
> reset after the sink is disconnected which also involves a link
> training.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c               |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h               |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 11 +++++++++--
>  3 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4361c1ac65c3a..1942a05719776 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4179,7 +4179,7 @@ static int intel_dp_prep_link_retrain(struct intel_dp *intel_dp,
>  	return ret;
>  }
>  
> -static bool intel_dp_is_connected(struct intel_dp *intel_dp)
> +bool intel_dp_is_connected(struct intel_dp *intel_dp)
>  {
>  	struct intel_connector *connector = intel_dp->attached_connector;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ef39e4f7a329e..488da392fafe5 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -42,6 +42,7 @@ void intel_dp_set_link_params(struct intel_dp *intel_dp,
>  			      int link_rate, int lane_count);
>  int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
>  					    int link_rate, u8 lane_count);
> +bool intel_dp_is_connected(struct intel_dp *intel_dp);
>  int intel_dp_retrain_link(struct intel_encoder *encoder,
>  			  struct drm_modeset_acquire_ctx *ctx);
>  void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index f83944eaac128..2fe076e2d64b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -33,6 +33,7 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>  	struct intel_connector *connector = intel_dp->attached_connector;
> +	const char *discon_str = "";
>  	struct va_format vaf;
>  	va_list args;
>  
> @@ -43,6 +44,11 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
>  	vaf.fmt = format;
>  	vaf.va = &args;
>  
> +	if (is_error && !intel_dp_is_connected(intel_dp)) {
> +		discon_str = " (sink disconnected)";
> +		is_error = false;
> +	}
> +
>  	if (is_error)
>  		drm_err(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
>  			connector->base.base.id, connector->base.name,
> @@ -50,11 +56,12 @@ static void lt_msg(struct intel_dp *intel_dp, enum drm_dp_phy dp_phy,
>  			drm_dp_phy_name(dp_phy),
>  			&vaf);
>  	else
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV\n",
> +		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s][%s] %pV%s\n",
>  			    connector->base.base.id, connector->base.name,
>  			    encoder->base.base.id, encoder->base.name,
>  			    drm_dp_phy_name(dp_phy),
> -			    &vaf);
> +			    &vaf,
> +			    discon_str);
>  }
>  
>  #define lt_err(intel_dp, dp_phy, format, ...) \
> -- 
> 2.37.2

-- 
Ville Syrjälä
Intel
