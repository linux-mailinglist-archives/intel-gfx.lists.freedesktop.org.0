Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD4DA4E760
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 18:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34B5C10E665;
	Tue,  4 Mar 2025 17:02:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LFxGcWGC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA70410E65B;
 Tue,  4 Mar 2025 17:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741107758; x=1772643758;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=jlONzZh8fFooCjBqJrrP3tDjJicZ1jTJpLfpIEtzhsQ=;
 b=LFxGcWGCcokAuAQn4WYHVeS7QJGijYuMunSGw20lCtIlaMZlVmaIk5rf
 5q8NMCTwh/LWZAha2+hqglNc/1PkYvJhMqc4CpcJqPwuTymXKZApPqzPQ
 u6hpiC+lRszQxZZ6SmpFWRetMLA1SD9semGxmbHfHuetrpLzJ5lDWMfUU
 9HnJff3z9BusBCUJkrvIT8whcGUbiEIBavV0ZdPbUNNuIwBtwcveUUo4v
 zENUdKj9HzNZqmUotkEohe3JXwIfyFQZUgx6vTP2QNVGCP7Kie9dcmtpH
 885aD6AgVvYBJ//QWTaxHCSkQRDU5dI5P2J+DLwL05hTOTXPwdMx0z2Cu w==;
X-CSE-ConnectionGUID: as+mmaCaREK9SgnXhyLNnA==
X-CSE-MsgGUID: m+ZpQy56Rc6U4LC+Cgp1yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="41947760"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="41947760"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:02:37 -0800
X-CSE-ConnectionGUID: yWFmb5KQShuQJ6t2pRL/jw==
X-CSE-MsgGUID: +UncLjjXRQ2IIhWaGYYseg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="118575814"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 09:02:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 3/6] drm/i915/hpd: Add support for blocking the IRQ
 handling on an HPD pin
