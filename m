Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0280996D62
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 16:15:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3679510E734;
	Wed,  9 Oct 2024 14:15:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VMqS+fsE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 646EF10E734
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 14:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728483326; x=1760019326;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=V3Wd4R+7oYrj9MP4AKNMnSBK8GJ1zMgRmIOCBTTbnCk=;
 b=VMqS+fsE/iE+LdWch39xLc3/w/twNSIdoouc3Ve92dWdU6zwIi+Bq/Ri
 zBjqYMqHsW8qC4KNDu91bV5ahSs1fWh2pqluoxilVGpXcyg2at6Hjtotr
 7EteVSjNTUOhNPpivRHXroOkr5ciaR7RMb6tLtN96WhyV+YIcWST/07If
 +efdmQnRUKWGLbW3NqgIktuifqADhfsq+nmUC9VBLLi0jeOlxvyWMmxXy
 Jbk5OUCzxzBuduhBfoCpc04aSG8RnbFi5xmxM62OlvDBVeFF6/ET/DRkz
 jouMfx+SSOcvgv1NAvD3aQfuSSEOofK/BEP9DLqQfoOO8vbsBsS8DCo6i g==;
X-CSE-ConnectionGUID: qocUVcqWRO+YiCqmoJ7hMw==
X-CSE-MsgGUID: iNr64Tq+QneQ2BcpEUBYFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27919889"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27919889"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:15:25 -0700
X-CSE-ConnectionGUID: isaOM5QKQUeP+f3iaE5uZQ==
X-CSE-MsgGUID: VLM9F5T0TEmIvSHKBpTOqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="80777705"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 07:15:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Jouni =?utf-8?Q?H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Add own counter for Panel
 Replay vblank workaround
In-Reply-To: <20241009134225.1322820-1-jouni.hogander@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009134225.1322820-1-jouni.hogander@intel.com>
Date: Wed, 09 Oct 2024 17:15:20 +0300
Message-ID: <87ttdl8irr.fsf@intel.com>
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

On Wed, 09 Oct 2024, Jouni H=C3=B6gander <jouni.hogander@intel.com> wrote:
> We are about to change meaning of vblank_enabled to fix Panel Replay vbla=
nk
> workaround. For sake of clarity we need to rename it. Vblank_enabled is
> used for i915gm/i945gm vblank irq workaround as well -> instead of rename
> add new counter named as vblank_wa_pipes.
>
> v2:
>   - s/vblank_wa_pipes/vblank_wa_num_pipes/
>   - use int as a type for the counter
>
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_core.h | 2 ++
>  drivers/gpu/drm/i915/display/intel_display_irq.c  | 8 ++++----
>  2 files changed, 6 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 982dd9469195..45697af25fa9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -455,6 +455,8 @@ struct intel_display {
>  		/* For i915gm/i945gm vblank irq workaround */
>  		u8 vblank_enabled;

Maybe we want to rename this one too?

BR,
Jani.

>=20=20
> +		int vblank_wa_num_pipes;
> +
>  		struct work_struct vblank_dc_work;
>=20=20
>  		u32 de_irq_mask[I915_MAX_PIPES];
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index a4367ddc7a44..8226ea218d77 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1424,7 +1424,7 @@ static void intel_display_vblank_dc_work(struct wor=
k_struct *work)
>  	struct intel_display *display =3D
>  		container_of(work, typeof(*display), irq.vblank_dc_work);
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
> -	u8 vblank_enabled =3D READ_ONCE(display->irq.vblank_enabled);
> +	int vblank_wa_num_pipes =3D READ_ONCE(display->irq.vblank_wa_num_pipes);
>=20=20
>  	/*
>  	 * NOTE: intel_display_power_set_target_dc_state is used only by PSR
> @@ -1432,7 +1432,7 @@ static void intel_display_vblank_dc_work(struct wor=
k_struct *work)
>  	 * PSR code. If DC3CO is taken into use we need take that into account
>  	 * here as well.
>  	 */
> -	intel_display_power_set_target_dc_state(i915, vblank_enabled ? DC_STATE=
_DISABLE :
> +	intel_display_power_set_target_dc_state(i915, vblank_wa_num_pipes ? DC_=
STATE_DISABLE :
>  						DC_STATE_EN_UPTO_DC6);
>  }
>=20=20
> @@ -1447,7 +1447,7 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>  	if (gen11_dsi_configure_te(crtc, true))
>  		return 0;
>=20=20
> -	if (display->irq.vblank_enabled++ =3D=3D 0 && crtc->block_dc_for_vblank)
> +	if (display->irq.vblank_wa_num_pipes++ =3D=3D 0 && crtc->block_dc_for_v=
blank)
>  		schedule_work(&display->irq.vblank_dc_work);
>=20=20
>  	spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
> @@ -1478,7 +1478,7 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>  	bdw_disable_pipe_irq(dev_priv, pipe, GEN8_PIPE_VBLANK);
>  	spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>=20=20
> -	if (--display->irq.vblank_enabled =3D=3D 0 && crtc->block_dc_for_vblank)
> +	if (--display->irq.vblank_wa_num_pipes =3D=3D 0 && crtc->block_dc_for_v=
blank)
>  		schedule_work(&display->irq.vblank_dc_work);
>  }

--=20
Jani Nikula, Intel
