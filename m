Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A4B97246B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 23:18:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73B8910E6C6;
	Mon,  9 Sep 2024 21:18:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OouyMIlz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F362810E6C4;
 Mon,  9 Sep 2024 21:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725916730; x=1757452730;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=VYRBpJXoWtEM1ED5WAp2JeOhSjX0zuCwGgYWxuK8NNw=;
 b=OouyMIlzxQde8MKd5ei1u2xcHw9KR/sVoHVbK7cdscCnvesYZ+L4oXfC
 V/jr8GA3FMl0uG830Ep1c6FjJYdlBioSYFjc4BC2XdD9nTN4880k1sSkW
 Xh+mAlx8/JC+qJW83Uf24SiNxqRqmLV2qPMl9MyF9Y/JlK/HonobJMjkA
 bBWGkff1q1pKUzF6RefNRQebLIp/oXOkmMw1lPIefADoWcMtq4kQIGaV5
 TVR9ymfT06guHD5AXc+mui7oqKdTohb6zA9zkpSLrU8anb29xKxrs9DAP
 zn9zikawESnJ0iz1O/mdJy5eHkccn7Erw3l1Vq6E3KxZEM2XD4W1AubaI A==;
X-CSE-ConnectionGUID: uEYpGvHgRJyWzvaSMqP2sQ==
X-CSE-MsgGUID: KDznLD7aQruzy+7YNwhb8w==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24746727"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24746727"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 14:18:49 -0700
X-CSE-ConnectionGUID: DF4yqTDmRZ22OngZlm1azw==
X-CSE-MsgGUID: QBiBjgxxRoOKINcCXqgsmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67094468"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 14:18:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/11] drm/i915: split out display regs from i915_reg.h
In-Reply-To: <Zt9hJpk9Gz7_jY-i@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1725908151.git.jani.nikula@intel.com>
 <3e50075487a6f33d90726872fd5aebba7b51b663.1725908152.git.jani.nikula@intel.com>
 <Zt9hJpk9Gz7_jY-i@intel.com>
Date: Tue, 10 Sep 2024 00:18:44 +0300
Message-ID: <87h6aole4r.fsf@intel.com>
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

On Mon, 09 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Sep 09, 2024 at 09:59:02PM +0300, Jani Nikula wrote:
>> Split out display/intel_display_regs.h from i915_reg.h. This is done
>> programmatically.
>>=20
>> Register macros in i915_reg.h are considered in chunks separated by
>> blank lines. If all macros in the chunk are only referenced by display
>> or gvt, and there's at least one reference in display, move the chunk to
>> intel_display_regs.h. Otherwise, keep it in i915_reg.h.
>>=20
>> This is a fairly good approximation, but the are some small hiccups here
>> and there that need to be fixed manually.
>>=20
>> Add the includes where needed, and sort includes where modified, also
>> programmatically. Unnecessary i915_reg.h are not cleaned up at this
>> point.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
> <snip>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers=
/gpu/drm/i915/display/intel_display_regs.h
>> new file mode 100644
>> index 000000000000..97346a0e3373
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -0,0 +1,2986 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/* Copyright =C2=A9 2024 Intel Corporation */
>> +
>> +#ifndef __INTEL_DISPLAY_REGS_H__
>> +#define __INTEL_DISPLAY_REGS_H__
>> +
>> +#include "intel_display_reg_defs.h"
>> +
>> +#define GU_CNTL_PROTECTED		_MMIO(0x10100C)
>> +#define   DEPRESENT			REG_BIT(9)
>
> That doesn't really look like a display register to me.

Aye. It's just that doing the split manually is a daunting task. I've
started and backed away a number of times. This is purely based on where
the stuff is referenced.

If it's only referenced in display or gvt -> it's display.

If there's even one reference outside of display -> it's not display.

And this is on a newline separate chunk basis, not macros individually,
because there are so many things that are not used and would be left
behind.

So it's not perfect. But you need to strike a balance between polishing
the scripts for the one time you run it vs. cleaning up the results
manually.

> <snip>
>> +#define _PS_COEF_SET0_DATA_1A	   0x6819C
>> +#define _PS_COEF_SET0_DATA_2A	   0x6829C
>> +#define _PS_COEF_SET0_DATA_1B	   0x6899C
>> +#define _PS_COEF_SET0_DATA_2B	   0x68A9C
>> +#define GLK_PS_COEF_DATA_SET(pipe, id, set)  _MMIO_PIPE(pipe,     \
>> +			_ID(id, _PS_COEF_SET0_DATA_1A, _PS_COEF_SET0_DATA_2A) + (set) * 8, \
>> +			_ID(id, _PS_COEF_SET0_DATA_1B, _PS_COEF_SET0_DATA_2B) + (set) * 8)
>> +
>> +/* More Ivybridge lolz */
>
> Where did the pre-ivb interrupt bits go? The relevant
> register offset definitions also seem to have been left
> behind.

I presume there's a reference in i915_irq.c to one of the macros, which
breaks down the approximation. :(

I err on the side of leaving stuff behind, so I don't have to include
intel_display_regs.h from i915 core code.

The best thing to do would be to move the stuff that needs them to
intel_display_irq.c.

>> +#define DE_ERR_INT_IVB			(1 << 30)
>> +#define DE_GSE_IVB			(1 << 29)
>> +#define DE_PCH_EVENT_IVB		(1 << 28)
>> +#define DE_DP_A_HOTPLUG_IVB		(1 << 27)
>> +#define DE_AUX_CHANNEL_A_IVB		(1 << 26)
>> +#define DE_EDP_PSR_INT_HSW		(1 << 19)
>> +#define DE_SPRITEC_FLIP_DONE_IVB	(1 << 14)
>> +#define DE_PLANEC_FLIP_DONE_IVB		(1 << 13)
>> +#define DE_PIPEC_VBLANK_IVB		(1 << 10)
>> +#define DE_SPRITEB_FLIP_DONE_IVB	(1 << 9)
>> +#define DE_PLANEB_FLIP_DONE_IVB		(1 << 8)
>> +#define DE_PIPEB_VBLANK_IVB		(1 << 5)
>> +#define DE_SPRITEA_FLIP_DONE_IVB	(1 << 4)
>> +#define DE_PLANEA_FLIP_DONE_IVB		(1 << 3)
>> +#define DE_PLANE_FLIP_DONE_IVB(plane)	(1 << (3 + 5 * (plane)))
>> +#define DE_PIPEA_VBLANK_IVB		(1 << 0)
>> +#define DE_PIPE_VBLANK_IVB(pipe)	(1 << ((pipe) * 5))
>> +
> <snip>
>> +#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
>> +#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
>> +#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
>> +#define SPI_STATIC_REGIONS			_MMIO(0x102090)
>> +#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
>> +#define OROM_OFFSET				_MMIO(0x1020c0)
>> +#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
>
> The SPI stuff doesn't really feel like it belongs here either.
> I suppose we should just extract it into its own thing. But
> that could be done later too.=20
>
> And now that I looked at the SPI vs. PCI ROM stuff I'm
> a bit annoyed at the duplicated code. I guess I'll take a quick
> stab at abstracting away the differences... Ideally I'd like to
> move all that stuff to soc/ but then I'd need to figure out what
> to do about xe, so I guess I'll leave it under display/ for now.

soc/ is fine for xe. There's a makefile rule to build stuff from there,
e.g. intel_dram.c and intel_pch.c are covered.

The upshot of having it automated is that I don't have to worry about
this patch going stale if we want to do more cleanups/refactoring first.


BR,
Jani.


--=20
Jani Nikula, Intel
