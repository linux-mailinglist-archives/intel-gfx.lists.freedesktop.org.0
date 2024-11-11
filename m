Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 505D19C39AC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 09:32:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E73CB10E432;
	Mon, 11 Nov 2024 08:32:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="abesXVRH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 008E810E432
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2024 08:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731313960; x=1762849960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Ps7WNhtRsotTYWcgRiEQs8sI1Wns98cukmfy7Sf4V10=;
 b=abesXVRHlxssEfvSrhMNPdrUJgQ7IuxfPBaImOH2Te+gV5vlO5HVFXex
 jjtFwdRNV2OYs6HvINM6WzWKy7VNWCE9IoB/YxcDkXaPU4XykYVCubhPm
 zDCcjN/OpNlXQ17ZF1LEEbUhVjUHoa6Tq0Rf8uNfqqFmcxU2rcZ4DaV3a
 j4CK5IhPApNUUOwUC1W44BjJ2sAOqX1pNB0jloAGA+ngyINP5OUHMzE2/
 ZzBEXKjKqRLDrHqS+fx/+24da/u8pIajyuS1F1ggqRUemL3uEPHgGNW+f
 koUo73wUg7Onmu1LbpuwyA6BB2nxw543UtG5nGnS7QOcOQkf7wmG6+FEm g==;
X-CSE-ConnectionGUID: if/xc+DhS7WV/rUC9WwUNQ==
X-CSE-MsgGUID: 523iCCtTTJS71cBdwMsfIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="30525143"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="30525143"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 00:32:39 -0800
X-CSE-ConnectionGUID: w9cVlBNBRJCHzDp7jyq0og==
X-CSE-MsgGUID: OZDlCiT8RNuvOQJ5032yQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="90788516"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.75])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 00:32:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>, Kulkarni@freedesktop.org, Vandita
 <vandita.kulkarni@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add WA_14018221282
In-Reply-To: <20241111080808.3182188-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241111080808.3182188-1-nemesa.garg@intel.com>
Date: Mon, 11 Nov 2024 10:32:34 +0200
Message-ID: <8734jydvbx.fsf@intel.com>
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

On Mon, 11 Nov 2024, Nemesa Garg <nemesa.garg@intel.com> wrote:
> It was observed that the first write to DKL PHY DP Mode
> register was not taking effect, hence rewrite this register.
>
> v2: Rename function [Mitul]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Signed-off-by: Kulkarni, Vandita <vandita.kulkarni@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 769bd1f26db2..f955d89951b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2104,10 +2104,21 @@ void intel_ddi_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>  	encoder->disable_clock(encoder);
>  }
>  
> +static void
> +tgl_is_dp_mode_enabled(struct drm_i915_private *dev_priv,
> +		       enum tc_port tc_port, u32 ln0, u32 ln1)

I went ahead and asked ChatGPT what it thinks of the function name:

If a function's name is tgl_is_dp_mode_enabled(), do you expect it to
return a value, and what would you expect it to return?


It replied:

Yes, based on the function's name, I would expect
`tgl_is_dp_mode_enabled()` to return a value. The naming convention
suggests that it checks whether "DP mode" (perhaps "DisplayPort mode")
is enabled and returns a Boolean value (`true` or `false`).

In this context:

- `tgl_` might be a prefix denoting a specific category or module (e.g.,
  "toggle" or "Tiger Lake" if it's hardware-specific).

- `is_` implies a question, typical of Boolean-returning functions.

- `dp_mode_enabled` likely refers to a state or condition ("DisplayPort
  mode enabled" in this case).

So, I would expect `tgl_is_dp_mode_enabled()` to return `true` if DP
mode is currently enabled, and `false` otherwise.


> +{
> +	if (ln0 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 0)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
> +	if (ln1 != intel_dkl_phy_read(dev_priv, DKL_DP_MODE(tc_port, 1)))
> +		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> +}
> +
>  static void
>  icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  		       const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display = to_intel_display(crtc_state);
>  	struct drm_i915_private *dev_priv = to_i915(dig_port->base.base.dev);
>  	enum tc_port tc_port = intel_encoder_to_tc(&dig_port->base);
>  	u32 ln0, ln1, pin_assignment;
> @@ -2185,6 +2196,10 @@ icl_program_mg_dp_mode(struct intel_digital_port *dig_port,
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 0), ln0);
>  		intel_dkl_phy_write(dev_priv, DKL_DP_MODE(tc_port, 1), ln1);
> +		 /* WA_14018221282 */
> +		if (DISPLAY_VER(display) == 12)
> +			tgl_is_dp_mode_enabled(dev_priv, tc_port, ln0, ln1);
> +
>  	} else {
>  		intel_de_write(dev_priv, MG_DP_MODE(0, tc_port), ln0);
>  		intel_de_write(dev_priv, MG_DP_MODE(1, tc_port), ln1);

-- 
Jani Nikula, Intel
