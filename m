Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72601A567E4
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:34:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB28310E15B;
	Fri,  7 Mar 2025 12:34:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nNTflZLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D43210E15B;
 Fri,  7 Mar 2025 12:34:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741350875; x=1772886875;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pqrZLMGSU5GATubAQw+hsVmWYwUcADzQdf0n6nTBR3Q=;
 b=nNTflZLQOOtd4J8nfnQ2H2zU14JC7aCGp1crfZXUrzYRZd0c5VdL053A
 Pd2AqZf6ttyzD4aE5h9qjkFZokh2oTXTefQH3CkO1u5PIjJ+dQEcMpi1B
 7ZPNtiGj61dGPtFCjDFgk5H4iBDzgxPiATU4UcWVdigddFytWN5m1eqBd
 QPEJteTsI5VACfB6Lvm1PggvoUkoScPNd6G77sRHbj5efLeooKeJ134l9
 n5ipTWtB38AuFV64bpnUvbkzDblyIJFwRqPQD5hO1avYur3rvCw6kdGZC
 tID8fBRfYjgguGM6PQe7D4NtYgEyhaMQzxbhqW3GmuvjLnYOrHvnOnmZU g==;
X-CSE-ConnectionGUID: LEWHQ2Q7Q3CdAJpIzYdOVA==
X-CSE-MsgGUID: fpX7MpEdQ8a1cerGUf5/4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="67770280"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="67770280"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:34:34 -0800
X-CSE-ConnectionGUID: 7Fz2O9b6TZa34mawXMMh7A==
X-CSE-MsgGUID: 72EtK3ezQXubADUZzTRRtQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124535396"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.240])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:34:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v5 6/6] drm/i915/crt: Use intel_hpd_block/unblock()
 instead of intel_hpd_disable/enable()
In-Reply-To: <20250304152917.3407080-7-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250304152917.3407080-1-imre.deak@intel.com>
 <20250304152917.3407080-7-imre.deak@intel.com>
Date: Fri, 07 Mar 2025 14:34:28 +0200
Message-ID: <871pv9hve3.fsf@intel.com>
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
> intel_hpd_disable/enable() have the same purpose as
> intel_hpd_block/unblock(), except that disable/enable will drop any HPD
> IRQs which were triggered while the HPD was disabled, while
> block/unblock will handle such IRQs after the IRQ handling is unblocked.
> Use intel_hpd_block/unblock() for crt as well, by adding a helper to
> explicitly clear any pending IRQs before unblocking.
>
> v2:
> - Handle encoders without a port assigned to them.
> - Rebase on change in intel_hpd_suspend() documentation.
> v3:
> - Rebase on the suspend/resume -> block/unblock rename change.
> - Clear the pending events only after all encoders have unblocked the
>   HPD handling.
> - Clear the short/long port events for all encoders using the given HPD
>   pin.
> v4:
> - Rebase on port->hpd_pin tracking. (Ville)
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_crt.c     |  7 +--
>  drivers/gpu/drm/i915/display/intel_hotplug.c | 60 +++++++++++---------
>  drivers/gpu/drm/i915/display/intel_hotplug.h |  3 +-
>  3 files changed, 35 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i=
915/display/intel_crt.c
> index 76ffb3f8467c8..bca91d49cb960 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -532,8 +532,6 @@ static bool valleyview_crt_detect_hotplug(struct drm_=
connector *connector)
>  {
>  	struct intel_display *display =3D to_intel_display(connector->dev);
>  	struct intel_crt *crt =3D intel_attached_crt(to_intel_connector(connect=
or));
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	bool reenable_hpd;
>  	u32 adpa;
>  	bool ret;
>  	u32 save_adpa;
> @@ -550,7 +548,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_=
connector *connector)
>  	 *
>  	 * Just disable HPD interrupts here to prevent this
>  	 */
> -	reenable_hpd =3D intel_hpd_disable(dev_priv, crt->base.hpd_pin);
> +	intel_hpd_block(&crt->base);
>=20=20
>  	save_adpa =3D adpa =3D intel_de_read(display, crt->adpa_reg);
>  	drm_dbg_kms(display->drm,
> @@ -577,8 +575,7 @@ static bool valleyview_crt_detect_hotplug(struct drm_=
connector *connector)
>  	drm_dbg_kms(display->drm,
>  		    "valleyview hotplug adpa=3D0x%x, result %d\n", adpa, ret);
>=20=20
> -	if (reenable_hpd)
> -		intel_hpd_enable(dev_priv, crt->base.hpd_pin);
> +	intel_hpd_clear_and_unblock(&crt->base);
>=20=20
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/d=
rm/i915/display/intel_hotplug.c
> index cb4e320a1023d..423925fec73dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
> @@ -993,33 +993,6 @@ void intel_hpd_cancel_work(struct drm_i915_private *=
dev_priv)
>  		drm_dbg_kms(&dev_priv->drm, "Hotplug detection work still active\n");
>  }
>=20=20
> -bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin p=
in)
> -{
> -	bool ret =3D false;
> -
> -	if (pin =3D=3D HPD_NONE)
> -		return false;
> -
> -	spin_lock_irq(&dev_priv->irq_lock);
> -	if (dev_priv->display.hotplug.stats[pin].state =3D=3D HPD_ENABLED) {
> -		dev_priv->display.hotplug.stats[pin].state =3D HPD_DISABLED;
> -		ret =3D true;
> -	}
> -	spin_unlock_irq(&dev_priv->irq_lock);
> -
> -	return ret;
> -}
> -
> -void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pi=
n)
> -{
> -	if (pin =3D=3D HPD_NONE)
> -		return;
> -
> -	spin_lock_irq(&dev_priv->irq_lock);
> -	dev_priv->display.hotplug.stats[pin].state =3D HPD_ENABLED;
> -	spin_unlock_irq(&dev_priv->irq_lock);
> -}
> -
>  static void queue_work_for_missed_irqs(struct drm_i915_private *i915)
>  {
>  	struct intel_display *display =3D to_intel_display(&i915->drm);
> @@ -1096,7 +1069,8 @@ static bool unblock_hpd_pin(struct intel_display *d=
isplay, enum hpd_pin pin)
>   *   drm_connector_funcs::detect()) remains allowed, for instance as par=
t of
>   *   userspace connector probing, or DRM core's connector polling.
>   *
> - * The call must be followed by calling intel_hpd_unblock().
> + * The call must be followed by calling intel_hpd_unblock(), or
> + * intel_hpd_clear_and_unblock().
>   *
>   * Note that the handling of HPD IRQs for another encoder using the same=
 HPD
