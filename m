Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA58A654F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 09:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445DF112366;
	Tue, 16 Apr 2024 07:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gWUHFJts";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD84112ABD
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 07:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713253312; x=1744789312;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=g0+tpmHhn500iue7w0244ppei2GwlC34t2VloPKqA9M=;
 b=gWUHFJtsOdGSP5jGuahqz5oefYQwMOa/+vTtNivdh3g3/YsCvtjPjHEz
 MrodmL4INrgTrkdP+iyPWwX/E2aoBtk6e5KEuKBYVIqIbLzBq5gy4rHEU
 80LZyvtEz0RicmBIsX23DjokTni56YkD3djmm04YUoRqrI9f4xHvMUcio
 M5kAQDNOAMl+GfBKg+Q/LMJTMpDTuA1FJyDY8ZNWhSic73zzMCXxna8Fv
 6AYFCP82jkFRxVI+qiKe582W4+pSDIVASn1p0K2AiUHduQ2PaDRg+bouX
 HSquO4/njSH3j95ov1U4286FFXVq5ekH8h3TrMrW0G4LcO1BSzu4QF1YN Q==;
X-CSE-ConnectionGUID: K53LmfqXQTuBuj4yJN3ssw==
X-CSE-MsgGUID: cDMwnqFtTG+xETUEm6rS5Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="26190626"
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="26190626"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:41:51 -0700
X-CSE-ConnectionGUID: U4xHkJXkQ7aa5mwponbKag==
X-CSE-MsgGUID: gRRpAHGmTfehXibs/F8Ltg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,205,1708416000"; d="scan'208";a="22173087"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.100])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 00:41:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, dnyaneshwar.bhadane@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/pps: Disable DPLS_GATING around pps sequence
In-Reply-To: <20240416072733.624048-4-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240416072733.624048-2-suraj.kandpal@intel.com>
 <20240416072733.624048-4-suraj.kandpal@intel.com>
Date: Tue, 16 Apr 2024 10:41:46 +0300
Message-ID: <871q7521qd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 16 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Disable bit 29 of SCLKGATE_DIS register around pps sequence
> when we turn panel power on.

Add blank line here.

> WA: 16023567976
> Bspec: 49304
>

Remove blank line here.

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3078dfac7817..a912e712ca63 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -919,6 +919,7 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	u32 pp;
>  	i915_reg_t pp_ctrl_reg;
> +	int dis_ver = DISPLAY_VER(dev_priv);

Please don't do this. You don't see this done *anywhere* in the driver.

>  
>  	lockdep_assert_held(&dev_priv->display.pps.mutex);
>  
> @@ -948,6 +949,13 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  		intel_de_posting_read(dev_priv, pp_ctrl_reg);
>  	}
>  
> +	/* WA: 16023567976

For multiline comments please don't add anything after /*.

> +	 * Disable DPLS gating around power sequence.
> +	 */
> +	if (dis_ver >= 12 && dis_ver <= 14)

See IS_DISPLAY_VER().

> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 1);
> +
>  	pp |= PANEL_POWER_ON;
>  	if (!IS_IRONLAKE(dev_priv))
>  		pp |= PANEL_POWER_RESET;
> @@ -958,6 +966,10 @@ void intel_pps_on_unlocked(struct intel_dp *intel_dp)
>  	wait_panel_on(intel_dp);
>  	intel_dp->pps.last_power_on = jiffies;
>  
> +	if (dis_ver >= 12 && dis_ver <= 14)

See IS_DISPLAY_VER().

> +		intel_de_rmw(dev_priv, SCLKGATE_DIS,
> +			     DPLS_GATING_DISABLE, 0);
> +
>  	if (IS_IRONLAKE(dev_priv)) {
>  		pp |= PANEL_POWER_RESET; /* restore panel reset bit */
>  		intel_de_write(dev_priv, pp_ctrl_reg, pp);

-- 
Jani Nikula, Intel
