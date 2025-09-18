Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A90EB84E6B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 15:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89E4310E8B6;
	Thu, 18 Sep 2025 13:46:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NMmlC5NK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8B510E136;
 Thu, 18 Sep 2025 13:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758203211; x=1789739211;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hacpEP6WfxKfVGdxHO7FwtGBdGqTF98TWmUZXyEeijw=;
 b=NMmlC5NKPBijBw5jFB39NcwHSgd7Rl1aVnxV716OeEr6yLFr59YKVABs
 qoeEqnh27Xv7FvDCzCySX0XgaAixwIovixt3vKsmCnwVmQgKyZgm/gl2Y
 Uzx54GXK+R39kGZ0EGEQCt6zXHGrMXXzhQGe4I/JdO4wdYe81HBvE2CN4
 NYDe3eKFirbZDbPJ6SK+WviQ6ylbsgExn663BpZfqCifj16uOtGkWqd5y
 IdZtDlZRascb2MdLFpVbpK4/K1l9IR5R2Zf/coofGB/cATMpSOoLnyQYU
 nsHxwgQbZttc7G6ThpDFefH8ikb/kFDJ0nQSv7ctOT+JO+COYnB+67wfo w==;
X-CSE-ConnectionGUID: Wbg0j7COS9SI3eHGuUa4KQ==
X-CSE-MsgGUID: uJStYGBUSsyNLW3Xq0S2PQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="64163148"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="64163148"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:46:50 -0700
X-CSE-ConnectionGUID: kuWT10rFRBOtKncHfq8tvw==
X-CSE-MsgGUID: P3BNKpBXSkyg98vrb4NMzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175346724"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:46:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/irq: add ilk_display_irq_reset()
In-Reply-To: <aMwBH5twiX1KrgYH@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <903f35b109acea1f70b942a76392e58e88b0b720.1758198300.git.jani.nikula@intel.com>
 <20250918124124.2400265-1-jani.nikula@intel.com>
 <aMwBH5twiX1KrgYH@intel.com>
Date: Thu, 18 Sep 2025 16:46:44 +0300
Message-ID: <397bf8f93f39ec0eb9647f816dea0a95249897d3@intel.com>
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
> On Thu, Sep 18, 2025 at 03:41:24PM +0300, Jani Nikula wrote:
>> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915=
_irq.c
>> index ab65402bc6bf..af2b43679b1b 100644
>> --- a/drivers/gpu/drm/i915/i915_irq.c
>> +++ b/drivers/gpu/drm/i915/i915_irq.c
>> @@ -656,22 +656,9 @@ static irqreturn_t dg1_irq_handler(int irq, void *a=
rg)
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
>>  	gen5_gt_irq_reset(to_gt(dev_priv));
>> -
>> -	ibx_display_irq_reset(display);
>> +	ilk_display_irq_reset(display);
>
> The master interrupt enable bit is in DEIER, so we really should
> reset that first. I suppose we could just do the entire display
> irq reset before the gt stuff (ie. effectively just move the pch
> irq reset ahead of the gt irq reset).

Thanks for catching this. I had a glance at other irq reset functions,
which seemed to have gt before display, but I just didn't put deeper
thought into why and what's different.

v3 on the list.


--=20
Jani Nikula, Intel
