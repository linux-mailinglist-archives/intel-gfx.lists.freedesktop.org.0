Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OI9mNu+cGWq7xwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:04:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 609CA6033B2
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 16:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBCFF10FF97;
	Fri, 29 May 2026 14:04:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="McBMZGsz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 973B710FF96;
 Fri, 29 May 2026 14:04:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780063467; x=1811599467;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=RdYIANGUvtkr3czZ8hbZ7/1csdbpVJYnEFzKI+B2IrA=;
 b=McBMZGszzB0EAB/GCpvhXx4miwioz2RZ3P1v9JokTTN+Nev2lWbnUtEf
 /nU6tqZYuHBHSsiPxFFfirmbrfBjxlsVXps21l1BdnTyivpEWyJpNyZNR
 vcVQezLJ5qKxw7NxRShWc0zYCD4mlIBlUinzzLUbjli815oaW4K9fvFsp
 NLptZueqm6eag9WWwgaJX1LV3cB98ZgrGUGav2rGwjFPwgGbzXGGx8jaW
 G4tmGg1PlURjwUudMpEi7IXhNXFQQLq3wsKum2dolCeg7hcrlQoim0+Ud
 EVMd1a+6qdxkGq2ioN4e8TamCu4WujAolBX7tv7BjrbloWv6hChmuuXxK Q==;
X-CSE-ConnectionGUID: Wi+J5XYoQryAcjWrJmMW0A==
X-CSE-MsgGUID: MPNie+3lReaq+dQGG2RvVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11801"; a="80908989"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="80908989"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:04:26 -0700
X-CSE-ConnectionGUID: SFi97Q57TdaFvlEwLhDzFw==
X-CSE-MsgGUID: pJKsfeSSQC6CBbm5kdTmFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="246872569"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.182])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 07:04:24 -0700
Date: Fri, 29 May 2026 17:04:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 imre.deak@intel.com
Subject: Re: [PATCH 13/24] drm/{i915,xe}: move more calls inside
 intel_display_driver_{register,unregister}()
Message-ID: <ahmc5G5cNrlQpsl3@intel.com>
References: <cover.1780051905.git.jani.nikula@intel.com>
 <6c62aaa40707fbc68b73a16929df2bb0566424ee.1780051905.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6c62aaa40707fbc68b73a16929df2bb0566424ee.1780051905.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 609CA6033B2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, May 29, 2026 at 02:03:57PM +0300, Jani Nikula wrote:
> The intel_display_driver_register() and
> intel_display_driver_unregister() calls are followed and preceded by
> intel_display_power_enable() and intel_display_power_disable() calls,
> respectively. Move them inside the register/unregister calls.
> 
> Semantically, this is a weird location, as there's nothing really
> "register" or "unregister" about them, but they retain the existing
> sequence. Add comments to note that.
> 
> There's a slight functional change for !HAS_DISPLAY() in that
> register/unregister return early. Assume this is what we want, and there
> are no cases where display engine is present but all pipes have been
> fused off.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
>  drivers/gpu/drm/i915/i915_driver.c                  | 2 --
>  drivers/gpu/drm/xe/display/xe_display.c             | 2 --
>  3 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 77fa4497b442..7fee9ef88224 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -578,6 +578,9 @@ void intel_display_driver_register(struct intel_display *display)
>  					DISPLAY_RUNTIME_INFO(display), &p);
>  
>  	intel_register_dsm_handler();
> +
> +	/* Semantically out of place, just for the sequence */
> +	intel_display_power_enable(display);
>  }
>  
>  /* part #1: call before irq uninstall */
> @@ -652,6 +655,9 @@ void intel_display_driver_unregister(struct intel_display *display)
>  	if (!HAS_DISPLAY(display))
>  		return;
>  
> +	/* Semantically out of place, just for the sequence */
> +	intel_display_power_disable(display);
> +
>  	intel_unregister_dsm_handler();
>  
>  	drm_client_dev_unregister(display->drm);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 6fd3e8b155b1..b637c4dedf1b 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -661,7 +661,6 @@ static int i915_driver_register(struct drm_i915_private *dev_priv)
>  
>  	intel_display_driver_register(display);
>  
> -	intel_display_power_enable(display);

Maybe these deserve their own display_driver_runtime_pm_{en,dis}able()
things.

Although I'm not sure why we even do this so late. We could probably
do this as soon as the readout is done. And I think ideally we wouldn't
even use the INIT domain for this and would just do something to keep
the already enabled power wells enabled until the readout is done.
But that's a whole different can of worms.

>  	intel_runtime_pm_enable(&dev_priv->runtime_pm);
>  
>  	if (i915_switcheroo_register(dev_priv))
> @@ -683,7 +682,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  	i915_switcheroo_unregister(dev_priv);
>  
>  	intel_runtime_pm_disable(&dev_priv->runtime_pm);
> -	intel_display_power_disable(display);
>  
>  	intel_display_driver_unregister(display);
>  
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index bbd4f527d5e3..e17e05a8854c 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -177,7 +177,6 @@ void xe_display_register(struct xe_device *xe)
>  		return;
>  
>  	intel_display_driver_register(display);
> -	intel_display_power_enable(display);
>  }
>  
>  void xe_display_unregister(struct xe_device *xe)
> @@ -187,7 +186,6 @@ void xe_display_unregister(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		return;
>  
> -	intel_display_power_disable(display);
>  	intel_display_driver_unregister(display);
>  }
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
