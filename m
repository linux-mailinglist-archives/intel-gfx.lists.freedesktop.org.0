Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8B86C1134
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 12:52:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7C510E3F9;
	Mon, 20 Mar 2023 11:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42B5F10E3F9
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 11:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679313119; x=1710849119;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6nE8N4DhA/yCA1OYVE/lyaL93MY3ZTxYNxXzk3J5DZU=;
 b=F1FexeqKCOSwvOVyakZaBwOlD3VMn2LeD5zaLt0YCFwgKQaAx2xRKA3x
 RLxanWy2uoMJvF9zDGn1JtYQiV+c1gx0Qwn8cSusU2GoOtxO3W00prEcb
 5gRHM97S7bjVbMW5mG0/jPGoiYhmYZQnZKf41BKgS1uTqh9jisUEjQay1
 ldNd4YTvuDPA+0FCmT9G1jb1H3BtP6KjxCPNM2IRBbdxF0xDCGYjdpUJ0
 vvKYqpAc2NDiuiuH/W/ikuhtfgdL2/o3wiyLMrfVOZnHmjK+coP0O6kCp
 mdNrmdqkigB27JpgsA+vk2ZG9xxu9jUqK8A4ukeQMeIgK52sBUArgY4Fk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="338665432"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="338665432"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 04:51:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="926935827"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="926935827"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 04:51:57 -0700
Date: Mon, 20 Mar 2023 13:51:54 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZBhI2sMqrDs2sVru@ideak-desk.fi.intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
 <20230320095438.17328-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230320095438.17328-6-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915: Disable DC states for all
 commits
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
Reply-To: imre.deak@intel.com
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 11:54:37AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> [...]
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index f86060195987..f2c9f88e7aef 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -2502,3 +2502,18 @@ intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch au
>  
>  	return domains->aux_tbt + (int)(aux_ch - domains->aux_ch_start);
>  }
> +
> +void intel_display_power_assert_dc_off(struct drm_i915_private *i915)
> +{
> +	struct i915_power_domains *power_domains = &i915->display.power.domains;
> +	struct i915_power_well *power_well;
> +
> +	mutex_lock(&power_domains->lock);
> +
> +	power_well = lookup_power_well(i915, SKL_DISP_DC_OFF);
> +
> +	drm_WARN_ON(&i915->drm, power_well &&
> +		    !intel_power_well_is_enabled(i915, power_well));
> +
> +	mutex_unlock(&power_domains->lock);

intel_display_power_is_enabled() returns the cached state, but I think
it could be used here, as the hw vs. sw state is checked already at
other places. Either way, the patch looks ok.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 8e96be8e6330..9ca48e233185 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -182,6 +182,7 @@ void intel_display_power_suspend(struct drm_i915_private *i915);
>  void intel_display_power_resume(struct drm_i915_private *i915);
>  void intel_display_power_set_target_dc_state(struct drm_i915_private *dev_priv,
>  					     u32 state);
> +void intel_display_power_assert_dc_off(struct drm_i915_private *dev_priv);
>  
>  const char *
>  intel_display_power_domain_str(enum intel_display_power_domain domain);
> -- 
> 2.39.2
> 
