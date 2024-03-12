Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE42879463
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 13:45:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD63110F427;
	Tue, 12 Mar 2024 12:45:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="tMEn09R8";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="VQrqvG7w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E328F10F10B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 11:05:13 +0000 (UTC)
Date: Tue, 12 Mar 2024 12:05:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1710241511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3zEEf8Oc3cGzWFwPZqQOfPaCyBPN0wnB+XnX3wOGP4Y=;
 b=tMEn09R8Jwvr8alOarzMO86xbX62TWA7rfnOLwfhnrh5wITv7DdVCHnAu/s8A/0LNjUwos
 XsJY0x1/tjN/GaURcdyrNleP4SZudMvgfiq2Yq4kSWz15EWhC6+o2r9trmBGfwlRpu9x/F
 /488vR68Cgri7hsmkA8kZoQ4TVYEtdPNzBAh7EoQrf19Cp2ZHVJiBFW8ZOFtevTEmBSIan
 NBJ/d387sJWC3qJ1yawJiq24q13QIcXhNB1AvI/YgkbaBGdO8eMQmKiQyCgMfiTrFsqhYO
 rZNh4G4a3bcZ+iSHIkjk/Uq6jiRf5bW5t+MD2qOKha/63PV/E8MtV96Sb/aMDg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1710241511;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3zEEf8Oc3cGzWFwPZqQOfPaCyBPN0wnB+XnX3wOGP4Y=;
 b=VQrqvG7wTN6WJftETQzsAJdqhxwkFXRKoW5irEMme8pUEq7VdiR9iGGlKpcTR67BuKJZ2r
 KdOyVbPOjbT9mzBQ==
From: Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v3 4/6] drm/i915: Extract opregion vbt presence check
Message-ID: <20240312120240-afdb1b83-8517-434b-be79-06f41bafd71f@linutronix.de>
References: <20240228213235.2495611-1-radhakrishna.sripada@intel.com>
 <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228213235.2495611-5-radhakrishna.sripada@intel.com>
X-Mailman-Approved-At: Tue, 12 Mar 2024 12:45:01 +0000
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

On Wed, Feb 28, 2024 at 01:32:33PM -0800, Radhakrishna Sripada wrote:
> We want to later change intel_opregion_get_vbt to duplicate the vbt
> memory if present, which would be an overkill when we just want to
> peek into the presence of opregion vbt. Carve out the presence check
> into its own function to use in places where only the presence of vbt
> is required.

This doesn't compile when CONFIG_ACPI is not enabled:

  CC [M]  drivers/gpu/drm/xe/i915-display/intel_bios.o
drivers/gpu/drm/i915/display/intel_bios.c: In function 'intel_bios_is_lvds_present':
drivers/gpu/drm/i915/display/intel_bios.c:3425:24: error: implicit declaration of function 'intel_opregion_vbt_present'; did you mean
 'intel_opregion_asle_present'? [-Werror=implicit-function-declaration]
 3425 |                 return intel_opregion_vbt_present(i915);
      |                        ^~~~~~~~~~~~~~~~~~~~~~~~~~
      |                        intel_opregion_asle_present
cc1: all warnings being treated as errors

Seen on next-20240312.

> 
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  3 +--
>  drivers/gpu/drm/i915/display/intel_opregion.c | 10 ++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  1 +
>  3 files changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index a66fc79466bd..c283a5a07010 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3364,8 +3364,7 @@ bool intel_bios_is_lvds_present(struct drm_i915_private *i915, u8 *i2c_pin)
>  		 * additional data.  Trust that if the VBT was written into
>  		 * the OpRegion then they have validated the LVDS's existence.
>  		 */
> -		if (intel_opregion_get_vbt(i915, NULL))
> -			return true;
> +		return intel_opregion_vbt_present(i915);
>  	}
>  
>  	return false;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 5d07a002edaa..58dfecb617b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1131,6 +1131,16 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
>  	return drm_edid;
>  }
>  
> +bool intel_opregion_vbt_present(struct drm_i915_private *i915)
> +{
> +	struct intel_opregion *opregion = i915->display.opregion;
> +
> +	if (!opregion || !opregion->vbt)
> +		return false;
> +
> +	return true;
> +}
> +
>  const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
>  {
>  	struct intel_opregion *opregion = i915->display.opregion;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 0bec224f711f..63573c38d735 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -53,6 +53,7 @@ int intel_opregion_notify_adapter(struct drm_i915_private *dev_priv,
>  int intel_opregion_get_panel_type(struct drm_i915_private *dev_priv);
>  const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector);
>  
> +bool intel_opregion_vbt_present(struct drm_i915_private *i915);

This declaration is in a #ifdef CONFIG_ACPI block.

>  const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size);
>  
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915);
> -- 
> 2.34.1
> 
