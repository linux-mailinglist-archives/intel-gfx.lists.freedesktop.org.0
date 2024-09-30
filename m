Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 513AA989C2D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 10:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FA1F10E3C1;
	Mon, 30 Sep 2024 08:05:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M/eg0zVK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9E6D10E3C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2024 08:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727683548; x=1759219548;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cn9jh5IGcbmoIEv6+ztayQCB+1iqCZ3FYtIwzdZ4fzE=;
 b=M/eg0zVKiFPEJS57rIaclqvMKbGiGyRV98UW2lvtmDC4jPY7InVhHbYV
 dIFczEzBz0lu9bt2arnbtLRcPf6sUHcUzYVdu2AkV5qwTjsgRCU/tHqzi
 sKj1pFHRltS61Ed2pSAq5NrW4hppjGnwjQiDolpsN8rzvU3tbzU3HdzxI
 r835nRgPgCCdsQ+TbMY0QyvjpdEf66p7rSSL+jJxkCIpXs2FI4s2ljvrn
 4Y6j2PV7cFNCFXF0VgYapuAOStxaKV2omtjNSPIuGbbT0BnV9F7ldSDuE
 AyyMEAz2qh08G8+VZ/LSRaP/g9PQSCu6ClXX8Efxh6EXfehUPvYA/TFDz g==;
X-CSE-ConnectionGUID: zOlNKYiLRhSypj2wA412bA==
X-CSE-MsgGUID: Yn4lFIBwQ0yAKyQKnnovdg==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="37341002"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="37341002"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 01:05:47 -0700
X-CSE-ConnectionGUID: 6aDsPFVURcefqjSKaySfIA==
X-CSE-MsgGUID: Dfht9BJyT6+FebhInD3how==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="72887223"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 01:04:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/display: Add own counter for Panel Replay
 vblank workaround
In-Reply-To: <20240930064752.1602148-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240930064752.1602148-1-jouni.hogander@intel.com>
Date: Mon, 30 Sep 2024 11:04:34 +0300
Message-ID: <87zfnpworx.fsf@intel.com>
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

On Mon, 30 Sep 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We are about to change meaning of vblank_enabled to fix Panel Replay vbla=
nk
> workaround. For sake of clarity we need to rename it. Vblank_enabled is
> used for i915gm/i945gm vblank irq workaround as well -> instead of rename
> add new counter named as vblank_wa_pipes.
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_irq.c  | 8 ++++----
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 982dd94691954..aff06bbf62c90 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -455,6 +455,8 @@ struct intel_display {
>  		/* For i915gm/i945gm vblank irq workaround */
>  		u8 vblank_enabled;
>=20=20
> +		u8 vblank_wa_pipes;
> +

Could make that an int and name _num_pipes or something while at it. I
first thought it was a bitmask.

>  		struct work_struct vblank_dc_work;
>=20=20
>  		u32 de_irq_mask[I915_MAX_PIPES];
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 6878dde85031c..d71f4b0ee7357 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1365,7 +1365,7 @@ static void intel_display_vblank_dc_work(struct wor=
k_struct *work)
>  	struct intel_display *display =3D
>  		container_of(work, typeof(*display), irq.vblank_dc_work);
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	u8 vblank_enabled =3D READ_ONCE(display->irq.vblank_enabled);
> +	u8 vblank_wa_pipes =3D READ_ONCE(display->irq.vblank_wa_pipes);
>=20=20
>  	/*
>  	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
> @@ -1373,7 +1373,7 @@ static void intel_display_vblank_dc_work(struct wor=
k_struct *work)
>  	 * PSR code. If DC3CO is taken into use we need take that into account
>  	 * here as well.
>  	 */
> -	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE=
_DISABLE :
> +	intel_display_power_set_target_dc_state(i915, vblank_wa_pipes ? DC_STAT=
E_DISABLE :
>  						DC_STATE_EN_UPTO_DC6);
>  }
>=20=20
> @@ -1388,7 +1388,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	if (gen11_dsi_configure_te(crtc, true))
>  		return 0;
>=20=20
> -	if (display->irq.vblank_enabled++ =3D=3D 0 && crtc->block_dc_for_vblank)
> +	if (display->irq.vblank_wa_pipes++ =3D=3D 0 && crtc->block_dc_for_vblan=
k)
>  		schedule_work(&display->irq.vblank_dc_work);
>=20=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> @@ -1468,7 +1468,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20=20
> -	if (--display->irq.vblank_enabled =3D=3D 0 && crtc->block_dc_for_vblank)
> +	if (--display->irq.vblank_wa_pipes =3D=3D 0 && crtc->block_dc_for_vblan=
k)
>  		schedule_work(&display->irq.vblank_dc_work);
>  }

--=20
Jani Nikula, Intel
