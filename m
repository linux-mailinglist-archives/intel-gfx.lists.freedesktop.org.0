Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCD8B88217
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 09:17:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A127110E941;
	Fri, 19 Sep 2025 07:17:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OlwhOHaK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29BE10E227;
 Fri, 19 Sep 2025 07:17:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758266236; x=1789802236;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=XhNUqJUMVVtb6Pn0kqmI54I9oO25VZTk9bAIQPMH/dA=;
 b=OlwhOHaKwBSbxlCf7d4dASw2eUUNWAejR9Tkhrv7W7xZxFU9Q1C1h94J
 4/iDMSRRGMmv+7Rv6yUD4X46jIzDY3M+GZ5/C0psEbfBw2Son8jsutheb
 QKVvMIaqwrmEN+2AQaz0rv3Zd4fxpALj4M2zAaJUZqv8zOXwKUcMLYO1u
 SBekkvXneoqrugnFBN6QE9q/3mxLvKfytkMzl8st2QF43jM+ojjpHcvj6
 HQ7L7kUafNyuD5CWf3+Q3itauvPD9i/hy7+Jq7bHn6Vsj61K4HvudDF0P
 L5Nqr0yLuAXEVYKwiRNWzp3qg2FNRtWoPJieIvInoMVm+PSk4EF1abrUQ Q==;
X-CSE-ConnectionGUID: kDmXO09pTfu/QRjnWUIOpw==
X-CSE-MsgGUID: Edq4828IQR66PiuSObcanQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60662834"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60662834"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:17:15 -0700
X-CSE-ConnectionGUID: 6NAL+WoYSnabxYrHq70zvQ==
X-CSE-MsgGUID: B68SiNEiRViJXxxNTN/zdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,277,1751266800"; d="scan'208";a="181038014"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.222])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 00:17:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v3] drm/i915/irq: add ilk_display_irq_reset()
In-Reply-To: <aMxAhuWQNwKV1Biw@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
 <20250918133835.2412980-1-jani.nikula@intel.com>
 <aMxAhuWQNwKV1Biw@intel.com>
Date: Fri, 19 Sep 2025 10:17:11 +0300
Message-ID: <fd05f2cfc82ee5cb8b558dae92aa38d4d0bc42a8@intel.com>
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

On Thu, 18 Sep 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 18, 2025 at 04:38:35PM +0300, Jani Nikula wrote:
>> Abstract ilk_display_irq_reset(), moving display related reset
>> there. This results in a slightly different order between GT and PCH
>> reset, hopefully with no impact.
>>=20
>> v3: Reset display first (Ville)
>>=20
>> v2: Also move GEN7_ERR_INT (Ville)
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks a lot, series pushed to din.

BR,
Jani.

>
>> ---
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 20 ++++++++++++++++++-
>>  .../gpu/drm/i915/display/intel_display_irq.h  |  2 +-
>>  drivers/gpu/drm/i915/i915_irq.c               | 16 ++-------------
>>  3 files changed, 22 insertions(+), 16 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/=
gpu/drm/i915/display/intel_display_irq.c
>> index 93c2e42f98c9..c6f367e6159e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1985,7 +1985,7 @@ void vlv_display_irq_postinstall(struct intel_disp=
lay *display)
>>  	spin_unlock_irq(&display->irq.lock);
>>  }
>>=20=20
>> -void ibx_display_irq_reset(struct intel_display *display)
>> +static void ibx_display_irq_reset(struct intel_display *display)
>>  {
>>  	if (HAS_PCH_NOP(display))
>>  		return;
>> @@ -1996,6 +1996,24 @@ void ibx_display_irq_reset(struct intel_display *=
display)
>>  		intel_de_write(display, SERR_INT, 0xffffffff);
>>  }
>>=20=20
>> +void ilk_display_irq_reset(struct intel_display *display)
>> +{
>> +	struct intel_uncore *uncore =3D to_intel_uncore(display->drm);
>> +
>> +	gen2_irq_reset(uncore, DE_IRQ_REGS);
>> +	display->irq.ilk_de_imr_mask =3D ~0u;
>> +
>> +	if (DISPLAY_VER(display) =3D=3D 7)
>> +		intel_de_write(display, GEN7_ERR_INT, 0xffffffff);
>> +
>> +	if (display->platform.haswell) {
>> +		intel_de_write(display, EDP_PSR_IMR, 0xffffffff);
>> +		intel_de_write(display, EDP_PSR_IIR, 0xffffffff);
>> +	}
>> +
>> +	ibx_display_irq_reset(display);
>> +}
>> +
>>  void gen8_display_irq_reset(struct intel_display *display)
>>  {
>>  	enum pipe pipe;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/=
gpu/drm/i915/display/intel_display_irq.h
>> index c66db3851da4..cee120347064 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> @@ -56,7 +56,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *displa=
y, const u32 master_ctl);
>>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32=
 iir);
>>=20=20
>>  void i9xx_display_irq_reset(struct intel_display *display);
>> -void ibx_display_irq_reset(struct intel_display *display);
>> +void ilk_display_irq_reset(struct intel_display *display);
>>  void vlv_display_irq_reset(struct intel_display *display);
>>  void gen8_display_irq_reset(struct intel_display *display);
>>  void gen11_display_irq_reset(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index ab65402bc6bf..7c7c6dcbce88 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -656,22 +656,10 @@ static irqreturn_t dg1_irq_handler(int irq, void *=
arg)
>>  static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>  	struct intel_display *display =3D dev_priv->display;
>> -	struct intel_uncore *uncore =3D &dev_priv->uncore;
>> -
>> -	gen2_irq_reset(uncore, DE_IRQ_REGS);
>> -	display->irq.ilk_de_imr_mask =3D ~0u;
>> -
>> -	if (GRAPHICS_VER(dev_priv) =3D=3D 7)
>> -		intel_uncore_write(uncore, GEN7_ERR_INT, 0xffffffff);
>> -
>> -	if (IS_HASWELL(dev_priv)) {
>> -		intel_uncore_write(uncore, EDP_PSR_IMR, 0xffffffff);
>> -		intel_uncore_write(uncore, EDP_PSR_IIR, 0xffffffff);
>> -	}
>>=20=20
>> +	/* The master interrupt enable is in DEIER, reset display irq first */
>> +	ilk_display_irq_reset(display);
>>  	gen5_gt_irq_reset(to_gt(dev_priv));
>> -
>> -	ibx_display_irq_reset(display);
>>  }
>>=20=20
>>  static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
