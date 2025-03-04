Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD28A4E507
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 17:08:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 960C710E164;
	Tue,  4 Mar 2025 16:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H4ObpimI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEAD610E164;
 Tue,  4 Mar 2025 16:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741104525; x=1772640525;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=USPKiG+Eo0UWleW7EcPAA0UXpxYItl00tQTiyldZ11c=;
 b=H4ObpimIJazQLso1D/N8uh27S9mNp5EIeTORH661HBCKpd++iB8fFL58
 BufmrBkmVkzGInAjfmIDI48PL8ib52+lN4jtx46/ChHDqcmvcAwzFJnW7
 8NR9P74L72uXXqLTv8hAdQMXlC59rkOdI+pa3cyTU46iFH1Wev5kAq/m3
 ykywekPL1amFdQe1kWZMjKuzBpQndVwn5KYhu0UOOTWfeZIbhBiZOAVSq
 clPZYdXDxVrd1c1QKTtr/wDJokXZKjevwpU+s84rSbzWS8R1ssDRIf3KL
 vCXtRI89/dLvPX8v0Wb/bvx76KWhKFeoes5V0k2zuDfzXC7eD0TlPeM/R A==;
X-CSE-ConnectionGUID: 7xFmFUgGSxS7mgLNJTXAnw==
X-CSE-MsgGUID: i5aubLNTQLeUXazgXitGhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42223779"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42223779"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 08:08:45 -0800
X-CSE-ConnectionGUID: 7xzGqa1YSZm/bKLP4Qhbig==
X-CSE-MsgGUID: A5C71g16Rbu+HyhXa7b1yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="119320351"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 08:08:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 1/6] drm/i915/hpd: Track HPD pins instead of ports
 for HPD pulse events
In-Reply-To: <20250304152917.3407080-2-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-2-imre.deak@intel.com>
Date: Tue, 04 Mar 2025 18:08:39 +0200
Message-ID: <874j08zsl4.fsf@intel.com>
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

