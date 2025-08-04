Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE87B1AA3E
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 22:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C16310E383;
	Mon,  4 Aug 2025 20:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BSZVidrP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00C8F10E383;
 Mon,  4 Aug 2025 20:55:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754340901; x=1785876901;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=mTC2GP911ziO+rpZqTMGP3iH6FnWsbWMvbWhzSrsR00=;
 b=BSZVidrPv/JgNoxC75dmNNTllpxHzCqQ6plzbgX747C7g8FbeIrVsG4M
 1Gfwvg6EWx9fovuokQyGchy4AKbwlv7WCwYm5LK8nOz0tRGgN/R4MMPDx
 r3q6NCI+A9hcVqXZwdELONoq8eNpAs3KtdpD9Xt0LS7O1f/esyuhz+DlZ
 9jkloTM5zyFfq66btsm5yHArLMpxh3SPSc0HkPyaC6fwuHxFMh0PASEm5
 ZJdgkzMtOZGfAQ/zQZ48Vaiqc7kZIZLBpK7HuXjCsun1vCJenQY37KHM8
 pDYyGD9Jh2/+4Mc2rn303wyWMl2w6SfoUpVNnU3UQjSoNFWY3vEt1BAMH A==;
X-CSE-ConnectionGUID: W0PUBngySKi1jy2AIPT64A==
X-CSE-MsgGUID: YUTjy3WiRMSdEuml+NMBNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56699596"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="56699596"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 13:55:00 -0700
X-CSE-ConnectionGUID: EFkp692oTdSfJfRnRopdgA==
X-CSE-MsgGUID: 3yiLdHF3Qf2/HwqRhbWdHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="195200736"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.236])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 13:54:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 07/15] drm/i915/psr: Add function to compute max
 link-wake latency
In-Reply-To: <20250804132441.990441-8-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
 <20250804132441.990441-8-ankit.k.nautiyal@intel.com>
Date: Mon, 04 Aug 2025 23:54:55 +0300
Message-ID: <274c7d61358d9355708971d66c444d4662851f4d@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 04 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Introduce a helper to compute the max link wake latency when using
> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>
> This will be used to compute the minimum guardband so that the link wake
> latencies are accounted and these features work smoothly for higher
> refresh rate panels.
>
> Bspec: 70151, 71477
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 64 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h |  3 ++
>  2 files changed, 67 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 6bd3454bb00e..6cdaff3ccc9f 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -33,6 +33,7 @@
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_cursor_regs.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
> @@ -4249,3 +4250,66 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp=
 *intel_dp,
>  {
>  	return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
>  }
> +
> +static
> +int intel_psr_compute_aux_wake_latency(struct intel_dp *intel_dp,
> +				       struct intel_crtc_state *crtc_state)
> +{
> +#define TFW_EXIT_LATENCY_MS		20000
> +#define FAST_WAKE_LATENCY_MS		12000 /* Preamble: 8us; PHY wake: 4us */
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	int aux_wake_latency_us;
> +	int io_buffer_wake_ms;
> +
> +	io_buffer_wake_ms =3D intel_encoder_is_c10phy(encoder) ? 9790 : 14790;
> +
> +	aux_wake_latency_us =3D
> +		DIV_ROUND_UP(io_buffer_wake_ms + TFW_EXIT_LATENCY_MS + FAST_WAKE_LATEN=
CY_MS, 1000);

See https://lore.kernel.org/r/eeda84457c813151a3459a46a91946b4fbbb9e44@inte=
l.com

> +
> +	return aux_wake_latency_us;
> +}
> +
> +static
> +int intel_psr_compute_auxless_latency(struct intel_crtc_state *crtc_stat=
e)
> +{
> +#define PHY_ESTABLISHMENT_PERIOD_MS	50000
> +#define LFPS_PERIOD_MS			800
> +#define SILENCE_MAX_MS			180
> +	int linkrate_mhz =3D crtc_state->port_clock / 1000;
> +	int clock_data_switch_ms;
> +	int auxless_latency_us;
> +	int time_ml_phy_lock_ms;
> +	int num_ml_phy_lock;
> +	/*
> +	 * TPS4 length =3D 252
> +	 * tML_PHY_LOCK=C2=A0=3D TPS4 Length * ( 10 / (Link Rate in MHz) )
> +	 * Number ML_PHY_LOCK =3D ( 7 + CEILING(6.5us / tML_PHY_LOCK=C2=A0) + 1)
> +	 * t2=C2=A0=3D Number ML_PHY_LOCK * tML_PHY_LOCK
> +	 * tCDS=C2=A0term  =3D 2 * t2
> +	 * =3D>tCDS_term  =3D 2 * (7 * (252 * (10 /linkrate))+6.5)
> +	 */
> +	time_ml_phy_lock_ms =3D (1000 * 252 * 10) / linkrate_mhz;
> +	num_ml_phy_lock =3D 7 + DIV_ROUND_UP(6500 * 1000, time_ml_phy_lock_ms) =
/ 1000 + 1;
> +	clock_data_switch_ms =3D 2 * time_ml_phy_lock_ms * num_ml_phy_lock;
> +
> +	auxless_latency_us =3D (LFPS_PERIOD_MS  + SILENCE_MAX_MS + PHY_ESTABLIS=
HMENT_PERIOD_MS +
> +			      clock_data_switch_ms) / 1000;
> +
> +	return auxless_latency_us;
> +}
> +
> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
> +					    struct intel_crtc_state *crtc_state,
> +					    bool assume_all_enabled)
> +{
> +	int aux_wake_latency =3D 0;
> +	int auxless_latency =3D 0;
> +
> +	if (assume_all_enabled || crtc_state->has_sel_update)
> +		auxless_latency =3D intel_psr_compute_aux_wake_latency(intel_dp, crtc_=
state);
> +
> +	if (assume_all_enabled || crtc_state->has_panel_replay)
> +		aux_wake_latency =3D intel_psr_compute_auxless_latency(crtc_state);
> +
> +	return max(auxless_latency, aux_wake_latency);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 9b061a22361f..c58d29620b49 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -81,5 +81,8 @@ void intel_psr_debugfs_register(struct intel_display *d=
isplay);
>  bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct intel_=
crtc_state *crtc_state);
>  bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>  				   const struct intel_crtc_state *crtc_state);
> +int intel_psr_compute_max_link_wake_latency(struct intel_dp *intel_dp,
> +					    struct intel_crtc_state *crtc_state,
> +					    bool assume_all_enabled);
>=20=20
>  #endif /* __INTEL_PSR_H__ */

--=20
Jani Nikula, Intel
