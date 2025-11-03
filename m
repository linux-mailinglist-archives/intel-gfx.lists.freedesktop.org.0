Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 782B1C2AE79
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 11:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E7F210E057;
	Mon,  3 Nov 2025 10:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OB2BEK1O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3A9F10E057;
 Mon,  3 Nov 2025 10:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762164168; x=1793700168;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=7dLsNyj82NygxRfhrvsT1Zt5tG4GqzCBm08K+7p1Rko=;
 b=OB2BEK1OziFWnfdpjavYv/8XoqSzHQwoUn8paRBzMsmAbor3C+up1UR0
 xvPA3sPyHTYukiR0TGLeqoWXcldv+OfIrH7wwmboPs1mADt3IoTQEaUJF
 4kSjdTrVnVXQFkY9e44VJUBx07nC7YEvlYglMGEMKC9g1NwtOCIz3ua/p
 S4b/QPlPtTUTZEi6k/PpiRFP7YdPphSa4ACOh8e3bl/wVVlPMyaD+86/2
 B7h7vUB/h/lZzq7WVBsiZQXIqTo2Ai/9OXCB+iPVXOasF3tLuZf8eNBQc
 lehVTb3th5YobAM6VqUtCf99dtg8YeZD2S4xw6YnJw4nZREk95miN9UG1 g==;
X-CSE-ConnectionGUID: brFuU8NPTPCLeul6YEDKuA==
X-CSE-MsgGUID: C8QmXozMRbK70m+sxCh8TA==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="75683061"
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="75683061"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 02:02:48 -0800
X-CSE-ConnectionGUID: TqnEk0+UTmuBDqOAwwy3GA==
X-CSE-MsgGUID: vntv5PUZSJyQEP3w15JSKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="217461094"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.127])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 02:02:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: Re: [RESEND, 17/22] drm/i915/dsb: Add pipedmc dc balance
 enable/disable
In-Reply-To: <20251103053002.3002695-18-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251103053002.3002695-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251103053002.3002695-18-mitulkumar.ajitkumar.golani@intel.com>
Date: Mon, 03 Nov 2025 12:02:42 +0200
Message-ID: <73cbd5c241eb2838ccc91a452e9f88a71a339050@intel.com>
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

On Mon, 03 Nov 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> w=
rote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add function to control DC balance enable/disable bit via DSB.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dmc.h |  4 ++++
>  2 files changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i=
915/display/intel_dmc.c
> index 0bddb20a7c86..3e3f4438d739 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1748,3 +1748,20 @@ u32 intel_pipedmc_start_mmioaddr(struct intel_crtc=
 *crtc)
>=20=20
>  	return dmc ? dmc->dmc_info[dmc_id].start_mmioaddr : 0;
>  }
> +
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *=
crtc)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe),
> +			   PIPEDMC_ADAPTIVE_DCB_ENABLE);
> +}
> +
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc =
*crtc)
> +{
> +	struct intel_display *display =3D to_intel_display(crtc);
> +	enum pipe pipe =3D crtc->pipe;
> +
> +	intel_de_write_dsb(display, dsb, PIPEDMC_DCB_CTL(pipe), 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i=
915/display/intel_dmc.h
> index 40e9dcb033cc..132d6cfc8e8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -10,11 +10,13 @@
>=20=20
>  enum pipe;
>  enum pipedmc_event_id;
> +struct intel_crtc;
>  struct drm_printer;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_display;
>  struct intel_dmc_snapshot;
> +struct intel_dsb;

Please keep forward declarations sorted.

>=20=20
>  void intel_dmc_init(struct intel_display *display);
>  void intel_dmc_load_program(struct intel_display *display);
> @@ -39,6 +41,8 @@ void intel_dmc_update_dc6_allowed_count(struct intel_di=
splay *display, bool star
>  void assert_main_dmc_loaded(struct intel_display *display);
>=20=20
>  void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe =
pipe);
> +void intel_pipedmc_dcb_enable(struct intel_dsb *dsb, struct intel_crtc *=
crtc);
> +void intel_pipedmc_dcb_disable(struct intel_dsb *dsb, struct intel_crtc =
*crtc);
>=20=20
>  u32 intel_pipedmc_start_mmioaddr(struct intel_crtc *crtc);
>  void intel_pipedmc_enable_event(struct intel_crtc *crtc,

--=20
Jani Nikula, Intel