On Tue, 04 Mar 2025, Imre Deak <imre.deak@intel.com> wrote:
> Track the HPD pin instead of the corresponding encoder ports for pending
> short/long HPD pulse events. This is how the pending hotplug events are
> tracked and there is no reason for tracking the pulse events differently.
>
> After this change intel_hpd_trigger_irq() will set the short pulse event
> pending for all encoders using the given HPD pin. This doesn't change
> the behavior, as atm in case of multiple (2) encoders sharing the same
> pin only one will have a pulse handler, so for other encoders without a
> pulse handler the event is ignored. Also setting the pulse event pending
> for all encoders using the HPD pin is what happens after an actual HPD
> IRQ, the effect of calling intel_hpd_trigger_irq() should match this.
>
> In a following change this also makes it simpler to block the handling
> of a short/long pulse event on an HPD pin for all the encoders using
> this HPD pin.
>
> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +--
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 30 +++++++++----------
>  2 files changed, 17 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 554870d2494b3..d9952007635e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -169,8 +169,8 @@ struct intel_hotplug {
>  	u32 retry_bits;
>  	struct delayed_work reenable_work;
>=20=20
> -	u32 long_port_mask;
> -	u32 short_port_mask;
> +	u32 long_hpd_pin_mask;
> +	u32 short_hpd_pin_mask;
>  	struct work_struct dig_port_work;
>=20=20
>  	struct work_struct poll_init_work;
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 00d7b1ccf1900..9692b5c01aea9 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -353,28 +353,28 @@ static void i915_digport_work_func(struct work_stru=
ct *work)
>  {
>  	struct drm_i915_private *dev_priv =3D
>  		container_of(work, struct drm_i915_private, display.hotplug.dig_port_w=
ork);
> -	u32 long_port_mask, short_port_mask;
> +	u32 long_hpd_pin_mask, short_hpd_pin_mask;
>  	struct intel_encoder *encoder;
>  	u32 old_bits =3D 0;
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	long_port_mask =3D dev_priv->display.hotplug.long_port_mask;
> -	dev_priv->display.hotplug.long_port_mask =3D 0;
> -	short_port_mask =3D dev_priv->display.hotplug.short_port_mask;
> -	dev_priv->display.hotplug.short_port_mask =3D 0;
> +	long_hpd_pin_mask =3D dev_priv->display.hotplug.long_hpd_pin_mask;
> +	dev_priv->display.hotplug.long_hpd_pin_mask =3D 0;
> +	short_hpd_pin_mask =3D dev_priv->display.hotplug.short_hpd_pin_mask;
> +	dev_priv->display.hotplug.short_hpd_pin_mask =3D 0;
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20=20
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
>  		struct intel_digital_port *dig_port;
> -		enum port port =3D encoder->port;
> +		enum hpd_pin pin =3D encoder->hpd_pin;
>  		bool long_hpd, short_hpd;
>  		enum irqreturn ret;
>=20=20
>  		if (!intel_encoder_has_hpd_pulse(encoder))
>  			continue;
>=20=20
> -		long_hpd =3D long_port_mask & BIT(port);
> -		short_hpd =3D short_port_mask & BIT(port);
> +		long_hpd =3D long_hpd_pin_mask & BIT(pin);
> +		short_hpd =3D short_hpd_pin_mask & BIT(pin);
>=20=20
>  		if (!long_hpd && !short_hpd)
>  			continue;
> @@ -384,7 +384,7 @@ static void i915_digport_work_func(struct work_struct=
 *work)
>  		ret =3D dig_port->hpd_pulse(dig_port, long_hpd);
>  		if (ret =3D=3D IRQ_NONE) {
>  			/* fall back to old school hpd */
> -			old_bits |=3D BIT(encoder->hpd_pin);
> +			old_bits |=3D BIT(pin);
>  		}
>  	}
>=20=20
> @@ -407,9 +407,10 @@ static void i915_digport_work_func(struct work_struc=
t *work)
>  void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_encoder *encoder =3D &dig_port->base;
>=20=20
>  	spin_lock_irq(&i915->irq_lock);
> -	i915->display.hotplug.short_port_mask |=3D BIT(dig_port->base.port);
> +	i915->display.hotplug.short_hpd_pin_mask |=3D BIT(encoder->hpd_pin);
>  	spin_unlock_irq(&i915->irq_lock);
>=20=20
>  	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port=
_work);
> @@ -557,7 +558,6 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  	 * only the one of them (DP) will have ->hpd_pulse().
>  	 */
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
> -		enum port port =3D encoder->port;
>  		bool long_hpd;
>=20=20
>  		pin =3D encoder->hpd_pin;
> @@ -577,10 +577,10 @@ void intel_hpd_irq_handler(struct drm_i915_private =
*dev_priv,
>=20=20
>  		if (long_hpd) {
>  			long_hpd_pulse_mask |=3D BIT(pin);
> -			dev_priv->display.hotplug.long_port_mask |=3D BIT(port);
> +			dev_priv->display.hotplug.long_hpd_pin_mask |=3D BIT(pin);
>  		} else {
>  			short_hpd_pulse_mask |=3D BIT(pin);
> -			dev_priv->display.hotplug.short_port_mask |=3D BIT(port);
> +			dev_priv->display.hotplug.short_hpd_pin_mask |=3D BIT(pin);
>  		}
>  	}
>=20=20
> @@ -920,8 +920,8 @@ void intel_hpd_cancel_work(struct drm_i915_private *d=
ev_priv)
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20=20
> -	dev_priv->display.hotplug.long_port_mask =3D 0;
> -	dev_priv->display.hotplug.short_port_mask =3D 0;
> +	dev_priv->display.hotplug.long_hpd_pin_mask =3D 0;
> +	dev_priv->display.hotplug.short_hpd_pin_mask =3D 0;
>  	dev_priv->display.hotplug.event_bits =3D 0;
>  	dev_priv->display.hotplug.retry_bits =3D 0;

--=20
Jani Nikula, Intel
