Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89351C846C1
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 11:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFF8E10E3A2;
	Tue, 25 Nov 2025 10:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mIGGUCb/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF15410E3A8;
 Tue, 25 Nov 2025 10:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764065985; x=1795601985;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=dpxVk9LyfAU5+TTo+QVQcmmK90s2ODstKNjSYX7N2M8=;
 b=mIGGUCb/O+372YEjLu7Rg0Ce31yNBlybbOibxkXvD1jJT3Z9iq7iEvDb
 i+Uu3goZGK0LlgpcORxtd6NKfXD8r4lyJfklZEP6VPGPDVcM/GzxxjMzc
 3b709oMleW9UrcQu6MMTj34QW7f7v54wUBZ3XB+kogMI/WKADwKRXhkhl
 ewWHatCfpqV3PY23PmLwUopkTDPTlS5wZOSJi7Y1/Th33XI1AvoegHALT
 J9HLA5GGSSZnMpAH5r0UCUefx4Q2mr/FYmF8PK1OxgSfntHIcdEyZjCqa
 ZrY63AujUYVwJbAO9OitTW3Aw7+5ejq7Jpsadsj4oEC/3WIHEl4T9ElEi A==;
X-CSE-ConnectionGUID: UxseYT7ZTeKs4wTNkte55g==
X-CSE-MsgGUID: nOXWmrpWRr2AlgETcqxJDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="66239604"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="66239604"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:19:44 -0800
X-CSE-ConnectionGUID: 4E+kBhwYQgCkrAYI5msp+g==
X-CSE-MsgGUID: laDXE5hmQMGO2rAmkIPAqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="197538709"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:19:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/psr: Add helper for checking if vblank
 evasion is needed by PSR
In-Reply-To: <20251125063253.328023-2-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-2-jouni.hogander@intel.com>
Date: Tue, 25 Nov 2025 12:19:39 +0200
Message-ID: <805845cb5ca50c72043a554accc28cc5faf37ab7@intel.com>
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

On Tue, 25 Nov 2025, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> PSR2_MAN_TRK_CTL[SF Continuous full frame] is sampled on the rising edge =
of
> delayed vblank. SW must ensure this bit is not changing around that
> bit. Due to this PSR2 Selective Fetch needs vblank evasion.
>
> Due to this add helper for intel_pipe_update_start usage to choose if
> vblank evasion is needed by PSR.
>
> Bspec: 50424
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>  2 files changed, 16 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index 08bca4573974..18d5fe992f58 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -4540,3 +4540,18 @@ int intel_psr_min_guardband(struct intel_crtc_stat=
e *crtc_state)
>=20=20
>  	return psr_min_guardband;
>  }
> +
> +bool intel_psr_needs_evasion(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	struct intel_encoder *encoder;
> +	struct intel_dp *intel_dp;
> +
> +	for_each_intel_encoder_mask_with_psr(display->drm, encoder,
> +					     crtc_state->uapi.encoder_mask) {
> +		intel_dp =3D enc_to_intel_dp(encoder);
> +
> +		break;
> +	}
> +	return intel_dp->psr.psr2_sel_fetch_enabled;

This is going to trigger a static analyzer error on unused variable
intel_dp.

Better to have the return inside the loop, and return false at the end,
I think.

BR,
Jani.

> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i=
915/display/intel_psr.h
> index 620b35928832..8c09a9f8a00e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> @@ -86,5 +86,6 @@ bool intel_psr_needs_alpm_aux_less(struct intel_dp *int=
el_dp,
>  void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state);
>  int intel_psr_min_guardband(struct intel_crtc_state *crtc_state);
> +bool intel_psr_needs_evasion(const struct intel_crtc_state *crtc_state);
>=20=20
>  #endif /* __INTEL_PSR_H__ */

--=20
Jani Nikula, Intel
