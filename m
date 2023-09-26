Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B68B7AEADD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 12:56:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2789110E39D;
	Tue, 26 Sep 2023 10:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1CCB10E39D
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 10:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695725762; x=1727261762;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wNrTIN84/7CJ1VWqsAEAW66k/04+EBc4qtzWL2hwMHw=;
 b=nTGDkZ1elijWMmbyIaWg5CViOU1EMVVslJEI7KWRfWS2TVzBwawydLpi
 7xahaPmLChWmPXmsHcgt5Z/NI7h/CYLYACXy19C8yo/Ik6qQkptHHf15W
 Gz2viT+NA4DrI/dF8vTn5RDvXvhhnpVgg6SLIqPHDh0LdrKmnjUmFy8+D
 SKHBp3d4wdSfoXSceAPommsxVtJkfoqvC88oXVDRa4MBW8JoizxJG1OjH
 wleT193GClT4HSl311UvvbCgDMFi17X8NkYzoS0CEkNEDuqhD/Mt6+4Bk
 S62HptfwDShSiAiDatkgKDtKfiXqBDvvxyOy7lwlz43TUGmWFOHQGWpW1 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="378819211"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="378819211"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 03:56:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="742318879"
X-IronPort-AV: E=Sophos;i="6.03,177,1694761200"; d="scan'208";a="742318879"
Received: from wagnert-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.202])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2023 03:55:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87h6nhkxw8.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230925065014.1252784-1-uma.shankar@intel.com>
 <87h6nhkxw8.fsf@intel.com>
Date: Tue, 26 Sep 2023 13:55:56 +0300
Message-ID: <87edilkxtv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Add a wrapper function for
 vga decode setup
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

On Tue, 26 Sep 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Mon, 25 Sep 2023, Uma Shankar <uma.shankar@intel.com> wrote:
>> Some of the VGA functionality is not needed by the proposed
>> Intel Xe driver, while this will be utilized by i915.
>> Adding a wrapper function for VGA decode setup.

I guess "wrapper function" is now a misnomer? There's no wrapping here?

>
> So, this duplicates intel_vga_set_decode() without removing the old
> one. Is that the intention?
>
> I guess the idea here is that xe doesn't build intel_gmch, so you can
> add a nop version there?
>
> BR,
> Jani.
>
>
>
>>
>> v2: Addressed Jani Nikula's review comments.
>>
>> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_vga.c |  2 --
>>  drivers/gpu/drm/i915/soc/intel_gmch.c    | 14 ++++++++++++++
>>  drivers/gpu/drm/i915/soc/intel_gmch.h    |  2 ++
>>  3 files changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vga.c b/drivers/gpu/drm/=
i915/display/intel_vga.c
>> index 286a0bdd28c6..0f65ce115035 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vga.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vga.c
>> @@ -3,11 +3,9 @@
>>   * Copyright =C2=A9 2019 Intel Corporation
>>   */
>>=20=20
>> -#include <linux/pci.h>
>>  #include <linux/vgaarb.h>
>>=20=20
>>  #include <video/vga.h>
>> -
>>  #include "soc/intel_gmch.h"
>>=20=20
>>  #include "i915_drv.h"
>> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.c b/drivers/gpu/drm/i91=
5/soc/intel_gmch.c
>> index 49c7fb16e934..f32e9f78770a 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_gmch.c
>> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.c
>> @@ -5,6 +5,7 @@
>>=20=20
>>  #include <linux/pci.h>
>>  #include <linux/pnp.h>
>> +#include <linux/vgaarb.h>
>>=20=20
>>  #include <drm/drm_managed.h>
>>  #include <drm/i915_drm.h>
>> @@ -167,3 +168,16 @@ int intel_gmch_vga_set_state(struct drm_i915_privat=
e *i915, bool enable_decode)
>>=20=20
>>  	return 0;
>>  }
>> +
>> +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enabl=
e_decode)
>> +{
>> +	struct drm_i915_private *i915 =3D pdev_to_i915(pdev);
>> +
>> +	intel_gmch_vga_set_state(i915, enable_decode);
>> +
>> +	if (enable_decode)
>> +		return VGA_RSRC_LEGACY_IO | VGA_RSRC_LEGACY_MEM |
>> +		       VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
>> +	else
>> +		return VGA_RSRC_NORMAL_IO | VGA_RSRC_NORMAL_MEM;
>> +}
>> diff --git a/drivers/gpu/drm/i915/soc/intel_gmch.h b/drivers/gpu/drm/i91=
5/soc/intel_gmch.h
>> index d0133eedc720..23be2d113afd 100644
>> --- a/drivers/gpu/drm/i915/soc/intel_gmch.h
>> +++ b/drivers/gpu/drm/i915/soc/intel_gmch.h
>> @@ -8,11 +8,13 @@
>>=20=20
>>  #include <linux/types.h>
>>=20=20
>> +struct pci_dev;
>>  struct drm_i915_private;
>>=20=20
>>  int intel_gmch_bridge_setup(struct drm_i915_private *i915);
>>  void intel_gmch_bar_setup(struct drm_i915_private *i915);
>>  void intel_gmch_bar_teardown(struct drm_i915_private *i915);
>>  int intel_gmch_vga_set_state(struct drm_i915_private *i915, bool enable=
_decode);
>> +unsigned int intel_gmch_vga_set_decode(struct pci_dev *pdev, bool enabl=
e_decode);
>>=20=20
>>  #endif /* __INTEL_GMCH_H__ */

--=20
Jani Nikula, Intel
