Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C96A3700150
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 09:21:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D11AF10E107;
	Fri, 12 May 2023 07:21:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5518010E0E3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 07:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683876075; x=1715412075;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/U6KHomMgnj3/8mGjAATk+mvzwwzO4w7oHg8xQCEoJg=;
 b=EokNcIbvHFN+oOGNVERp0UChs2SWOOs7DQRBAsP7j9quMVFFNPtjJX7K
 a/FCA1SlhSU6xGpOR+KAhECMlhHFnpXBu7oZOLDJHswP3I+bYfBa9sd7i
 mit2wTM49S5keYVeCBYn5CIOpVbJl+sz8AAckrJGagpx/ZVsA26/05gys
 l+NEM4hjpNQgwzpQTPJHmwETizf0AteDtrwXh7Ryu0CGqU+GcEFEWiPBg
 GwWCJGqEASr6mogW9aCP/M66ttPPnKjfzeNKulF9bGdDHV5SB7yhykZ1g
 y5s0Lw4Th0WjHbqtcqrfuYYivdbqiqWOH6p+TPX6H1g523MZ1ZqBfxSjN Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="348220096"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="348220096"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="700064392"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="700064392"
Received: from skwasnia-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.231])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 00:21:11 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZF0I-oYThXJqhhbT@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230511152153.986676-1-jani.nikula@intel.com>
 <ZF0I-oYThXJqhhbT@intel.com>
Date: Fri, 12 May 2023 10:21:10 +0300
Message-ID: <871qjmkobd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: drop dependency on
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
> On Thu, May 11, 2023 at 06:21:53PM +0300, Jani Nikula wrote:
>> CHV_FUSE_GT (0x182168) is purely about GT fuses, therefore belongs in
>> intel_gt_regs.h, is in the gcfgmmio unit, but is technically in the VLV
>> display base area.
>>=20
>> Add VLV_GUNIT_BASE to drop dependency on VLV_DISPLAY_BASE and thus
>> display/intel_display_reg_defs.h in intel_gt_regs.h.
>>=20
>> v2: Add VLV_GUNIT_BASE (Ville)
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

>
>> ---
>>  drivers/gpu/drm/i915/gt/intel_gt_regs.h | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i=
915/gt/intel_gt_regs.h
>> index b8a39c219b60..718cb2c80f79 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
>> @@ -7,7 +7,8 @@
>>  #define __INTEL_GT_REGS__
>>=20=20
>>  #include "i915_reg_defs.h"
>> -#include "display/intel_display_reg_defs.h"	/* VLV_DISPLAY_BASE */
>> +
>> +#define VLV_GUNIT_BASE			0x180000
>>=20=20
>>  /*
>>   * The perf control registers are technically multicast registers, but =
the
>> @@ -1469,7 +1470,7 @@
>>  #define GEN12_RCU_MODE				_MMIO(0x14800)
>>  #define   GEN12_RCU_MODE_CCS_ENABLE		REG_BIT(0)
>>=20=20
>> -#define CHV_FUSE_GT				_MMIO(VLV_DISPLAY_BASE + 0x2168)
>> +#define CHV_FUSE_GT				_MMIO(VLV_GUNIT_BASE + 0x2168)
>>  #define   CHV_FGT_DISABLE_SS0			(1 << 10)
>>  #define   CHV_FGT_DISABLE_SS1			(1 << 11)
>>  #define   CHV_FGT_EU_DIS_SS0_R0_SHIFT		16
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel Open Source Graphics Center
