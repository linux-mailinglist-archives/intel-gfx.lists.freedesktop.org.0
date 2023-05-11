Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B7E6FF185
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 14:31:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6336D10E1B9;
	Thu, 11 May 2023 12:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8318C10E1B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 12:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683808280; x=1715344280;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tBiLtxw2ObvwxUTVlqW0D8k5lWkSWgBw7Vy6LCZZUnI=;
 b=BK9fgr1ylX1a3V0LvVcrwMKDXc1vHu34OFaLFdldGYi9vQaIoobzd0fp
 LClvdBpkJG0tgsROeLyeGpy4pU9nRvbUkvlV8cmEJm4/8s0Oi7jgjUsIo
 yD7draJNE/4Kwb3r+YZ3IyGpOhk0JgiSwZlGL8RDDFZ7AWHFgSx89PKVj
 d/hO09eQ40doQVs5bhtYYFI4BAVLMPBairQdv1abeIoJNvaiU9XiCeVrJ
 R0x8R3RBTYxq3sAc2SuEMoJel6yzSPEXTvNQr5tH4SNqLD1WBn3wwESJ/
 hZTJmggzZYw8UUijxMWy+Lz1B9KZxcNIkO1xW8RvrYFFBpqOngc05pTLV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="416080411"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="416080411"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="789375137"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="789375137"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:31:18 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZFzddTOx2QciRfXE@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511090427.809243-1-jani.nikula@intel.com>
 <ZFzddTOx2QciRfXE@intel.com>
Date: Thu, 11 May 2023 15:31:16 +0300
Message-ID: <87sfc3kq23.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: drop dependency on
 VLV_DISPLAY_BASE
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 May 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, May 11, 2023 at 12:04:27PM +0300, Jani Nikula wrote:
>> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
>> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
>> display base area.
>>=20
>> Use the 0x182168 MMIO address directly to drop dependency on
>> VLV_DISPLAY_BASE and thus display/intel_display_reg_defs.h in
>> intel_gt_regs.h.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i=
915/gt/intel_gt_regs.h
>> index b8a39c219b60..f38550dae6b8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -7,7 +7,6 @@
>>  #define __INTEL_GT_REGS__
>>=20=20
>>  #include "i915_reg_defs.h"
>> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
>>=20=20
>>  /*
>>   * The perf control registers are technically multicast registers, but =
the
>> @@ -1469,7 +1468,7 @@
>>  #define GEN12_RCU_MODE				_MMIO(0x14800)
>>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
>>=20=20
>> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
>> +#define CHV_FUSE_GT				_MMIO(0x182168)
>
> Or mmaybe s/VLV_DISPLAY_BASE/VLV_GUNIT_BASE/ here? Although all the
> other Gunit register defintions are still in i915_reg.h, and using
> VLV_DISPLAY_BASE. Not sure what to do about all that...

Works for me, as long as I can drop the dependency on
display/intel_display_reg_defs.h.

Just let me know.

BR,
Jani.


>
>>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
>>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
>>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel Open Source Graphics Center
