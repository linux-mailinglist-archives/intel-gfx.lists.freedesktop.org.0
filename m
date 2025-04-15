Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D217BA8A075
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Apr 2025 16:01:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F76910E7A1;
	Tue, 15 Apr 2025 14:01:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HJJ3xVc4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAF6D10E7A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Apr 2025 14:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744725712; x=1776261712;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=pGtnbJpEocXVmUhqBdX9hG/ME4diF5ZxO9/33UCqJCU=;
 b=HJJ3xVc48erWo4Db7czMSFaDiHEjAXyUGl/7qfqRczqHSTB5oYCrcGNp
 vX1rGMkzJc/1JGGlWQbXFAtV1HnUX4uimwQDfyW6Z6nnmBFRQcR4dO/qe
 sMPjDHHZNxP94RCgBm+vGg8dJThQK9fstteHdFZBCx8j1KfYIUd+Gi6BM
 E6+Cjb4fn9fPMiaNS/YukdvrHrjSk1MUELsKLkST4tnE/+uWgrX16S+vr
 4re/R07FZ0pUhfFvt8AIpK4QXLo4K0of/t3+k/2YduIn5xN6rO+mKiF3t
 QmT2AkQd/wjGNeN1urpUEQsHZBCFphLh/31DegpLK4I/QZus2GvjZ1jug w==;
X-CSE-ConnectionGUID: BcSum4FbTVyqRpuWT1XkxA==
X-CSE-MsgGUID: 2Zrn7xTXQhGCc2z6OhN6bQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11404"; a="46324609"
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="46324609"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 07:01:52 -0700
X-CSE-ConnectionGUID: Rvx7b0IwTYGxvJbAAC4Ymg==
X-CSE-MsgGUID: nkb9DFjpSIW8qt6B1tPBCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,213,1739865600"; d="scan'208";a="131104061"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.35])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2025 07:01:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/irq: convert ibx_irq_reset() into
 ibx_display_irq_reset()
In-Reply-To: <Z_5eQIUKBRn3PDy7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250409184702.3790548-1-jani.nikula@intel.com>
 <Z_5eQIUKBRn3PDy7@intel.com>
Date: Tue, 15 Apr 2025 17:01:47 +0300
Message-ID: <87a58hr0ac.fsf@intel.com>
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

On Tue, 15 Apr 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Apr 09, 2025 at 09:47:02PM +0300, Jani Nikula wrote:
>> Observe that ibx_irq_reset() is really ibx_display_irq_reset(). Make it
>> so. Move to display, and call it directly from gen8_display_irq_reset()
>> instead of gen8_irq_reset().
>>=20
>> Remove a nearby ancient stale comment while at it.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++++++++++
>>  .../gpu/drm/i915/display/intel_display_irq.h  |  1 +
>>  drivers/gpu/drm/i915/i915_irq.c               | 22 ++-----------------
>>  3 files changed, 20 insertions(+), 20 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/=
gpu/drm/i915/display/intel_display_irq.c
>> index d2a35e3630b1..0acb3b46d909 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -1960,8 +1960,22 @@ void vlv_display_irq_postinstall(struct intel_dis=
play *display)
>>  	intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->irq_mask,=
 enable_mask);
>>  }
>>=20=20
>> +void ibx_display_irq_reset(struct intel_display *display)
>> +{
>> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +
>> +	if (HAS_PCH_NOP(i915))
>> +		return;
>> +
>> +	gen2_irq_reset(to_intel_uncore(display->drm), SDE_IRQ_REGS);
>> +
>> +	if (HAS_PCH_CPT(i915) || HAS_PCH_LPT(i915))
>> +		intel_de_write(display, SERR_INT, 0xffffffff);
>> +}
>> +
>>  void gen8_display_irq_reset(struct intel_display *display)
>>  {
>> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
>>  	enum pipe pipe;
>>=20=20
>>  	if (!HAS_DISPLAY(display))
>> @@ -1977,6 +1991,9 @@ void gen8_display_irq_reset(struct intel_display *=
display)
>>=20=20
>>  	intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>>  	intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>> +
>> +	if (HAS_PCH_SPLIT(i915))
>> +		ibx_display_irq_reset(display);
>>  }
>>=20=20
>>  void gen11_display_irq_reset(struct intel_display *display)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/=
gpu/drm/i915/display/intel_display_irq.h
>> index f72727768351..c0efda1c949c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
>> @@ -54,6 +54,7 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *displa=
y, const u32 master_ctl);
>>  void gen11_gu_misc_irq_handler(struct intel_display *display, const u32=
 iir);
>>=20=20
>>  void i9xx_display_irq_reset(struct intel_display *display);
>> +void ibx_display_irq_reset(struct intel_display *display);
>>  void vlv_display_irq_reset(struct intel_display *display);
>>  void gen8_display_irq_reset(struct intel_display *display);
>>  void gen11_display_irq_reset(struct intel_display *display);
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index c1f938a1da44..d06694d6531e 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -658,23 +658,9 @@ static irqreturn_t dg1_irq_handler(int irq, void *a=
rg)
>>  	return IRQ_HANDLED;
>>  }
>>=20=20
>> -static void ibx_irq_reset(struct drm_i915_private *dev_priv)
>> -{
>> -	struct intel_uncore *uncore =3D &dev_priv->uncore;
>> -
>> -	if (HAS_PCH_NOP(dev_priv))
>> -		return;
>> -
>> -	gen2_irq_reset(uncore, SDE_IRQ_REGS);
>> -
>> -	if (HAS_PCH_CPT(dev_priv) || HAS_PCH_LPT(dev_priv))
>> -		intel_uncore_write(&dev_priv->uncore, SERR_INT, 0xffffffff);
>> -}
>> -
>> -/* drm_dma.h hooks
>> -*/
>>  static void ilk_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>> +	struct intel_display *display =3D &dev_priv->display;
>>  	struct intel_uncore *uncore =3D &dev_priv->uncore;
>>=20=20
>>  	gen2_irq_reset(uncore, DE_IRQ_REGS);
>> @@ -690,7 +676,7 @@ static void ilk_irq_reset(struct drm_i915_private *d=
ev_priv)
>>=20=20
>>  	gen5_gt_irq_reset(to_gt(dev_priv));
>>=20=20
>> -	ibx_irq_reset(dev_priv);
>> +	ibx_display_irq_reset(display);
>
> I guess we should extract ilk_display_irq_reset() at some point...

One thing at a time...

> This one is
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>>  }
>>=20=20
>>  static void valleyview_irq_reset(struct drm_i915_private *dev_priv)
>> @@ -717,10 +703,6 @@ static void gen8_irq_reset(struct drm_i915_private =
*dev_priv)
>>  	gen8_gt_irq_reset(to_gt(dev_priv));
>>  	gen8_display_irq_reset(display);
>>  	gen2_irq_reset(uncore, GEN8_PCU_IRQ_REGS);
>> -
>> -	if (HAS_PCH_SPLIT(dev_priv))
>> -		ibx_irq_reset(dev_priv);
>> -
>>  }
>>=20=20
>>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
>> --=20
>> 2.39.5

--=20
Jani Nikula, Intel