>   * pin as that of @encoder will be also blocked.
> @@ -1147,6 +1121,36 @@ void intel_hpd_unblock(struct intel_encoder *encod=
er)
>  	spin_unlock_irq(&i915->irq_lock);
>  }
>=20=20
> +/**
> + * intel_hpd_clear_and_unblock - Unblock handling of new HPD IRQs on an =
HPD pin
> + * @encoder: Encoder to unblock the HPD handling for
> + *
> + * Unblock the handling of HPD IRQs on the HPD pin of @encoder, which was
> + * previously blocked by intel_hpd_block(). Any HPD IRQ raised on the
> + * HPD pin while it was blocked will be cleared, handling only new IRQs.
> + */
> +void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +	struct intel_hotplug *hotplug =3D &display->hotplug;
> +	enum hpd_pin pin =3D encoder->hpd_pin;
> +
> +	if (pin =3D=3D HPD_NONE)
> +		return;
> +
> +	spin_lock_irq(&i915->irq_lock);
> +
> +	if (unblock_hpd_pin(display, pin)) {
> +		hotplug->event_bits &=3D ~BIT(pin);
> +		hotplug->retry_bits &=3D ~BIT(pin);
> +		hotplug->short_hpd_pin_mask &=3D ~BIT(pin);
> +		hotplug->long_hpd_pin_mask &=3D ~BIT(pin);
> +	}
> +
> +	spin_unlock_irq(&i915->irq_lock);
> +}
> +
>  void intel_hpd_enable_detection_work(struct drm_i915_private *i915)
>  {
>  	spin_lock_irq(&i915->irq_lock);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.h b/drivers/gpu/d=
rm/i915/display/intel_hotplug.h
> index 5f9857136f5e3..f189b871904ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug.h
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug.h
> @@ -26,10 +26,9 @@ void intel_hpd_init(struct drm_i915_private *dev_priv);
>  void intel_hpd_init_early(struct drm_i915_private *i915);
>  void intel_hpd_cancel_work(struct drm_i915_private *dev_priv);
>  enum hpd_pin intel_hpd_pin_default(enum port port);
> -bool intel_hpd_disable(struct drm_i915_private *dev_priv, enum hpd_pin p=
in);
> -void intel_hpd_enable(struct drm_i915_private *dev_priv, enum hpd_pin pi=
n);
>  void intel_hpd_block(struct intel_encoder *encoder);
>  void intel_hpd_unblock(struct intel_encoder *encoder);
> +void intel_hpd_clear_and_unblock(struct intel_encoder *encoder);
>  void intel_hpd_debugfs_register(struct drm_i915_private *i915);
>=20=20
>  void intel_hpd_enable_detection_work(struct drm_i915_private *i915);

--=20
Jani Nikula, Intel
