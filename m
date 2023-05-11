Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF346FF202
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 15:01:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 891C910E1F0;
	Thu, 11 May 2023 13:01:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E11C10E1F0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 13:01:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683810076; x=1715346076;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=rdyk/PUhOu82bUvotTWpv7C84ZfmwxPAkg3ULwZTlW8=;
 b=adVcyQXnWLZWI34TbNBxLFbCPuZuffVSHt737C4WqdTFHblONgyS2IGI
 4Qba8dg3zwA0K8Uu+X3NZMR/8WqY5Chgv3oHb5/+DLBg63Mm0aHWk+cku
 ERdzPdzjt3tf6ry03LTVUVH6371hEhzi/aTJ2H6xq6U6LGsFVD3n13EhV
 S9RagNWST2l5AMtm4/nxXKv8tMvyUCo6KHC2gXXKXaZjhcdlCnmK3uaXk
 Ks7PXdmvtBot4tX167j6vOOJ9gdtaj919FvijtN5dPLTB3WcRJ/SHIoi0
 FonWELLsknbmtU3FXHertp0KvCXHdanMiDsxX7pl+ofMdUjeDUKwrUXGr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="334982554"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="334982554"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:46:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="677224059"
X-IronPort-AV: E=Sophos;i="5.99,266,1677571200"; d="scan'208";a="677224059"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 05:46:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZFzgqLtuY8gM96lE@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511090427.809243-1-jani.nikula@intel.com>
 <ZFzddTOx2QciRfXE@intel.com> <87sfc3kq23.fsf@intel.com>
 <ZFzgqLtuY8gM96lE@intel.com>
Date: Thu, 11 May 2023 15:46:14 +0300
Message-ID: <87jzxfkpd5.fsf@intel.com>
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
> On Thu, May 11, 2023 at 03:31:16PM +0300, Jani Nikula wrote:
>> On Thu, 11 May 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Thu, May 11, 2023 at 12:04:27PM +0300, Jani Nikula wrote:
>> >> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
>> >> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the V=
LV
>> >> display base area.
>> >>=20
>> >> Use the 0x182168 MMIO address directly to drop dependency on
>> >> VLV_DISPLAY_BASE and thus display/intel_display_reg_defs.h in
>> >> intel_gt_regs.h.
>> >>=20
>> >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 3 +--
>> >>  1 file changed, 1 insertion(+), 2 deletions(-)
>> >>=20
>> >> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/dr=
m/i915/gt/intel_gt_regs.h
>> >> index b8a39c219b60..f38550dae6b8 100644
>> >> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> >> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> >> @@ -7,7 +7,6 @@
>> >>  #define __INTEL_GT_REGS__
>> >>=20=20
>> >>  #include "i915_reg_defs.h"
>> >> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
>> >>=20=20
>> >>  /*
>> >>   * The perf control registers are technically multicast registers, b=
ut the
>> >> @@ -1469,7 +1468,7 @@
>> >>  #define GEN12_RCU_MODE				_MMIO(0x14800)
>> >>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
>> >>=20=20
>> >> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
>> >> +#define CHV_FUSE_GT				_MMIO(0x182168)
>> >
>> > Or mmaybe s/VLV_DISPLAY_BASE/VLV_GUNIT_BASE/ here? Although all the
>> > other Gunit register defintions are still in i915_reg.h, and using
>> > VLV_DISPLAY_BASE. Not sure what to do about all that...
>>=20
>> Works for me, as long as I can drop the dependency on
>> display/intel_display_reg_defs.h.
>>=20
>> Just let me know.
>
> I'd probably go with the VLV_GUNIT_BASE approach. We can think
> about what to do with all the other Gunit registers later.

Hmm, where to put VLV_GUNIT_BASE, then?

To avoid deps on display/, it would be here, i915_reg_defs.h, or a new
file that would mostly just contain this kind of offsets.

BR,
Jani.




>
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> >
>> >>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
>> >>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
>> >>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
>> >> --=20
>> >> 2.39.2
>>=20
>> --=20
>> Jani Nikula, Intel Open Source Graphics Center

--=20
Jani Nikula, Intel Open Source Graphics Center
