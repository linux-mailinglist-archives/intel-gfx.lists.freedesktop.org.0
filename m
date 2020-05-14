Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B36B21D2C54
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 12:16:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EF36E2F3;
	Thu, 14 May 2020 10:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 381456E2F3
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 10:16:10 +0000 (UTC)
IronPort-SDR: 0wiMadYLjZ6fmxdM02cNQ8lCyLneH1yrADYZA5r0Wc7Ao7C6TUoAlcEiKsBM8x/LlcZgjLGG38
 hwOTYRGgcHyA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 03:16:09 -0700
IronPort-SDR: FTOu4v5Guy3eiK84ktgcfpVjv3Ey25Uy34d21q5/OPPunl+URPxVp2oU2aXsLXFpAzLJjd667E
 K7NnRRWc/mDA==
X-IronPort-AV: E=Sophos;i="5.73,390,1583222400"; d="scan'208";a="410020211"
Received: from oalgaze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.44])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 03:16:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200513121845.19437-3-anshuman.gupta@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200513121845.19437-1-anshuman.gupta@intel.com>
 <20200513121845.19437-3-anshuman.gupta@intel.com>
Date: Thu, 14 May 2020 13:16:05 +0300
Message-ID: <87imgy4yai.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: No direct access to
 power_well desc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 May 2020, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> HDCP code doesn't require to access power_well internal stuff,
> instead it should use the intel_display_power_well_is_enabled()
> to get the status of desired power_well.
> No functional change.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 16 ++++------------
>  1 file changed, 4 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index d0a2bee9035a..409bd5d98a81 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -148,9 +148,8 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *intel_dig_port,
>  
>  static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
>  {
> -	struct i915_power_domains *power_domains = &dev_priv->power_domains;
> -	struct i915_power_well *power_well;
>  	enum i915_power_well_id id;
> +	intel_wakeref_t wakeref;
>  	bool enabled = false;
>  
>  	/*
> @@ -162,17 +161,10 @@ static bool hdcp_key_loadable(struct drm_i915_private *dev_priv)
>  	else
>  		id = SKL_DISP_PW_1;
>  
> -	mutex_lock(&power_domains->lock);
> -
>  	/* PG1 (power well #1) needs to be enabled */
> -	for_each_power_well(dev_priv, power_well) {
> -		if (power_well->desc->id == id) {
> -			enabled = power_well->desc->ops->is_enabled(dev_priv,
> -								    power_well);
> -			break;
> -		}
> -	}
> -	mutex_unlock(&power_domains->lock);
> +	wakeref = intel_runtime_pm_get(&dev_priv->runtime_pm);
> +	enabled = intel_display_power_well_is_enabled(dev_priv, id);
> +	intel_runtime_pm_put(&dev_priv->runtime_pm, wakeref);

	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
		enabled = intel_display_power_well_is_enabled(dev_priv, id);

>  
>  	/*
>  	 * Another req for hdcp key loadability is enabled state of pll for

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
