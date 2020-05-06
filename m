Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B241C7B5C
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 22:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EFEE6E8D9;
	Wed,  6 May 2020 20:34:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2DFA6E8D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 20:34:21 +0000 (UTC)
IronPort-SDR: 5M/Dom9LLEsHUcnbIYdPIMnqJ9KbSa5LD79K16jgIbtALjlzBA3cRxUu2YyK9c7e/BYkWdUpjj
 Yt/GsIBnUOhA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 13:34:21 -0700
IronPort-SDR: MX3OQTz25cd3Roq4K3Kjrj6W4MCoDEqs+g8dM9wR4SWzyqmTqbWdc6hzK9+PCypy3wegME6i6L
 zhGSYfjwSY0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,360,1583222400"; d="scan'208";a="296301726"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga008.jf.intel.com with SMTP; 06 May 2020 13:34:21 -0700
Date: Wed, 6 May 2020 13:34:21 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200506203421.GY188376@mdroper-desk1.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-17-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504225227.464666-17-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 16/22] drm/i915/rkl: Don't try to access
 transcoder D
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

On Mon, May 04, 2020 at 03:52:21PM -0700, Matt Roper wrote:
> There are a couple places in our driver that loop over transcoders A..D
> for gen11+; since RKL only has three pipes/transcoders, this can lead to
> unclaimed register reads/writes.  We should add checks for transcoder
> existence where appropriate.
> 
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>  drivers/gpu/drm/i915/i915_irq.c              | 6 ++++++
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index fcfc3812ef28..2eeafda82188 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11007,6 +11007,9 @@ static bool bxt_get_dsi_transcoder_state(struct intel_crtc *crtc,
>  		else
>  			cpu_transcoder = TRANSCODER_DSI_C;
>  
> +		if (!HAS_TRANSCODER(dev_priv, cpu_transcoder))
> +			continue;
> +

It looks like this hunk wound up in the wrong function after a conflict
resolution.  It was supposed to be in icl_get_trans_port_sync_config()
instead (this BXT function doesn't execute on gen >= 11).


Matt

>  		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
>  		drm_WARN_ON(dev, *power_domain_mask & BIT_ULL(power_domain));
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 622986759ec6..1381cb530c2f 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2849,6 +2849,9 @@ static void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>  		for (trans = TRANSCODER_A; trans <= TRANSCODER_D; trans++) {
>  			enum intel_display_power_domain domain;
>  
> +			if (!HAS_TRANSCODER(dev_priv, trans))
> +				continue;
> +
>  			domain = POWER_DOMAIN_TRANSCODER(trans);
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
> @@ -3399,6 +3402,9 @@ static void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  		for (trans = TRANSCODER_A; trans <= TRANSCODER_D; trans++) {
>  			enum intel_display_power_domain domain;
>  
> +			if (!HAS_TRANSCODER(dev_priv, trans))
> +				continue;
> +
>  			domain = POWER_DOMAIN_TRANSCODER(trans);
>  			if (!intel_display_power_is_enabled(dev_priv, domain))
>  				continue;
> -- 
> 2.24.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
