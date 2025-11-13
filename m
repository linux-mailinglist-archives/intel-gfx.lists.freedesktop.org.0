Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 574FCC585C0
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 16:26:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3584010E86C;
	Thu, 13 Nov 2025 15:26:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ag8u3Vs0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10F510E86A;
 Thu, 13 Nov 2025 15:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763047573; x=1794583573;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nVutEir/78QEUpTgIW92+1nEis9mVpguv3YlFmHT9+M=;
 b=ag8u3Vs09a78zrUtCqy+3iaOEFADW/ghsfCSELPvLbuQeOJ1anEeeIMZ
 4vmokw6yfOoWbGGgGUb4bxQ6KVhNcx9GGL6Y4+wd+DU2Dpr77Sh8fLARy
 xX9rJmTNYOkfEtJbgGSKCF9iF+ONq+Y56Z++mjJdJaSHdYQOx3BT/Oo64
 7JtMzOSlMLC0xXo4kfk+tdJ58dE/RHxAaJIvYCykQgCHzvI/X9vqOBA/i
 3UPHgkraFdsw10GU9yKhtccMTTtXdGBi8SfiKlAhtsX2qCtsSIXNKiql9
 cWwT7vdjeMx0FZTQB9Y2hq9TweSMoQt1AbRIKd0lXKPi6RS2O2MPTPIAs w==;
X-CSE-ConnectionGUID: EyGqhyz4Rtut3/Xej8N91g==
X-CSE-MsgGUID: zDy5VvjuQrKKVHZmyqtM8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="64333675"
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="64333675"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:26:13 -0800
X-CSE-ConnectionGUID: 8reecLHBQXOuQBvVE8TBEQ==
X-CSE-MsgGUID: jglhJrL5SjSMYkZtKxoX1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,302,1754982000"; d="scan'208";a="189168972"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 07:26:11 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 uma.shankar@intel.com
Subject: Re: [PATCH] drm/i915/gmch: find bridge device locally
In-Reply-To: <aRX0aqq9p9vVJep6@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1763027774.git.jani.nikula@intel.com>
 <20251113133806.696869-1-jani.nikula@intel.com>
 <aRX0aqq9p9vVJep6@intel.com>
Date: Thu, 13 Nov 2025 17:26:08 +0200
Message-ID: <5368b8ef955fb7615cc35458ff8ce4ee2dbc3c30@intel.com>
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

On Thu, 13 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 13, 2025 at 03:38:06PM +0200, Jani Nikula wrote:
>> We don't really need the cached i915->gmch.pdev reference. Look up the
>> bridge device locally, and remove the final dependency on struct
>> drm_i915_private and i915_drv.h.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_gmch.c | 25 ++++++++++++++++-------
>>  1 file changed, 18 insertions(+), 7 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_gmch.c b/drivers/gpu/drm=
/i915/display/intel_gmch.c
>> index 475f2b6ce39e..9bf36f02a062 100644
>> --- a/drivers/gpu/drm/i915/display/intel_gmch.c
>> +++ b/drivers/gpu/drm/i915/display/intel_gmch.c
>> @@ -9,7 +9,6 @@
>>  #include <drm/drm_print.h>
>>  #include <drm/intel/i915_drm.h>
>>=20=20
>> -#include "i915_drv.h"
>>  #include "intel_display_core.h"
>>  #include "intel_display_types.h"
>>  #include "intel_gmch.h"
>> @@ -17,18 +16,26 @@
>>=20=20
>>  static int intel_gmch_vga_set_state(struct intel_display *display, bool=
 enable_decode)
>>  {
>> -	struct drm_i915_private *i915 =3D to_i915(display->drm);
>> -	struct pci_dev *bridge =3D i915->gmch.pdev;
>> +	struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>> +	struct pci_dev *bridge;
>>  	unsigned int reg =3D DISPLAY_VER(display) >=3D 6 ? SNB_GMCH_CTRL : INT=
EL_GMCH_CTRL;
>>  	u16 gmch_ctrl;
>> +	int ret =3D 0;
>> +
>> +	bridge =3D pci_get_domain_bus_and_slot(pci_domain_nr(pdev->bus), 0, PC=
I_DEVFN(0, 0));
>> +	if (!bridge) {
>> +		drm_err(display->drm, "bridge device not found\n");
>> +		return -EIO;
>> +	}
>>=20=20
>>  	if (pci_read_config_word(bridge, reg, &gmch_ctrl)) {
>
> I think you could just use pci_bus_{read,write}_config_word() and then
> you don't need the pci_dev reference. That's what I've used in the
> overlay workaround code as well.

Oh, neat, seems cleaner.

> I was pondering how this even works on discrete GPUs, but there it
> seems the GPU PCI device is devfn=3D0.0 sitting on its own bus. So it
> seems that it should work. Well, work in the sense that it accesses
> the correct register. But in reality this code is complete nonsense
> as this register is locked by the BIOS and so can't actually be
> written by the driver.
>
> The alternative approach would be to use the actual GPU PCI device
> on SNB+ since the GGC register is also mirrored there (and I think
> also mirrored in MCHBAR, so we could also use MMIO to access it
> instead). I suppose it's technically the mirror that we're accessing
> on dGPUs here always. On integrated we could choose to use either one.

I'm just trying to dodge *that* specific part of the mess during the
refactoring! ;D

BR,
Jani.

>
>>  		drm_err(display->drm, "failed to read control word\n");
>> -		return -EIO;
>> +		ret =3D -EIO;
>> +		goto out;
>>  	}
>>=20=20
>>  	if (!!(gmch_ctrl & INTEL_GMCH_VGA_DISABLE) =3D=3D !enable_decode)
>> -		return 0;
>> +		goto out;
>>=20=20
>>  	if (enable_decode)
>>  		gmch_ctrl &=3D ~INTEL_GMCH_VGA_DISABLE;
>> @@ -37,10 +44,14 @@ static int intel_gmch_vga_set_state(struct intel_dis=
play *display, bool enable_d
>>=20=20
>>  	if (pci_write_config_word(bridge, reg, gmch_ctrl)) {
>>  		drm_err(display->drm, "failed to write control word\n");
>> -		return -EIO;
>> +		ret =3D -EIO;
>> +		goto out;
>>  	}
>>=20=20
>> -	return 0;
>> +out:
>> +	pci_dev_put(bridge);
>> +
>> +	return ret;
>>  }
>>=20=20
>>  unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enabl=
e_decode)
>> --=20
>> 2.47.3

--=20
Jani Nikula, Intel