In-Reply-To: <20250304152917.3407080-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-4-imre.deak@intel.com>
Date: Tue, 04 Mar 2025 19:02:32 +0200
Message-ID: <87y0xkybiv.fsf@intel.com>
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
> Add support for blocking the IRQ handling on the HPD pin of a given
> encoder, handling IRQs that arrived while in the blocked state after
> unblocking the IRQ handling. This will be used by a follow-up change,
> which blocks/unblocks the IRQ handling around DP link training.
>
> This is similar to the intel_hpd_disable/enable() functionality, by also
> handling encoders/ports with a pulse handler (i.e. also
> blocking/unblocking the short/long pulse handling) and handling the IRQs
> arrived in the blocked state after the handling is unblocked (vs. just
> dropping such IRQs).
>
> v2:
> - Handle encoders without a port assigned to them.
> - Fix clearing IRQs from intel_hotplug::short_port_mask.
> v3:
> - Rename intel_hpd_suspend/resume() to intel_hpd_block/unblock(). (Jani)
> - Refer to HPD pins as hpd_pin vs. hpd.
> - Flush dig_port_work in intel_hpd_block() if any encoder using the HPD
>   pin has a pulse handler.
> v4:
> - Fix hpd_pin_has_pulse(), checking the encoder's HPD pin.
> v5:
> - Rebase on port->hpd_pin tracking. (Ville)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |   1 +
>  drivers/gpu/drm/i915/display/intel_hotplug.c  | 205 +++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_hotplug.h  |   2 +
>  3 files changed, 183 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index d9952007635e0..fbe890775c2ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -159,6 +159,7 @@ struct intel_hotplug {
>  	struct {
>  		unsigned long last_jiffies;
>  		int count;
> +		int blocked_count;
>  		enum {
>  			HPD_ENABLED =3D 0,
>  			HPD_DISABLED =3D 1,
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index 3fb5feeefa144..cb4e320a1023d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -349,19 +349,56 @@ static bool intel_encoder_has_hpd_pulse(struct inte=
l_encoder *encoder)
>  		enc_to_dig_port(encoder)->hpd_pulse !=3D NULL;
>  }
>=20=20
> +static bool hpd_pin_has_pulse(struct intel_display *display, enum hpd_pi=
n pin)
> +{
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(display->drm, encoder) {
> +		if (encoder->hpd_pin !=3D pin)
> +			continue;
> +
> +		if (intel_encoder_has_hpd_pulse(encoder))
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +static u32 get_blocked_hpd_pins(struct intel_display *display)

Nitpick, I kinda dislike this _pins and _bits
naming. get_blocked_hpd_pin_mask seems better since you'll do bit ops
with long_hpd_pin_mask and short_hpd_pin_mask.

> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	enum hpd_pin pin;
> +	u32 hpd_pins =3D 0;
> +
> +	lockdep_assert_held(&i915->irq_lock);
> +
> +	for_each_hpd_pin(pin) {
> +		if (display->hotplug.stats[pin].blocked_count)
> +			hpd_pins |=3D BIT(pin);
> +	}
> +
> +	return hpd_pins;
> +}
> +
>  static void i915_digport_work_func(struct work_struct *work)
>  {
> -	struct drm_i915_private *dev_priv =3D
> -		container_of(work, struct drm_i915_private, display.hotplug.dig_port_w=
ork);
> +	struct intel_display *display =3D
> +		container_of(work, struct intel_display, hotplug.dig_port_work);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	u32 long_hpd_pin_mask, short_hpd_pin_mask;
>  	struct intel_encoder *encoder;
> +	u32 blocked_hpd_pins;
>  	u32 old_bits =3D 0;
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
> -	long_hpd_pin_mask =3D dev_priv->display.hotplug.long_hpd_pin_mask;
> -	dev_priv->display.hotplug.long_hpd_pin_mask =3D 0;
> -	short_hpd_pin_mask =3D dev_priv->display.hotplug.short_hpd_pin_mask;
> -	dev_priv->display.hotplug.short_hpd_pin_mask =3D 0;
> +
> +	blocked_hpd_pins =3D get_blocked_hpd_pins(display);

Ditto here, blocked_hpd_pin_mask seems more clear to me.

> +	long_hpd_pin_mask =3D hotplug->long_hpd_pin_mask & ~blocked_hpd_pins;
> +	hotplug->long_hpd_pin_mask &=3D ~long_hpd_pin_mask;
> +	short_hpd_pin_mask =3D hotplug->short_hpd_pin_mask & ~blocked_hpd_pins;
> +	hotplug->short_hpd_pin_mask &=3D ~short_hpd_pin_mask;
> +
>  	spin_unlock_irq(&dev_priv->irq_lock);
>=20=20
>  	for_each_intel_encoder(&dev_priv->drm, encoder) {
> @@ -406,14 +443,18 @@ static void i915_digport_work_func(struct work_stru=
ct *work)
>   */
>  void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_display *display =3D to_intel_display(dig_port);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	struct intel_encoder *encoder =3D &dig_port->base;
>=20=20
>  	spin_lock_irq(&i915->irq_lock);
> -	i915->display.hotplug.short_hpd_pin_mask |=3D BIT(encoder->hpd_pin);
> -	spin_unlock_irq(&i915->irq_lock);
>=20=20
> -	queue_work(i915->display.hotplug.dp_wq, &i915->display.hotplug.dig_port=
_work);
> +	hotplug->short_hpd_pin_mask |=3D BIT(encoder->hpd_pin);
> +	if (!(BIT(encoder->hpd_pin) & get_blocked_hpd_pins(display)))

Maybe add a helper hpd_pin_is_blocked()? It could access
hotplug->stats[pin].blocked_count directly without iterating all of
them.

> +		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
> +
> +	spin_unlock_irq(&i915->irq_lock);
>  }
>=20=20
>  /*
> @@ -421,9 +462,10 @@ void intel_hpd_trigger_irq(struct intel_digital_port=
 *dig_port)
>   */
>  static void i915_hotplug_work_func(struct work_struct *work)
>  {
> -	struct drm_i915_private *dev_priv =3D
> -		container_of(work, struct drm_i915_private,
> -			     display.hotplug.hotplug_work.work);
> +	struct intel_display *display =3D
> +		container_of(work, struct intel_display, hotplug.hotplug_work.work);
> +	struct drm_i915_private *dev_priv =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
>  	struct drm_connector_list_iter conn_iter;
>  	struct intel_connector *connector;
>  	u32 changed =3D 0, retry =3D 0;
> @@ -431,16 +473,18 @@ static void i915_hotplug_work_func(struct work_stru=
ct *work)
>  	u32 hpd_retry_bits;
>  	struct drm_connector *first_changed_connector =3D NULL;
>  	int changed_connectors =3D 0;
> +	u32 blocked_hpd_pins;

Same nitpick about naming.

>=20=20
>  	mutex_lock(&dev_priv->drm.mode_config.mutex);
>  	drm_dbg_kms(&dev_priv->drm, "running encoder hotplug functions\n");
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20=20
> -	hpd_event_bits =3D dev_priv->display.hotplug.event_bits;
> -	dev_priv->display.hotplug.event_bits =3D 0;
> -	hpd_retry_bits =3D dev_priv->display.hotplug.retry_bits;
> -	dev_priv->display.hotplug.retry_bits =3D 0;
> +	blocked_hpd_pins =3D get_blocked_hpd_pins(display);
> +	hpd_event_bits =3D hotplug->event_bits & ~blocked_hpd_pins;
> +	hotplug->event_bits &=3D ~hpd_event_bits;
> +	hpd_retry_bits =3D hotplug->retry_bits & ~blocked_hpd_pins;
> +	hotplug->retry_bits &=3D ~hpd_retry_bits;
>=20=20
>  	/* Enable polling for connectors which had HPD IRQ storms */
>  	intel_hpd_irq_storm_switch_to_polling(dev_priv);
> @@ -539,11 +583,13 @@ static void i915_hotplug_work_func(struct work_stru=
ct *work)
>  void intel_hpd_irq_handler(struct drm_i915_private *dev_priv,
>  			   u32 pin_mask, u32 long_mask)
>  {
> +	struct intel_display *display =3D to_intel_display(&dev_priv->drm);
>  	struct intel_encoder *encoder;
>  	bool storm_detected =3D false;
>  	bool queue_dig =3D false, queue_hp =3D false;
>  	u32 long_hpd_pulse_mask =3D 0;
>  	u32 short_hpd_pulse_mask =3D 0;
> +	u32 blocked_hpd_pins;

Ditto.

>  	enum hpd_pin pin;
>=20=20
>  	if (!pin_mask)
> @@ -551,6 +597,8 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>=20=20
>  	spin_lock(&dev_priv->irq_lock);
>=20=20
> +	blocked_hpd_pins =3D get_blocked_hpd_pins(display);
> +
>  	/*
>  	 * Determine whether ->hpd_pulse() exists for each pin, and
>  	 * whether we have a short or a long pulse. This is needed
> @@ -573,7 +621,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  			"digital hpd on [ENCODER:%d:%s] - %s\n",
>  			encoder->base.base.id, encoder->base.name,
>  			long_hpd ? "long" : "short");
> -		queue_dig =3D true;
> +
> +		if (!(BIT(pin) & blocked_hpd_pins))

This could also use the hpd_pin_is_blocked() helper.

> +			queue_dig =3D true;
>=20=20
>  		if (long_hpd) {
>  			long_hpd_pulse_mask |=3D BIT(pin);
> @@ -617,7 +667,9 @@ void intel_hpd_irq_handler(struct drm_i915_private *d=
ev_priv,
>  		} else {
>  			dev_priv->display.hotplug.event_bits |=3D BIT(pin);
>  			long_hpd =3D true;
> -			queue_hp =3D true;
> +
> +			if (!(BIT(pin) & blocked_hpd_pins))

Ditto.

> +				queue_hp =3D true;
>  		}
>=20=20
>  		if (intel_hpd_irq_storm_detect(dev_priv, pin, long_hpd)) {
> @@ -915,11 +967,15 @@ static bool cancel_all_detection_work(struct drm_i9=
15_private *i915)
>=20=20
>  void intel_hpd_cancel_work(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D to_intel_display(&dev_priv->drm);
> +
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>=20=20
>  	spin_lock_irq(&dev_priv->irq_lock);
>=20=20
> +	drm_WARN_ON(display->drm, get_blocked_hpd_pins(display));
> +
>  	dev_priv->display.hotplug.long_hpd_pin_mask =3D 0;
>  	dev_priv->display.hotplug.short_hpd_pin_mask =3D 0;
>  	dev_priv->display.hotplug.event_bits =3D 0;
> @@ -966,19 +1022,22 @@ void intel_hpd_enable(struct drm_i915_private *dev=
_priv, enum hpd_pin pin)
>=20=20
>  static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
>  {
> -	bool queue_work =3D false;
> +	struct intel_display *display =3D to_intel_display(&i915->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
> +	bool queue_hp_work =3D false;
> +	u32 blocked_hpd_pins;
>  	enum hpd_pin pin;
>=20=20
>  	lockdep_assert_held(&i915->irq_lock);
>=20=20
> -	if (i915->display.hotplug.event_bits ||
> -	    i915->display.hotplug.retry_bits)
> -		queue_work =3D true;
> +	blocked_hpd_pins =3D get_blocked_hpd_pins(display);
> +	if ((hotplug->event_bits | hotplug->retry_bits) & ~blocked_hpd_pins)
> +		queue_hp_work =3D true;
>=20=20
>  	for_each_hpd_pin(pin) {
>  		switch (i915->display.hotplug.stats[pin].state) {
>  		case HPD_MARK_DISABLED:
> -			queue_work =3D true;
> +			queue_hp_work =3D true;
>  			break;
>  		case HPD_DISABLED:
>  		case HPD_ENABLED:
> @@ -988,10 +1047,106 @@ static void queue_work_for_missed_irqs(struct drm=
_i915_private *i915)
>  		}
>  	}
>=20=20
> -	if (queue_work)
> +	if ((hotplug->long_hpd_pin_mask | hotplug->short_hpd_pin_mask) & ~block=
ed_hpd_pins)
> +		queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
> +
> +	if (queue_hp_work)
>  		queue_delayed_detection_work(i915, &i915->display.hotplug.hotplug_work=
, 0);
>  }
>=20=20
> +static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pi=
n)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
> +
> +	lockdep_assert_held(&i915->irq_lock);
> +
> +	hotplug->stats[pin].blocked_count++;
> +
> +	return hotplug->stats[pin].blocked_count =3D=3D 1;
> +}
> +
> +static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin =
pin)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
> +
> +	lockdep_assert_held(&i915->irq_lock);
> +
> +	drm_WARN_ON(display->drm, hotplug->stats[pin].blocked_count =3D=3D 0);
> +	hotplug->stats[pin].blocked_count--;

Maybe don't change it if it's already 0? I know, shouldn't happen.

> +
> +	return hotplug->stats[pin].blocked_count =3D=3D 0;
> +}
> +
> +/**
> + * intel_hpd_block - Block handling of HPD IRQs on an HPD pin
> + * @encoder: Encoder to block the HPD handling for
> + *
> + * Blocks the handling of HPD IRQs on the HPD pin of @encoder.
> + *
> + * On return:
> + * - It's guaranteed that the blocked encoders' HPD pulse handler
> + *   (via intel_digital_port::hpd_pulse()) is not running.
> + * - The hotplug event handling (via intel_encoder::hotplug()) of an
> + *   HPD IRQ pending at the time this function is called may be still
> + *   running.
> + * - Detection on the encoder's connector (via
> + *   drm_connector_helper_funcs::detect_ctx(),
> + *   drm_connector_funcs::detect()) remains allowed, for instance as par=
t of
> + *   userspace connector probing, or DRM core's connector polling.
> + *
> + * The call must be followed by calling intel_hpd_unblock().
> + *
> + * Note that the handling of HPD IRQs for another encoder using the same=
 HPD
> + * pin as that of @encoder will be also blocked.
> + */
> +void intel_hpd_block(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
> +	bool do_flush =3D false;
> +
> +	if (encoder->hpd_pin =3D=3D HPD_NONE)
> +		return;
> +
> +	spin_lock_irq(&i915->irq_lock);
> +
> +	if (block_hpd_pin(display, encoder->hpd_pin))
> +		do_flush =3D true;
> +
> +	spin_unlock_irq(&i915->irq_lock);
> +
> +	if (do_flush && hpd_pin_has_pulse(display, encoder->hpd_pin))
> +		flush_work(&hotplug->dig_port_work);
> +}
> +
> +/**
> + * intel_hpd_unblock - Unblock handling of HPD IRQs on an HPD pin
> + * @encoder: Encoder to unblock the HPD handling for
> + *
> + * Unblock the handling of HPD IRQs on the HPD pin of @encoder, which was
> + * previously blocked by intel_hpd_block(). Any HPD IRQ raised on the
> + * HPD pin while it was blocked will be handled for @encoder and for any
> + * other encoder sharing the same HPD pin.
> + */
> +void intel_hpd_unblock(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
> +	if (encoder->hpd_pin =3D=3D HPD_NONE)
> +		return;
> +
> +	spin_lock_irq(&i915->irq_lock);
> +
> +	if (unblock_hpd_pin(display, encoder->hpd_pin))
> +		queue_work_for_missed_irqs(i915);
> +
> +	spin_unlock_irq(&i915->irq_lock);
> +}
> +
>  void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
>  {
>  	spin_lock_irq(&i915->irq_lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/d=
rm/i915/display/intel_hotplug.h
> index d6986902b0545..5f9857136f5e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -28,6 +28,8 @@ void intel_hpd_cancel_work(struct drm_i915_private *dev=
_priv);
>  enum hpd_pin intel_hpd_pin_default(enum port port);
>  bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin p=
in);
>  void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pi=
n);
> +void intel_hpd_block(struct intel_encoder *encoder);
> +void intel_hpd_unblock(struct intel_encoder *encoder);
>  void intel_hpd_debugfs_register(struct drm_i915_private *i915);
>=20=20
>  void intel_hpd_enable_detection_work(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
