Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8F5A5C2CF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 14:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB63210E1B5;
	Tue, 11 Mar 2025 13:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AMgJqG4L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F186D10E1B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Mar 2025 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741700094; x=1773236094;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=5NydDgw5skp2fNvgsJ2AEjebkqzJTyxpf8LUj/+VKsg=;
 b=AMgJqG4L9LylhzQzSGFsR4isjp22ojqaooiXxRo+bbqa+IFMQe3YJ3z7
 Z2s6dQaP3Py90cuGtzOZazbIAeqSKjMLV48uMP4zQxJMifLtKx0rLOc+m
 yU/58mv29vmd/1bDNhNokRbMJ4/9d3SjYh9HP7nd7hipsgNeMz50X/RMd
 Hv8K6XN6fWRmqIFxZbCk5O1DfU+zWMuRwaBOxwog8zC35dNSqixBwUNOH
 NxdYdS8YfvSAJ7gbJ5/aGgA7eAcBsHkRJ+nyhgHQoET+g8O1zhAkRc8kW
 2lwBm9bndv9fflsrPXntVKH2PrzHoFMWZd6M+pswkxtNYalrI19JUqnUI Q==;
X-CSE-ConnectionGUID: MIAEC/F0TpuAjG7VZOEkIA==
X-CSE-MsgGUID: YLiEnnm8QiuYGixwYqnPSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="60142109"
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="60142109"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 06:34:54 -0700
X-CSE-ConnectionGUID: 1XwRqavNQKGOHZYq/6a8RQ==
X-CSE-MsgGUID: bNlDpdyuS8iBFTSZGNcKvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,239,1736841600"; d="scan'208";a="143517401"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.184])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 06:34:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915: Move intel_disable_shared_dpll() into
 ilk_pch_post_disable()
In-Reply-To: <20250310183528.3203-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250310183528.3203-1-ville.syrjala@linux.intel.com>
 <20250310183528.3203-2-ville.syrjala@linux.intel.com>
Date: Tue, 11 Mar 2025 15:34:48 +0200
Message-ID: <8734fjherr.fsf@intel.com>
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

On Mon, 10 Mar 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> On ILK-IVB only PCH outputs use shared dplls. Move the relevant
> intel_disable_shared_dpll() into ilk_pch_post_disable() to make
> that clear (and if we extend the dpll mgr to cover all plls we need
> different enable/disable points anyway for the PCH vs. CPU eDP cases).
> The intel_enable_shared_dpll() counterpart was already in
> ilk_pch_enable() anyway, so this is the more symmetric place for the
> disable as well.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c     | 2 --
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 4 ++++
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 0e0e5285ad97..f21c52a7c10a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1770,12 +1770,10 @@ static void ilk_crtc_disable(struct intel_atomic_=
state *state,
>  	if (old_crtc_state->has_pch_encoder)
>  		ilk_pch_post_disable(state, crtc);
>=20=20
>  	intel_set_cpu_fifo_underrun_reporting(display, pipe, true);
>  	intel_set_pch_fifo_underrun_reporting(display, pipe, true);
> -
> -	intel_disable_shared_dpll(old_crtc_state);
>  }
>=20=20
>  static void hsw_crtc_disable(struct intel_atomic_state *state,
>  			     struct intel_crtc *crtc)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/g=
pu/drm/i915/display/intel_pch_display.c
> index 99f6d6f53fa7..bde69b361d6e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -458,10 +458,12 @@ void ilk_pch_disable(struct intel_atomic_state *sta=
te,
>=20=20
>  void ilk_pch_post_disable(struct intel_atomic_state *state,
>  			  struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct intel_crtc_state *old_crtc_state =3D
> +		intel_atomic_get_old_crtc_state(state, crtc);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	ilk_disable_pch_transcoder(crtc);
>=20=20
>  	if (HAS_PCH_CPT(dev_priv)) {
> @@ -474,10 +476,12 @@ void ilk_pch_post_disable(struct intel_atomic_state=
 *state,
>  		intel_de_rmw(dev_priv, PCH_DPLL_SEL,
>  			     TRANS_DPLL_ENABLE(pipe) | TRANS_DPLLB_SEL(pipe), 0);
>  	}
>=20=20
>  	ilk_fdi_pll_disable(crtc);
> +
> +	intel_disable_shared_dpll(old_crtc_state);
>  }
>=20=20
>  static void ilk_pch_clock_get(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);

--=20
Jani Nikula, Intel
